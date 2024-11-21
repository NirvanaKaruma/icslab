/* 
 * CS:APP Data Lab 
 * 
 * <Please put your name and userid here>
 * name: 栾佑宇
 * userid: Karuma
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
/* Copyright (C) 1991-2022 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */
/* 
 * bitAnd - x&y using only ~ and | 
 *   Example: bitAnd(6, 5) = 4
 *   Legal ops: ~ |
 *   Max ops: 8
 *   Rating: 1
 */
int bitAnd(int x, int y) {
  // x and y = not ((not x) | (not y))
  return ~(~x | ~y);
}
/* 
 * bitConditional - x ? y : z for each bit respectively
 *   Example: bitConditional(0b00110011, 0b01010101, 0b00001111) = 0b00011101
 *   Legal ops: & | ^ ~
 *   Max ops: 4
 *   Rating: 1
 */
int bitConditional(int x, int y, int z) {
  // 按位比较，如果xi为1则~xi为0，从而执行(x&y)的结果，对应位为y的值；反之则执行(~x&z)的结果，对应位为z的值
  return (x & y) | (~x & z);
}
/* 
 * implication - return x -> y in propositional logic - 0 for false, 1
 * for true
 *   Example: implication(1,1) = 1
 *            implication(1,0) = 0
 *   Legal ops: ! ~ ^ |
 *   Max ops: 5
 *   Rating: 2
 */
int implication(int x, int y) {
    // 若使x->y，则x为0的时候，!x为1，!x|y返回1，命题恒为真；x为非0的时候，!x为0，!x|y与y的值相同，命题的真假取决于y的值。
    return !x | y;
}
/* 
 * rotateRight - Rotate x to the right by n
 *   Can assume that 0 <= n <= 31
 *   Examples: rotateRight(0x87654321,4) = 0x18765432
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 25
 *   Rating: 3 
 */
int rotateRight(int x, int n) {
  // 掩码，获取低n位的值
  int mask = (1 << n) + (~0);
  // 偏移，方便获取旋转后左侧和右侧的部分
  int offset = (32 + ~n + 1);
  // 旋转到左侧的部分
  int left = (x & mask) << offset;
  // 正常旋转的部分
  int right = (x >> n) & (~(mask << offset));
  // 拼接
  return left | right;
}
/* 
 * bang - Compute !x without using !
 *   Examples: bang(3) = 0, bang(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
int bang(int x) {
  // 当x为0时，~x为-1，~x+1为0，x|(~x+1)为0,再取反得-1，右移31位后最低位为原符号位1，与1进行与运算后输出1；
  // 当x不为0时，~x+1得到x的负数表示，x|(~x+1)得到一个全1的数(-1)，再取反得0，右移31位后最低位为原符号位0，与1进行与运算后输出0；
  return ~(x | (~x + 1)) >> 31 & 1;
}
/* 
 * countTrailingZero - return the number of consecutive 0 from the lowest bit of 
 *   the binary form of x.
 *   YOU MAY USE BIG CONST IN THIS PROBLEM, LIKE 0xFFFF0000
 *   YOU MAY USE BIG CONST IN THIS PROBLEM, LIKE 0xFFFF0000
 *   YOU MAY USE BIG CONST IN THIS PROBLEM, LIKE 0xFFFF0000
 *   Examples countTrailingZero(0x0) = 32, countTrailingZero(0x1) = 0,
 *            countTrailingZero(0xFFFF0000) = 16,
 *            countTrailingZero(0xFFFFFFF0) = 8,
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 40
 *   Rating: 4
 */
