
farm.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <start_farm>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	b8 01 00 00 00       	mov    $0x1,%eax
   d:	5d                   	pop    %rbp
   e:	c3                   	ret

000000000000000f <getval_231>:
   f:	f3 0f 1e fa          	endbr64
  13:	55                   	push   %rbp
  14:	48 89 e5             	mov    %rsp,%rbp
  17:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  1c:	5d                   	pop    %rbp
  1d:	c3                   	ret

000000000000001e <setval_262>:
  1e:	f3 0f 1e fa          	endbr64
  22:	55                   	push   %rbp
  23:	48 89 e5             	mov    %rsp,%rbp
  26:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  2a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  2e:	c7 00 48 89 c7 c3    	movl   $0xc3c78948,(%rax)
  34:	90                   	nop
  35:	5d                   	pop    %rbp
  36:	c3                   	ret

0000000000000037 <getval_491>:
  37:	f3 0f 1e fa          	endbr64
  3b:	55                   	push   %rbp
  3c:	48 89 e5             	mov    %rsp,%rbp
  3f:	b8 48 89 c7 94       	mov    $0x94c78948,%eax
  44:	5d                   	pop    %rbp
  45:	c3                   	ret

0000000000000046 <addval_151>:
  46:	f3 0f 1e fa          	endbr64
  4a:	55                   	push   %rbp
  4b:	48 89 e5             	mov    %rsp,%rbp
  4e:	89 7d fc             	mov    %edi,-0x4(%rbp)
  51:	8b 45 fc             	mov    -0x4(%rbp),%eax
  54:	2d 50 a7 6f 6f       	sub    $0x6f6fa750,%eax
  59:	5d                   	pop    %rbp
  5a:	c3                   	ret

000000000000005b <getval_127>:
  5b:	f3 0f 1e fa          	endbr64
  5f:	55                   	push   %rbp
  60:	48 89 e5             	mov    %rsp,%rbp
  63:	b8 45 48 c9 c7       	mov    $0xc7c94845,%eax
  68:	5d                   	pop    %rbp
  69:	c3                   	ret

000000000000006a <getval_387>:
  6a:	f3 0f 1e fa          	endbr64
  6e:	55                   	push   %rbp
  6f:	48 89 e5             	mov    %rsp,%rbp
  72:	b8 95 03 58 90       	mov    $0x90580395,%eax
  77:	5d                   	pop    %rbp
  78:	c3                   	ret

0000000000000079 <addval_455>:
  79:	f3 0f 1e fa          	endbr64
  7d:	55                   	push   %rbp
  7e:	48 89 e5             	mov    %rsp,%rbp
  81:	89 7d fc             	mov    %edi,-0x4(%rbp)
  84:	8b 45 fc             	mov    -0x4(%rbp),%eax
  87:	2d 4a 52 e7 6f       	sub    $0x6fe7524a,%eax
  8c:	5d                   	pop    %rbp
  8d:	c3                   	ret

000000000000008e <addval_409>:
  8e:	f3 0f 1e fa          	endbr64
  92:	55                   	push   %rbp
  93:	48 89 e5             	mov    %rsp,%rbp
  96:	89 7d fc             	mov    %edi,-0x4(%rbp)
  99:	8b 45 fc             	mov    -0x4(%rbp),%eax
  9c:	2d 55 87 6f 3c       	sub    $0x3c6f8755,%eax
  a1:	5d                   	pop    %rbp
  a2:	c3                   	ret

00000000000000a3 <mid_farm>:
  a3:	f3 0f 1e fa          	endbr64
  a7:	55                   	push   %rbp
  a8:	48 89 e5             	mov    %rsp,%rbp
  ab:	b8 01 00 00 00       	mov    $0x1,%eax
  b0:	5d                   	pop    %rbp
  b1:	c3                   	ret

00000000000000b2 <add_xy>:
  b2:	f3 0f 1e fa          	endbr64
  b6:	55                   	push   %rbp
  b7:	48 89 e5             	mov    %rsp,%rbp
  ba:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  be:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  c2:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  c6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  ca:	48 01 d0             	add    %rdx,%rax
  cd:	5d                   	pop    %rbp
  ce:	c3                   	ret

00000000000000cf <setval_390>:
  cf:	f3 0f 1e fa          	endbr64
  d3:	55                   	push   %rbp
  d4:	48 89 e5             	mov    %rsp,%rbp
  d7:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  db:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  df:	c7 00 8d ca 08 c9    	movl   $0xc908ca8d,(%rax)
  e5:	90                   	nop
  e6:	5d                   	pop    %rbp
  e7:	c3                   	ret

