
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000002000 <_init>:
    2000:	f3 0f 1e fa          	endbr64
    2004:	48 83 ec 08          	sub    $0x8,%rsp
    2008:	48 8b 05 d9 5f 00 00 	mov    0x5fd9(%rip),%rax        # 7fe8 <__gmon_start__@Base>
    200f:	48 85 c0             	test   %rax,%rax
    2012:	74 02                	je     2016 <_init+0x16>
    2014:	ff d0                	call   *%rax
    2016:	48 83 c4 08          	add    $0x8,%rsp
    201a:	c3                   	ret

Disassembly of section .plt:

0000000000002020 <.plt>:
    2020:	ff 35 b2 5e 00 00    	push   0x5eb2(%rip)        # 7ed8 <_GLOBAL_OFFSET_TABLE_+0x8>
    2026:	f2 ff 25 b3 5e 00 00 	bnd jmp *0x5eb3(%rip)        # 7ee0 <_GLOBAL_OFFSET_TABLE_+0x10>
    202d:	0f 1f 00             	nopl   (%rax)
    2030:	f3 0f 1e fa          	endbr64
    2034:	68 00 00 00 00       	push   $0x0
    2039:	f2 e9 e1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    203f:	90                   	nop
    2040:	f3 0f 1e fa          	endbr64
    2044:	68 01 00 00 00       	push   $0x1
    2049:	f2 e9 d1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    204f:	90                   	nop
    2050:	f3 0f 1e fa          	endbr64
    2054:	68 02 00 00 00       	push   $0x2
    2059:	f2 e9 c1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    205f:	90                   	nop
    2060:	f3 0f 1e fa          	endbr64
    2064:	68 03 00 00 00       	push   $0x3
    2069:	f2 e9 b1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    206f:	90                   	nop
    2070:	f3 0f 1e fa          	endbr64
    2074:	68 04 00 00 00       	push   $0x4
    2079:	f2 e9 a1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    207f:	90                   	nop
    2080:	f3 0f 1e fa          	endbr64
    2084:	68 05 00 00 00       	push   $0x5
    2089:	f2 e9 91 ff ff ff    	bnd jmp 2020 <_init+0x20>
    208f:	90                   	nop
    2090:	f3 0f 1e fa          	endbr64
    2094:	68 06 00 00 00       	push   $0x6
    2099:	f2 e9 81 ff ff ff    	bnd jmp 2020 <_init+0x20>
    209f:	90                   	nop
    20a0:	f3 0f 1e fa          	endbr64
    20a4:	68 07 00 00 00       	push   $0x7
    20a9:	f2 e9 71 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20af:	90                   	nop
    20b0:	f3 0f 1e fa          	endbr64
    20b4:	68 08 00 00 00       	push   $0x8
    20b9:	f2 e9 61 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20bf:	90                   	nop
    20c0:	f3 0f 1e fa          	endbr64
    20c4:	68 09 00 00 00       	push   $0x9
    20c9:	f2 e9 51 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20cf:	90                   	nop
    20d0:	f3 0f 1e fa          	endbr64
    20d4:	68 0a 00 00 00       	push   $0xa
    20d9:	f2 e9 41 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20df:	90                   	nop
    20e0:	f3 0f 1e fa          	endbr64
    20e4:	68 0b 00 00 00       	push   $0xb
    20e9:	f2 e9 31 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20ef:	90                   	nop
    20f0:	f3 0f 1e fa          	endbr64
    20f4:	68 0c 00 00 00       	push   $0xc
    20f9:	f2 e9 21 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20ff:	90                   	nop
    2100:	f3 0f 1e fa          	endbr64
    2104:	68 0d 00 00 00       	push   $0xd
    2109:	f2 e9 11 ff ff ff    	bnd jmp 2020 <_init+0x20>
    210f:	90                   	nop
    2110:	f3 0f 1e fa          	endbr64
    2114:	68 0e 00 00 00       	push   $0xe
    2119:	f2 e9 01 ff ff ff    	bnd jmp 2020 <_init+0x20>
    211f:	90                   	nop
    2120:	f3 0f 1e fa          	endbr64
    2124:	68 0f 00 00 00       	push   $0xf
    2129:	f2 e9 f1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    212f:	90                   	nop
    2130:	f3 0f 1e fa          	endbr64
    2134:	68 10 00 00 00       	push   $0x10
    2139:	f2 e9 e1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    213f:	90                   	nop
    2140:	f3 0f 1e fa          	endbr64
    2144:	68 11 00 00 00       	push   $0x11
    2149:	f2 e9 d1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    214f:	90                   	nop
    2150:	f3 0f 1e fa          	endbr64
    2154:	68 12 00 00 00       	push   $0x12
    2159:	f2 e9 c1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    215f:	90                   	nop
    2160:	f3 0f 1e fa          	endbr64
    2164:	68 13 00 00 00       	push   $0x13
    2169:	f2 e9 b1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    216f:	90                   	nop
    2170:	f3 0f 1e fa          	endbr64
    2174:	68 14 00 00 00       	push   $0x14
    2179:	f2 e9 a1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    217f:	90                   	nop
    2180:	f3 0f 1e fa          	endbr64
    2184:	68 15 00 00 00       	push   $0x15
    2189:	f2 e9 91 fe ff ff    	bnd jmp 2020 <_init+0x20>
    218f:	90                   	nop
    2190:	f3 0f 1e fa          	endbr64
    2194:	68 16 00 00 00       	push   $0x16
    2199:	f2 e9 81 fe ff ff    	bnd jmp 2020 <_init+0x20>
    219f:	90                   	nop
    21a0:	f3 0f 1e fa          	endbr64
    21a4:	68 17 00 00 00       	push   $0x17
    21a9:	f2 e9 71 fe ff ff    	bnd jmp 2020 <_init+0x20>
    21af:	90                   	nop
    21b0:	f3 0f 1e fa          	endbr64
    21b4:	68 18 00 00 00       	push   $0x18
    21b9:	f2 e9 61 fe ff ff    	bnd jmp 2020 <_init+0x20>
    21bf:	90                   	nop
    21c0:	f3 0f 1e fa          	endbr64
    21c4:	68 19 00 00 00       	push   $0x19
    21c9:	f2 e9 51 fe ff ff    	bnd jmp 2020 <_init+0x20>
    21cf:	90                   	nop
    21d0:	f3 0f 1e fa          	endbr64
    21d4:	68 1a 00 00 00       	push   $0x1a
    21d9:	f2 e9 41 fe ff ff    	bnd jmp 2020 <_init+0x20>
    21df:	90                   	nop
    21e0:	f3 0f 1e fa          	endbr64
    21e4:	68 1b 00 00 00       	push   $0x1b
    21e9:	f2 e9 31 fe ff ff    	bnd jmp 2020 <_init+0x20>
    21ef:	90                   	nop
    21f0:	f3 0f 1e fa          	endbr64
    21f4:	68 1c 00 00 00       	push   $0x1c
    21f9:	f2 e9 21 fe ff ff    	bnd jmp 2020 <_init+0x20>
    21ff:	90                   	nop
    2200:	f3 0f 1e fa          	endbr64
    2204:	68 1d 00 00 00       	push   $0x1d
    2209:	f2 e9 11 fe ff ff    	bnd jmp 2020 <_init+0x20>
    220f:	90                   	nop

Disassembly of section .plt.got:

0000000000002210 <__cxa_finalize@plt>:
    2210:	f3 0f 1e fa          	endbr64
    2214:	f2 ff 25 dd 5d 00 00 	bnd jmp *0x5ddd(%rip)        # 7ff8 <__cxa_finalize@GLIBC_2.2.5>
    221b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000002220 <getenv@plt>:
    2220:	f3 0f 1e fa          	endbr64
    2224:	f2 ff 25 bd 5c 00 00 	bnd jmp *0x5cbd(%rip)        # 7ee8 <getenv@GLIBC_2.2.5>
    222b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002230 <free@plt>:
    2230:	f3 0f 1e fa          	endbr64
    2234:	f2 ff 25 b5 5c 00 00 	bnd jmp *0x5cb5(%rip)        # 7ef0 <free@GLIBC_2.2.5>
    223b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002240 <__errno_location@plt>:
    2240:	f3 0f 1e fa          	endbr64
    2244:	f2 ff 25 ad 5c 00 00 	bnd jmp *0x5cad(%rip)        # 7ef8 <__errno_location@GLIBC_2.2.5>
    224b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002250 <strcpy@plt>:
    2250:	f3 0f 1e fa          	endbr64
    2254:	f2 ff 25 a5 5c 00 00 	bnd jmp *0x5ca5(%rip)        # 7f00 <strcpy@GLIBC_2.2.5>
    225b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002260 <__read_chk@plt>:
    2260:	f3 0f 1e fa          	endbr64
    2264:	f2 ff 25 9d 5c 00 00 	bnd jmp *0x5c9d(%rip)        # 7f08 <__read_chk@GLIBC_2.4>
    226b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002270 <puts@plt>:
    2270:	f3 0f 1e fa          	endbr64
    2274:	f2 ff 25 95 5c 00 00 	bnd jmp *0x5c95(%rip)        # 7f10 <puts@GLIBC_2.2.5>
    227b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002280 <write@plt>:
    2280:	f3 0f 1e fa          	endbr64
    2284:	f2 ff 25 8d 5c 00 00 	bnd jmp *0x5c8d(%rip)        # 7f18 <write@GLIBC_2.2.5>
    228b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002290 <strlen@plt>:
    2290:	f3 0f 1e fa          	endbr64
    2294:	f2 ff 25 85 5c 00 00 	bnd jmp *0x5c85(%rip)        # 7f20 <strlen@GLIBC_2.2.5>
    229b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022a0 <__stack_chk_fail@plt>:
    22a0:	f3 0f 1e fa          	endbr64
    22a4:	f2 ff 25 7d 5c 00 00 	bnd jmp *0x5c7d(%rip)        # 7f28 <__stack_chk_fail@GLIBC_2.4>
    22ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022b0 <alarm@plt>:
    22b0:	f3 0f 1e fa          	endbr64
    22b4:	f2 ff 25 75 5c 00 00 	bnd jmp *0x5c75(%rip)        # 7f30 <alarm@GLIBC_2.2.5>
    22bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022c0 <close@plt>:
    22c0:	f3 0f 1e fa          	endbr64
    22c4:	f2 ff 25 6d 5c 00 00 	bnd jmp *0x5c6d(%rip)        # 7f38 <close@GLIBC_2.2.5>
    22cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022d0 <strcmp@plt>:
    22d0:	f3 0f 1e fa          	endbr64
    22d4:	f2 ff 25 65 5c 00 00 	bnd jmp *0x5c65(%rip)        # 7f40 <strcmp@GLIBC_2.2.5>
    22db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022e0 <signal@plt>:
    22e0:	f3 0f 1e fa          	endbr64
    22e4:	f2 ff 25 5d 5c 00 00 	bnd jmp *0x5c5d(%rip)        # 7f48 <signal@GLIBC_2.2.5>
    22eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022f0 <gethostbyname@plt>:
    22f0:	f3 0f 1e fa          	endbr64
    22f4:	f2 ff 25 55 5c 00 00 	bnd jmp *0x5c55(%rip)        # 7f50 <gethostbyname@GLIBC_2.2.5>
    22fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002300 <__memmove_chk@plt>:
    2300:	f3 0f 1e fa          	endbr64
    2304:	f2 ff 25 4d 5c 00 00 	bnd jmp *0x5c4d(%rip)        # 7f58 <__memmove_chk@GLIBC_2.3.4>
    230b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002310 <memcpy@plt>:
    2310:	f3 0f 1e fa          	endbr64
    2314:	f2 ff 25 45 5c 00 00 	bnd jmp *0x5c45(%rip)        # 7f60 <memcpy@GLIBC_2.14>
    231b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002320 <malloc@plt>:
    2320:	f3 0f 1e fa          	endbr64
    2324:	f2 ff 25 3d 5c 00 00 	bnd jmp *0x5c3d(%rip)        # 7f68 <malloc@GLIBC_2.2.5>
    232b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002330 <fflush@plt>:
    2330:	f3 0f 1e fa          	endbr64
    2334:	f2 ff 25 35 5c 00 00 	bnd jmp *0x5c35(%rip)        # 7f70 <fflush@GLIBC_2.2.5>
    233b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002340 <__isoc99_sscanf@plt>:
    2340:	f3 0f 1e fa          	endbr64
    2344:	f2 ff 25 2d 5c 00 00 	bnd jmp *0x5c2d(%rip)        # 7f78 <__isoc99_sscanf@GLIBC_2.7>
    234b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002350 <__fgets_chk@plt>:
    2350:	f3 0f 1e fa          	endbr64
    2354:	f2 ff 25 25 5c 00 00 	bnd jmp *0x5c25(%rip)        # 7f80 <__fgets_chk@GLIBC_2.4>
    235b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002360 <__printf_chk@plt>:
    2360:	f3 0f 1e fa          	endbr64
    2364:	f2 ff 25 1d 5c 00 00 	bnd jmp *0x5c1d(%rip)        # 7f88 <__printf_chk@GLIBC_2.3.4>
    236b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002370 <fopen@plt>:
    2370:	f3 0f 1e fa          	endbr64
    2374:	f2 ff 25 15 5c 00 00 	bnd jmp *0x5c15(%rip)        # 7f90 <fopen@GLIBC_2.2.5>
    237b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002380 <gethostname@plt>:
    2380:	f3 0f 1e fa          	endbr64
    2384:	f2 ff 25 0d 5c 00 00 	bnd jmp *0x5c0d(%rip)        # 7f98 <gethostname@GLIBC_2.2.5>
    238b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002390 <exit@plt>:
    2390:	f3 0f 1e fa          	endbr64
    2394:	f2 ff 25 05 5c 00 00 	bnd jmp *0x5c05(%rip)        # 7fa0 <exit@GLIBC_2.2.5>
    239b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023a0 <connect@plt>:
    23a0:	f3 0f 1e fa          	endbr64
    23a4:	f2 ff 25 fd 5b 00 00 	bnd jmp *0x5bfd(%rip)        # 7fa8 <connect@GLIBC_2.2.5>
    23ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023b0 <__fprintf_chk@plt>:
    23b0:	f3 0f 1e fa          	endbr64
    23b4:	f2 ff 25 f5 5b 00 00 	bnd jmp *0x5bf5(%rip)        # 7fb0 <__fprintf_chk@GLIBC_2.3.4>
    23bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023c0 <sleep@plt>:
    23c0:	f3 0f 1e fa          	endbr64
    23c4:	f2 ff 25 ed 5b 00 00 	bnd jmp *0x5bed(%rip)        # 7fb8 <sleep@GLIBC_2.2.5>
    23cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023d0 <__ctype_b_loc@plt>:
    23d0:	f3 0f 1e fa          	endbr64
    23d4:	f2 ff 25 e5 5b 00 00 	bnd jmp *0x5be5(%rip)        # 7fc0 <__ctype_b_loc@GLIBC_2.3>
    23db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023e0 <__sprintf_chk@plt>:
    23e0:	f3 0f 1e fa          	endbr64
    23e4:	f2 ff 25 dd 5b 00 00 	bnd jmp *0x5bdd(%rip)        # 7fc8 <__sprintf_chk@GLIBC_2.3.4>
    23eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023f0 <socket@plt>:
    23f0:	f3 0f 1e fa          	endbr64
    23f4:	f2 ff 25 d5 5b 00 00 	bnd jmp *0x5bd5(%rip)        # 7fd0 <socket@GLIBC_2.2.5>
    23fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000002400 <_start>:
    2400:	f3 0f 1e fa          	endbr64
    2404:	31 ed                	xor    %ebp,%ebp
    2406:	49 89 d1             	mov    %rdx,%r9
    2409:	5e                   	pop    %rsi
    240a:	48 89 e2             	mov    %rsp,%rdx
    240d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    2411:	50                   	push   %rax
    2412:	54                   	push   %rsp
    2413:	45 31 c0             	xor    %r8d,%r8d
    2416:	31 c9                	xor    %ecx,%ecx
    2418:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 24e9 <main>
    241f:	ff 15 b3 5b 00 00    	call   *0x5bb3(%rip)        # 7fd8 <__libc_start_main@GLIBC_2.34>
    2425:	f4                   	hlt
    2426:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    242d:	00 00 00 