int countTrailingZero(int x){
  // 依次计算x的低16,8,4,2,1,1位是否全为0，每计算成功一次就将对应大数左移对应位数，从而判断x的更高位是否为0。
  int ans = (!(x & 0x0000ffff)) << 4;
  ans = ans + ((!(x & (0x000000ff << ans))) << 3);
  ans = ans + ((!(x & (0x0000000f << ans))) << 2);
  ans = ans + ((!(x & (0x00000003 << ans))) << 1);
  ans = ans + ((!(x & (0x00000001 << ans))));
  ans = ans + ((!(x & (0x00000001 << ans))));
  return ans;
}
/* 
 * divpwr2 - Compute x/(2^n), for 0 <= n <= 30
 *  Round toward zero
 *   Examples: divpwr2(15,1) = 7, divpwr2(-33,4) = -2
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int divpwr2(int x, int n) {
    // 如果给定数是正数就直接右移，如果是负数就加上一个低n位全为1，其余全为0的数向上取整((x+k-1)/k)
    int mask = (1 << n) + ~0;
    int sign = x >> 31;
    return (x + (mask & sign)) >> n;
}
/* 
 * sameSign - return 1 if x and y have same sign, and 0 otherwise
 *   Examples sameSign(0x12345678, 0) = 1, sameSign(0xFFFFFFFF,0x1) = 0
 *   Legal ops: ! ~ & ! ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int sameSign(int x, int y) {
  // 取符号位做同或运算
  return !((x >> 31) ^ (y >> 31));
}
/*
 * multFiveEighths - multiplies by 5/8 rounding toward 0.
 *   Should exactly duplicate effect of C expression (x*5/8),
 *   including overflow behavior.
 *   Examples: multFiveEighths(77) = 48
 *             multFiveEighths(-22) = -13
 *             multFiveEighths(1073741824) = 13421728 (overflow)
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 3
 */
int multFiveEighths(int x) {
  // 5 = 2^2 + 1;
  x = x + (x << 2);
  // 对于负数，将其加上除数-1后实现向上取整
  return (x + ((x >> 31) & 7)) >> 3;
}
/*
 * satMul3 - multiplies by 3, saturating to Tmin or Tmax if overflow
 *  Examples: satMul3(0x10000000) = 0x30000000
 *            satMul3(0x30000000) = 0x7FFFFFFF (Saturate to TMax)
 *            satMul3(0x70000000) = 0x7FFFFFFF (Saturate to TMax)
 *            satMul3(0xD0000000) = 0x80000000 (Saturate to TMin)
 *            satMul3(0xA0000000) = 0x80000000 (Saturate to TMin)
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 3
 */
int satMul3(int x) {
  int db = x << 1;
  int tp = db + x;
  // 若符号位变化则发生溢出，则flag为-1，否则为0
  int flag = ((x ^ db) | (x ^ tp)) >> 31;
  // 若不溢出，则直接return三倍x
  // 若溢出，则通过判断x的正负来决定输出Tmax还是Tmin(正为Tmax，负为Tmin)
  return (flag | tp) ^ (flag & ((x >> 31) ^ (1 << 31)));
}
/* 
 * isLessOrEqual - if x <= y  then return 1, else return 0 
 *   Example: isLessOrEqual(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLessOrEqual(int x, int y) {
  // 如果x和y异号，则根据符号判断；反之则根据y-x的符号判断
  int xor = (x >> 31) ^ (y >> 31);
  int z = (y + ~x + 1) >> 31;
  int res = (!xor & z) | (xor & (y >> 31));
  return !res;
}
/*
 * ilog2 - return floor(log base 2 of x), where x > 0
 *   Example: ilog2(16) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 90
 *   Rating: 4
 */