00000000000000e8 <setval_371>:
  e8:	f3 0f 1e fa          	endbr64
  ec:	55                   	push   %rbp
  ed:	48 89 e5             	mov    %rsp,%rbp
  f0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  f4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  f8:	c7 00 c3 88 d6 c3    	movl   $0xc3d688c3,(%rax)
  fe:	90                   	nop
  ff:	5d                   	pop    %rbp
 100:	c3                   	ret

0000000000000101 <getval_440>:
 101:	f3 0f 1e fa          	endbr64
 105:	55                   	push   %rbp
 106:	48 89 e5             	mov    %rsp,%rbp
 109:	b8 a1 40 89 e0       	mov    $0xe08940a1,%eax
 10e:	5d                   	pop    %rbp
 10f:	c3                   	ret

0000000000000110 <setval_477>:
 110:	f3 0f 1e fa          	endbr64
 114:	55                   	push   %rbp
 115:	48 89 e5             	mov    %rsp,%rbp
 118:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 11c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 120:	c7 00 89 c1 18 db    	movl   $0xdb18c189,(%rax)
 126:	90                   	nop
 127:	5d                   	pop    %rbp
 128:	c3                   	ret

0000000000000129 <addval_122>:
 129:	f3 0f 1e fa          	endbr64
 12d:	55                   	push   %rbp
 12e:	48 89 e5             	mov    %rsp,%rbp
 131:	89 7d fc             	mov    %edi,-0x4(%rbp)
 134:	8b 45 fc             	mov    -0x4(%rbp),%eax
 137:	2d b8 76 1f 3c       	sub    $0x3c1f76b8,%eax
 13c:	5d                   	pop    %rbp
 13d:	c3                   	ret

000000000000013e <addval_180>:
 13e:	f3 0f 1e fa          	endbr64
 142:	55                   	push   %rbp
 143:	48 89 e5             	mov    %rsp,%rbp
 146:	89 7d fc             	mov    %edi,-0x4(%rbp)
 149:	8b 45 fc             	mov    -0x4(%rbp),%eax
 14c:	2d b8 74 1f 6f       	sub    $0x6f1f74b8,%eax
 151:	5d                   	pop    %rbp
 152:	c3                   	ret

0000000000000153 <getval_130>:
 153:	f3 0f 1e fa          	endbr64
 157:	55                   	push   %rbp
 158:	48 89 e5             	mov    %rsp,%rbp
 15b:	b8 89 c1 48 c9       	mov    $0xc948c189,%eax
 160:	5d                   	pop    %rbp
 161:	c3                   	ret

0000000000000162 <getval_414>:
 162:	f3 0f 1e fa          	endbr64
 166:	55                   	push   %rbp
 167:	48 89 e5             	mov    %rsp,%rbp
 16a:	b8 8d d6 90 90       	mov    $0x9090d68d,%eax
 16f:	5d                   	pop    %rbp
 170:	c3                   	ret

0000000000000171 <addval_377>:
 171:	f3 0f 1e fa          	endbr64
 175:	55                   	push   %rbp
 176:	48 89 e5             	mov    %rsp,%rbp
 179:	89 7d fc             	mov    %edi,-0x4(%rbp)
 17c:	8b 45 fc             	mov    -0x4(%rbp),%eax
 17f:	2d 77 29 87 36       	sub    $0x36872977,%eax
 184:	5d                   	pop    %rbp
 185:	c3                   	ret

0000000000000186 <getval_318>:
 186:	f3 0f 1e fa          	endbr64
 18a:	55                   	push   %rbp
 18b:	48 89 e5             	mov    %rsp,%rbp
 18e:	b8 89 c1 c4 d2       	mov    $0xd2c4c189,%eax
 193:	5d                   	pop    %rbp
 194:	c3                   	ret

0000000000000195 <setval_131>:
 195:	f3 0f 1e fa          	endbr64
 199:	55                   	push   %rbp
 19a:	48 89 e5             	mov    %rsp,%rbp
 19d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 1a1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 1a5:	c7 00 89 d6 91 90    	movl   $0x9091d689,(%rax)
 1ab:	90                   	nop
 1ac:	5d                   	pop    %rbp
 1ad:	c3                   	ret

00000000000001ae <getval_389>:
 1ae:	f3 0f 1e fa          	endbr64
 1b2:	55                   	push   %rbp
 1b3:	48 89 e5             	mov    %rsp,%rbp
 1b6:	b8 89 c1 48 d2       	mov    $0xd248c189,%eax
 1bb:	5d                   	pop    %rbp
 1bc:	c3                   	ret