0000000000002430 <deregister_tm_clones>:
    2430:	48 8d 3d 29 71 00 00 	lea    0x7129(%rip),%rdi        # 9560 <stdout@GLIBC_2.2.5>
    2437:	48 8d 05 22 71 00 00 	lea    0x7122(%rip),%rax        # 9560 <stdout@GLIBC_2.2.5>
    243e:	48 39 f8             	cmp    %rdi,%rax
    2441:	74 15                	je     2458 <deregister_tm_clones+0x28>
    2443:	48 8b 05 96 5b 00 00 	mov    0x5b96(%rip),%rax        # 7fe0 <_ITM_deregisterTMCloneTable@Base>
    244a:	48 85 c0             	test   %rax,%rax
    244d:	74 09                	je     2458 <deregister_tm_clones+0x28>
    244f:	ff e0                	jmp    *%rax
    2451:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2458:	c3                   	ret
    2459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002460 <register_tm_clones>:
    2460:	48 8d 3d f9 70 00 00 	lea    0x70f9(%rip),%rdi        # 9560 <stdout@GLIBC_2.2.5>
    2467:	48 8d 35 f2 70 00 00 	lea    0x70f2(%rip),%rsi        # 9560 <stdout@GLIBC_2.2.5>
    246e:	48 29 fe             	sub    %rdi,%rsi
    2471:	48 89 f0             	mov    %rsi,%rax
    2474:	48 c1 ee 3f          	shr    $0x3f,%rsi
    2478:	48 c1 f8 03          	sar    $0x3,%rax
    247c:	48 01 c6             	add    %rax,%rsi
    247f:	48 d1 fe             	sar    $1,%rsi
    2482:	74 14                	je     2498 <register_tm_clones+0x38>
    2484:	48 8b 05 65 5b 00 00 	mov    0x5b65(%rip),%rax        # 7ff0 <_ITM_registerTMCloneTable@Base>
    248b:	48 85 c0             	test   %rax,%rax
    248e:	74 08                	je     2498 <register_tm_clones+0x38>
    2490:	ff e0                	jmp    *%rax
    2492:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2498:	c3                   	ret
    2499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000024a0 <__do_global_dtors_aux>:
    24a0:	f3 0f 1e fa          	endbr64
    24a4:	80 3d dd 70 00 00 00 	cmpb   $0x0,0x70dd(%rip)        # 9588 <completed.0>
    24ab:	75 2b                	jne    24d8 <__do_global_dtors_aux+0x38>
    24ad:	55                   	push   %rbp
    24ae:	48 83 3d 42 5b 00 00 	cmpq   $0x0,0x5b42(%rip)        # 7ff8 <__cxa_finalize@GLIBC_2.2.5>
    24b5:	00 
    24b6:	48 89 e5             	mov    %rsp,%rbp
    24b9:	74 0c                	je     24c7 <__do_global_dtors_aux+0x27>
    24bb:	48 8b 3d 46 5b 00 00 	mov    0x5b46(%rip),%rdi        # 8008 <__dso_handle>
    24c2:	e8 49 fd ff ff       	call   2210 <__cxa_finalize@plt>
    24c7:	e8 64 ff ff ff       	call   2430 <deregister_tm_clones>
    24cc:	c6 05 b5 70 00 00 01 	movb   $0x1,0x70b5(%rip)        # 9588 <completed.0>
    24d3:	5d                   	pop    %rbp
    24d4:	c3                   	ret
    24d5:	0f 1f 00             	nopl   (%rax)
    24d8:	c3                   	ret
    24d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000024e0 <frame_dummy>:
    24e0:	f3 0f 1e fa          	endbr64
    24e4:	e9 77 ff ff ff       	jmp    2460 <register_tm_clones>

00000000000024e9 <main>:
    24e9:	f3 0f 1e fa          	endbr64
    24ed:	53                   	push   %rbx
    24ee:	83 ff 01             	cmp    $0x1,%edi
    24f1:	74 51                	je     2544 <main+0x5b>
    24f3:	48 89 f3             	mov    %rsi,%rbx
    24f6:	83 ff 02             	cmp    $0x2,%edi
    24f9:	75 7b                	jne    2576 <main+0x8d>
    24fb:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    24ff:	48 8d 35 00 32 00 00 	lea    0x3200(%rip),%rsi        # 5706 <array.0+0x3e6>
    2506:	e8 65 fe ff ff       	call   2370 <fopen@plt>
    250b:	48 89 05 7e 70 00 00 	mov    %rax,0x707e(%rip)        # 9590 <infile>
    2512:	48 85 c0             	test   %rax,%rax
    2515:	74 3d                	je     2554 <main+0x6b>
    2517:	e8 9d 08 00 00       	call   2db9 <initialize_bomb>
    251c:	48 89 c3             	mov    %rax,%rbx
    251f:	81 38 11 fa 21 20    	cmpl   $0x2021fa11,(%rax)
    2525:	74 72                	je     2599 <main+0xb0>
    2527:	48 8d 35 62 2b 00 00 	lea    0x2b62(%rip),%rsi        # 5090 <_IO_stdin_used+0x90>
    252e:	bf 01 00 00 00       	mov    $0x1,%edi
    2533:	b8 00 00 00 00       	mov    $0x0,%eax
    2538:	e8 23 fe ff ff       	call   2360 <__printf_chk@plt>
    253d:	b8 00 00 00 00       	mov    $0x0,%eax
    2542:	5b                   	pop    %rbx
    2543:	c3                   	ret
    2544:	48 8b 05 25 70 00 00 	mov    0x7025(%rip),%rax        # 9570 <stdin@GLIBC_2.2.5>
    254b:	48 89 05 3e 70 00 00 	mov    %rax,0x703e(%rip)        # 9590 <infile>
    2552:	eb c3                	jmp    2517 <main+0x2e>
    2554:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    2558:	48 8b 13             	mov    (%rbx),%rdx
    255b:	48 8d 35 a2 2a 00 00 	lea    0x2aa2(%rip),%rsi        # 5004 <_IO_stdin_used+0x4>
    2562:	bf 01 00 00 00       	mov    $0x1,%edi
    2567:	e8 f4 fd ff ff       	call   2360 <__printf_chk@plt>
    256c:	bf 08 00 00 00       	mov    $0x8,%edi
    2571:	e8 1a fe ff ff       	call   2390 <exit@plt>
    2576:	48 8b 16             	mov    (%rsi),%rdx
    2579:	48 8d 35 a1 2a 00 00 	lea    0x2aa1(%rip),%rsi        # 5021 <_IO_stdin_used+0x21>
    2580:	bf 01 00 00 00       	mov    $0x1,%edi
    2585:	b8 00 00 00 00       	mov    $0x0,%eax
    258a:	e8 d1 fd ff ff       	call   2360 <__printf_chk@plt>
    258f:	bf 08 00 00 00       	mov    $0x8,%edi
    2594:	e8 f7 fd ff ff       	call   2390 <exit@plt>
    2599:	48 8d 3d 30 2b 00 00 	lea    0x2b30(%rip),%rdi        # 50d0 <_IO_stdin_used+0xd0>
    25a0:	e8 cb fc ff ff       	call   2270 <puts@plt>
    25a5:	48 8d 3d 5c 2b 00 00 	lea    0x2b5c(%rip),%rdi        # 5108 <_IO_stdin_used+0x108>
    25ac:	e8 bf fc ff ff       	call   2270 <puts@plt>
    25b1:	e8 94 0b 00 00       	call   314a <read_line>
    25b6:	48 89 c7             	mov    %rax,%rdi
    25b9:	e8 da 01 00 00       	call   2798 <phase_1>
    25be:	48 89 df             	mov    %rbx,%rdi
    25c1:	e8 c2 0c 00 00       	call   3288 <phase_defused>
    25c6:	48 8d 3d 7b 2b 00 00 	lea    0x2b7b(%rip),%rdi        # 5148 <_IO_stdin_used+0x148>
    25cd:	e8 9e fc ff ff       	call   2270 <puts@plt>
    25d2:	e8 73 0b 00 00       	call   314a <read_line>
    25d7:	48 89 c7             	mov    %rax,%rdi
    25da:	e8 dd 01 00 00       	call   27bc <phase_2>
    25df:	48 89 df             	mov    %rbx,%rdi
    25e2:	e8 a1 0c 00 00       	call   3288 <phase_defused>
    25e7:	48 8d 3d 4d 2a 00 00 	lea    0x2a4d(%rip),%rdi        # 503b <_IO_stdin_used+0x3b>
    25ee:	e8 7d fc ff ff       	call   2270 <puts@plt>
    25f3:	e8 52 0b 00 00       	call   314a <read_line>
    25f8:	48 89 c7             	mov    %rax,%rdi
    25fb:	e8 39 02 00 00       	call   2839 <phase_3>
    2600:	48 89 df             	mov    %rbx,%rdi
    2603:	e8 80 0c 00 00       	call   3288 <phase_defused>
    2608:	48 8d 3d 49 2a 00 00 	lea    0x2a49(%rip),%rdi        # 5058 <_IO_stdin_used+0x58>
    260f:	e8 5c fc ff ff       	call   2270 <puts@plt>
    2614:	e8 31 0b 00 00       	call   314a <read_line>
    2619:	48 89 c7             	mov    %rax,%rdi
    261c:	e8 3f 03 00 00       	call   2960 <phase_4>
    2621:	48 89 df             	mov    %rbx,%rdi
    2624:	e8 5f 0c 00 00       	call   3288 <phase_defused>
    2629:	48 8d 3d 48 2b 00 00 	lea    0x2b48(%rip),%rdi        # 5178 <_IO_stdin_used+0x178>
    2630:	e8 3b fc ff ff       	call   2270 <puts@plt>
    2635:	e8 10 0b 00 00       	call   314a <read_line>
    263a:	48 89 c7             	mov    %rax,%rdi
    263d:	e8 9d 03 00 00       	call   29df <phase_5>
    2642:	48 89 df             	mov    %rbx,%rdi
    2645:	e8 3e 0c 00 00       	call   3288 <phase_defused>
    264a:	48 8d 3d 20 2a 00 00 	lea    0x2a20(%rip),%rdi        # 5071 <_IO_stdin_used+0x71>
    2651:	e8 1a fc ff ff       	call   2270 <puts@plt>
    2656:	e8 ef 0a 00 00       	call   314a <read_line>
    265b:	48 89 c7             	mov    %rax,%rdi
    265e:	e8 cb 03 00 00       	call   2a2e <phase_6>
    2663:	48 89 df             	mov    %rbx,%rdi
    2666:	e8 1d 0c 00 00       	call   3288 <phase_defused>
    266b:	48 89 df             	mov    %rbx,%rdi
    266e:	e8 bd fb ff ff       	call   2230 <free@plt>
    2673:	e9 c5 fe ff ff       	jmp    253d <main+0x54>

0000000000002678 <abracadabra>:
    2678:	f3 0f 1e fa          	endbr64
    267c:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    2683:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    268a:	00 00 
    268c:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    2693:	00 
    2694:	31 c0                	xor    %eax,%eax
    2696:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    269b:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    26a0:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    26a5:	48 8d 35 ef 2a 00 00 	lea    0x2aef(%rip),%rsi        # 519b <_IO_stdin_used+0x19b>
    26ac:	48 8d 3d d5 70 00 00 	lea    0x70d5(%rip),%rdi        # 9788 <input_strings+0x168>
    26b3:	e8 88 fc ff ff       	call   2340 <__isoc99_sscanf@plt>
    26b8:	83 f8 03             	cmp    $0x3,%eax
    26bb:	74 20                	je     26dd <abracadabra+0x65>
    26bd:	b8 00 00 00 00       	mov    $0x0,%eax
    26c2:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
    26c9:	00 
    26ca:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    26d1:	00 00 
    26d3:	75 2b                	jne    2700 <abracadabra+0x88>
    26d5:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    26dc:	c3                   	ret
    26dd:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    26e2:	48 8d 35 bf 2a 00 00 	lea    0x2abf(%rip),%rsi        # 51a8 <_IO_stdin_used+0x1a8>
    26e9:	e8 7c 06 00 00       	call   2d6a <strings_not_equal>
    26ee:	85 c0                	test   %eax,%eax
    26f0:	74 07                	je     26f9 <abracadabra+0x81>
    26f2:	b8 00 00 00 00       	mov    $0x0,%eax
    26f7:	eb c9                	jmp    26c2 <abracadabra+0x4a>
    26f9:	b8 01 00 00 00       	mov    $0x1,%eax
    26fe:	eb c2                	jmp    26c2 <abracadabra+0x4a>
    2700:	e8 9b fb ff ff       	call   22a0 <__stack_chk_fail@plt>

0000000000002705 <alohomora>:
    2705:	f3 0f 1e fa          	endbr64
    2709:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    2710:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2717:	00 00 
    2719:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    271e:	31 c0                	xor    %eax,%eax
    2720:	48 8d 05 71 6f 00 00 	lea    0x6f71(%rip),%rax        # 9698 <input_strings+0x78>
    2727:	eb 04                	jmp    272d <alohomora+0x28>
    2729:	48 83 c0 01          	add    $0x1,%rax
    272d:	80 38 00             	cmpb   $0x0,(%rax)
    2730:	75 f7                	jne    2729 <alohomora+0x24>
    2732:	48 83 e8 01          	sub    $0x1,%rax
    2736:	48 89 e2             	mov    %rsp,%rdx
    2739:	eb 0a                	jmp    2745 <alohomora+0x40>
    273b:	88 0a                	mov    %cl,(%rdx)
    273d:	48 83 c2 01          	add    $0x1,%rdx
    2741:	48 83 e8 01          	sub    $0x1,%rax
    2745:	0f b6 08             	movzbl (%rax),%ecx
    2748:	80 f9 20             	cmp    $0x20,%cl
    274b:	74 0c                	je     2759 <alohomora+0x54>
    274d:	48 8d 35 44 6f 00 00 	lea    0x6f44(%rip),%rsi        # 9698 <input_strings+0x78>
    2754:	48 39 f0             	cmp    %rsi,%rax
    2757:	75 e2                	jne    273b <alohomora+0x36>
    2759:	c6 02 00             	movb   $0x0,(%rdx)
    275c:	48 89 e7             	mov    %rsp,%rdi
    275f:	48 8d 35 6a 2a 00 00 	lea    0x2a6a(%rip),%rsi        # 51d0 <_IO_stdin_used+0x1d0>
    2766:	e8 ff 05 00 00       	call   2d6a <strings_not_equal>
    276b:	85 c0                	test   %eax,%eax
    276d:	74 1d                	je     278c <alohomora+0x87>
    276f:	b8 00 00 00 00       	mov    $0x0,%eax
    2774:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
    2779:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2780:	00 00 
    2782:	75 0f                	jne    2793 <alohomora+0x8e>
    2784:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
    278b:	c3                   	ret
    278c:	b8 01 00 00 00       	mov    $0x1,%eax
    2791:	eb e1                	jmp    2774 <alohomora+0x6f>
    2793:	e8 08 fb ff ff       	call   22a0 <__stack_chk_fail@plt>

0000000000002798 <phase_1>:
    2798:	f3 0f 1e fa          	endbr64
    279c:	48 83 ec 08          	sub    $0x8,%rsp
    27a0:	48 8d 35 51 2a 00 00 	lea    0x2a51(%rip),%rsi        # 51f8 <_IO_stdin_used+0x1f8>
    27a7:	e8 be 05 00 00       	call   2d6a <strings_not_equal>
    27ac:	85 c0                	test   %eax,%eax
    27ae:	75 05                	jne    27b5 <phase_1+0x1d>
    27b0:	48 83 c4 08          	add    $0x8,%rsp
    27b4:	c3                   	ret
    27b5:	e8 c5 08 00 00       	call   307f <explode_bomb>
    27ba:	eb f4                	jmp    27b0 <phase_1+0x18>

