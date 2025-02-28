//! We noticed that the dependency path for `e_cnd`, which is used to calculate
//! `f_pc`, is too long. Therefore, we can store `e_cnd` in the Memory Stage
//! register and replace it with `M.cnd`.
//!
//! When reading this code, it is recommended to compare it with `pipe_s4a` to
//! gain a better understanding of the differences.

// A pipeline register stores necessary information to process the instruction
// at a specific stage.
crate::define_stages! {
    FetchStage f {
        pred_pc: u64 = 0
    }
    DecodeStage d {
        stat: Stat = Stat::Aok, icode: u8 = NOP, ifun: u8 = 0,
        rA: u8 = RNONE, rB: u8 = RNONE,
        valC: u64 = 0, valP: u64 = 0
    }
    ExecuteStage e {
        stat: Stat = Stat::Aok, icode: u8 = NOP, ifun: u8 = 0,
        valP: u64 = 0, valC: u64 = 0,
        // since reg_file is used in the Decode stage, we need to store the
        // values in the Execute stage for the next cycle.
        valA: u64 = 0, valB: u64 = 0,
        // since reg_file is used in the Execute stage, we need to store the
        // values in the Execute stage for the next cycle.
        dstE: u8 = RNONE, dstM: u8 = RNONE
    }
    // Although this pipeline register is named as "MemoryStage", it is actually
    // used in all of the rest stages.
    MemoryStage m {
        stat: Stat = Stat::Aok, icode: u8 = NOP, cnd: bool = false,
        valP: u64 = 0, valA: u64 = 0, valE: u64 = 0,
        dstE: u8 = RNONE, dstM: u8 = RNONE
    }
}