int ilog2(int x) {
  // 与尾随零类似，依次判断高16,8,4,2,1,1位是否有1
  int ans = (!!(x >> 16)) << 4;
  ans = ans + ((!!(x >> (ans + 8))) << 3);
  ans = ans + ((!!(x >> (ans + 4))) << 2);
  ans = ans + ((!!(x >> (ans + 2))) << 1);
  ans = ans + ((!!(x >> (ans + 1))));
  return ans;
}
/* 
 * float_twice - Return bit-level equivalent of expression 2*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_twice(unsigned uf) {
  // 取符号位，指数位
  unsigned sign = uf & 0x80000000;
  unsigned exp = uf & 0x7f800000;
  // 取去除符号的数
  unsigned f = uf & 0x7fffffff;
  // 如果非正规数，则返回尾数位左移一位的结果
  if ((f >> 23) == 0)
    return (f << 1) | sign;
  // 如果是NaN，返回其本身
  if ((f >> 23) == 0xff)
    return uf;
  // 如果*2后超过限制，返回0x7f800000与符号位的或(+-NaN)
  if ((exp >> 23) + 1 == 0xff)
    return 0x7f800000 | sign;
  // 如果是非上述情况的正规数，则返回指数位加1的结果
  return (f + 0x00800000) | sign;
}
/* 
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x) {
  // 按符号位，指数位，尾数位组装浮点数
  unsigned sign = x & (1 << 31);
  unsigned exp = 0;
  unsigned frac = 0;
  // 取绝对值
  unsigned f = sign ? ~x + 1 : x;
  unsigned tmp = f;
  unsigned round = 0;
  // 对原数不断右移得到指数位
  while (tmp = tmp >> 1)
    exp++;
  frac = f << (31 - exp) << 1;  // 不直接使用32-exp是防止exp为0
  round = frac << 23 >> 23; //取尾数判断舍入
  frac = frac >> 9;
  if (round > 0xff + 1) 
    round = 1;
  else if (round < 0xff + 1)
    round = 0;
  else
    round = frac & 1;
  // 0特判
  if (x == 0)
    return 0;
  return (sign | ((exp + 0x7f) << 23) | frac) + round;
}
/* 
 * float64_f2i - Return bit-level equivalent of expression (int) f
 *   for 64 bit floating point argument f.
 *   Argument is passed as two unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   double-precision floating point value.
 *   Notice: uf1 contains the lower part of the f64 f
 *   Anything out of range (including NaN and infinity) should return
 *   0x80000000u.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 20
 *   Rating: 4
 */
int float64_f2i(unsigned uf1, unsigned uf2) {
  // 1位符号位，11位指数位，52位尾数位
  unsigned sign = uf2 >> 31;
  int mask = 0x7ff; // 提取指数位
  int exp = ((uf2 >> 20) & mask) - 1023; // 减去偏置量
  // 尾数位包含uf2的后20位和uf1全部，但是int只有31位，因此参与计算的尾数只包括uf2的后20位和uf1高11位
  unsigned frac = ((uf2 & 0xfffff) << 11) | ((uf1 >> 21) & mask) | (0x80000000);
  frac = frac >> (31 - exp) & ~(0x80000000 >> (31 - exp) << 1);
  // 如果exp<0，转化时必定为0；如果exp>=31,则返回0x80000000.
  if (exp < 0)
    return 0;
  if (exp >= 31)
    return 0x80000000;
  return sign ? -frac : frac;
}
/* 
 * float_negpwr2 - Return bit-level equivalent of the expression 2.0^-x
 *   (2.0 raised to the power -x) for any 32-bit integer x.
 *
 *   The unsigned value that is returned should have the identical bit
 *   representation as the single-precision floating-point number 2.0^-x.
 *   If the result is too small to be represented as a denorm, return
 *   0. If too large, return +INF.
 * 
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. Also if, while 
 *   Max ops: 20 
 *   Rating: 4
 */
unsigned float_negpwr2(int x) {
  // 最小的非规格化数为0x00000001,即2^(-23)*2^(-126)=2^(-149);最大的规格化数为0x7f7fffff,即2^127*(2-2^(-23))
  // 数太小，返回0
  if (x > 149)
    return 0;
  // 数太大，返回+INF
  if (x <= -128)
    return 0x7f800000;
  // 为规格化数，尾数全为0，变指数
  if (x < 127)
    return (127 - x) << 23;
  // 为非规格化数，指数全为0，变尾数
  return 1 << (149 - x);
}