00000000000027bc <phase_2>:
    27bc:	f3 0f 1e fa          	endbr64
    27c0:	53                   	push   %rbx
    27c1:	48 83 ec 20          	sub    $0x20,%rsp
    27c5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    27cc:	00 00 
    27ce:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    27d3:	31 c0                	xor    %eax,%eax
    27d5:	48 89 e6             	mov    %rsp,%rsi
    27d8:	e8 28 09 00 00       	call   3105 <read_six_numbers>
    27dd:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    27e1:	75 07                	jne    27ea <phase_2+0x2e>
    27e3:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    27e8:	74 05                	je     27ef <phase_2+0x33>
    27ea:	e8 90 08 00 00       	call   307f <explode_bomb>
    27ef:	bb 02 00 00 00       	mov    $0x2,%ebx
    27f4:	eb 03                	jmp    27f9 <phase_2+0x3d>
    27f6:	83 c3 01             	add    $0x1,%ebx
    27f9:	83 fb 05             	cmp    $0x5,%ebx
    27fc:	7f 20                	jg     281e <phase_2+0x62>
    27fe:	48 63 d3             	movslq %ebx,%rdx
    2801:	8d 4b fe             	lea    -0x2(%rbx),%ecx
    2804:	48 63 c9             	movslq %ecx,%rcx
    2807:	8d 43 ff             	lea    -0x1(%rbx),%eax
    280a:	48 98                	cltq
    280c:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    280f:	03 04 8c             	add    (%rsp,%rcx,4),%eax
    2812:	39 04 94             	cmp    %eax,(%rsp,%rdx,4)
    2815:	74 df                	je     27f6 <phase_2+0x3a>
    2817:	e8 63 08 00 00       	call   307f <explode_bomb>
    281c:	eb d8                	jmp    27f6 <phase_2+0x3a>
    281e:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    2823:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    282a:	00 00 
    282c:	75 06                	jne    2834 <phase_2+0x78>
    282e:	48 83 c4 20          	add    $0x20,%rsp
    2832:	5b                   	pop    %rbx
    2833:	c3                   	ret
    2834:	e8 67 fa ff ff       	call   22a0 <__stack_chk_fail@plt>

0000000000002839 <phase_3>:
    2839:	f3 0f 1e fa          	endbr64
    283d:	48 83 ec 18          	sub    $0x18,%rsp
    2841:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2848:	00 00 
    284a:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    284f:	31 c0                	xor    %eax,%eax
    2851:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    2856:	48 89 e2             	mov    %rsp,%rdx
    2859:	48 8d 35 08 2e 00 00 	lea    0x2e08(%rip),%rsi        # 5668 <array.0+0x348>
    2860:	e8 db fa ff ff       	call   2340 <__isoc99_sscanf@plt>
    2865:	83 f8 01             	cmp    $0x1,%eax
    2868:	7e 1e                	jle    2888 <phase_3+0x4f>
    286a:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    286e:	0f 87 9a 00 00 00    	ja     290e <phase_3+0xd5>
    2874:	8b 04 24             	mov    (%rsp),%eax
    2877:	48 8d 15 82 2a 00 00 	lea    0x2a82(%rip),%rdx        # 5300 <_IO_stdin_used+0x300>
    287e:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    2882:	48 01 d0             	add    %rdx,%rax
    2885:	3e ff e0             	notrack jmp *%rax
    2888:	e8 f2 07 00 00       	call   307f <explode_bomb>
    288d:	eb db                	jmp    286a <phase_3+0x31>
    288f:	b8 00 00 00 00       	mov    $0x0,%eax
    2894:	2d 45 01 00 00       	sub    $0x145,%eax
    2899:	05 e3 03 00 00       	add    $0x3e3,%eax
    289e:	2d 2c 01 00 00       	sub    $0x12c,%eax
    28a3:	05 2c 01 00 00       	add    $0x12c,%eax
    28a8:	2d 2c 01 00 00       	sub    $0x12c,%eax
    28ad:	05 2c 01 00 00       	add    $0x12c,%eax
    28b2:	2d 2c 01 00 00       	sub    $0x12c,%eax
    28b7:	83 3c 24 05          	cmpl   $0x5,(%rsp)
    28bb:	7f 06                	jg     28c3 <phase_3+0x8a>
    28bd:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    28c1:	74 05                	je     28c8 <phase_3+0x8f>
    28c3:	e8 b7 07 00 00       	call   307f <explode_bomb>
    28c8:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    28cd:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    28d4:	00 00 
    28d6:	75 42                	jne    291a <phase_3+0xe1>
    28d8:	48 83 c4 18          	add    $0x18,%rsp
    28dc:	c3                   	ret
    28dd:	b8 5e 03 00 00       	mov    $0x35e,%eax
    28e2:	eb b0                	jmp    2894 <phase_3+0x5b>
    28e4:	b8 00 00 00 00       	mov    $0x0,%eax
    28e9:	eb ae                	jmp    2899 <phase_3+0x60>
    28eb:	b8 00 00 00 00       	mov    $0x0,%eax
    28f0:	eb ac                	jmp    289e <phase_3+0x65>
    28f2:	b8 00 00 00 00       	mov    $0x0,%eax
    28f7:	eb aa                	jmp    28a3 <phase_3+0x6a>
    28f9:	b8 00 00 00 00       	mov    $0x0,%eax
    28fe:	eb a8                	jmp    28a8 <phase_3+0x6f>
    2900:	b8 00 00 00 00       	mov    $0x0,%eax
    2905:	eb a6                	jmp    28ad <phase_3+0x74>
    2907:	b8 00 00 00 00       	mov    $0x0,%eax
    290c:	eb a4                	jmp    28b2 <phase_3+0x79>
    290e:	e8 6c 07 00 00       	call   307f <explode_bomb>
    2913:	b8 00 00 00 00       	mov    $0x0,%eax
    2918:	eb 9d                	jmp    28b7 <phase_3+0x7e>
    291a:	e8 81 f9 ff ff       	call   22a0 <__stack_chk_fail@plt>

000000000000291f <func4>:
    291f:	f3 0f 1e fa          	endbr64
    2923:	48 83 ec 08          	sub    $0x8,%rsp
    2927:	89 d1                	mov    %edx,%ecx
    2929:	29 f1                	sub    %esi,%ecx
    292b:	89 c8                	mov    %ecx,%eax
    292d:	c1 e8 1f             	shr    $0x1f,%eax
    2930:	01 c8                	add    %ecx,%eax
    2932:	d1 f8                	sar    $1,%eax
    2934:	01 f0                	add    %esi,%eax
    2936:	39 f8                	cmp    %edi,%eax
    2938:	7f 0c                	jg     2946 <func4+0x27>
    293a:	7c 16                	jl     2952 <func4+0x33>
    293c:	b8 00 00 00 00       	mov    $0x0,%eax
    2941:	48 83 c4 08          	add    $0x8,%rsp
    2945:	c3                   	ret
    2946:	8d 50 ff             	lea    -0x1(%rax),%edx
    2949:	e8 d1 ff ff ff       	call   291f <func4>
    294e:	01 c0                	add    %eax,%eax
    2950:	eb ef                	jmp    2941 <func4+0x22>
    2952:	8d 70 01             	lea    0x1(%rax),%esi
    2955:	e8 c5 ff ff ff       	call   291f <func4>
    295a:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    295e:	eb e1                	jmp    2941 <func4+0x22>

0000000000002960 <phase_4>:
    2960:	f3 0f 1e fa          	endbr64
    2964:	48 83 ec 18          	sub    $0x18,%rsp
    2968:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    296f:	00 00 
    2971:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2976:	31 c0                	xor    %eax,%eax
    2978:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    297d:	48 89 e2             	mov    %rsp,%rdx
    2980:	48 8d 35 e1 2c 00 00 	lea    0x2ce1(%rip),%rsi        # 5668 <array.0+0x348>
    2987:	e8 b4 f9 ff ff       	call   2340 <__isoc99_sscanf@plt>
    298c:	83 f8 02             	cmp    $0x2,%eax
    298f:	75 0c                	jne    299d <phase_4+0x3d>
    2991:	8b 04 24             	mov    (%rsp),%eax
    2994:	85 c0                	test   %eax,%eax
    2996:	78 05                	js     299d <phase_4+0x3d>
    2998:	83 f8 0e             	cmp    $0xe,%eax
    299b:	7e 05                	jle    29a2 <phase_4+0x42>
    299d:	e8 dd 06 00 00       	call   307f <explode_bomb>
    29a2:	ba 0e 00 00 00       	mov    $0xe,%edx
    29a7:	be 00 00 00 00       	mov    $0x0,%esi
    29ac:	8b 3c 24             	mov    (%rsp),%edi
    29af:	e8 6b ff ff ff       	call   291f <func4>
    29b4:	83 f8 02             	cmp    $0x2,%eax
    29b7:	75 07                	jne    29c0 <phase_4+0x60>
    29b9:	83 7c 24 04 02       	cmpl   $0x2,0x4(%rsp)
    29be:	74 05                	je     29c5 <phase_4+0x65>
    29c0:	e8 ba 06 00 00       	call   307f <explode_bomb>
    29c5:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    29ca:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    29d1:	00 00 
    29d3:	75 05                	jne    29da <phase_4+0x7a>
    29d5:	48 83 c4 18          	add    $0x18,%rsp
    29d9:	c3                   	ret
    29da:	e8 c1 f8 ff ff       	call   22a0 <__stack_chk_fail@plt>

00000000000029df <phase_5>:
    29df:	f3 0f 1e fa          	endbr64
    29e3:	53                   	push   %rbx
    29e4:	48 89 fb             	mov    %rdi,%rbx
    29e7:	e8 66 03 00 00       	call   2d52 <string_length>
    29ec:	83 f8 06             	cmp    $0x6,%eax
    29ef:	75 0c                	jne    29fd <phase_5+0x1e>
    29f1:	b9 00 00 00 00       	mov    $0x0,%ecx
    29f6:	b8 00 00 00 00       	mov    $0x0,%eax
    29fb:	eb 1e                	jmp    2a1b <phase_5+0x3c>
    29fd:	e8 7d 06 00 00       	call   307f <explode_bomb>
    2a02:	eb ed                	jmp    29f1 <phase_5+0x12>
    2a04:	48 63 d0             	movslq %eax,%rdx
    2a07:	0f b6 14 13          	movzbl (%rbx,%rdx,1),%edx
    2a0b:	83 e2 0f             	and    $0xf,%edx
    2a0e:	48 8d 35 0b 29 00 00 	lea    0x290b(%rip),%rsi        # 5320 <array.0>
    2a15:	03 0c 96             	add    (%rsi,%rdx,4),%ecx
    2a18:	83 c0 01             	add    $0x1,%eax
    2a1b:	83 f8 05             	cmp    $0x5,%eax
    2a1e:	7e e4                	jle    2a04 <phase_5+0x25>
    2a20:	83 f9 45             	cmp    $0x45,%ecx
    2a23:	75 02                	jne    2a27 <phase_5+0x48>
    2a25:	5b                   	pop    %rbx
    2a26:	c3                   	ret
    2a27:	e8 53 06 00 00       	call   307f <explode_bomb>
    2a2c:	eb f7                	jmp    2a25 <phase_5+0x46>

0000000000002a2e <phase_6>:
    2a2e:	f3 0f 1e fa          	endbr64
    2a32:	41 54                	push   %r12
    2a34:	55                   	push   %rbp
    2a35:	53                   	push   %rbx
    2a36:	48 83 ec 60          	sub    $0x60,%rsp
    2a3a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2a41:	00 00 
    2a43:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    2a48:	31 c0                	xor    %eax,%eax
    2a4a:	48 89 e6             	mov    %rsp,%rsi
    2a4d:	e8 b3 06 00 00       	call   3105 <read_six_numbers>
    2a52:	bd 00 00 00 00       	mov    $0x0,%ebp
    2a57:	eb 27                	jmp    2a80 <phase_6+0x52>
    2a59:	e8 21 06 00 00       	call   307f <explode_bomb>
    2a5e:	eb 33                	jmp    2a93 <phase_6+0x65>
    2a60:	83 c3 01             	add    $0x1,%ebx
    2a63:	83 fb 05             	cmp    $0x5,%ebx
    2a66:	7f 15                	jg     2a7d <phase_6+0x4f>
    2a68:	48 63 c5             	movslq %ebp,%rax
    2a6b:	48 63 d3             	movslq %ebx,%rdx
    2a6e:	8b 3c 94             	mov    (%rsp,%rdx,4),%edi
    2a71:	39 3c 84             	cmp    %edi,(%rsp,%rax,4)
    2a74:	75 ea                	jne    2a60 <phase_6+0x32>
    2a76:	e8 04 06 00 00       	call   307f <explode_bomb>
    2a7b:	eb e3                	jmp    2a60 <phase_6+0x32>
    2a7d:	44 89 e5             	mov    %r12d,%ebp
    2a80:	83 fd 05             	cmp    $0x5,%ebp
    2a83:	7f 17                	jg     2a9c <phase_6+0x6e>
    2a85:	48 63 c5             	movslq %ebp,%rax
    2a88:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    2a8b:	83 e8 01             	sub    $0x1,%eax
    2a8e:	83 f8 05             	cmp    $0x5,%eax
    2a91:	77 c6                	ja     2a59 <phase_6+0x2b>
    2a93:	44 8d 65 01          	lea    0x1(%rbp),%r12d
    2a97:	44 89 e3             	mov    %r12d,%ebx
    2a9a:	eb c7                	jmp    2a63 <phase_6+0x35>
    2a9c:	b8 00 00 00 00       	mov    $0x0,%eax
    2aa1:	eb 11                	jmp    2ab4 <phase_6+0x86>
    2aa3:	48 63 c8             	movslq %eax,%rcx
    2aa6:	ba 07 00 00 00       	mov    $0x7,%edx
    2aab:	2b 14 8c             	sub    (%rsp,%rcx,4),%edx
    2aae:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
    2ab1:	83 c0 01             	add    $0x1,%eax
    2ab4:	83 f8 05             	cmp    $0x5,%eax
    2ab7:	7e ea                	jle    2aa3 <phase_6+0x75>
    2ab9:	be 00 00 00 00       	mov    $0x0,%esi
    2abe:	eb 17                	jmp    2ad7 <phase_6+0xa9>
    2ac0:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    2ac4:	83 c0 01             	add    $0x1,%eax
    2ac7:	48 63 ce             	movslq %esi,%rcx
    2aca:	39 04 8c             	cmp    %eax,(%rsp,%rcx,4)
    2acd:	7f f1                	jg     2ac0 <phase_6+0x92>
    2acf:	48 89 54 cc 20       	mov    %rdx,0x20(%rsp,%rcx,8)
    2ad4:	83 c6 01             	add    $0x1,%esi
    2ad7:	83 fe 05             	cmp    $0x5,%esi
    2ada:	7f 0e                	jg     2aea <phase_6+0xbc>
    2adc:	b8 01 00 00 00       	mov    $0x1,%eax
    2ae1:	48 8d 15 58 66 00 00 	lea    0x6658(%rip),%rdx        # 9140 <node1>
    2ae8:	eb dd                	jmp    2ac7 <phase_6+0x99>
    2aea:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    2aef:	48 89 d9             	mov    %rbx,%rcx
    2af2:	b8 01 00 00 00       	mov    $0x1,%eax
    2af7:	eb 12                	jmp    2b0b <phase_6+0xdd>
    2af9:	48 63 d0             	movslq %eax,%rdx
    2afc:	48 8b 54 d4 20       	mov    0x20(%rsp,%rdx,8),%rdx
    2b01:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    2b05:	83 c0 01             	add    $0x1,%eax
    2b08:	48 89 d1             	mov    %rdx,%rcx
    2b0b:	83 f8 05             	cmp    $0x5,%eax
    2b0e:	7e e9                	jle    2af9 <phase_6+0xcb>
    2b10:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
    2b17:	00 
    2b18:	bd 00 00 00 00       	mov    $0x0,%ebp
    2b1d:	eb 07                	jmp    2b26 <phase_6+0xf8>
    2b1f:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    2b23:	83 c5 01             	add    $0x1,%ebp
    2b26:	83 fd 04             	cmp    $0x4,%ebp
    2b29:	7f 11                	jg     2b3c <phase_6+0x10e>
    2b2b:	48 8b 43 08          	mov    0x8(%rbx),%rax
    2b2f:	8b 00                	mov    (%rax),%eax
    2b31:	39 03                	cmp    %eax,(%rbx)
    2b33:	7e ea                	jle    2b1f <phase_6+0xf1>
    2b35:	e8 45 05 00 00       	call   307f <explode_bomb>
    2b3a:	eb e3                	jmp    2b1f <phase_6+0xf1>
    2b3c:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    2b41:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2b48:	00 00 
    2b4a:	75 09                	jne    2b55 <phase_6+0x127>
    2b4c:	48 83 c4 60          	add    $0x60,%rsp
    2b50:	5b                   	pop    %rbx
    2b51:	5d                   	pop    %rbp
    2b52:	41 5c                	pop    %r12
    2b54:	c3                   	ret
    2b55:	e8 46 f7 ff ff       	call   22a0 <__stack_chk_fail@plt>