sim_macro::hcl! {
#![hardware = crate::architectures::hardware_pipe]
#![program_counter = f_pc]
#![termination = prog_term]
#![stage_alias(F => f, D => d, E => e, M => m)]

use Stat::*;

:==============================: Fetch Stage :================================:
// In the Fetch Stage, D.icode represents the instruction from the previous
// cycle.

// If we are not using the information from the previous instruction, to ensure
// the correctness of instruction execution:
//
// 1. Either the pipeline register control will include corresponding control
//    conditions,
// 2. Or there will be cross-stage signal transmission (forwarding).
//
// What address should instruction be fetched at?
// We use D.icode because we use the icode in the last cycle to determine the
// next PC.
u64 f_pc = [
    // Call.  Use instruction constant
    // If the previous instruction is CALL, the constant value should be the next PC
    // valC is from Fetch Stage, thus the last cycle
    D.icode == CALL : D.valC;
    // Branch misprediction.  Use incremental PC
    M.icode == JX && !M.cnd : M.valP;
    // Completion of RET instruction.  Use value from stack
    // valM is from DEMW stage, thus the current cycle
    M.icode == RET : m_valM;
    // Default: Use predicted PC
    1 : F.pred_pc;
];

@set_input(imem, {
    pc: f_pc
});

// Determine instruction code
// This signal is prefixed with 'f_' simply to inform that, it is not intended
// to be used in the Execute stage (why?). Use `D.icode` instead.
u8 f_icode = [
    imem.error : NOP;
    1 : imem.icode; // Default: get from instruction memory
];

// Determine instruction function
u8 f_ifun = [
    imem.error : 0; // set ifun to 0 if error
    1 : imem.ifun;	// Default: get from instruction memory
];

bool instr_valid = f_icode in // CMOVX is the same as RRMOVQ
    { NOP, HALT, CMOVX, IRMOVQ, RMMOVQ, MRMOVQ,
    OPQ, JX, CALL, RET, PUSHQ, POPQ };

// Does fetched instruction require a regid byte?
bool need_regids =
    f_icode in { CMOVX, OPQ, PUSHQ, POPQ, IRMOVQ, RMMOVQ, MRMOVQ };

// Does fetched instruction require a constant word?
bool need_valC = f_icode in { IRMOVQ, RMMOVQ, MRMOVQ, JX, CALL };

@set_input(pc_inc, {
    need_valC: need_valC,
    need_regids: need_regids,
    old_pc: f_pc,
});

u64 f_valP = pc_inc.new_pc;

[u8; 9] align = imem.align;

@set_input(ialign, {
    align: align,
    need_regids: need_regids,
});

u64 f_valC = ialign.valC;
u8 f_ra = ialign.rA;
u8 f_rb = ialign.rB;

// Predict the next PC
u64 f_pred_pc = [
    // Always take the jump
    f_icode == JX : f_valC;
    // Default: Use incremented PC
    1: f_valP;
];

@set_stage(f, {
    pred_pc: f_pred_pc,
});


Stat f_stat = [
    imem.error : Adr;
    !instr_valid : Ins;
    1 : Aok;
];

@set_stage(d, {
    valC: f_valC,
    valP: f_valP,
    rA: f_ra,
    rB: f_rb,
    icode: f_icode,
    ifun: f_ifun,
    stat: f_stat,
});

:==============================: Decode Stage :================================:
// In the Decode Stage, D.icode represents the current instruction.

u8 d_icode = D.icode;
u8 d_ifun = D.ifun;
u64 d_valP = D.valP;
u64 d_valC = D.valC;
Stat d_stat = D.stat;

// What register should be used as the A source?
u8 d_srcA = [
    D.icode in { CMOVX, RMMOVQ, OPQ, PUSHQ  } : D.rA;
    D.icode in { POPQ, RET } : RSP;
    1 : RNONE; // Don't need register
];

// What register should be used as the B source?
u8 d_srcB = [
    D.icode in { OPQ, RMMOVQ, MRMOVQ } : D.rB;
    D.icode in { PUSHQ, POPQ, CALL, RET } : RSP;
    1 : RNONE; // Don't need register
];

u64 d_valA = [
    d_srcA == e_dstE : e_valE;
    d_srcA == M.dstM : m_valM;
    1: reg_file.valA;
];
u64 d_valB = [
    d_srcB == e_dstE : e_valE;
    d_srcB == M.dstM : m_valM;
    1: reg_file.valB;
];

// What register should be used as the E destination?
// The logic of computing dstE is distributed on Decode stage and Execute stage.
u8 d_dstE = [
    D.icode in { CMOVX } : D.rB;
    D.icode in { IRMOVQ, OPQ } : D.rB;
    D.icode in { PUSHQ, POPQ, CALL, RET } : RSP;
    1 : RNONE; // Don't write any register
];

// What register should be used as the M destination?
u8 d_dstM = [
    D.icode in { MRMOVQ, POPQ } : D.rA;
    1 : RNONE; // Don't write any register
];

@set_stage(e, {
    icode: d_icode,
    ifun: d_ifun,
    stat: d_stat,
    valP: d_valP,
    valC: d_valC,
    valA: d_valA,
    valB: d_valB,
    dstE: d_dstE,
    dstM: d_dstM,
});

:=============================: Execute Stage :================================:
// In the Execute Stage, E.icode represents the current instruction.

u8 e_icode = E.icode;
u8 e_ifun = E.ifun;
u64 e_valA = E.valA;
u64 e_valP = E.valP;

// Select input A to ALU
u64 aluA = [
    E.icode in { CMOVX, OPQ } : E.valA;
    E.icode in { IRMOVQ, RMMOVQ, MRMOVQ } : E.valC;
    E.icode in { CALL, PUSHQ } : NEG_8;
    E.icode in { RET, POPQ } : 8;
    // Other instructions don't need ALU
];

// Select input B to ALU
u64 aluB = [
    E.icode in { RMMOVQ, MRMOVQ, OPQ, CALL, PUSHQ, RET, POPQ } : E.valB;
    E.icode in { CMOVX, IRMOVQ } : 0;
    // Other instructions don't need ALU
];

// Set the ALU function
u8 alufun = [
    E.icode == OPQ : e_ifun;
    1 : ADD;
];
@set_input(alu, {
    a: aluA,
    b: aluB,
    fun: alufun,
});

// Should the condition codes be updated?
bool set_cc = E.icode in { OPQ };

u64 e_valE = alu.e;

@set_input(reg_cc, {
    a: aluA,
    b: aluB,
    e: e_valE,
    opfun: alufun,
    set_cc: set_cc,
});

ConditionCode cc = reg_cc.cc;

@set_input(cond, {
    cc: cc,
    condfun: e_ifun,
});

bool e_cnd = cond.cnd;

u8 e_dstE = [
    E.icode == CMOVX && !e_cnd : RNONE;
    1 : E.dstE;
];
u8 e_dstM = E.dstM;

Stat e_stat = E.stat;

@set_stage(m, {
    stat: e_stat,
    dstM: e_dstM,
    icode: e_icode,
    dstE: e_dstE,
    cnd: e_cnd,
    valE: e_valE,
    valA: e_valA,
    valP: e_valP,
});

:==============================: Memory Stage :================================:

u64 m_valE = M.valE;

// Set read control signal
bool mem_read = M.icode in { MRMOVQ, POPQ, RET };

// Set write control signal
bool mem_write = M.icode in { RMMOVQ, PUSHQ, CALL };

// Select memory address
u64 mem_addr = [
    M.icode in { RMMOVQ, PUSHQ, CALL, MRMOVQ } : M.valE;
    M.icode in { POPQ, RET } : M.valA;
    // Other instructions don't need address
];

// Select memory input data
u64 mem_data = [
    // Value from register
    M.icode in { RMMOVQ, PUSHQ } : M.valA;
    // Return PC (valP is the incremented PC)
    M.icode == CALL : M.valP;
    // Default: Don't write anything
];

@set_input(dmem, {
    read: mem_read,
    write: mem_write,
    addr: mem_addr,
    datain: mem_data,
});

u64 m_valM = dmem.dataout;
u8 m_dstE = M.dstE;
u8 m_dstM = M.dstM;

@set_input(reg_file, {
    srcA: d_srcA,
    srcB: d_srcB,
    dstE: m_dstE,
    dstM: m_dstM,
    valM: m_valM,
    valE: m_valE,
});

// Determine instruction status
Stat m_stat = [
    dmem.error : Adr;
    M.icode == HALT : Hlt;
    1 : M.stat;
];

bool prog_term = m_stat in { Hlt, Adr, Ins };

:========================: Pipeline Register Control :=========================:

// If a branch misprediction is detected during the Execute stage, it means that
// the instruction currently in the Decode stage is invalid. Therefore, the next
// cycle’s Execute stage needs to insert a bubble.
bool branch_mispred = E.icode == JX && !e_cnd;

// If a RET instruction is detected in either the Decode or Execute stage, then
// the instruction in the current Fetch stage is invalid. Therefore, a bubble
// needs to be inserted in the Fetch stage for the next cycle.
//
// In fact, when E.icode == RET, the instruction in the current Decode stage is 
// also invalid, but because the D.icode in the previous cycle was RET, at this
// point D.icode == NOP, so there's no need to add a condition for e_bubble.
bool ret_harzard = RET in { D.icode, E.icode };

// This instruction needs to read from a register whose data was loaded from
// memory by the previous instruction, but the previous instruction is still in
// the Execute stage, causing a data hazard.
bool load_use_harzard = E.icode in { MRMOVQ, POPQ } && E.dstM in { d_srcA, d_srcB };
// an equivalent expression:
// bool load_use_harzard = E.dstM != RNONE && E.dstM in { d_srcA, d_srcB };

// Unlike in `pipe_s4a`, here we do not need to consider the case of branch 
// misprediction (since in the next cycle, Fetch will always get the `f_pc`
// from `M.valP`).
bool f_stall = ret_harzard || load_use_harzard;

@set_stage(f, {
    stall: f_stall,
});


bool d_stall = load_use_harzard;

// Unlike in `pipe_s4a`, when a branch misprediction occurs, we directly insert
// a bubble, because the instruction in the Fetch stage at that point is invalid.
// Actually, ret_harzard and d_stall cannot be true at the same time.
bool d_bubble = branch_mispred || ret_harzard && !d_stall;

@set_stage(d, {
    stall: d_stall,
    bubble: d_bubble,
});

bool e_bubble = branch_mispred || load_use_harzard;

@set_stage(e, {
    bubble: e_bubble,
});

}

impl crate::framework::PipeSim<Arch> {
    fn print_state(&self) {
        use crate::utils::format_ctrl;
        use crate::utils::format_icode;

        #[allow(non_snake_case)]
        let PipeRegs {
            f: _,
            d: D,
            e: E,
            m: M,
        } = &self.cur_state;
        let PipeRegs { f, d, e, m } = &self.nex_state;

        println!(
            r#"      Fetch  Decode Exec   MemWrb
icode {f_icode} {d_icode} {e_icode} {m_icode}
ctrl  {fctrl} {dctrl} {ectrl} {mctrl}
"#,
            f_icode = format_icode(self.cur_inter.f_icode),
            d_icode = format_icode(D.icode),
            e_icode = format_icode(E.icode),
            m_icode = format_icode(M.icode),
            fctrl = format_ctrl(f.bubble, f.stall),
            dctrl = format_ctrl(d.bubble, d.stall),
            ectrl = format_ctrl(e.bubble, e.stall),
            mctrl = format_ctrl(m.bubble, m.stall),
        );
    }
}