00000000000001bd <setval_401>:
 1bd:	f3 0f 1e fa          	endbr64
 1c1:	55                   	push   %rbp
 1c2:	48 89 e5             	mov    %rsp,%rbp
 1c5:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 1c9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 1cd:	c7 00 f9 89 c1 92    	movl   $0x92c189f9,(%rax)
 1d3:	90                   	nop
 1d4:	5d                   	pop    %rbp
 1d5:	c3                   	ret

00000000000001d6 <setval_275>:
 1d6:	f3 0f 1e fa          	endbr64
 1da:	55                   	push   %rbp
 1db:	48 89 e5             	mov    %rsp,%rbp
 1de:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 1e2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 1e6:	c7 00 76 89 ca c2    	movl   $0xc2ca8976,(%rax)
 1ec:	90                   	nop
 1ed:	5d                   	pop    %rbp
 1ee:	c3                   	ret

00000000000001ef <addval_224>:
 1ef:	f3 0f 1e fa          	endbr64
 1f3:	55                   	push   %rbp
 1f4:	48 89 e5             	mov    %rsp,%rbp
 1f7:	89 7d fc             	mov    %edi,-0x4(%rbp)
 1fa:	8b 45 fc             	mov    -0x4(%rbp),%eax
 1fd:	2d b8 76 1f 6f       	sub    $0x6f1f76b8,%eax
 202:	5d                   	pop    %rbp
 203:	c3                   	ret

0000000000000204 <addval_212>:
 204:	f3 0f 1e fa          	endbr64
 208:	55                   	push   %rbp
 209:	48 89 e5             	mov    %rsp,%rbp
 20c:	89 7d fc             	mov    %edi,-0x4(%rbp)
 20f:	8b 45 fc             	mov    -0x4(%rbp),%eax
 212:	2d 77 35 d7 3f       	sub    $0x3fd73577,%eax
 217:	5d                   	pop    %rbp
 218:	c3                   	ret

0000000000000219 <getval_247>:
 219:	f3 0f 1e fa          	endbr64
 21d:	55                   	push   %rbp
 21e:	48 89 e5             	mov    %rsp,%rbp
 221:	b8 48 89 e0 94       	mov    $0x94e08948,%eax
 226:	5d                   	pop    %rbp
 227:	c3                   	ret

0000000000000228 <addval_107>:
 228:	f3 0f 1e fa          	endbr64
 22c:	55                   	push   %rbp
 22d:	48 89 e5             	mov    %rsp,%rbp
 230:	89 7d fc             	mov    %edi,-0x4(%rbp)
 233:	8b 45 fc             	mov    -0x4(%rbp),%eax
 236:	2d 77 29 6f 3c       	sub    $0x3c6f2977,%eax
 23b:	5d                   	pop    %rbp
 23c:	c3                   	ret

000000000000023d <addval_199>:
 23d:	f3 0f 1e fa          	endbr64
 241:	55                   	push   %rbp
 242:	48 89 e5             	mov    %rsp,%rbp
 245:	89 7d fc             	mov    %edi,-0x4(%rbp)
 248:	8b 45 fc             	mov    -0x4(%rbp),%eax
 24b:	2d f7 29 3c 1f       	sub    $0x1f3c29f7,%eax
 250:	5d                   	pop    %rbp
 251:	c3                   	ret

0000000000000252 <addval_357>:
 252:	f3 0f 1e fa          	endbr64
 256:	55                   	push   %rbp
 257:	48 89 e5             	mov    %rsp,%rbp
 25a:	89 7d fc             	mov    %edi,-0x4(%rbp)
 25d:	8b 45 fc             	mov    -0x4(%rbp),%eax
 260:	2d b8 56 1f 6f       	sub    $0x6f1f56b8,%eax
 265:	5d                   	pop    %rbp
 266:	c3                   	ret

0000000000000267 <getval_149>:
 267:	f3 0f 1e fa          	endbr64
 26b:	55                   	push   %rbp
 26c:	48 89 e5             	mov    %rsp,%rbp
 26f:	b8 48 89 e0 92       	mov    $0x92e08948,%eax
 274:	5d                   	pop    %rbp
 275:	c3                   	ret

0000000000000276 <getval_482>:
 276:	f3 0f 1e fa          	endbr64
 27a:	55                   	push   %rbp
 27b:	48 89 e5             	mov    %rsp,%rbp
 27e:	b8 df 89 c1 c3       	mov    $0xc3c189df,%eax
 283:	5d                   	pop    %rbp
 284:	c3                   	ret