0000000000002b5a <valid_bit>:
    2b5a:	f3 0f 1e fa          	endbr64
    2b5e:	48 89 f8             	mov    %rdi,%rax
    2b61:	83 e0 01             	and    $0x1,%eax
    2b64:	c3                   	ret

0000000000002b65 <get_pointer>:
    2b65:	f3 0f 1e fa          	endbr64
    2b69:	48 89 f8             	mov    %rdi,%rax
    2b6c:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    2b70:	c3                   	ret

0000000000002b71 <get_value>:
    2b71:	f3 0f 1e fa          	endbr64
    2b75:	41 55                	push   %r13
    2b77:	41 54                	push   %r12
    2b79:	55                   	push   %rbp
    2b7a:	53                   	push   %rbx
    2b7b:	48 83 ec 08          	sub    $0x8,%rsp
    2b7f:	49 89 fd             	mov    %rdi,%r13
    2b82:	bb 00 00 00 00       	mov    $0x0,%ebx
    2b87:	48 8d 2d 52 65 00 00 	lea    0x6552(%rip),%rbp        # 90e0 <root>
    2b8e:	eb 24                	jmp    2bb4 <get_value+0x43>
    2b90:	49 63 04 24          	movslq (%r12),%rax
    2b94:	48 8b 6c c5 00       	mov    0x0(%rbp,%rax,8),%rbp
    2b99:	48 89 ef             	mov    %rbp,%rdi
    2b9c:	e8 b9 ff ff ff       	call   2b5a <valid_bit>
    2ba1:	48 85 c0             	test   %rax,%rax
    2ba4:	74 29                	je     2bcf <get_value+0x5e>
    2ba6:	48 89 ef             	mov    %rbp,%rdi
    2ba9:	e8 b7 ff ff ff       	call   2b65 <get_pointer>
    2bae:	48 89 c5             	mov    %rax,%rbp
    2bb1:	83 c3 01             	add    $0x1,%ebx
    2bb4:	83 fb 01             	cmp    $0x1,%ebx
    2bb7:	7f 1d                	jg     2bd6 <get_value+0x65>
    2bb9:	48 63 c3             	movslq %ebx,%rax
    2bbc:	4d 8d 64 85 00       	lea    0x0(%r13,%rax,4),%r12
    2bc1:	41 83 3c 24 03       	cmpl   $0x3,(%r12)
    2bc6:	76 c8                	jbe    2b90 <get_value+0x1f>
    2bc8:	e8 b2 04 00 00       	call   307f <explode_bomb>
    2bcd:	eb c1                	jmp    2b90 <get_value+0x1f>
    2bcf:	e8 ab 04 00 00       	call   307f <explode_bomb>
    2bd4:	eb d0                	jmp    2ba6 <get_value+0x35>
    2bd6:	41 83 7d 08 03       	cmpl   $0x3,0x8(%r13)
    2bdb:	77 14                	ja     2bf1 <get_value+0x80>
    2bdd:	49 63 45 08          	movslq 0x8(%r13),%rax
    2be1:	48 8b 44 c5 00       	mov    0x0(%rbp,%rax,8),%rax
    2be6:	48 83 c4 08          	add    $0x8,%rsp
    2bea:	5b                   	pop    %rbx
    2beb:	5d                   	pop    %rbp
    2bec:	41 5c                	pop    %r12
    2bee:	41 5d                	pop    %r13
    2bf0:	c3                   	ret
    2bf1:	e8 89 04 00 00       	call   307f <explode_bomb>
    2bf6:	eb e5                	jmp    2bdd <get_value+0x6c>

0000000000002bf8 <secret_phase>:
    2bf8:	f3 0f 1e fa          	endbr64
    2bfc:	53                   	push   %rbx
    2bfd:	48 83 ec 30          	sub    $0x30,%rsp
    2c01:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2c08:	00 00 
    2c0a:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    2c0f:	31 c0                	xor    %eax,%eax
    2c11:	e8 34 05 00 00       	call   314a <read_line>
    2c16:	48 89 c7             	mov    %rax,%rdi
    2c19:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
    2c1e:	e8 e2 04 00 00       	call   3105 <read_six_numbers>
    2c23:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    2c27:	39 44 24 10          	cmp    %eax,0x10(%rsp)
    2c2b:	74 6c                	je     2c99 <secret_phase+0xa1>
    2c2d:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    2c32:	e8 3a ff ff ff       	call   2b71 <get_value>
    2c37:	48 89 c3             	mov    %rax,%rbx
    2c3a:	48 8d 7c 24 1c       	lea    0x1c(%rsp),%rdi
    2c3f:	e8 2d ff ff ff       	call   2b71 <get_value>
    2c44:	48 39 c3             	cmp    %rax,%rbx
    2c47:	75 6e                	jne    2cb7 <secret_phase+0xbf>
    2c49:	48 8d 3d d0 25 00 00 	lea    0x25d0(%rip),%rdi        # 5220 <_IO_stdin_used+0x220>
    2c50:	e8 1b f6 ff ff       	call   2270 <puts@plt>
    2c55:	48 8d 3d ec 25 00 00 	lea    0x25ec(%rip),%rdi        # 5248 <_IO_stdin_used+0x248>
    2c5c:	e8 0f f6 ff ff       	call   2270 <puts@plt>
    2c61:	48 8d 3d 28 26 00 00 	lea    0x2628(%rip),%rdi        # 5290 <_IO_stdin_used+0x290>
    2c68:	e8 03 f6 ff ff       	call   2270 <puts@plt>
    2c6d:	48 8d 3d 4c 26 00 00 	lea    0x264c(%rip),%rdi        # 52c0 <_IO_stdin_used+0x2c0>
    2c74:	e8 f7 f5 ff ff       	call   2270 <puts@plt>
    2c79:	48 8d 7c 24 0c       	lea    0xc(%rsp),%rdi
    2c7e:	e8 05 06 00 00       	call   3288 <phase_defused>
    2c83:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    2c88:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2c8f:	00 00 
    2c91:	75 2b                	jne    2cbe <secret_phase+0xc6>
    2c93:	48 83 c4 30          	add    $0x30,%rsp
    2c97:	5b                   	pop    %rbx
    2c98:	c3                   	ret
    2c99:	8b 44 24 20          	mov    0x20(%rsp),%eax
    2c9d:	39 44 24 14          	cmp    %eax,0x14(%rsp)
    2ca1:	75 8a                	jne    2c2d <secret_phase+0x35>
    2ca3:	8b 44 24 24          	mov    0x24(%rsp),%eax
    2ca7:	39 44 24 18          	cmp    %eax,0x18(%rsp)
    2cab:	75 80                	jne    2c2d <secret_phase+0x35>
    2cad:	e8 cd 03 00 00       	call   307f <explode_bomb>
    2cb2:	e9 76 ff ff ff       	jmp    2c2d <secret_phase+0x35>
    2cb7:	e8 c3 03 00 00       	call   307f <explode_bomb>
    2cbc:	eb 8b                	jmp    2c49 <secret_phase+0x51>
    2cbe:	e8 dd f5 ff ff       	call   22a0 <__stack_chk_fail@plt>

0000000000002cc3 <sig_handler>:
    2cc3:	f3 0f 1e fa          	endbr64
    2cc7:	50                   	push   %rax
    2cc8:	58                   	pop    %rax
    2cc9:	48 83 ec 08          	sub    $0x8,%rsp
    2ccd:	48 8d 3d 8c 26 00 00 	lea    0x268c(%rip),%rdi        # 5360 <array.0+0x40>
    2cd4:	e8 97 f5 ff ff       	call   2270 <puts@plt>
    2cd9:	bf 03 00 00 00       	mov    $0x3,%edi
    2cde:	e8 dd f6 ff ff       	call   23c0 <sleep@plt>
    2ce3:	48 8d 35 f7 28 00 00 	lea    0x28f7(%rip),%rsi        # 55e1 <array.0+0x2c1>
    2cea:	bf 01 00 00 00       	mov    $0x1,%edi
    2cef:	b8 00 00 00 00       	mov    $0x0,%eax
    2cf4:	e8 67 f6 ff ff       	call   2360 <__printf_chk@plt>
    2cf9:	48 8b 3d 60 68 00 00 	mov    0x6860(%rip),%rdi        # 9560 <stdout@GLIBC_2.2.5>
    2d00:	e8 2b f6 ff ff       	call   2330 <fflush@plt>
    2d05:	bf 01 00 00 00       	mov    $0x1,%edi
    2d0a:	e8 b1 f6 ff ff       	call   23c0 <sleep@plt>
    2d0f:	48 8d 3d d3 28 00 00 	lea    0x28d3(%rip),%rdi        # 55e9 <array.0+0x2c9>
    2d16:	e8 55 f5 ff ff       	call   2270 <puts@plt>
    2d1b:	bf 10 00 00 00       	mov    $0x10,%edi
    2d20:	e8 6b f6 ff ff       	call   2390 <exit@plt>

0000000000002d25 <invalid_phase>:
    2d25:	f3 0f 1e fa          	endbr64
    2d29:	50                   	push   %rax
    2d2a:	58                   	pop    %rax
    2d2b:	48 83 ec 08          	sub    $0x8,%rsp
    2d2f:	48 89 fa             	mov    %rdi,%rdx
    2d32:	48 8d 35 b8 28 00 00 	lea    0x28b8(%rip),%rsi        # 55f1 <array.0+0x2d1>
    2d39:	bf 01 00 00 00       	mov    $0x1,%edi
    2d3e:	b8 00 00 00 00       	mov    $0x0,%eax
    2d43:	e8 18 f6 ff ff       	call   2360 <__printf_chk@plt>
    2d48:	bf 08 00 00 00       	mov    $0x8,%edi
    2d4d:	e8 3e f6 ff ff       	call   2390 <exit@plt>

0000000000002d52 <string_length>:
    2d52:	f3 0f 1e fa          	endbr64
    2d56:	b8 00 00 00 00       	mov    $0x0,%eax
    2d5b:	eb 07                	jmp    2d64 <string_length+0x12>
    2d5d:	48 83 c7 01          	add    $0x1,%rdi
    2d61:	83 c0 01             	add    $0x1,%eax
    2d64:	80 3f 00             	cmpb   $0x0,(%rdi)
    2d67:	75 f4                	jne    2d5d <string_length+0xb>
    2d69:	c3                   	ret

0000000000002d6a <strings_not_equal>:
    2d6a:	f3 0f 1e fa          	endbr64
    2d6e:	41 54                	push   %r12
    2d70:	55                   	push   %rbp
    2d71:	53                   	push   %rbx
    2d72:	48 89 fb             	mov    %rdi,%rbx
    2d75:	48 89 f5             	mov    %rsi,%rbp
    2d78:	e8 d5 ff ff ff       	call   2d52 <string_length>
    2d7d:	41 89 c4             	mov    %eax,%r12d
    2d80:	48 89 ef             	mov    %rbp,%rdi
    2d83:	e8 ca ff ff ff       	call   2d52 <string_length>
    2d88:	41 39 c4             	cmp    %eax,%r12d
    2d8b:	74 12                	je     2d9f <strings_not_equal+0x35>
    2d8d:	b8 01 00 00 00       	mov    $0x1,%eax
    2d92:	5b                   	pop    %rbx
    2d93:	5d                   	pop    %rbp
    2d94:	41 5c                	pop    %r12
    2d96:	c3                   	ret
    2d97:	48 83 c3 01          	add    $0x1,%rbx
    2d9b:	48 83 c5 01          	add    $0x1,%rbp
    2d9f:	0f b6 03             	movzbl (%rbx),%eax
    2da2:	84 c0                	test   %al,%al
    2da4:	74 0c                	je     2db2 <strings_not_equal+0x48>
    2da6:	38 45 00             	cmp    %al,0x0(%rbp)
    2da9:	74 ec                	je     2d97 <strings_not_equal+0x2d>
    2dab:	b8 01 00 00 00       	mov    $0x1,%eax
    2db0:	eb e0                	jmp    2d92 <strings_not_equal+0x28>
    2db2:	b8 00 00 00 00       	mov    $0x0,%eax
    2db7:	eb d9                	jmp    2d92 <strings_not_equal+0x28>

0000000000002db9 <initialize_bomb>:
    2db9:	f3 0f 1e fa          	endbr64
    2dbd:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2dc4:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2dc9:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2dd0:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2dd5:	48 83 ec 58          	sub    $0x58,%rsp
    2dd9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2de0:	00 00 
    2de2:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    2de9:	00 
    2dea:	31 c0                	xor    %eax,%eax
    2dec:	48 8d 35 d0 fe ff ff 	lea    -0x130(%rip),%rsi        # 2cc3 <sig_handler>
    2df3:	bf 02 00 00 00       	mov    $0x2,%edi
    2df8:	e8 e3 f4 ff ff       	call   22e0 <signal@plt>
    2dfd:	48 89 e7             	mov    %rsp,%rdi
    2e00:	be 40 00 00 00       	mov    $0x40,%esi
    2e05:	e8 76 f5 ff ff       	call   2380 <gethostname@plt>
    2e0a:	85 c0                	test   %eax,%eax
    2e0c:	75 39                	jne    2e47 <initialize_bomb+0x8e>
    2e0e:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2e13:	e8 5b 10 00 00       	call   3e73 <init_driver>
    2e18:	85 c0                	test   %eax,%eax
    2e1a:	78 41                	js     2e5d <initialize_bomb+0xa4>
    2e1c:	bf 04 00 00 00       	mov    $0x4,%edi
    2e21:	e8 fa f4 ff ff       	call   2320 <malloc@plt>
    2e26:	c7 00 11 fa 21 20    	movl   $0x2021fa11,(%rax)
    2e2c:	48 8b 94 24 48 20 00 	mov    0x2048(%rsp),%rdx
    2e33:	00 
    2e34:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2e3b:	00 00 
    2e3d:	75 43                	jne    2e82 <initialize_bomb+0xc9>
    2e3f:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    2e46:	c3                   	ret
    2e47:	48 8d 3d 4a 25 00 00 	lea    0x254a(%rip),%rdi        # 5398 <array.0+0x78>
    2e4e:	e8 1d f4 ff ff       	call   2270 <puts@plt>
    2e53:	bf 08 00 00 00       	mov    $0x8,%edi
    2e58:	e8 33 f5 ff ff       	call   2390 <exit@plt>
    2e5d:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    2e62:	48 8d 35 99 27 00 00 	lea    0x2799(%rip),%rsi        # 5602 <array.0+0x2e2>
    2e69:	bf 01 00 00 00       	mov    $0x1,%edi
    2e6e:	b8 00 00 00 00       	mov    $0x0,%eax
    2e73:	e8 e8 f4 ff ff       	call   2360 <__printf_chk@plt>
    2e78:	bf 08 00 00 00       	mov    $0x8,%edi
    2e7d:	e8 0e f5 ff ff       	call   2390 <exit@plt>
    2e82:	e8 19 f4 ff ff       	call   22a0 <__stack_chk_fail@plt>

0000000000002e87 <initialize_bomb_solve>:
    2e87:	f3 0f 1e fa          	endbr64
    2e8b:	c3                   	ret

0000000000002e8c <blank_line>:
    2e8c:	f3 0f 1e fa          	endbr64
    2e90:	55                   	push   %rbp
    2e91:	53                   	push   %rbx
    2e92:	48 83 ec 08          	sub    $0x8,%rsp
    2e96:	48 89 fd             	mov    %rdi,%rbp
    2e99:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    2e9d:	84 db                	test   %bl,%bl
    2e9f:	74 1e                	je     2ebf <blank_line+0x33>
    2ea1:	e8 2a f5 ff ff       	call   23d0 <__ctype_b_loc@plt>
    2ea6:	48 8b 00             	mov    (%rax),%rax
    2ea9:	48 83 c5 01          	add    $0x1,%rbp
    2ead:	48 0f be db          	movsbq %bl,%rbx
    2eb1:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    2eb6:	75 e1                	jne    2e99 <blank_line+0xd>
    2eb8:	b8 00 00 00 00       	mov    $0x0,%eax
    2ebd:	eb 05                	jmp    2ec4 <blank_line+0x38>
    2ebf:	b8 01 00 00 00       	mov    $0x1,%eax
    2ec4:	48 83 c4 08          	add    $0x8,%rsp
    2ec8:	5b                   	pop    %rbx
    2ec9:	5d                   	pop    %rbp
    2eca:	c3                   	ret

0000000000002ecb <skip>:
    2ecb:	f3 0f 1e fa          	endbr64
    2ecf:	53                   	push   %rbx
    2ed0:	48 63 15 41 67 00 00 	movslq 0x6741(%rip),%rdx        # 9618 <num_input_strings>
    2ed7:	48 89 d0             	mov    %rdx,%rax
    2eda:	48 c1 e0 04          	shl    $0x4,%rax
    2ede:	48 29 d0             	sub    %rdx,%rax
    2ee1:	48 8d 15 38 67 00 00 	lea    0x6738(%rip),%rdx        # 9620 <input_strings>
    2ee8:	48 8d 3c c2          	lea    (%rdx,%rax,8),%rdi
    2eec:	48 8b 0d 9d 66 00 00 	mov    0x669d(%rip),%rcx        # 9590 <infile>
    2ef3:	ba 78 00 00 00       	mov    $0x78,%edx
    2ef8:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    2eff:	e8 4c f4 ff ff       	call   2350 <__fgets_chk@plt>
    2f04:	48 89 c3             	mov    %rax,%rbx
    2f07:	48 85 c0             	test   %rax,%rax
    2f0a:	74 0c                	je     2f18 <skip+0x4d>
    2f0c:	48 89 c7             	mov    %rax,%rdi
    2f0f:	e8 78 ff ff ff       	call   2e8c <blank_line>
    2f14:	85 c0                	test   %eax,%eax
    2f16:	75 b8                	jne    2ed0 <skip+0x5>
    2f18:	48 89 d8             	mov    %rbx,%rax
    2f1b:	5b                   	pop    %rbx
    2f1c:	c3                   	ret

0000000000002f1d <send_msg>:
    2f1d:	f3 0f 1e fa          	endbr64
    2f21:	41 55                	push   %r13
    2f23:	41 54                	push   %r12
    2f25:	55                   	push   %rbp
    2f26:	53                   	push   %rbx
    2f27:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
    2f2e:	ff 
    2f2f:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2f36:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2f3b:	4c 39 dc             	cmp    %r11,%rsp
    2f3e:	75 ef                	jne    2f2f <send_msg+0x12>
    2f40:	48 83 ec 18          	sub    $0x18,%rsp
    2f44:	89 fd                	mov    %edi,%ebp
    2f46:	48 89 f3             	mov    %rsi,%rbx
    2f49:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2f50:	00 00 
    2f52:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    2f59:	00 
    2f5a:	31 c0                	xor    %eax,%eax
    2f5c:	44 8b 25 b5 66 00 00 	mov    0x66b5(%rip),%r12d        # 9618 <num_input_strings>
    2f63:	41 8d 44 24 ff       	lea    -0x1(%r12),%eax
    2f68:	48 98                	cltq
    2f6a:	48 89 c2             	mov    %rax,%rdx
    2f6d:	48 c1 e2 04          	shl    $0x4,%rdx
    2f71:	48 29 c2             	sub    %rax,%rdx
    2f74:	48 8d 05 a5 66 00 00 	lea    0x66a5(%rip),%rax        # 9620 <input_strings>
    2f7b:	4c 8d 2c d0          	lea    (%rax,%rdx,8),%r13
    2f7f:	4c 89 ef             	mov    %r13,%rdi
    2f82:	e8 09 f3 ff ff       	call   2290 <strlen@plt>
    2f87:	48 83 c0 64          	add    $0x64,%rax
    2f8b:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2f91:	0f 87 a0 00 00 00    	ja     3037 <send_msg+0x11a>
    2f97:	85 ed                	test   %ebp,%ebp
    2f99:	0f 84 b8 00 00 00    	je     3057 <send_msg+0x13a>
    2f9f:	48 8d 05 76 26 00 00 	lea    0x2676(%rip),%rax        # 561c <array.0+0x2fc>
    2fa6:	48 89 e5             	mov    %rsp,%rbp
    2fa9:	48 83 ec 08          	sub    $0x8,%rsp
    2fad:	41 55                	push   %r13
    2faf:	41 54                	push   %r12
    2fb1:	50                   	push   %rax
    2fb2:	4c 8d 0d 07 59 00 00 	lea    0x5907(%rip),%r9        # 88c0 <authkey>
    2fb9:	44 8b 05 00 61 00 00 	mov    0x6100(%rip),%r8d        # 90c0 <bomb_id>
    2fc0:	48 8d 0d 66 26 00 00 	lea    0x2666(%rip),%rcx        # 562d <array.0+0x30d>
    2fc7:	ba 00 20 00 00       	mov    $0x2000,%edx
    2fcc:	be 01 00 00 00       	mov    $0x1,%esi
    2fd1:	48 89 ef             	mov    %rbp,%rdi
    2fd4:	b8 00 00 00 00       	mov    $0x0,%eax
    2fd9:	e8 02 f4 ff ff       	call   23e0 <__sprintf_chk@plt>
    2fde:	48 89 ec             	mov    %rbp,%rsp
    2fe1:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
    2fe8:	00 
    2fe9:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    2fef:	48 89 e9             	mov    %rbp,%rcx
    2ff2:	48 8d 15 c7 50 00 00 	lea    0x50c7(%rip),%rdx        # 80c0 <lab>
    2ff9:	48 8d 35 c0 54 00 00 	lea    0x54c0(%rip),%rsi        # 84c0 <course>
    3000:	48 8d 3d b9 5c 00 00 	lea    0x5cb9(%rip),%rdi        # 8cc0 <userid>
    3007:	e8 93 10 00 00       	call   409f <driver_post>
    300c:	c7 03 01 00 00 00    	movl   $0x1,(%rbx)
    3012:	85 c0                	test   %eax,%eax
    3014:	78 4d                	js     3063 <send_msg+0x146>
    3016:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    301d:	00 
    301e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    3025:	00 00 
    3027:	75 51                	jne    307a <send_msg+0x15d>
    3029:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
    3030:	5b                   	pop    %rbx
    3031:	5d                   	pop    %rbp
    3032:	41 5c                	pop    %r12
    3034:	41 5d                	pop    %r13
    3036:	c3                   	ret
    3037:	48 8d 35 92 23 00 00 	lea    0x2392(%rip),%rsi        # 53d0 <array.0+0xb0>
    303e:	bf 01 00 00 00       	mov    $0x1,%edi
    3043:	b8 00 00 00 00       	mov    $0x0,%eax
    3048:	e8 13 f3 ff ff       	call   2360 <__printf_chk@plt>
    304d:	bf 08 00 00 00       	mov    $0x8,%edi
    3052:	e8 39 f3 ff ff       	call   2390 <exit@plt>
    3057:	48 8d 05 c6 25 00 00 	lea    0x25c6(%rip),%rax        # 5624 <array.0+0x304>
    305e:	e9 43 ff ff ff       	jmp    2fa6 <send_msg+0x89>
    3063:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    306a:	00 
    306b:	e8 00 f2 ff ff       	call   2270 <puts@plt>
    3070:	bf 00 00 00 00       	mov    $0x0,%edi
    3075:	e8 16 f3 ff ff       	call   2390 <exit@plt>
    307a:	e8 21 f2 ff ff       	call   22a0 <__stack_chk_fail@plt>

000000000000307f <explode_bomb>:
    307f:	f3 0f 1e fa          	endbr64
    3083:	50                   	push   %rax
    3084:	58                   	pop    %rax
    3085:	48 83 ec 18          	sub    $0x18,%rsp
    3089:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3090:	00 00 
    3092:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    3097:	31 c0                	xor    %eax,%eax
    3099:	48 8d 3d 9c 25 00 00 	lea    0x259c(%rip),%rdi        # 563c <array.0+0x31c>
    30a0:	e8 cb f1 ff ff       	call   2270 <puts@plt>
    30a5:	48 8d 3d 99 25 00 00 	lea    0x2599(%rip),%rdi        # 5645 <array.0+0x325>
    30ac:	e8 bf f1 ff ff       	call   2270 <puts@plt>
    30b1:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
    30b8:	00 
    30b9:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
    30be:	bf 00 00 00 00       	mov    $0x0,%edi
    30c3:	e8 55 fe ff ff       	call   2f1d <send_msg>
    30c8:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    30cd:	74 20                	je     30ef <explode_bomb+0x70>
    30cf:	48 8d 35 22 23 00 00 	lea    0x2322(%rip),%rsi        # 53f8 <array.0+0xd8>
    30d6:	bf 01 00 00 00       	mov    $0x1,%edi
    30db:	b8 00 00 00 00       	mov    $0x0,%eax
    30e0:	e8 7b f2 ff ff       	call   2360 <__printf_chk@plt>
    30e5:	bf 08 00 00 00       	mov    $0x8,%edi
    30ea:	e8 a1 f2 ff ff       	call   2390 <exit@plt>
    30ef:	48 8d 3d 4a 23 00 00 	lea    0x234a(%rip),%rdi        # 5440 <array.0+0x120>
    30f6:	e8 75 f1 ff ff       	call   2270 <puts@plt>
    30fb:	bf 08 00 00 00       	mov    $0x8,%edi
    3100:	e8 8b f2 ff ff       	call   2390 <exit@plt>

0000000000003105 <read_six_numbers>:
    3105:	f3 0f 1e fa          	endbr64
    3109:	48 83 ec 08          	sub    $0x8,%rsp
    310d:	48 89 f2             	mov    %rsi,%rdx
    3110:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    3114:	48 8d 46 14          	lea    0x14(%rsi),%rax
    3118:	50                   	push   %rax
    3119:	48 8d 46 10          	lea    0x10(%rsi),%rax
    311d:	50                   	push   %rax
    311e:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    3122:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    3126:	48 8d 35 2f 25 00 00 	lea    0x252f(%rip),%rsi        # 565c <array.0+0x33c>
    312d:	b8 00 00 00 00       	mov    $0x0,%eax
    3132:	e8 09 f2 ff ff       	call   2340 <__isoc99_sscanf@plt>
    3137:	48 83 c4 10          	add    $0x10,%rsp
    313b:	83 f8 05             	cmp    $0x5,%eax
    313e:	7e 05                	jle    3145 <read_six_numbers+0x40>
    3140:	48 83 c4 08          	add    $0x8,%rsp
    3144:	c3                   	ret
    3145:	e8 35 ff ff ff       	call   307f <explode_bomb>

000000000000314a <read_line>:
    314a:	f3 0f 1e fa          	endbr64
    314e:	55                   	push   %rbp
    314f:	53                   	push   %rbx
    3150:	48 83 ec 08          	sub    $0x8,%rsp
    3154:	b8 00 00 00 00       	mov    $0x0,%eax
    3159:	e8 6d fd ff ff       	call   2ecb <skip>
    315e:	48 85 c0             	test   %rax,%rax
    3161:	74 63                	je     31c6 <read_line+0x7c>
    3163:	8b 1d af 64 00 00    	mov    0x64af(%rip),%ebx        # 9618 <num_input_strings>
    3169:	48 63 d3             	movslq %ebx,%rdx
    316c:	48 89 d0             	mov    %rdx,%rax
    316f:	48 c1 e0 04          	shl    $0x4,%rax
    3173:	48 29 d0             	sub    %rdx,%rax
    3176:	48 8d 15 a3 64 00 00 	lea    0x64a3(%rip),%rdx        # 9620 <input_strings>
    317d:	48 8d 2c c2          	lea    (%rdx,%rax,8),%rbp
    3181:	48 89 ef             	mov    %rbp,%rdi
    3184:	e8 07 f1 ff ff       	call   2290 <strlen@plt>
    3189:	83 f8 76             	cmp    $0x76,%eax
    318c:	0f 8f ac 00 00 00    	jg     323e <read_line+0xf4>
    3192:	83 e8 01             	sub    $0x1,%eax
    3195:	48 98                	cltq
    3197:	48 63 cb             	movslq %ebx,%rcx
    319a:	48 89 ca             	mov    %rcx,%rdx
    319d:	48 c1 e2 04          	shl    $0x4,%rdx
    31a1:	48 29 ca             	sub    %rcx,%rdx
    31a4:	48 8d 0d 75 64 00 00 	lea    0x6475(%rip),%rcx        # 9620 <input_strings>
    31ab:	48 8d 14 d1          	lea    (%rcx,%rdx,8),%rdx
    31af:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    31b3:	83 c3 01             	add    $0x1,%ebx
    31b6:	89 1d 5c 64 00 00    	mov    %ebx,0x645c(%rip)        # 9618 <num_input_strings>
    31bc:	48 89 e8             	mov    %rbp,%rax
    31bf:	48 83 c4 08          	add    $0x8,%rsp
    31c3:	5b                   	pop    %rbx
    31c4:	5d                   	pop    %rbp
    31c5:	c3                   	ret
    31c6:	48 8b 05 a3 63 00 00 	mov    0x63a3(%rip),%rax        # 9570 <stdin@GLIBC_2.2.5>
    31cd:	48 39 05 bc 63 00 00 	cmp    %rax,0x63bc(%rip)        # 9590 <infile>
    31d4:	74 1b                	je     31f1 <read_line+0xa7>
    31d6:	48 8d 3d af 24 00 00 	lea    0x24af(%rip),%rdi        # 568c <array.0+0x36c>
    31dd:	e8 3e f0 ff ff       	call   2220 <getenv@plt>
    31e2:	48 85 c0             	test   %rax,%rax
    31e5:	74 20                	je     3207 <read_line+0xbd>
    31e7:	bf 00 00 00 00       	mov    $0x0,%edi
    31ec:	e8 9f f1 ff ff       	call   2390 <exit@plt>
    31f1:	48 8d 3d 76 24 00 00 	lea    0x2476(%rip),%rdi        # 566e <array.0+0x34e>
    31f8:	e8 73 f0 ff ff       	call   2270 <puts@plt>
    31fd:	bf 08 00 00 00       	mov    $0x8,%edi
    3202:	e8 89 f1 ff ff       	call   2390 <exit@plt>
    3207:	48 8b 05 62 63 00 00 	mov    0x6362(%rip),%rax        # 9570 <stdin@GLIBC_2.2.5>
    320e:	48 89 05 7b 63 00 00 	mov    %rax,0x637b(%rip)        # 9590 <infile>
    3215:	b8 00 00 00 00       	mov    $0x0,%eax
    321a:	e8 ac fc ff ff       	call   2ecb <skip>
    321f:	48 85 c0             	test   %rax,%rax
    3222:	0f 85 3b ff ff ff    	jne    3163 <read_line+0x19>
    3228:	48 8d 3d 3f 24 00 00 	lea    0x243f(%rip),%rdi        # 566e <array.0+0x34e>
    322f:	e8 3c f0 ff ff       	call   2270 <puts@plt>
    3234:	bf 00 00 00 00       	mov    $0x0,%edi
    3239:	e8 52 f1 ff ff       	call   2390 <exit@plt>
    323e:	48 8d 3d 52 24 00 00 	lea    0x2452(%rip),%rdi        # 5697 <array.0+0x377>
    3245:	e8 26 f0 ff ff       	call   2270 <puts@plt>
    324a:	8b 05 c8 63 00 00    	mov    0x63c8(%rip),%eax        # 9618 <num_input_strings>
    3250:	8d 50 01             	lea    0x1(%rax),%edx
    3253:	89 15 bf 63 00 00    	mov    %edx,0x63bf(%rip)        # 9618 <num_input_strings>
    3259:	48 98                	cltq
    325b:	48 6b c0 78          	imul   $0x78,%rax,%rax
    325f:	48 8d 15 ba 63 00 00 	lea    0x63ba(%rip),%rdx        # 9620 <input_strings>
    3266:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    326d:	75 6e 63 
    3270:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    3277:	2a 2a 00 
    327a:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    327e:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    3283:	e8 f7 fd ff ff       	call   307f <explode_bomb>