0000000000000285 <addval_125>:
 285:	f3 0f 1e fa          	endbr64
 289:	55                   	push   %rbp
 28a:	48 89 e5             	mov    %rsp,%rbp
 28d:	89 7d fc             	mov    %edi,-0x4(%rbp)
 290:	8b 45 fc             	mov    -0x4(%rbp),%eax
 293:	2d 77 29 6f 6f       	sub    $0x6f6f2977,%eax
 298:	5d                   	pop    %rbp
 299:	c3                   	ret

000000000000029a <addval_292>:
 29a:	f3 0f 1e fa          	endbr64
 29e:	55                   	push   %rbp
 29f:	48 89 e5             	mov    %rsp,%rbp
 2a2:	89 7d fc             	mov    %edi,-0x4(%rbp)
 2a5:	8b 45 fc             	mov    -0x4(%rbp),%eax
 2a8:	2d 77 35 df 2d       	sub    $0x2ddf3577,%eax
 2ad:	5d                   	pop    %rbp
 2ae:	c3                   	ret

00000000000002af <addval_291>:
 2af:	f3 0f 1e fa          	endbr64
 2b3:	55                   	push   %rbp
 2b4:	48 89 e5             	mov    %rsp,%rbp
 2b7:	89 7d fc             	mov    %edi,-0x4(%rbp)
 2ba:	8b 45 fc             	mov    -0x4(%rbp),%eax
 2bd:	2d b8 56 1f 3c       	sub    $0x3c1f56b8,%eax
 2c2:	5d                   	pop    %rbp
 2c3:	c3                   	ret

00000000000002c4 <getval_437>:
 2c4:	f3 0f 1e fa          	endbr64
 2c8:	55                   	push   %rbp
 2c9:	48 89 e5             	mov    %rsp,%rbp
 2cc:	b8 89 d6 18 c9       	mov    $0xc918d689,%eax
 2d1:	5d                   	pop    %rbp
 2d2:	c3                   	ret

00000000000002d3 <getval_163>:
 2d3:	f3 0f 1e fa          	endbr64
 2d7:	55                   	push   %rbp
 2d8:	48 89 e5             	mov    %rsp,%rbp
 2db:	b8 89 c1 84 db       	mov    $0xdb84c189,%eax
 2e0:	5d                   	pop    %rbp
 2e1:	c3                   	ret

00000000000002e2 <setval_421>:
 2e2:	f3 0f 1e fa          	endbr64
 2e6:	55                   	push   %rbp
 2e7:	48 89 e5             	mov    %rsp,%rbp
 2ea:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 2ee:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 2f2:	c7 00 89 c1 18 c9    	movl   $0xc918c189,(%rax)
 2f8:	90                   	nop
 2f9:	5d                   	pop    %rbp
 2fa:	c3                   	ret

00000000000002fb <getval_435>:
 2fb:	f3 0f 1e fa          	endbr64
 2ff:	55                   	push   %rbp
 300:	48 89 e5             	mov    %rsp,%rbp
 303:	b8 8d ca 20 c9       	mov    $0xc920ca8d,%eax
 308:	5d                   	pop    %rbp
 309:	c3                   	ret

000000000000030a <setval_159>:
 30a:	f3 0f 1e fa          	endbr64
 30e:	55                   	push   %rbp
 30f:	48 89 e5             	mov    %rsp,%rbp
 312:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 316:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 31a:	c7 00 89 ca 84 c0    	movl   $0xc084ca89,(%rax)
 320:	90                   	nop
 321:	5d                   	pop    %rbp
 322:	c3                   	ret

0000000000000323 <setval_276>:
 323:	f3 0f 1e fa          	endbr64
 327:	55                   	push   %rbp
 328:	48 89 e5             	mov    %rsp,%rbp
 32b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 32f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 333:	c7 00 89 ca 28 d2    	movl   $0xd228ca89,(%rax)
 339:	90                   	nop
 33a:	5d                   	pop    %rbp
 33b:	c3                   	ret

000000000000033c <addval_264>:
 33c:	f3 0f 1e fa          	endbr64
 340:	55                   	push   %rbp
 341:	48 89 e5             	mov    %rsp,%rbp
 344:	89 7d fc             	mov    %edi,-0x4(%rbp)
 347:	8b 45 fc             	mov    -0x4(%rbp),%eax
 34a:	2d f7 35 7b 24       	sub    $0x247b35f7,%eax
 34f:	5d                   	pop    %rbp
 350:	c3                   	ret

0000000000000351 <end_farm>:
 351:	f3 0f 1e fa          	endbr64
 355:	55                   	push   %rbp
 356:	48 89 e5             	mov    %rsp,%rbp
 359:	b8 01 00 00 00       	mov    $0x1,%eax
 35e:	5d                   	pop    %rbp
 35f:	c3                   	ret