0000000000003288 <phase_defused>:
    3288:	f3 0f 1e fa          	endbr64
    328c:	53                   	push   %rbx
    328d:	48 89 fb             	mov    %rdi,%rbx
    3290:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
    3296:	48 89 fe             	mov    %rdi,%rsi
    3299:	bf 01 00 00 00       	mov    $0x1,%edi
    329e:	e8 7a fc ff ff       	call   2f1d <send_msg>
    32a3:	83 3b 01             	cmpl   $0x1,(%rbx)
    32a6:	75 0b                	jne    32b3 <phase_defused+0x2b>
    32a8:	83 3d 69 63 00 00 06 	cmpl   $0x6,0x6369(%rip)        # 9618 <num_input_strings>
    32af:	74 22                	je     32d3 <phase_defused+0x4b>
    32b1:	5b                   	pop    %rbx
    32b2:	c3                   	ret
    32b3:	48 8d 35 3e 21 00 00 	lea    0x213e(%rip),%rsi        # 53f8 <array.0+0xd8>
    32ba:	bf 01 00 00 00       	mov    $0x1,%edi
    32bf:	b8 00 00 00 00       	mov    $0x0,%eax
    32c4:	e8 97 f0 ff ff       	call   2360 <__printf_chk@plt>
    32c9:	bf 08 00 00 00       	mov    $0x8,%edi
    32ce:	e8 bd f0 ff ff       	call   2390 <exit@plt>
    32d3:	e8 a0 f3 ff ff       	call   2678 <abracadabra>
    32d8:	85 c0                	test   %eax,%eax
    32da:	75 1a                	jne    32f6 <phase_defused+0x6e>
    32dc:	48 8d 3d 75 22 00 00 	lea    0x2275(%rip),%rdi        # 5558 <array.0+0x238>
    32e3:	e8 88 ef ff ff       	call   2270 <puts@plt>
    32e8:	48 8d 3d b1 22 00 00 	lea    0x22b1(%rip),%rdi        # 55a0 <array.0+0x280>
    32ef:	e8 7c ef ff ff       	call   2270 <puts@plt>
    32f4:	eb bb                	jmp    32b1 <phase_defused+0x29>
    32f6:	e8 0a f4 ff ff       	call   2705 <alohomora>
    32fb:	85 c0                	test   %eax,%eax
    32fd:	74 30                	je     332f <phase_defused+0xa7>
    32ff:	48 8d 3d 62 21 00 00 	lea    0x2162(%rip),%rdi        # 5468 <array.0+0x148>
    3306:	e8 65 ef ff ff       	call   2270 <puts@plt>
    330b:	48 8d 3d 7e 21 00 00 	lea    0x217e(%rip),%rdi        # 5490 <array.0+0x170>
    3312:	e8 59 ef ff ff       	call   2270 <puts@plt>
    3317:	48 8d 3d aa 21 00 00 	lea    0x21aa(%rip),%rdi        # 54c8 <array.0+0x1a8>
    331e:	e8 4d ef ff ff       	call   2270 <puts@plt>
    3323:	b8 00 00 00 00       	mov    $0x0,%eax
    3328:	e8 cb f8 ff ff       	call   2bf8 <secret_phase>
    332d:	eb ad                	jmp    32dc <phase_defused+0x54>
    332f:	48 8d 3d e2 21 00 00 	lea    0x21e2(%rip),%rdi        # 5518 <array.0+0x1f8>
    3336:	e8 35 ef ff ff       	call   2270 <puts@plt>
    333b:	48 8d 3d 86 21 00 00 	lea    0x2186(%rip),%rdi        # 54c8 <array.0+0x1a8>
    3342:	e8 29 ef ff ff       	call   2270 <puts@plt>
    3347:	eb 93                	jmp    32dc <phase_defused+0x54>

0000000000003349 <rio_readinitb>:
    3349:	89 37                	mov    %esi,(%rdi)
    334b:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    3352:	48 8d 47 10          	lea    0x10(%rdi),%rax
    3356:	48 89 47 08          	mov    %rax,0x8(%rdi)
    335a:	c3                   	ret

000000000000335b <sigalrm_handler>:
    335b:	f3 0f 1e fa          	endbr64
    335f:	50                   	push   %rax
    3360:	58                   	pop    %rax
    3361:	48 83 ec 08          	sub    $0x8,%rsp
    3365:	b9 00 00 00 00       	mov    $0x0,%ecx
    336a:	48 8d 15 97 23 00 00 	lea    0x2397(%rip),%rdx        # 5708 <array.0+0x3e8>
    3371:	be 01 00 00 00       	mov    $0x1,%esi
    3376:	48 8b 3d 03 62 00 00 	mov    0x6203(%rip),%rdi        # 9580 <stderr@GLIBC_2.2.5>
    337d:	b8 00 00 00 00       	mov    $0x0,%eax
    3382:	e8 29 f0 ff ff       	call   23b0 <__fprintf_chk@plt>
    3387:	bf 01 00 00 00       	mov    $0x1,%edi
    338c:	e8 ff ef ff ff       	call   2390 <exit@plt>

0000000000003391 <rio_writen>:
    3391:	41 55                	push   %r13
    3393:	41 54                	push   %r12
    3395:	55                   	push   %rbp
    3396:	53                   	push   %rbx
    3397:	48 83 ec 08          	sub    $0x8,%rsp
    339b:	41 89 fc             	mov    %edi,%r12d
    339e:	48 89 f5             	mov    %rsi,%rbp
    33a1:	49 89 d5             	mov    %rdx,%r13
    33a4:	48 89 d3             	mov    %rdx,%rbx
    33a7:	eb 06                	jmp    33af <rio_writen+0x1e>
    33a9:	48 29 c3             	sub    %rax,%rbx
    33ac:	48 01 c5             	add    %rax,%rbp
    33af:	48 85 db             	test   %rbx,%rbx
    33b2:	74 24                	je     33d8 <rio_writen+0x47>
    33b4:	48 89 da             	mov    %rbx,%rdx
    33b7:	48 89 ee             	mov    %rbp,%rsi
    33ba:	44 89 e7             	mov    %r12d,%edi
    33bd:	e8 be ee ff ff       	call   2280 <write@plt>
    33c2:	48 85 c0             	test   %rax,%rax
    33c5:	7f e2                	jg     33a9 <rio_writen+0x18>
    33c7:	e8 74 ee ff ff       	call   2240 <__errno_location@plt>
    33cc:	83 38 04             	cmpl   $0x4,(%rax)
    33cf:	75 15                	jne    33e6 <rio_writen+0x55>
    33d1:	b8 00 00 00 00       	mov    $0x0,%eax
    33d6:	eb d1                	jmp    33a9 <rio_writen+0x18>
    33d8:	4c 89 e8             	mov    %r13,%rax
    33db:	48 83 c4 08          	add    $0x8,%rsp
    33df:	5b                   	pop    %rbx
    33e0:	5d                   	pop    %rbp
    33e1:	41 5c                	pop    %r12
    33e3:	41 5d                	pop    %r13
    33e5:	c3                   	ret
    33e6:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    33ed:	eb ec                	jmp    33db <rio_writen+0x4a>

00000000000033ef <rio_read>:
    33ef:	41 55                	push   %r13
    33f1:	41 54                	push   %r12
    33f3:	55                   	push   %rbp
    33f4:	53                   	push   %rbx
    33f5:	48 83 ec 08          	sub    $0x8,%rsp
    33f9:	48 89 fb             	mov    %rdi,%rbx
    33fc:	49 89 f5             	mov    %rsi,%r13
    33ff:	49 89 d4             	mov    %rdx,%r12
    3402:	eb 0a                	jmp    340e <rio_read+0x1f>
    3404:	e8 37 ee ff ff       	call   2240 <__errno_location@plt>
    3409:	83 38 04             	cmpl   $0x4,(%rax)
    340c:	75 61                	jne    346f <rio_read+0x80>
    340e:	8b 6b 04             	mov    0x4(%rbx),%ebp
    3411:	85 ed                	test   %ebp,%ebp
    3413:	7f 29                	jg     343e <rio_read+0x4f>
    3415:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    3419:	8b 3b                	mov    (%rbx),%edi
    341b:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    3422:	ba 00 20 00 00       	mov    $0x2000,%edx
    3427:	48 89 ee             	mov    %rbp,%rsi
    342a:	e8 31 ee ff ff       	call   2260 <__read_chk@plt>
    342f:	89 43 04             	mov    %eax,0x4(%rbx)
    3432:	85 c0                	test   %eax,%eax
    3434:	78 ce                	js     3404 <rio_read+0x15>
    3436:	74 40                	je     3478 <rio_read+0x89>
    3438:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    343c:	eb d0                	jmp    340e <rio_read+0x1f>
    343e:	89 e8                	mov    %ebp,%eax
    3440:	4c 39 e0             	cmp    %r12,%rax
    3443:	72 03                	jb     3448 <rio_read+0x59>
    3445:	44 89 e5             	mov    %r12d,%ebp
    3448:	4c 63 e5             	movslq %ebp,%r12
    344b:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    344f:	4c 89 e2             	mov    %r12,%rdx
    3452:	4c 89 ef             	mov    %r13,%rdi
    3455:	e8 b6 ee ff ff       	call   2310 <memcpy@plt>
    345a:	4c 01 63 08          	add    %r12,0x8(%rbx)
    345e:	29 6b 04             	sub    %ebp,0x4(%rbx)
    3461:	4c 89 e0             	mov    %r12,%rax
    3464:	48 83 c4 08          	add    $0x8,%rsp
    3468:	5b                   	pop    %rbx
    3469:	5d                   	pop    %rbp
    346a:	41 5c                	pop    %r12
    346c:	41 5d                	pop    %r13
    346e:	c3                   	ret
    346f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    3476:	eb ec                	jmp    3464 <rio_read+0x75>
    3478:	b8 00 00 00 00       	mov    $0x0,%eax
    347d:	eb e5                	jmp    3464 <rio_read+0x75>

000000000000347f <rio_readlineb>:
    347f:	41 55                	push   %r13
    3481:	41 54                	push   %r12
    3483:	55                   	push   %rbp
    3484:	53                   	push   %rbx
    3485:	48 83 ec 18          	sub    $0x18,%rsp
    3489:	49 89 fd             	mov    %rdi,%r13
    348c:	48 89 f5             	mov    %rsi,%rbp
    348f:	49 89 d4             	mov    %rdx,%r12
    3492:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3499:	00 00 
    349b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    34a0:	31 c0                	xor    %eax,%eax
    34a2:	bb 01 00 00 00       	mov    $0x1,%ebx
    34a7:	eb 18                	jmp    34c1 <rio_readlineb+0x42>
    34a9:	85 c0                	test   %eax,%eax
    34ab:	75 65                	jne    3512 <rio_readlineb+0x93>
    34ad:	48 83 fb 01          	cmp    $0x1,%rbx
    34b1:	75 3d                	jne    34f0 <rio_readlineb+0x71>
    34b3:	b8 00 00 00 00       	mov    $0x0,%eax
    34b8:	eb 3d                	jmp    34f7 <rio_readlineb+0x78>
    34ba:	48 83 c3 01          	add    $0x1,%rbx
    34be:	48 89 d5             	mov    %rdx,%rbp
    34c1:	4c 39 e3             	cmp    %r12,%rbx
    34c4:	73 2a                	jae    34f0 <rio_readlineb+0x71>
    34c6:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    34cb:	ba 01 00 00 00       	mov    $0x1,%edx
    34d0:	4c 89 ef             	mov    %r13,%rdi
    34d3:	e8 17 ff ff ff       	call   33ef <rio_read>
    34d8:	83 f8 01             	cmp    $0x1,%eax
    34db:	75 cc                	jne    34a9 <rio_readlineb+0x2a>
    34dd:	48 8d 55 01          	lea    0x1(%rbp),%rdx
    34e1:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
    34e6:	88 45 00             	mov    %al,0x0(%rbp)
    34e9:	3c 0a                	cmp    $0xa,%al
    34eb:	75 cd                	jne    34ba <rio_readlineb+0x3b>
    34ed:	48 89 d5             	mov    %rdx,%rbp
    34f0:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    34f4:	48 89 d8             	mov    %rbx,%rax
    34f7:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    34fc:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    3503:	00 00 
    3505:	75 14                	jne    351b <rio_readlineb+0x9c>
    3507:	48 83 c4 18          	add    $0x18,%rsp
    350b:	5b                   	pop    %rbx
    350c:	5d                   	pop    %rbp
    350d:	41 5c                	pop    %r12
    350f:	41 5d                	pop    %r13
    3511:	c3                   	ret
    3512:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    3519:	eb dc                	jmp    34f7 <rio_readlineb+0x78>
    351b:	e8 80 ed ff ff       	call   22a0 <__stack_chk_fail@plt>

0000000000003520 <urlencode>:
    3520:	41 54                	push   %r12
    3522:	55                   	push   %rbp
    3523:	53                   	push   %rbx
    3524:	48 83 ec 10          	sub    $0x10,%rsp
    3528:	48 89 fb             	mov    %rdi,%rbx
    352b:	48 89 f5             	mov    %rsi,%rbp
    352e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3535:	00 00 
    3537:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    353c:	31 c0                	xor    %eax,%eax
    353e:	e8 4d ed ff ff       	call   2290 <strlen@plt>
    3543:	eb 0f                	jmp    3554 <urlencode+0x34>
    3545:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    3549:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    354d:	48 83 c3 01          	add    $0x1,%rbx
    3551:	44 89 e0             	mov    %r12d,%eax
    3554:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    3558:	85 c0                	test   %eax,%eax
    355a:	0f 84 a8 00 00 00    	je     3608 <urlencode+0xe8>
    3560:	44 0f b6 03          	movzbl (%rbx),%r8d
    3564:	41 80 f8 2a          	cmp    $0x2a,%r8b
    3568:	0f 94 c0             	sete   %al
    356b:	41 80 f8 2d          	cmp    $0x2d,%r8b
    356f:	0f 94 c2             	sete   %dl
    3572:	08 d0                	or     %dl,%al
    3574:	75 cf                	jne    3545 <urlencode+0x25>
    3576:	41 80 f8 2e          	cmp    $0x2e,%r8b
    357a:	74 c9                	je     3545 <urlencode+0x25>
    357c:	41 80 f8 5f          	cmp    $0x5f,%r8b
    3580:	74 c3                	je     3545 <urlencode+0x25>
    3582:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    3586:	3c 09                	cmp    $0x9,%al
    3588:	76 bb                	jbe    3545 <urlencode+0x25>
    358a:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    358e:	3c 19                	cmp    $0x19,%al
    3590:	76 b3                	jbe    3545 <urlencode+0x25>
    3592:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    3596:	3c 19                	cmp    $0x19,%al
    3598:	76 ab                	jbe    3545 <urlencode+0x25>
    359a:	41 80 f8 20          	cmp    $0x20,%r8b
    359e:	74 56                	je     35f6 <urlencode+0xd6>
    35a0:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    35a4:	3c 5f                	cmp    $0x5f,%al
    35a6:	0f 96 c0             	setbe  %al
    35a9:	41 80 f8 09          	cmp    $0x9,%r8b
    35ad:	0f 94 c2             	sete   %dl
    35b0:	08 d0                	or     %dl,%al
    35b2:	74 4f                	je     3603 <urlencode+0xe3>
    35b4:	48 89 e7             	mov    %rsp,%rdi
    35b7:	45 0f b6 c0          	movzbl %r8b,%r8d
    35bb:	48 8d 0d fb 21 00 00 	lea    0x21fb(%rip),%rcx        # 57bd <array.0+0x49d>
    35c2:	ba 08 00 00 00       	mov    $0x8,%edx
    35c7:	be 01 00 00 00       	mov    $0x1,%esi
    35cc:	b8 00 00 00 00       	mov    $0x0,%eax
    35d1:	e8 0a ee ff ff       	call   23e0 <__sprintf_chk@plt>
    35d6:	0f b6 04 24          	movzbl (%rsp),%eax
    35da:	88 45 00             	mov    %al,0x0(%rbp)
    35dd:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    35e2:	88 45 01             	mov    %al,0x1(%rbp)
    35e5:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    35ea:	88 45 02             	mov    %al,0x2(%rbp)
    35ed:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    35f1:	e9 57 ff ff ff       	jmp    354d <urlencode+0x2d>
    35f6:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    35fa:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    35fe:	e9 4a ff ff ff       	jmp    354d <urlencode+0x2d>
    3603:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3608:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    360d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    3614:	00 00 
    3616:	75 09                	jne    3621 <urlencode+0x101>
    3618:	48 83 c4 10          	add    $0x10,%rsp
    361c:	5b                   	pop    %rbx
    361d:	5d                   	pop    %rbp
    361e:	41 5c                	pop    %r12
    3620:	c3                   	ret
    3621:	e8 7a ec ff ff       	call   22a0 <__stack_chk_fail@plt>

0000000000003626 <submitr>:
    3626:	f3 0f 1e fa          	endbr64
    362a:	41 57                	push   %r15
    362c:	41 56                	push   %r14
    362e:	41 55                	push   %r13
    3630:	41 54                	push   %r12
    3632:	55                   	push   %rbp
    3633:	53                   	push   %rbx
    3634:	4c 8d 9c 24 00 40 ff 	lea    -0xc000(%rsp),%r11
    363b:	ff 
    363c:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    3643:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    3648:	4c 39 dc             	cmp    %r11,%rsp
    364b:	75 ef                	jne    363c <submitr+0x16>
    364d:	48 83 ec 68          	sub    $0x68,%rsp
    3651:	49 89 fc             	mov    %rdi,%r12
    3654:	89 74 24 18          	mov    %esi,0x18(%rsp)
    3658:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    365d:	49 89 cd             	mov    %rcx,%r13
    3660:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    3665:	4d 89 ce             	mov    %r9,%r14
    3668:	48 8b ac 24 a0 c0 00 	mov    0xc0a0(%rsp),%rbp
    366f:	00 
    3670:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3677:	00 00 
    3679:	48 89 84 24 58 c0 00 	mov    %rax,0xc058(%rsp)
    3680:	00 
    3681:	31 c0                	xor    %eax,%eax
    3683:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    368a:	00 
    368b:	ba 00 00 00 00       	mov    $0x0,%edx
    3690:	be 01 00 00 00       	mov    $0x1,%esi
    3695:	bf 02 00 00 00       	mov    $0x2,%edi
    369a:	e8 51 ed ff ff       	call   23f0 <socket@plt>
    369f:	85 c0                	test   %eax,%eax
    36a1:	0f 88 ab 02 00 00    	js     3952 <submitr+0x32c>
    36a7:	89 c3                	mov    %eax,%ebx
    36a9:	4c 89 e7             	mov    %r12,%rdi
    36ac:	e8 3f ec ff ff       	call   22f0 <gethostbyname@plt>
    36b1:	48 85 c0             	test   %rax,%rax
    36b4:	0f 84 e4 02 00 00    	je     399e <submitr+0x378>
    36ba:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
    36bf:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    36c6:	00 00 
    36c8:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    36cf:	00 00 
    36d1:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    36d8:	48 63 50 14          	movslq 0x14(%rax),%rdx
    36dc:	48 8b 40 18          	mov    0x18(%rax),%rax
    36e0:	48 8b 30             	mov    (%rax),%rsi
    36e3:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    36e8:	b9 0c 00 00 00       	mov    $0xc,%ecx
    36ed:	e8 0e ec ff ff       	call   2300 <__memmove_chk@plt>
    36f2:	0f b7 44 24 18       	movzwl 0x18(%rsp),%eax
    36f7:	66 c1 c0 08          	rol    $0x8,%ax
    36fb:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
    3700:	ba 10 00 00 00       	mov    $0x10,%edx
    3705:	4c 89 fe             	mov    %r15,%rsi
    3708:	89 df                	mov    %ebx,%edi
    370a:	e8 91 ec ff ff       	call   23a0 <connect@plt>
    370f:	85 c0                	test   %eax,%eax
    3711:	0f 88 fd 02 00 00    	js     3a14 <submitr+0x3ee>
    3717:	4c 89 f7             	mov    %r14,%rdi
    371a:	e8 71 eb ff ff       	call   2290 <strlen@plt>
    371f:	49 89 c7             	mov    %rax,%r15
    3722:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    3727:	e8 64 eb ff ff       	call   2290 <strlen@plt>
    372c:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    3731:	4c 89 ef             	mov    %r13,%rdi
    3734:	e8 57 eb ff ff       	call   2290 <strlen@plt>
    3739:	48 03 44 24 18       	add    0x18(%rsp),%rax
    373e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    3743:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    3748:	e8 43 eb ff ff       	call   2290 <strlen@plt>
    374d:	48 03 44 24 18       	add    0x18(%rsp),%rax
    3752:	4b 8d 14 7f          	lea    (%r15,%r15,2),%rdx
    3756:	48 8d 84 10 80 00 00 	lea    0x80(%rax,%rdx,1),%rax
    375d:	00 
    375e:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    3764:	0f 87 12 03 00 00    	ja     3a7c <submitr+0x456>
    376a:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    3771:	00 
    3772:	b9 00 04 00 00       	mov    $0x400,%ecx
    3777:	b8 00 00 00 00       	mov    $0x0,%eax
    377c:	48 89 f7             	mov    %rsi,%rdi
    377f:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    3782:	4c 89 f7             	mov    %r14,%rdi
    3785:	e8 96 fd ff ff       	call   3520 <urlencode>
    378a:	85 c0                	test   %eax,%eax
    378c:	0f 88 5d 03 00 00    	js     3aef <submitr+0x4c9>
    3792:	48 8d b4 24 50 60 00 	lea    0x6050(%rsp),%rsi
    3799:	00 
    379a:	b9 00 04 00 00       	mov    $0x400,%ecx
    379f:	b8 00 00 00 00       	mov    $0x0,%eax
    37a4:	48 89 f7             	mov    %rsi,%rdi
    37a7:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    37aa:	4c 89 ef             	mov    %r13,%rdi
    37ad:	e8 6e fd ff ff       	call   3520 <urlencode>
    37b2:	85 c0                	test   %eax,%eax
    37b4:	0f 88 c0 03 00 00    	js     3b7a <submitr+0x554>
    37ba:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
    37c1:	00 
    37c2:	48 83 ec 08          	sub    $0x8,%rsp
    37c6:	41 54                	push   %r12
    37c8:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
    37cf:	00 
    37d0:	50                   	push   %rax
    37d1:	48 8d 84 24 68 60 00 	lea    0x6068(%rsp),%rax
    37d8:	00 
    37d9:	50                   	push   %rax
    37da:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    37df:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    37e4:	48 8d 0d 45 1f 00 00 	lea    0x1f45(%rip),%rcx        # 5730 <array.0+0x410>
    37eb:	ba 00 20 00 00       	mov    $0x2000,%edx
    37f0:	be 01 00 00 00       	mov    $0x1,%esi
    37f5:	4c 89 ff             	mov    %r15,%rdi
    37f8:	b8 00 00 00 00       	mov    $0x0,%eax
    37fd:	e8 de eb ff ff       	call   23e0 <__sprintf_chk@plt>
    3802:	48 83 c4 20          	add    $0x20,%rsp
    3806:	4c 89 ff             	mov    %r15,%rdi
    3809:	e8 82 ea ff ff       	call   2290 <strlen@plt>
    380e:	48 89 c2             	mov    %rax,%rdx
    3811:	4c 89 fe             	mov    %r15,%rsi
    3814:	89 df                	mov    %ebx,%edi
    3816:	e8 76 fb ff ff       	call   3391 <rio_writen>
    381b:	48 85 c0             	test   %rax,%rax
    381e:	0f 88 e1 03 00 00    	js     3c05 <submitr+0x5df>
    3824:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    3829:	89 de                	mov    %ebx,%esi
    382b:	4c 89 e7             	mov    %r12,%rdi
    382e:	e8 16 fb ff ff       	call   3349 <rio_readinitb>
    3833:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    383a:	00 
    383b:	ba 00 20 00 00       	mov    $0x2000,%edx
    3840:	4c 89 e7             	mov    %r12,%rdi
    3843:	e8 37 fc ff ff       	call   347f <rio_readlineb>
    3848:	48 85 c0             	test   %rax,%rax
    384b:	0f 8e 20 04 00 00    	jle    3c71 <submitr+0x64b>
    3851:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    3856:	48 8d 94 24 50 80 00 	lea    0x8050(%rsp),%rdx
    385d:	00 
    385e:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    3865:	00 
    3866:	4c 8d 84 24 50 a0 00 	lea    0xa050(%rsp),%r8
    386d:	00 
    386e:	48 8d 35 4f 1f 00 00 	lea    0x1f4f(%rip),%rsi        # 57c4 <array.0+0x4a4>
    3875:	b8 00 00 00 00       	mov    $0x0,%eax
    387a:	e8 c1 ea ff ff       	call   2340 <__isoc99_sscanf@plt>
    387f:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    3886:	00 
    3887:	48 8d 35 4d 1f 00 00 	lea    0x1f4d(%rip),%rsi        # 57db <array.0+0x4bb>
    388e:	e8 3d ea ff ff       	call   22d0 <strcmp@plt>
    3893:	85 c0                	test   %eax,%eax
    3895:	0f 84 56 04 00 00    	je     3cf1 <submitr+0x6cb>
    389b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    38a2:	00 
    38a3:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    38a8:	ba 00 20 00 00       	mov    $0x2000,%edx
    38ad:	e8 cd fb ff ff       	call   347f <rio_readlineb>
    38b2:	48 85 c0             	test   %rax,%rax
    38b5:	7f c8                	jg     387f <submitr+0x259>
    38b7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    38be:	3a 20 43 
    38c1:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    38c8:	20 75 6e 
    38cb:	48 89 45 00          	mov    %rax,0x0(%rbp)
    38cf:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    38d3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    38da:	74 6f 20 
    38dd:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    38e4:	68 65 61 
    38e7:	48 89 45 10          	mov    %rax,0x10(%rbp)
    38eb:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    38ef:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    38f6:	66 72 6f 
    38f9:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
    3900:	6f 6c 61 
    3903:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3907:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    390b:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
    3912:	76 65 72 
    3915:	48 89 45 30          	mov    %rax,0x30(%rbp)
    3919:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
    391d:	89 df                	mov    %ebx,%edi
    391f:	e8 9c e9 ff ff       	call   22c0 <close@plt>
    3924:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3929:	48 8b 94 24 58 c0 00 	mov    0xc058(%rsp),%rdx
    3930:	00 
    3931:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    3938:	00 00 
    393a:	0f 85 ff 04 00 00    	jne    3e3f <submitr+0x819>
    3940:	48 81 c4 68 c0 00 00 	add    $0xc068,%rsp
    3947:	5b                   	pop    %rbx
    3948:	5d                   	pop    %rbp
    3949:	41 5c                	pop    %r12
    394b:	41 5d                	pop    %r13
    394d:	41 5e                	pop    %r14
    394f:	41 5f                	pop    %r15
    3951:	c3                   	ret
    3952:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3959:	3a 20 43 
    395c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3963:	20 75 6e 
    3966:	48 89 45 00          	mov    %rax,0x0(%rbp)
    396a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    396e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3975:	74 6f 20 
    3978:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    397f:	65 20 73 
    3982:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3986:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    398a:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    3991:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    3997:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    399c:	eb 8b                	jmp    3929 <submitr+0x303>
    399e:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    39a5:	3a 20 44 
    39a8:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    39af:	20 75 6e 
    39b2:	48 89 45 00          	mov    %rax,0x0(%rbp)
    39b6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    39ba:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    39c1:	74 6f 20 
    39c4:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    39cb:	76 65 20 
    39ce:	48 89 45 10          	mov    %rax,0x10(%rbp)
    39d2:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    39d6:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    39dd:	61 62 20 
    39e0:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
    39e7:	72 20 61 
    39ea:	48 89 45 20          	mov    %rax,0x20(%rbp)
    39ee:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    39f2:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
    39f9:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
    39ff:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
    3a03:	89 df                	mov    %ebx,%edi
    3a05:	e8 b6 e8 ff ff       	call   22c0 <close@plt>
    3a0a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3a0f:	e9 15 ff ff ff       	jmp    3929 <submitr+0x303>
    3a14:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    3a1b:	3a 20 55 
    3a1e:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    3a25:	20 74 6f 
    3a28:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3a2c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3a30:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    3a37:	65 63 74 
    3a3a:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    3a41:	68 65 20 
    3a44:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3a48:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3a4c:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    3a53:	61 62 20 
    3a56:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3a5a:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
    3a61:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
    3a67:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    3a6b:	89 df                	mov    %ebx,%edi
    3a6d:	e8 4e e8 ff ff       	call   22c0 <close@plt>
    3a72:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3a77:	e9 ad fe ff ff       	jmp    3929 <submitr+0x303>
    3a7c:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    3a83:	3a 20 52 
    3a86:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    3a8d:	20 73 74 
    3a90:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3a94:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3a98:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    3a9f:	74 6f 6f 
    3aa2:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    3aa9:	65 2e 20 
    3aac:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3ab0:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3ab4:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    3abb:	61 73 65 
    3abe:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    3ac5:	49 54 52 
    3ac8:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3acc:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3ad0:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    3ad7:	55 46 00 
    3ada:	48 89 45 30          	mov    %rax,0x30(%rbp)
    3ade:	89 df                	mov    %ebx,%edi
    3ae0:	e8 db e7 ff ff       	call   22c0 <close@plt>
    3ae5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3aea:	e9 3a fe ff ff       	jmp    3929 <submitr+0x303>
    3aef:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    3af6:	3a 20 52 
    3af9:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    3b00:	20 73 74 
    3b03:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3b07:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3b0b:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    3b12:	63 6f 6e 
    3b15:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    3b1c:	20 61 6e 
    3b1f:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3b23:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3b27:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    3b2e:	67 61 6c 
    3b31:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    3b38:	6e 70 72 
    3b3b:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3b3f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3b43:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    3b4a:	6c 65 20 
    3b4d:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    3b54:	63 74 65 
    3b57:	48 89 45 30          	mov    %rax,0x30(%rbp)
    3b5b:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    3b5f:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    3b65:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    3b69:	89 df                	mov    %ebx,%edi
    3b6b:	e8 50 e7 ff ff       	call   22c0 <close@plt>
    3b70:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3b75:	e9 af fd ff ff       	jmp    3929 <submitr+0x303>
    3b7a:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    3b81:	3a 20 55 
    3b84:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
    3b8b:	20 73 74 
    3b8e:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3b92:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3b96:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    3b9d:	63 6f 6e 
    3ba0:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    3ba7:	20 61 6e 
    3baa:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3bae:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3bb2:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    3bb9:	67 61 6c 
    3bbc:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    3bc3:	6e 70 72 
    3bc6:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3bca:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3bce:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    3bd5:	6c 65 20 
    3bd8:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    3bdf:	63 74 65 
    3be2:	48 89 45 30          	mov    %rax,0x30(%rbp)
    3be6:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    3bea:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    3bf0:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    3bf4:	89 df                	mov    %ebx,%edi
    3bf6:	e8 c5 e6 ff ff       	call   22c0 <close@plt>
    3bfb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3c00:	e9 24 fd ff ff       	jmp    3929 <submitr+0x303>
    3c05:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3c0c:	3a 20 43 
    3c0f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3c16:	20 75 6e 
    3c19:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3c1d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3c21:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3c28:	74 6f 20 
    3c2b:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    3c32:	20 74 6f 
    3c35:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3c39:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3c3d:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
    3c44:	41 75 74 
    3c47:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
    3c4e:	73 65 72 
    3c51:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3c55:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3c59:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
    3c60:	89 df                	mov    %ebx,%edi
    3c62:	e8 59 e6 ff ff       	call   22c0 <close@plt>
    3c67:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3c6c:	e9 b8 fc ff ff       	jmp    3929 <submitr+0x303>
    3c71:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3c78:	3a 20 43 
    3c7b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3c82:	20 75 6e 
    3c85:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3c89:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3c8d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3c94:	74 6f 20 
    3c97:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    3c9e:	66 69 72 
    3ca1:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3ca5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3ca9:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    3cb0:	61 64 65 
    3cb3:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
    3cba:	6d 20 41 
    3cbd:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3cc1:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3cc5:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
    3ccc:	62 20 73 
    3ccf:	48 89 45 30          	mov    %rax,0x30(%rbp)
    3cd3:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
    3cda:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
    3ce0:	89 df                	mov    %ebx,%edi
    3ce2:	e8 d9 e5 ff ff       	call   22c0 <close@plt>
    3ce7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3cec:	e9 38 fc ff ff       	jmp    3929 <submitr+0x303>
    3cf1:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    3cf8:	00 
    3cf9:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    3cfe:	ba 00 20 00 00       	mov    $0x2000,%edx
    3d03:	e8 77 f7 ff ff       	call   347f <rio_readlineb>
    3d08:	48 85 c0             	test   %rax,%rax
    3d0b:	7e 78                	jle    3d85 <submitr+0x75f>
    3d0d:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    3d12:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    3d19:	0f 85 e7 00 00 00    	jne    3e06 <submitr+0x7e0>
    3d1f:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    3d26:	00 
    3d27:	48 89 ef             	mov    %rbp,%rdi
    3d2a:	e8 21 e5 ff ff       	call   2250 <strcpy@plt>
    3d2f:	89 df                	mov    %ebx,%edi
    3d31:	e8 8a e5 ff ff       	call   22c0 <close@plt>
    3d36:	48 8d 35 98 1a 00 00 	lea    0x1a98(%rip),%rsi        # 57d5 <array.0+0x4b5>
    3d3d:	48 89 ef             	mov    %rbp,%rdi
    3d40:	e8 8b e5 ff ff       	call   22d0 <strcmp@plt>
    3d45:	85 c0                	test   %eax,%eax
    3d47:	0f 84 dc fb ff ff    	je     3929 <submitr+0x303>
    3d4d:	48 8d 35 85 1a 00 00 	lea    0x1a85(%rip),%rsi        # 57d9 <array.0+0x4b9>
    3d54:	48 89 ef             	mov    %rbp,%rdi
    3d57:	e8 74 e5 ff ff       	call   22d0 <strcmp@plt>
    3d5c:	85 c0                	test   %eax,%eax
    3d5e:	0f 84 c5 fb ff ff    	je     3929 <submitr+0x303>
    3d64:	48 8d 35 73 1a 00 00 	lea    0x1a73(%rip),%rsi        # 57de <array.0+0x4be>
    3d6b:	48 89 ef             	mov    %rbp,%rdi
    3d6e:	e8 5d e5 ff ff       	call   22d0 <strcmp@plt>
    3d73:	85 c0                	test   %eax,%eax
    3d75:	0f 84 ae fb ff ff    	je     3929 <submitr+0x303>
    3d7b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3d80:	e9 a4 fb ff ff       	jmp    3929 <submitr+0x303>
    3d85:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3d8c:	3a 20 43 
    3d8f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3d96:	20 75 6e 
    3d99:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3d9d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3da1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3da8:	74 6f 20 
    3dab:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    3db2:	73 74 61 
    3db5:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3db9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3dbd:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    3dc4:	65 73 73 
    3dc7:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    3dce:	72 6f 6d 
    3dd1:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3dd5:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3dd9:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
    3de0:	6c 61 62 
    3de3:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
    3dea:	65 72 00 
    3ded:	48 89 45 30          	mov    %rax,0x30(%rbp)
    3df1:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    3df5:	89 df                	mov    %ebx,%edi
    3df7:	e8 c4 e4 ff ff       	call   22c0 <close@plt>
    3dfc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3e01:	e9 23 fb ff ff       	jmp    3929 <submitr+0x303>
    3e06:	4c 8d 8c 24 50 a0 00 	lea    0xa050(%rsp),%r9
    3e0d:	00 
    3e0e:	48 8d 0d 7b 19 00 00 	lea    0x197b(%rip),%rcx        # 5790 <array.0+0x470>
    3e15:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    3e1c:	be 01 00 00 00       	mov    $0x1,%esi
    3e21:	48 89 ef             	mov    %rbp,%rdi
    3e24:	b8 00 00 00 00       	mov    $0x0,%eax
    3e29:	e8 b2 e5 ff ff       	call   23e0 <__sprintf_chk@plt>
    3e2e:	89 df                	mov    %ebx,%edi
    3e30:	e8 8b e4 ff ff       	call   22c0 <close@plt>
    3e35:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3e3a:	e9 ea fa ff ff       	jmp    3929 <submitr+0x303>
    3e3f:	e8 5c e4 ff ff       	call   22a0 <__stack_chk_fail@plt>

0000000000003e44 <init_timeout>:
    3e44:	f3 0f 1e fa          	endbr64
    3e48:	85 ff                	test   %edi,%edi
    3e4a:	74 26                	je     3e72 <init_timeout+0x2e>
    3e4c:	53                   	push   %rbx
    3e4d:	89 fb                	mov    %edi,%ebx
    3e4f:	78 1a                	js     3e6b <init_timeout+0x27>
    3e51:	48 8d 35 03 f5 ff ff 	lea    -0xafd(%rip),%rsi        # 335b <sigalrm_handler>
    3e58:	bf 0e 00 00 00       	mov    $0xe,%edi
    3e5d:	e8 7e e4 ff ff       	call   22e0 <signal@plt>
    3e62:	89 df                	mov    %ebx,%edi
    3e64:	e8 47 e4 ff ff       	call   22b0 <alarm@plt>
    3e69:	5b                   	pop    %rbx
    3e6a:	c3                   	ret
    3e6b:	bb 00 00 00 00       	mov    $0x0,%ebx
    3e70:	eb df                	jmp    3e51 <init_timeout+0xd>
    3e72:	c3                   	ret

0000000000003e73 <init_driver>:
    3e73:	f3 0f 1e fa          	endbr64
    3e77:	41 54                	push   %r12
    3e79:	55                   	push   %rbp
    3e7a:	53                   	push   %rbx
    3e7b:	48 83 ec 20          	sub    $0x20,%rsp
    3e7f:	48 89 fd             	mov    %rdi,%rbp
    3e82:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3e89:	00 00 
    3e8b:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    3e90:	31 c0                	xor    %eax,%eax
    3e92:	be 01 00 00 00       	mov    $0x1,%esi
    3e97:	bf 0d 00 00 00       	mov    $0xd,%edi
    3e9c:	e8 3f e4 ff ff       	call   22e0 <signal@plt>
    3ea1:	be 01 00 00 00       	mov    $0x1,%esi
    3ea6:	bf 1d 00 00 00       	mov    $0x1d,%edi
    3eab:	e8 30 e4 ff ff       	call   22e0 <signal@plt>
    3eb0:	be 01 00 00 00       	mov    $0x1,%esi
    3eb5:	bf 1d 00 00 00       	mov    $0x1d,%edi
    3eba:	e8 21 e4 ff ff       	call   22e0 <signal@plt>
    3ebf:	ba 00 00 00 00       	mov    $0x0,%edx
    3ec4:	be 01 00 00 00       	mov    $0x1,%esi
    3ec9:	bf 02 00 00 00       	mov    $0x2,%edi
    3ece:	e8 1d e5 ff ff       	call   23f0 <socket@plt>
    3ed3:	85 c0                	test   %eax,%eax
    3ed5:	0f 88 9c 00 00 00    	js     3f77 <init_driver+0x104>
    3edb:	89 c3                	mov    %eax,%ebx
    3edd:	48 8d 3d fd 18 00 00 	lea    0x18fd(%rip),%rdi        # 57e1 <array.0+0x4c1>
    3ee4:	e8 07 e4 ff ff       	call   22f0 <gethostbyname@plt>
    3ee9:	48 85 c0             	test   %rax,%rax
    3eec:	0f 84 d1 00 00 00    	je     3fc3 <init_driver+0x150>
    3ef2:	49 89 e4             	mov    %rsp,%r12
    3ef5:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    3efc:	00 
    3efd:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    3f04:	00 00 
    3f06:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    3f0c:	48 63 50 14          	movslq 0x14(%rax),%rdx
    3f10:	48 8b 40 18          	mov    0x18(%rax),%rax
    3f14:	48 8b 30             	mov    (%rax),%rsi
    3f17:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    3f1c:	b9 0c 00 00 00       	mov    $0xc,%ecx
    3f21:	e8 da e3 ff ff       	call   2300 <__memmove_chk@plt>
    3f26:	66 c7 44 24 02 0b b8 	movw   $0xb80b,0x2(%rsp)
    3f2d:	ba 10 00 00 00       	mov    $0x10,%edx
    3f32:	4c 89 e6             	mov    %r12,%rsi
    3f35:	89 df                	mov    %ebx,%edi
    3f37:	e8 64 e4 ff ff       	call   23a0 <connect@plt>
    3f3c:	85 c0                	test   %eax,%eax
    3f3e:	0f 88 e7 00 00 00    	js     402b <init_driver+0x1b8>
    3f44:	89 df                	mov    %ebx,%edi
    3f46:	e8 75 e3 ff ff       	call   22c0 <close@plt>
    3f4b:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    3f51:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    3f55:	b8 00 00 00 00       	mov    $0x0,%eax
    3f5a:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    3f5f:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    3f66:	00 00 
    3f68:	0f 85 2c 01 00 00    	jne    409a <init_driver+0x227>
    3f6e:	48 83 c4 20          	add    $0x20,%rsp
    3f72:	5b                   	pop    %rbx
    3f73:	5d                   	pop    %rbp
    3f74:	41 5c                	pop    %r12
    3f76:	c3                   	ret
    3f77:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3f7e:	3a 20 43 
    3f81:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3f88:	20 75 6e 
    3f8b:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3f8f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3f93:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3f9a:	74 6f 20 
    3f9d:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    3fa4:	65 20 73 
    3fa7:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3fab:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3faf:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    3fb6:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    3fbc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3fc1:	eb 97                	jmp    3f5a <init_driver+0xe7>
    3fc3:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    3fca:	3a 20 44 
    3fcd:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    3fd4:	20 75 6e 
    3fd7:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3fdb:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3fdf:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3fe6:	74 6f 20 
    3fe9:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    3ff0:	76 65 20 
    3ff3:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3ff7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3ffb:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    4002:	72 20 61 
    4005:	48 89 45 20          	mov    %rax,0x20(%rbp)
    4009:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    4010:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    4016:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    401a:	89 df                	mov    %ebx,%edi
    401c:	e8 9f e2 ff ff       	call   22c0 <close@plt>
    4021:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4026:	e9 2f ff ff ff       	jmp    3f5a <init_driver+0xe7>
    402b:	48 b8 31 39 32 2e 31 	movabs $0x2e3836312e323931,%rax
    4032:	36 38 2e 
    4035:	48 ba 31 33 32 2e 31 	movabs $0x3737312e323331,%rdx
    403c:	37 37 00 
    403f:	48 89 45 00          	mov    %rax,0x0(%rbp)
    4043:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    4047:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    404e:	3a 20 55 
    4051:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    4058:	20 74 6f 
    405b:	48 89 45 00          	mov    %rax,0x0(%rbp)
    405f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    4063:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    406a:	65 63 74 
    406d:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    4074:	65 72 76 
    4077:	48 89 45 10          	mov    %rax,0x10(%rbp)
    407b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    407f:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
    4085:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
    4089:	89 df                	mov    %ebx,%edi
    408b:	e8 30 e2 ff ff       	call   22c0 <close@plt>
    4090:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4095:	e9 c0 fe ff ff       	jmp    3f5a <init_driver+0xe7>
    409a:	e8 01 e2 ff ff       	call   22a0 <__stack_chk_fail@plt>

000000000000409f <driver_post>:
    409f:	f3 0f 1e fa          	endbr64
    40a3:	53                   	push   %rbx
    40a4:	4c 89 cb             	mov    %r9,%rbx
    40a7:	45 85 c0             	test   %r8d,%r8d
    40aa:	75 18                	jne    40c4 <driver_post+0x25>
    40ac:	48 85 ff             	test   %rdi,%rdi
    40af:	74 05                	je     40b6 <driver_post+0x17>
    40b1:	80 3f 00             	cmpb   $0x0,(%rdi)
    40b4:	75 37                	jne    40ed <driver_post+0x4e>
    40b6:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    40bb:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    40bf:	44 89 c0             	mov    %r8d,%eax
    40c2:	5b                   	pop    %rbx
    40c3:	c3                   	ret
    40c4:	48 89 ca             	mov    %rcx,%rdx
    40c7:	48 8d 35 23 17 00 00 	lea    0x1723(%rip),%rsi        # 57f1 <array.0+0x4d1>
    40ce:	bf 01 00 00 00       	mov    $0x1,%edi
    40d3:	b8 00 00 00 00       	mov    $0x0,%eax
    40d8:	e8 83 e2 ff ff       	call   2360 <__printf_chk@plt>
    40dd:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    40e2:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    40e6:	b8 00 00 00 00       	mov    $0x0,%eax
    40eb:	eb d5                	jmp    40c2 <driver_post+0x23>
    40ed:	48 83 ec 08          	sub    $0x8,%rsp
    40f1:	41 51                	push   %r9
    40f3:	49 89 c9             	mov    %rcx,%r9
    40f6:	49 89 d0             	mov    %rdx,%r8
    40f9:	48 89 f9             	mov    %rdi,%rcx
    40fc:	48 89 f2             	mov    %rsi,%rdx
    40ff:	be b8 0b 00 00       	mov    $0xbb8,%esi
    4104:	48 8d 3d d6 16 00 00 	lea    0x16d6(%rip),%rdi        # 57e1 <array.0+0x4c1>
    410b:	e8 16 f5 ff ff       	call   3626 <submitr>
    4110:	48 83 c4 10          	add    $0x10,%rsp
    4114:	eb ac                	jmp    40c2 <driver_post+0x23>

Disassembly of section .fini:

0000000000004118 <_fini>:
    4118:	f3 0f 1e fa          	endbr64
    411c:	48 83 ec 08          	sub    $0x8,%rsp
    4120:	48 83 c4 08          	add    $0x8,%rsp
    4124:	c3                   	ret
