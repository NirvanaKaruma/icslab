
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 d1 5f 00 00 	mov    0x5fd1(%rip),%rax        # 406fe0 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <__errno_location@plt-0x10>:
  401020:	ff 35 ca 5f 00 00    	push   0x5fca(%rip)        # 406ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 5f 00 00    	jmp    *0x5fcc(%rip)        # 406ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <__errno_location@plt>:
  401030:	ff 25 ca 5f 00 00    	jmp    *0x5fca(%rip)        # 407000 <__errno_location@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <srandom@plt>:
  401040:	ff 25 c2 5f 00 00    	jmp    *0x5fc2(%rip)        # 407008 <srandom@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <strncpy@plt>:
  401050:	ff 25 ba 5f 00 00    	jmp    *0x5fba(%rip)        # 407010 <strncpy@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <strncmp@plt>:
  401060:	ff 25 b2 5f 00 00    	jmp    *0x5fb2(%rip)        # 407018 <strncmp@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <strcpy@plt>:
  401070:	ff 25 aa 5f 00 00    	jmp    *0x5faa(%rip)        # 407020 <strcpy@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   $0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <puts@plt>:
  401080:	ff 25 a2 5f 00 00    	jmp    *0x5fa2(%rip)        # 407028 <puts@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   $0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <write@plt>:
  401090:	ff 25 9a 5f 00 00    	jmp    *0x5f9a(%rip)        # 407030 <write@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   $0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <strlen@plt>:
  4010a0:	ff 25 92 5f 00 00    	jmp    *0x5f92(%rip)        # 407038 <strlen@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   $0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010b0 <mmap@plt>:
  4010b0:	ff 25 8a 5f 00 00    	jmp    *0x5f8a(%rip)        # 407040 <mmap@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	push   $0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010c0 <alarm@plt>:
  4010c0:	ff 25 82 5f 00 00    	jmp    *0x5f82(%rip)        # 407048 <alarm@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	push   $0x9
  4010cb:	e9 50 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010d0 <close@plt>:
  4010d0:	ff 25 7a 5f 00 00    	jmp    *0x5f7a(%rip)        # 407050 <close@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	push   $0xa
  4010db:	e9 40 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010e0 <read@plt>:
  4010e0:	ff 25 72 5f 00 00    	jmp    *0x5f72(%rip)        # 407058 <read@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	push   $0xb
  4010eb:	e9 30 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010f0 <strcmp@plt>:
  4010f0:	ff 25 6a 5f 00 00    	jmp    *0x5f6a(%rip)        # 407060 <strcmp@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	push   $0xc
  4010fb:	e9 20 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401100 <signal@plt>:
  401100:	ff 25 62 5f 00 00    	jmp    *0x5f62(%rip)        # 407068 <signal@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	push   $0xd
  40110b:	e9 10 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401110 <gethostbyname@plt>:
  401110:	ff 25 5a 5f 00 00    	jmp    *0x5f5a(%rip)        # 407070 <gethostbyname@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	push   $0xe
  40111b:	e9 00 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401120 <__memmove_chk@plt>:
  401120:	ff 25 52 5f 00 00    	jmp    *0x5f52(%rip)        # 407078 <__memmove_chk@GLIBC_2.3.4>
  401126:	68 0f 00 00 00       	push   $0xf
  40112b:	e9 f0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401130 <strtol@plt>:
  401130:	ff 25 4a 5f 00 00    	jmp    *0x5f4a(%rip)        # 407080 <strtol@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	push   $0x10
  40113b:	e9 e0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401140 <memcpy@plt>:
  401140:	ff 25 42 5f 00 00    	jmp    *0x5f42(%rip)        # 407088 <memcpy@GLIBC_2.14>
  401146:	68 11 00 00 00       	push   $0x11
  40114b:	e9 d0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401150 <time@plt>:
  401150:	ff 25 3a 5f 00 00    	jmp    *0x5f3a(%rip)        # 407090 <time@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	push   $0x12
  40115b:	e9 c0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401160 <random@plt>:
  401160:	ff 25 32 5f 00 00    	jmp    *0x5f32(%rip)        # 407098 <random@GLIBC_2.2.5>
  401166:	68 13 00 00 00       	push   $0x13
  40116b:	e9 b0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401170 <__isoc99_sscanf@plt>:
  401170:	ff 25 2a 5f 00 00    	jmp    *0x5f2a(%rip)        # 4070a0 <__isoc99_sscanf@GLIBC_2.7>
  401176:	68 14 00 00 00       	push   $0x14
  40117b:	e9 a0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401180 <munmap@plt>:
  401180:	ff 25 22 5f 00 00    	jmp    *0x5f22(%rip)        # 4070a8 <munmap@GLIBC_2.2.5>
  401186:	68 15 00 00 00       	push   $0x15
  40118b:	e9 90 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401190 <__printf_chk@plt>:
  401190:	ff 25 1a 5f 00 00    	jmp    *0x5f1a(%rip)        # 4070b0 <__printf_chk@GLIBC_2.3.4>
  401196:	68 16 00 00 00       	push   $0x16
  40119b:	e9 80 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011a0 <fopen@plt>:
  4011a0:	ff 25 12 5f 00 00    	jmp    *0x5f12(%rip)        # 4070b8 <fopen@GLIBC_2.2.5>
  4011a6:	68 17 00 00 00       	push   $0x17
  4011ab:	e9 70 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011b0 <getopt@plt>:
  4011b0:	ff 25 0a 5f 00 00    	jmp    *0x5f0a(%rip)        # 4070c0 <getopt@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	push   $0x18
  4011bb:	e9 60 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011c0 <strtoul@plt>:
  4011c0:	ff 25 02 5f 00 00    	jmp    *0x5f02(%rip)        # 4070c8 <strtoul@GLIBC_2.2.5>
  4011c6:	68 19 00 00 00       	push   $0x19
  4011cb:	e9 50 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011d0 <__memset_chk@plt>:
  4011d0:	ff 25 fa 5e 00 00    	jmp    *0x5efa(%rip)        # 4070d0 <__memset_chk@GLIBC_2.3.4>
  4011d6:	68 1a 00 00 00       	push   $0x1a
  4011db:	e9 40 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011e0 <exit@plt>:
  4011e0:	ff 25 f2 5e 00 00    	jmp    *0x5ef2(%rip)        # 4070d8 <exit@GLIBC_2.2.5>
  4011e6:	68 1b 00 00 00       	push   $0x1b
  4011eb:	e9 30 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011f0 <connect@plt>:
  4011f0:	ff 25 ea 5e 00 00    	jmp    *0x5eea(%rip)        # 4070e0 <connect@GLIBC_2.2.5>
  4011f6:	68 1c 00 00 00       	push   $0x1c
  4011fb:	e9 20 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401200 <__fprintf_chk@plt>:
  401200:	ff 25 e2 5e 00 00    	jmp    *0x5ee2(%rip)        # 4070e8 <__fprintf_chk@GLIBC_2.3.4>
  401206:	68 1d 00 00 00       	push   $0x1d
  40120b:	e9 10 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401210 <getc@plt>:
  401210:	ff 25 da 5e 00 00    	jmp    *0x5eda(%rip)        # 4070f0 <getc@GLIBC_2.2.5>
  401216:	68 1e 00 00 00       	push   $0x1e
  40121b:	e9 00 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401220 <__sprintf_chk@plt>:
  401220:	ff 25 d2 5e 00 00    	jmp    *0x5ed2(%rip)        # 4070f8 <__sprintf_chk@GLIBC_2.3.4>
  401226:	68 1f 00 00 00       	push   $0x1f
  40122b:	e9 f0 fd ff ff       	jmp    401020 <_init+0x20>

0000000000401230 <socket@plt>:
  401230:	ff 25 ca 5e 00 00    	jmp    *0x5eca(%rip)        # 407100 <socket@GLIBC_2.2.5>
  401236:	68 20 00 00 00       	push   $0x20
  40123b:	e9 e0 fd ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401240 <_start>:
  401240:	f3 0f 1e fa          	endbr64
  401244:	31 ed                	xor    %ebp,%ebp
  401246:	49 89 d1             	mov    %rdx,%r9
  401249:	5e                   	pop    %rsi
  40124a:	48 89 e2             	mov    %rsp,%rdx
  40124d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401251:	50                   	push   %rax
  401252:	54                   	push   %rsp
  401253:	45 31 c0             	xor    %r8d,%r8d
  401256:	31 c9                	xor    %ecx,%ecx
  401258:	48 c7 c7 d7 14 40 00 	mov    $0x4014d7,%rdi
  40125f:	ff 15 73 5d 00 00    	call   *0x5d73(%rip)        # 406fd8 <__libc_start_main@GLIBC_2.34>
  401265:	f4                   	hlt
  401266:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40126d:	00 00 00 

0000000000401270 <_dl_relocate_static_pie>:
  401270:	f3 0f 1e fa          	endbr64
  401274:	c3                   	ret
  401275:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40127c:	00 00 00 
  40127f:	90                   	nop

0000000000401280 <deregister_tm_clones>:
  401280:	b8 90 74 40 00       	mov    $0x407490,%eax
  401285:	48 3d 90 74 40 00    	cmp    $0x407490,%rax
  40128b:	74 13                	je     4012a0 <deregister_tm_clones+0x20>
  40128d:	b8 00 00 00 00       	mov    $0x0,%eax
  401292:	48 85 c0             	test   %rax,%rax
  401295:	74 09                	je     4012a0 <deregister_tm_clones+0x20>
  401297:	bf 90 74 40 00       	mov    $0x407490,%edi
  40129c:	ff e0                	jmp    *%rax
  40129e:	66 90                	xchg   %ax,%ax
  4012a0:	c3                   	ret
  4012a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012a8:	00 00 00 00 
  4012ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012b0 <register_tm_clones>:
  4012b0:	be 90 74 40 00       	mov    $0x407490,%esi
  4012b5:	48 81 ee 90 74 40 00 	sub    $0x407490,%rsi
  4012bc:	48 89 f0             	mov    %rsi,%rax
  4012bf:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4012c3:	48 c1 f8 03          	sar    $0x3,%rax
  4012c7:	48 01 c6             	add    %rax,%rsi
  4012ca:	48 d1 fe             	sar    $1,%rsi
  4012cd:	74 11                	je     4012e0 <register_tm_clones+0x30>
  4012cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d4:	48 85 c0             	test   %rax,%rax
  4012d7:	74 07                	je     4012e0 <register_tm_clones+0x30>
  4012d9:	bf 90 74 40 00       	mov    $0x407490,%edi
  4012de:	ff e0                	jmp    *%rax
  4012e0:	c3                   	ret
  4012e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012e8:	00 00 00 00 
  4012ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012f0 <__do_global_dtors_aux>:
  4012f0:	f3 0f 1e fa          	endbr64
  4012f4:	80 3d ed 61 00 00 00 	cmpb   $0x0,0x61ed(%rip)        # 4074e8 <completed.0>
  4012fb:	75 13                	jne    401310 <__do_global_dtors_aux+0x20>
  4012fd:	55                   	push   %rbp
  4012fe:	48 89 e5             	mov    %rsp,%rbp
  401301:	e8 7a ff ff ff       	call   401280 <deregister_tm_clones>
  401306:	c6 05 db 61 00 00 01 	movb   $0x1,0x61db(%rip)        # 4074e8 <completed.0>
  40130d:	5d                   	pop    %rbp
  40130e:	c3                   	ret
  40130f:	90                   	nop
  401310:	c3                   	ret
  401311:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401318:	00 00 00 00 
  40131c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401320 <frame_dummy>:
  401320:	f3 0f 1e fa          	endbr64
  401324:	eb 8a                	jmp    4012b0 <register_tm_clones>

0000000000401326 <usage>:
  401326:	50                   	push   %rax
  401327:	58                   	pop    %rax
  401328:	48 83 ec 08          	sub    $0x8,%rsp
  40132c:	48 89 fa             	mov    %rdi,%rdx
  40132f:	83 3d fa 61 00 00 00 	cmpl   $0x0,0x61fa(%rip)        # 407530 <is_checker>
  401336:	74 50                	je     401388 <usage+0x62>
  401338:	48 8d 35 c9 2c 00 00 	lea    0x2cc9(%rip),%rsi        # 404008 <_IO_stdin_used+0x8>
  40133f:	bf 02 00 00 00       	mov    $0x2,%edi
  401344:	b8 00 00 00 00       	mov    $0x0,%eax
  401349:	e8 42 fe ff ff       	call   401190 <__printf_chk@plt>
  40134e:	48 8d 3d eb 2c 00 00 	lea    0x2ceb(%rip),%rdi        # 404040 <_IO_stdin_used+0x40>
  401355:	e8 26 fd ff ff       	call   401080 <puts@plt>
  40135a:	48 8d 3d bc 31 00 00 	lea    0x31bc(%rip),%rdi        # 40451d <_IO_stdin_used+0x51d>
  401361:	e8 1a fd ff ff       	call   401080 <puts@plt>
  401366:	48 8d 3d fb 2c 00 00 	lea    0x2cfb(%rip),%rdi        # 404068 <_IO_stdin_used+0x68>
  40136d:	e8 0e fd ff ff       	call   401080 <puts@plt>
  401372:	48 8d 3d be 31 00 00 	lea    0x31be(%rip),%rdi        # 404537 <_IO_stdin_used+0x537>
  401379:	e8 02 fd ff ff       	call   401080 <puts@plt>
  40137e:	bf 00 00 00 00       	mov    $0x0,%edi
  401383:	e8 58 fe ff ff       	call   4011e0 <exit@plt>
  401388:	48 8d 35 c4 31 00 00 	lea    0x31c4(%rip),%rsi        # 404553 <_IO_stdin_used+0x553>
  40138f:	bf 02 00 00 00       	mov    $0x2,%edi
  401394:	b8 00 00 00 00       	mov    $0x0,%eax
  401399:	e8 f2 fd ff ff       	call   401190 <__printf_chk@plt>
  40139e:	48 8d 3d eb 2c 00 00 	lea    0x2ceb(%rip),%rdi        # 404090 <_IO_stdin_used+0x90>
  4013a5:	e8 d6 fc ff ff       	call   401080 <puts@plt>
  4013aa:	48 8d 3d 07 2d 00 00 	lea    0x2d07(%rip),%rdi        # 4040b8 <_IO_stdin_used+0xb8>
  4013b1:	e8 ca fc ff ff       	call   401080 <puts@plt>
  4013b6:	48 8d 3d b4 31 00 00 	lea    0x31b4(%rip),%rdi        # 404571 <_IO_stdin_used+0x571>
  4013bd:	e8 be fc ff ff       	call   401080 <puts@plt>
  4013c2:	eb ba                	jmp    40137e <usage+0x58>

00000000004013c4 <initialize_target>:
  4013c4:	55                   	push   %rbp
  4013c5:	53                   	push   %rbx
  4013c6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4013cd:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4013d2:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4013d9:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4013de:	48 83 ec 18          	sub    $0x18,%rsp
  4013e2:	89 f5                	mov    %esi,%ebp
  4013e4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4013eb:	00 00 
  4013ed:	48 89 84 24 08 20 00 	mov    %rax,0x2008(%rsp)
  4013f4:	00 
  4013f5:	31 c0                	xor    %eax,%eax
  4013f7:	89 3d 23 61 00 00    	mov    %edi,0x6123(%rip)        # 407520 <check_level>
  4013fd:	8b 3d 2d 5d 00 00    	mov    0x5d2d(%rip),%edi        # 407130 <target_id>
  401403:	e8 4d 22 00 00       	call   403655 <gencookie>
  401408:	89 c7                	mov    %eax,%edi
  40140a:	89 05 1c 61 00 00    	mov    %eax,0x611c(%rip)        # 40752c <cookie>
  401410:	e8 40 22 00 00       	call   403655 <gencookie>
  401415:	89 05 0d 61 00 00    	mov    %eax,0x610d(%rip)        # 407528 <authkey>
  40141b:	8b 05 0f 5d 00 00    	mov    0x5d0f(%rip),%eax        # 407130 <target_id>
  401421:	8d 78 01             	lea    0x1(%rax),%edi
  401424:	e8 17 fc ff ff       	call   401040 <srandom@plt>
  401429:	e8 32 fd ff ff       	call   401160 <random@plt>
  40142e:	89 c7                	mov    %eax,%edi
  401430:	e8 07 03 00 00       	call   40173c <scramble>
  401435:	89 c3                	mov    %eax,%ebx
  401437:	85 ed                	test   %ebp,%ebp
  401439:	75 50                	jne    40148b <initialize_target+0xc7>
  40143b:	b8 00 00 00 00       	mov    $0x0,%eax
  401440:	01 d8                	add    %ebx,%eax
  401442:	0f b7 c0             	movzwl %ax,%eax
  401445:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  40144c:	89 c0                	mov    %eax,%eax
  40144e:	48 89 05 33 60 00 00 	mov    %rax,0x6033(%rip)        # 407488 <buf_offset>
  401455:	c6 05 ec 6c 00 00 72 	movb   $0x72,0x6cec(%rip)        # 408148 <target_prefix>
  40145c:	83 3d 1d 60 00 00 00 	cmpl   $0x0,0x601d(%rip)        # 407480 <notify>
  401463:	74 09                	je     40146e <initialize_target+0xaa>
  401465:	83 3d c4 60 00 00 00 	cmpl   $0x0,0x60c4(%rip)        # 407530 <is_checker>
  40146c:	74 35                	je     4014a3 <initialize_target+0xdf>
  40146e:	48 8b 84 24 08 20 00 	mov    0x2008(%rsp),%rax
  401475:	00 
  401476:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40147d:	00 00 
  40147f:	75 51                	jne    4014d2 <initialize_target+0x10e>
  401481:	48 81 c4 18 20 00 00 	add    $0x2018,%rsp
  401488:	5b                   	pop    %rbx
  401489:	5d                   	pop    %rbp
  40148a:	c3                   	ret
  40148b:	bf 00 00 00 00       	mov    $0x0,%edi
  401490:	e8 bb fc ff ff       	call   401150 <time@plt>
  401495:	89 c7                	mov    %eax,%edi
  401497:	e8 a4 fb ff ff       	call   401040 <srandom@plt>
  40149c:	e8 bf fc ff ff       	call   401160 <random@plt>
  4014a1:	eb 9d                	jmp    401440 <initialize_target+0x7c>
  4014a3:	48 89 e7             	mov    %rsp,%rdi
  4014a6:	e8 e1 1e 00 00       	call   40338c <init_driver>
  4014ab:	85 c0                	test   %eax,%eax
  4014ad:	79 bf                	jns    40146e <initialize_target+0xaa>
  4014af:	48 89 e2             	mov    %rsp,%rdx
  4014b2:	48 8d 35 2f 2c 00 00 	lea    0x2c2f(%rip),%rsi        # 4040e8 <_IO_stdin_used+0xe8>
  4014b9:	bf 02 00 00 00       	mov    $0x2,%edi
  4014be:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c3:	e8 c8 fc ff ff       	call   401190 <__printf_chk@plt>
  4014c8:	bf 08 00 00 00       	mov    $0x8,%edi
  4014cd:	e8 0e fd ff ff       	call   4011e0 <exit@plt>
  4014d2:	e8 31 12 00 00       	call   402708 <__stack_chk_fail>

00000000004014d7 <main>:
  4014d7:	f3 0f 1e fa          	endbr64
  4014db:	41 56                	push   %r14
  4014dd:	41 55                	push   %r13
  4014df:	41 54                	push   %r12
  4014e1:	55                   	push   %rbp
  4014e2:	53                   	push   %rbx
  4014e3:	48 83 ec 60          	sub    $0x60,%rsp
  4014e7:	89 fd                	mov    %edi,%ebp
  4014e9:	48 89 f3             	mov    %rsi,%rbx
  4014ec:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4014f3:	00 00 
  4014f5:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  4014fa:	31 c0                	xor    %eax,%eax
  4014fc:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  401503:	74 65 64 
  401506:	48 89 04 24          	mov    %rax,(%rsp)
  40150a:	48 b8 64 41 77 61 79 	movabs $0x4e437961774164,%rax
  401511:	43 4e 00 
  401514:	48 89 44 24 07       	mov    %rax,0x7(%rsp)
  401519:	48 c7 c6 f7 25 40 00 	mov    $0x4025f7,%rsi
  401520:	bf 0b 00 00 00       	mov    $0xb,%edi
  401525:	e8 d6 fb ff ff       	call   401100 <signal@plt>
  40152a:	48 c7 c6 9d 25 40 00 	mov    $0x40259d,%rsi
  401531:	bf 07 00 00 00       	mov    $0x7,%edi
  401536:	e8 c5 fb ff ff       	call   401100 <signal@plt>
  40153b:	48 c7 c6 51 26 40 00 	mov    $0x402651,%rsi
  401542:	bf 04 00 00 00       	mov    $0x4,%edi
  401547:	e8 b4 fb ff ff       	call   401100 <signal@plt>
  40154c:	83 3d dd 5f 00 00 00 	cmpl   $0x0,0x5fdd(%rip)        # 407530 <is_checker>
  401553:	75 26                	jne    40157b <main+0xa4>
  401555:	4c 8d 25 2e 30 00 00 	lea    0x302e(%rip),%r12        # 40458a <_IO_stdin_used+0x58a>
  40155c:	48 8b 05 3d 5f 00 00 	mov    0x5f3d(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  401563:	48 89 05 ae 5f 00 00 	mov    %rax,0x5fae(%rip)        # 407518 <infile>
  40156a:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401570:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401576:	e9 8d 00 00 00       	jmp    401608 <main+0x131>
  40157b:	48 c7 c6 ab 26 40 00 	mov    $0x4026ab,%rsi
  401582:	bf 0e 00 00 00       	mov    $0xe,%edi
  401587:	e8 74 fb ff ff       	call   401100 <signal@plt>
  40158c:	bf 02 00 00 00       	mov    $0x2,%edi
  401591:	e8 2a fb ff ff       	call   4010c0 <alarm@plt>
  401596:	4c 8d 25 f2 2f 00 00 	lea    0x2ff2(%rip),%r12        # 40458f <_IO_stdin_used+0x58f>
  40159d:	eb bd                	jmp    40155c <main+0x85>
  40159f:	48 8b 3b             	mov    (%rbx),%rdi
  4015a2:	e8 7f fd ff ff       	call   401326 <usage>
  4015a7:	48 8d 35 5b 30 00 00 	lea    0x305b(%rip),%rsi        # 404609 <_IO_stdin_used+0x609>
  4015ae:	48 8b 3d 0b 5f 00 00 	mov    0x5f0b(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  4015b5:	e8 e6 fb ff ff       	call   4011a0 <fopen@plt>
  4015ba:	48 89 05 57 5f 00 00 	mov    %rax,0x5f57(%rip)        # 407518 <infile>
  4015c1:	48 85 c0             	test   %rax,%rax
  4015c4:	75 42                	jne    401608 <main+0x131>
  4015c6:	48 8b 0d f3 5e 00 00 	mov    0x5ef3(%rip),%rcx        # 4074c0 <optarg@GLIBC_2.2.5>
  4015cd:	48 8d 15 c5 2f 00 00 	lea    0x2fc5(%rip),%rdx        # 404599 <_IO_stdin_used+0x599>
  4015d4:	be 02 00 00 00       	mov    $0x2,%esi
  4015d9:	48 8b 3d 00 5f 00 00 	mov    0x5f00(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4015e0:	e8 1b fc ff ff       	call   401200 <__fprintf_chk@plt>
  4015e5:	b8 01 00 00 00       	mov    $0x1,%eax
  4015ea:	e9 2b 01 00 00       	jmp    40171a <main+0x243>
  4015ef:	ba 10 00 00 00       	mov    $0x10,%edx
  4015f4:	be 00 00 00 00       	mov    $0x0,%esi
  4015f9:	48 8b 3d c0 5e 00 00 	mov    0x5ec0(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  401600:	e8 bb fb ff ff       	call   4011c0 <strtoul@plt>
  401605:	41 89 c6             	mov    %eax,%r14d
  401608:	4c 89 e2             	mov    %r12,%rdx
  40160b:	48 89 de             	mov    %rbx,%rsi
  40160e:	89 ef                	mov    %ebp,%edi
  401610:	e8 9b fb ff ff       	call   4011b0 <getopt@plt>
  401615:	3c ff                	cmp    $0xff,%al
  401617:	74 7a                	je     401693 <main+0x1bc>
  401619:	8d 50 9f             	lea    -0x61(%rax),%edx
  40161c:	80 fa 14             	cmp    $0x14,%dl
  40161f:	77 51                	ja     401672 <main+0x19b>
  401621:	0f b6 d2             	movzbl %dl,%edx
  401624:	48 8d 0d 79 31 00 00 	lea    0x3179(%rip),%rcx        # 4047a4 <_IO_stdin_used+0x7a4>
  40162b:	48 63 14 91          	movslq (%rcx,%rdx,4),%rdx
  40162f:	48 01 ca             	add    %rcx,%rdx
  401632:	3e ff e2             	notrack jmp *%rdx
  401635:	ba 0a 00 00 00       	mov    $0xa,%edx
  40163a:	be 00 00 00 00       	mov    $0x0,%esi
  40163f:	48 8b 3d 7a 5e 00 00 	mov    0x5e7a(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  401646:	e8 e5 fa ff ff       	call   401130 <strtol@plt>
  40164b:	41 89 c5             	mov    %eax,%r13d
  40164e:	eb b8                	jmp    401608 <main+0x131>
  401650:	c7 05 26 5e 00 00 00 	movl   $0x0,0x5e26(%rip)        # 407480 <notify>
  401657:	00 00 00 
  40165a:	eb ac                	jmp    401608 <main+0x131>
  40165c:	48 89 e7             	mov    %rsp,%rdi
  40165f:	ba 50 00 00 00       	mov    $0x50,%edx
  401664:	48 8b 35 55 5e 00 00 	mov    0x5e55(%rip),%rsi        # 4074c0 <optarg@GLIBC_2.2.5>
  40166b:	e8 e0 f9 ff ff       	call   401050 <strncpy@plt>
  401670:	eb 96                	jmp    401608 <main+0x131>
  401672:	0f be d0             	movsbl %al,%edx
  401675:	48 8d 35 3a 2f 00 00 	lea    0x2f3a(%rip),%rsi        # 4045b6 <_IO_stdin_used+0x5b6>
  40167c:	bf 02 00 00 00       	mov    $0x2,%edi
  401681:	b8 00 00 00 00       	mov    $0x0,%eax
  401686:	e8 05 fb ff ff       	call   401190 <__printf_chk@plt>
  40168b:	48 8b 3b             	mov    (%rbx),%rdi
  40168e:	e8 93 fc ff ff       	call   401326 <usage>
  401693:	be 01 00 00 00       	mov    $0x1,%esi
  401698:	44 89 ef             	mov    %r13d,%edi
  40169b:	e8 24 fd ff ff       	call   4013c4 <initialize_target>
  4016a0:	83 3d 89 5e 00 00 00 	cmpl   $0x0,0x5e89(%rip)        # 407530 <is_checker>
  4016a7:	74 3f                	je     4016e8 <main+0x211>
  4016a9:	44 39 35 78 5e 00 00 	cmp    %r14d,0x5e78(%rip)        # 407528 <authkey>
  4016b0:	75 13                	jne    4016c5 <main+0x1ee>
  4016b2:	48 89 e7             	mov    %rsp,%rdi
  4016b5:	48 8b 35 84 5a 00 00 	mov    0x5a84(%rip),%rsi        # 407140 <user_id>
  4016bc:	e8 2f fa ff ff       	call   4010f0 <strcmp@plt>
  4016c1:	85 c0                	test   %eax,%eax
  4016c3:	74 23                	je     4016e8 <main+0x211>
  4016c5:	44 89 f2             	mov    %r14d,%edx
  4016c8:	48 8d 35 41 2a 00 00 	lea    0x2a41(%rip),%rsi        # 404110 <_IO_stdin_used+0x110>
  4016cf:	bf 02 00 00 00       	mov    $0x2,%edi
  4016d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4016d9:	e8 b2 fa ff ff       	call   401190 <__printf_chk@plt>
  4016de:	b8 00 00 00 00       	mov    $0x0,%eax
  4016e3:	e8 f3 0a 00 00       	call   4021db <check_fail>
  4016e8:	8b 15 3e 5e 00 00    	mov    0x5e3e(%rip),%edx        # 40752c <cookie>
  4016ee:	48 8d 35 d4 2e 00 00 	lea    0x2ed4(%rip),%rsi        # 4045c9 <_IO_stdin_used+0x5c9>
  4016f5:	bf 02 00 00 00       	mov    $0x2,%edi
  4016fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4016ff:	e8 8c fa ff ff       	call   401190 <__printf_chk@plt>
  401704:	be 00 00 00 00       	mov    $0x0,%esi
  401709:	48 8b 3d 78 5d 00 00 	mov    0x5d78(%rip),%rdi        # 407488 <buf_offset>
  401710:	e8 4d 10 00 00       	call   402762 <launch>
  401715:	b8 00 00 00 00       	mov    $0x0,%eax
  40171a:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
  40171f:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401726:	00 00 
  401728:	75 0d                	jne    401737 <main+0x260>
  40172a:	48 83 c4 60          	add    $0x60,%rsp
  40172e:	5b                   	pop    %rbx
  40172f:	5d                   	pop    %rbp
  401730:	41 5c                	pop    %r12
  401732:	41 5d                	pop    %r13
  401734:	41 5e                	pop    %r14
  401736:	c3                   	ret
  401737:	e8 cc 0f 00 00       	call   402708 <__stack_chk_fail>

000000000040173c <scramble>:
  40173c:	f3 0f 1e fa          	endbr64
  401740:	48 83 ec 38          	sub    $0x38,%rsp
  401744:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40174b:	00 00 
  40174d:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401752:	31 c0                	xor    %eax,%eax
  401754:	eb 10                	jmp    401766 <scramble+0x2a>
  401756:	69 d0 f5 ef 00 00    	imul   $0xeff5,%eax,%edx
  40175c:	01 fa                	add    %edi,%edx
  40175e:	89 c1                	mov    %eax,%ecx
  401760:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401763:	83 c0 01             	add    $0x1,%eax
  401766:	83 f8 09             	cmp    $0x9,%eax
  401769:	76 eb                	jbe    401756 <scramble+0x1a>
  40176b:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40176f:	69 c0 b4 e5 00 00    	imul   $0xe5b4,%eax,%eax
  401775:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401779:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40177d:	69 c0 8a 2e 00 00    	imul   $0x2e8a,%eax,%eax
  401783:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401787:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40178b:	69 c0 a0 96 00 00    	imul   $0x96a0,%eax,%eax
  401791:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401795:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401799:	69 c0 6c cf 00 00    	imul   $0xcf6c,%eax,%eax
  40179f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4017a3:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4017a7:	69 c0 d9 60 00 00    	imul   $0x60d9,%eax,%eax
  4017ad:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4017b1:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4017b5:	69 c0 d3 81 00 00    	imul   $0x81d3,%eax,%eax
  4017bb:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4017bf:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017c3:	69 c0 a8 a6 00 00    	imul   $0xa6a8,%eax,%eax
  4017c9:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4017cd:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017d1:	69 c0 2a 54 00 00    	imul   $0x542a,%eax,%eax
  4017d7:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017db:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017df:	69 c0 43 fe 00 00    	imul   $0xfe43,%eax,%eax
  4017e5:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017e9:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017ed:	69 c0 3e 75 00 00    	imul   $0x753e,%eax,%eax
  4017f3:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4017f7:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017fb:	69 c0 9e 3c 00 00    	imul   $0x3c9e,%eax,%eax
  401801:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401805:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401809:	69 c0 16 1b 00 00    	imul   $0x1b16,%eax,%eax
  40180f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401813:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401817:	69 c0 cf 89 00 00    	imul   $0x89cf,%eax,%eax
  40181d:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401821:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401825:	69 c0 60 74 00 00    	imul   $0x7460,%eax,%eax
  40182b:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40182f:	8b 04 24             	mov    (%rsp),%eax
  401832:	69 c0 06 c2 00 00    	imul   $0xc206,%eax,%eax
  401838:	89 04 24             	mov    %eax,(%rsp)
  40183b:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40183f:	69 c0 15 ae 00 00    	imul   $0xae15,%eax,%eax
  401845:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401849:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40184d:	69 c0 0a d6 00 00    	imul   $0xd60a,%eax,%eax
  401853:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401857:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40185b:	69 c0 ab 54 00 00    	imul   $0x54ab,%eax,%eax
  401861:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401865:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401869:	69 c0 49 8b 00 00    	imul   $0x8b49,%eax,%eax
  40186f:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401873:	8b 04 24             	mov    (%rsp),%eax
  401876:	69 c0 a9 8f 00 00    	imul   $0x8fa9,%eax,%eax
  40187c:	89 04 24             	mov    %eax,(%rsp)
  40187f:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401883:	69 c0 23 69 00 00    	imul   $0x6923,%eax,%eax
  401889:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40188d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401891:	69 c0 20 27 00 00    	imul   $0x2720,%eax,%eax
  401897:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40189b:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40189f:	69 c0 f1 2f 00 00    	imul   $0x2ff1,%eax,%eax
  4018a5:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4018a9:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4018ad:	69 c0 bc c5 00 00    	imul   $0xc5bc,%eax,%eax
  4018b3:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4018b7:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018bb:	69 c0 00 82 00 00    	imul   $0x8200,%eax,%eax
  4018c1:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018c5:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4018c9:	69 c0 6a b8 00 00    	imul   $0xb86a,%eax,%eax
  4018cf:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4018d3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018d7:	69 c0 72 df 00 00    	imul   $0xdf72,%eax,%eax
  4018dd:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018e1:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4018e5:	69 c0 d1 29 00 00    	imul   $0x29d1,%eax,%eax
  4018eb:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4018ef:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4018f3:	69 c0 95 94 00 00    	imul   $0x9495,%eax,%eax
  4018f9:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4018fd:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401901:	69 c0 61 27 00 00    	imul   $0x2761,%eax,%eax
  401907:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40190b:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40190f:	69 c0 a6 08 00 00    	imul   $0x8a6,%eax,%eax
  401915:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401919:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40191d:	69 c0 56 fe 00 00    	imul   $0xfe56,%eax,%eax
  401923:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401927:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40192b:	69 c0 15 b2 00 00    	imul   $0xb215,%eax,%eax
  401931:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401935:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401939:	69 c0 5a 4b 00 00    	imul   $0x4b5a,%eax,%eax
  40193f:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401943:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401947:	69 c0 18 77 00 00    	imul   $0x7718,%eax,%eax
  40194d:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401951:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401955:	69 c0 80 29 00 00    	imul   $0x2980,%eax,%eax
  40195b:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40195f:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401963:	69 c0 7f ec 00 00    	imul   $0xec7f,%eax,%eax
  401969:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40196d:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401971:	69 c0 07 f0 00 00    	imul   $0xf007,%eax,%eax
  401977:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40197b:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40197f:	69 c0 ec cb 00 00    	imul   $0xcbec,%eax,%eax
  401985:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401989:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40198d:	69 c0 a5 4a 00 00    	imul   $0x4aa5,%eax,%eax
  401993:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401997:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40199b:	69 c0 be f0 00 00    	imul   $0xf0be,%eax,%eax
  4019a1:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4019a5:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4019a9:	69 c0 8b 0c 00 00    	imul   $0xc8b,%eax,%eax
  4019af:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4019b3:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4019b7:	69 c0 91 d6 00 00    	imul   $0xd691,%eax,%eax
  4019bd:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4019c1:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4019c5:	69 c0 71 39 00 00    	imul   $0x3971,%eax,%eax
  4019cb:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4019cf:	8b 04 24             	mov    (%rsp),%eax
  4019d2:	69 c0 8e d4 00 00    	imul   $0xd48e,%eax,%eax
  4019d8:	89 04 24             	mov    %eax,(%rsp)
  4019db:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4019df:	69 c0 c2 c1 00 00    	imul   $0xc1c2,%eax,%eax
  4019e5:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4019e9:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4019ed:	69 c0 48 36 00 00    	imul   $0x3648,%eax,%eax
  4019f3:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4019f7:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4019fb:	69 c0 e4 bb 00 00    	imul   $0xbbe4,%eax,%eax
  401a01:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401a05:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401a09:	69 c0 19 13 00 00    	imul   $0x1319,%eax,%eax
  401a0f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401a13:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401a17:	69 c0 bc 25 00 00    	imul   $0x25bc,%eax,%eax
  401a1d:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401a21:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401a25:	69 c0 41 e2 00 00    	imul   $0xe241,%eax,%eax
  401a2b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401a2f:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401a33:	69 c0 6d 6a 00 00    	imul   $0x6a6d,%eax,%eax
  401a39:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401a3d:	8b 04 24             	mov    (%rsp),%eax
  401a40:	69 c0 de 9f 00 00    	imul   $0x9fde,%eax,%eax
  401a46:	89 04 24             	mov    %eax,(%rsp)
  401a49:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401a4d:	69 c0 31 eb 00 00    	imul   $0xeb31,%eax,%eax
  401a53:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401a57:	8b 04 24             	mov    (%rsp),%eax
  401a5a:	69 c0 37 10 00 00    	imul   $0x1037,%eax,%eax
  401a60:	89 04 24             	mov    %eax,(%rsp)
  401a63:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401a67:	69 c0 b6 b9 00 00    	imul   $0xb9b6,%eax,%eax
  401a6d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401a71:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401a75:	69 c0 e6 38 00 00    	imul   $0x38e6,%eax,%eax
  401a7b:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401a7f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a83:	69 c0 26 d1 00 00    	imul   $0xd126,%eax,%eax
  401a89:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a8d:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401a91:	69 c0 9f fc 00 00    	imul   $0xfc9f,%eax,%eax
  401a97:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401a9b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401a9f:	69 c0 9e 7a 00 00    	imul   $0x7a9e,%eax,%eax
  401aa5:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401aa9:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401aad:	69 c0 6a 6b 00 00    	imul   $0x6b6a,%eax,%eax
  401ab3:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401ab7:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401abb:	69 c0 62 ae 00 00    	imul   $0xae62,%eax,%eax
  401ac1:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401ac5:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401ac9:	69 c0 78 fc 00 00    	imul   $0xfc78,%eax,%eax
  401acf:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401ad3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401ad7:	69 c0 11 8a 00 00    	imul   $0x8a11,%eax,%eax
  401add:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401ae1:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ae5:	69 c0 85 71 00 00    	imul   $0x7185,%eax,%eax
  401aeb:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401aef:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401af3:	69 c0 c2 99 00 00    	imul   $0x99c2,%eax,%eax
  401af9:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401afd:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b01:	69 c0 0a ff 00 00    	imul   $0xff0a,%eax,%eax
  401b07:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b0b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401b0f:	69 c0 87 22 00 00    	imul   $0x2287,%eax,%eax
  401b15:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401b19:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401b1d:	69 c0 a3 5e 00 00    	imul   $0x5ea3,%eax,%eax
  401b23:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401b27:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401b2b:	69 c0 b2 0a 00 00    	imul   $0xab2,%eax,%eax
  401b31:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401b35:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b39:	69 c0 8e 43 00 00    	imul   $0x438e,%eax,%eax
  401b3f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b43:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401b47:	69 c0 d1 6f 00 00    	imul   $0x6fd1,%eax,%eax
  401b4d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401b51:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b55:	69 c0 ab 8a 00 00    	imul   $0x8aab,%eax,%eax
  401b5b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b5f:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b63:	69 c0 ec 8b 00 00    	imul   $0x8bec,%eax,%eax
  401b69:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b6d:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b71:	69 c0 8f 4b 00 00    	imul   $0x4b8f,%eax,%eax
  401b77:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b7b:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401b7f:	69 c0 77 58 00 00    	imul   $0x5877,%eax,%eax
  401b85:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401b89:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b8d:	69 c0 ea 42 00 00    	imul   $0x42ea,%eax,%eax
  401b93:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b97:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401b9b:	69 c0 ad 58 00 00    	imul   $0x58ad,%eax,%eax
  401ba1:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401ba5:	8b 04 24             	mov    (%rsp),%eax
  401ba8:	69 c0 20 71 00 00    	imul   $0x7120,%eax,%eax
  401bae:	89 04 24             	mov    %eax,(%rsp)
  401bb1:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401bb5:	69 c0 f3 4e 00 00    	imul   $0x4ef3,%eax,%eax
  401bbb:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401bbf:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401bc3:	69 c0 8b 92 00 00    	imul   $0x928b,%eax,%eax
  401bc9:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401bcd:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401bd1:	69 c0 6b 36 00 00    	imul   $0x366b,%eax,%eax
  401bd7:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401bdb:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401bdf:	69 c0 e5 ec 00 00    	imul   $0xece5,%eax,%eax
  401be5:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401be9:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401bed:	69 c0 7e 30 00 00    	imul   $0x307e,%eax,%eax
  401bf3:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401bf7:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401bfb:	69 c0 aa 66 00 00    	imul   $0x66aa,%eax,%eax
  401c01:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c05:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401c09:	69 c0 64 ba 00 00    	imul   $0xba64,%eax,%eax
  401c0f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401c13:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401c17:	69 c0 9a ff 00 00    	imul   $0xff9a,%eax,%eax
  401c1d:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401c21:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401c25:	69 c0 ae 26 00 00    	imul   $0x26ae,%eax,%eax
  401c2b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401c2f:	8b 04 24             	mov    (%rsp),%eax
  401c32:	69 c0 2c 6b 00 00    	imul   $0x6b2c,%eax,%eax
  401c38:	89 04 24             	mov    %eax,(%rsp)
  401c3b:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401c3f:	69 c0 8f 11 00 00    	imul   $0x118f,%eax,%eax
  401c45:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401c49:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401c4d:	69 c0 25 b9 00 00    	imul   $0xb925,%eax,%eax
  401c53:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401c57:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401c5b:	69 c0 b6 6d 00 00    	imul   $0x6db6,%eax,%eax
  401c61:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c65:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c69:	69 c0 e0 70 00 00    	imul   $0x70e0,%eax,%eax
  401c6f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c73:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401c77:	69 c0 72 3b 00 00    	imul   $0x3b72,%eax,%eax
  401c7d:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401c81:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401c85:	69 c0 21 a9 00 00    	imul   $0xa921,%eax,%eax
  401c8b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401c8f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401c93:	69 c0 a5 c4 00 00    	imul   $0xc4a5,%eax,%eax
  401c99:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401c9d:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401ca1:	69 c0 1b 73 00 00    	imul   $0x731b,%eax,%eax
  401ca7:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401cab:	b8 00 00 00 00       	mov    $0x0,%eax
  401cb0:	ba 00 00 00 00       	mov    $0x0,%edx
  401cb5:	eb 0a                	jmp    401cc1 <scramble+0x585>
  401cb7:	89 c1                	mov    %eax,%ecx
  401cb9:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401cbc:	01 ca                	add    %ecx,%edx
  401cbe:	83 c0 01             	add    $0x1,%eax
  401cc1:	83 f8 09             	cmp    $0x9,%eax
  401cc4:	76 f1                	jbe    401cb7 <scramble+0x57b>
  401cc6:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401ccb:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401cd2:	00 00 
  401cd4:	75 07                	jne    401cdd <scramble+0x5a1>
  401cd6:	89 d0                	mov    %edx,%eax
  401cd8:	48 83 c4 38          	add    $0x38,%rsp
  401cdc:	c3                   	ret
  401cdd:	e8 26 0a 00 00       	call   402708 <__stack_chk_fail>

0000000000401ce2 <getbuf>:
  401ce2:	f3 0f 1e fa          	endbr64
  401ce6:	48 83 ec 38          	sub    $0x38,%rsp
  401cea:	48 89 e7             	mov    %rsp,%rdi
  401ced:	e8 27 05 00 00       	call   402219 <Gets>
  401cf2:	b8 01 00 00 00       	mov    $0x1,%eax
  401cf7:	48 83 c4 38          	add    $0x38,%rsp
  401cfb:	c3                   	ret

0000000000401cfc <touch1>:
  401cfc:	f3 0f 1e fa          	endbr64
  401d00:	50                   	push   %rax
  401d01:	58                   	pop    %rax
  401d02:	48 83 ec 08          	sub    $0x8,%rsp
  401d06:	c7 05 14 58 00 00 01 	movl   $0x1,0x5814(%rip)        # 407524 <vlevel>
  401d0d:	00 00 00 
  401d10:	48 8d 3d f4 28 00 00 	lea    0x28f4(%rip),%rdi        # 40460b <_IO_stdin_used+0x60b>
  401d17:	e8 64 f3 ff ff       	call   401080 <puts@plt>
  401d1c:	bf 01 00 00 00       	mov    $0x1,%edi
  401d21:	e8 70 07 00 00       	call   402496 <validate>
  401d26:	bf 00 00 00 00       	mov    $0x0,%edi
  401d2b:	e8 b0 f4 ff ff       	call   4011e0 <exit@plt>

0000000000401d30 <touch2>:
  401d30:	f3 0f 1e fa          	endbr64
  401d34:	50                   	push   %rax
  401d35:	58                   	pop    %rax
  401d36:	48 83 ec 08          	sub    $0x8,%rsp
  401d3a:	89 fa                	mov    %edi,%edx
  401d3c:	c7 05 de 57 00 00 02 	movl   $0x2,0x57de(%rip)        # 407524 <vlevel>
  401d43:	00 00 00 
  401d46:	39 3d e0 57 00 00    	cmp    %edi,0x57e0(%rip)        # 40752c <cookie>
  401d4c:	74 2a                	je     401d78 <touch2+0x48>
  401d4e:	48 8d 35 2b 24 00 00 	lea    0x242b(%rip),%rsi        # 404180 <_IO_stdin_used+0x180>
  401d55:	bf 02 00 00 00       	mov    $0x2,%edi
  401d5a:	b8 00 00 00 00       	mov    $0x0,%eax
  401d5f:	e8 2c f4 ff ff       	call   401190 <__printf_chk@plt>
  401d64:	bf 02 00 00 00       	mov    $0x2,%edi
  401d69:	e8 03 08 00 00       	call   402571 <fail>
  401d6e:	bf 00 00 00 00       	mov    $0x0,%edi
  401d73:	e8 68 f4 ff ff       	call   4011e0 <exit@plt>
  401d78:	48 8d 35 d9 23 00 00 	lea    0x23d9(%rip),%rsi        # 404158 <_IO_stdin_used+0x158>
  401d7f:	bf 02 00 00 00       	mov    $0x2,%edi
  401d84:	b8 00 00 00 00       	mov    $0x0,%eax
  401d89:	e8 02 f4 ff ff       	call   401190 <__printf_chk@plt>
  401d8e:	bf 02 00 00 00       	mov    $0x2,%edi
  401d93:	e8 fe 06 00 00       	call   402496 <validate>
  401d98:	eb d4                	jmp    401d6e <touch2+0x3e>

0000000000401d9a <hexmatch>:
  401d9a:	f3 0f 1e fa          	endbr64
  401d9e:	41 54                	push   %r12
  401da0:	55                   	push   %rbp
  401da1:	53                   	push   %rbx
  401da2:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401da6:	89 fd                	mov    %edi,%ebp
  401da8:	48 89 f3             	mov    %rsi,%rbx
  401dab:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401db2:	00 00 
  401db4:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401db9:	31 c0                	xor    %eax,%eax
  401dbb:	e8 a0 f3 ff ff       	call   401160 <random@plt>
  401dc0:	48 89 c6             	mov    %rax,%rsi
  401dc3:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401dca:	0a d7 a3 
  401dcd:	48 f7 ea             	imul   %rdx
  401dd0:	48 8d 0c 32          	lea    (%rdx,%rsi,1),%rcx
  401dd4:	48 c1 f9 06          	sar    $0x6,%rcx
  401dd8:	48 89 f0             	mov    %rsi,%rax
  401ddb:	48 c1 f8 3f          	sar    $0x3f,%rax
  401ddf:	48 29 c1             	sub    %rax,%rcx
  401de2:	48 8d 04 89          	lea    (%rcx,%rcx,4),%rax
  401de6:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401dea:	48 c1 e0 02          	shl    $0x2,%rax
  401dee:	48 29 c6             	sub    %rax,%rsi
  401df1:	4c 8d 24 34          	lea    (%rsp,%rsi,1),%r12
  401df5:	ba 6e 00 00 00       	mov    $0x6e,%edx
  401dfa:	48 39 d6             	cmp    %rdx,%rsi
  401dfd:	48 0f 43 d6          	cmovae %rsi,%rdx
  401e01:	48 29 f2             	sub    %rsi,%rdx
  401e04:	41 89 e8             	mov    %ebp,%r8d
  401e07:	48 8d 0d 1a 28 00 00 	lea    0x281a(%rip),%rcx        # 404628 <_IO_stdin_used+0x628>
  401e0e:	be 02 00 00 00       	mov    $0x2,%esi
  401e13:	4c 89 e7             	mov    %r12,%rdi
  401e16:	b8 00 00 00 00       	mov    $0x0,%eax
  401e1b:	e8 00 f4 ff ff       	call   401220 <__sprintf_chk@plt>
  401e20:	ba 09 00 00 00       	mov    $0x9,%edx
  401e25:	4c 89 e6             	mov    %r12,%rsi
  401e28:	48 89 df             	mov    %rbx,%rdi
  401e2b:	e8 30 f2 ff ff       	call   401060 <strncmp@plt>
  401e30:	85 c0                	test   %eax,%eax
  401e32:	0f 94 c0             	sete   %al
  401e35:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
  401e3a:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401e41:	00 00 
  401e43:	75 0c                	jne    401e51 <hexmatch+0xb7>
  401e45:	0f b6 c0             	movzbl %al,%eax
  401e48:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401e4c:	5b                   	pop    %rbx
  401e4d:	5d                   	pop    %rbp
  401e4e:	41 5c                	pop    %r12
  401e50:	c3                   	ret
  401e51:	e8 b2 08 00 00       	call   402708 <__stack_chk_fail>

0000000000401e56 <touch3>:
  401e56:	f3 0f 1e fa          	endbr64
  401e5a:	53                   	push   %rbx
  401e5b:	48 89 fb             	mov    %rdi,%rbx
  401e5e:	c7 05 bc 56 00 00 03 	movl   $0x3,0x56bc(%rip)        # 407524 <vlevel>
  401e65:	00 00 00 
  401e68:	48 89 fe             	mov    %rdi,%rsi
  401e6b:	8b 3d bb 56 00 00    	mov    0x56bb(%rip),%edi        # 40752c <cookie>
  401e71:	e8 24 ff ff ff       	call   401d9a <hexmatch>
  401e76:	85 c0                	test   %eax,%eax
  401e78:	74 2d                	je     401ea7 <touch3+0x51>
  401e7a:	48 89 da             	mov    %rbx,%rdx
  401e7d:	48 8d 35 24 23 00 00 	lea    0x2324(%rip),%rsi        # 4041a8 <_IO_stdin_used+0x1a8>
  401e84:	bf 02 00 00 00       	mov    $0x2,%edi
  401e89:	b8 00 00 00 00       	mov    $0x0,%eax
  401e8e:	e8 fd f2 ff ff       	call   401190 <__printf_chk@plt>
  401e93:	bf 03 00 00 00       	mov    $0x3,%edi
  401e98:	e8 f9 05 00 00       	call   402496 <validate>
  401e9d:	bf 00 00 00 00       	mov    $0x0,%edi
  401ea2:	e8 39 f3 ff ff       	call   4011e0 <exit@plt>
  401ea7:	48 89 da             	mov    %rbx,%rdx
  401eaa:	48 8d 35 1f 23 00 00 	lea    0x231f(%rip),%rsi        # 4041d0 <_IO_stdin_used+0x1d0>
  401eb1:	bf 02 00 00 00       	mov    $0x2,%edi
  401eb6:	b8 00 00 00 00       	mov    $0x0,%eax
  401ebb:	e8 d0 f2 ff ff       	call   401190 <__printf_chk@plt>
  401ec0:	bf 03 00 00 00       	mov    $0x3,%edi
  401ec5:	e8 a7 06 00 00       	call   402571 <fail>
  401eca:	eb d1                	jmp    401e9d <touch3+0x47>

0000000000401ecc <test>:
  401ecc:	f3 0f 1e fa          	endbr64
  401ed0:	48 83 ec 08          	sub    $0x8,%rsp
  401ed4:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed9:	e8 04 fe ff ff       	call   401ce2 <getbuf>
  401ede:	89 c2                	mov    %eax,%edx
  401ee0:	48 8d 35 11 23 00 00 	lea    0x2311(%rip),%rsi        # 4041f8 <_IO_stdin_used+0x1f8>
  401ee7:	bf 02 00 00 00       	mov    $0x2,%edi
  401eec:	b8 00 00 00 00       	mov    $0x0,%eax
  401ef1:	e8 9a f2 ff ff       	call   401190 <__printf_chk@plt>
  401ef6:	48 83 c4 08          	add    $0x8,%rsp
  401efa:	c3                   	ret

0000000000401efb <test2>:
  401efb:	f3 0f 1e fa          	endbr64
  401eff:	48 83 ec 08          	sub    $0x8,%rsp
  401f03:	b8 00 00 00 00       	mov    $0x0,%eax
  401f08:	e8 1d 00 00 00       	call   401f2a <getbuf_withcanary>
  401f0d:	89 c2                	mov    %eax,%edx
  401f0f:	48 8d 35 0a 23 00 00 	lea    0x230a(%rip),%rsi        # 404220 <_IO_stdin_used+0x220>
  401f16:	bf 02 00 00 00       	mov    $0x2,%edi
  401f1b:	b8 00 00 00 00       	mov    $0x0,%eax
  401f20:	e8 6b f2 ff ff       	call   401190 <__printf_chk@plt>
  401f25:	48 83 c4 08          	add    $0x8,%rsp
  401f29:	c3                   	ret

0000000000401f2a <getbuf_withcanary>:
  401f2a:	55                   	push   %rbp
  401f2b:	48 89 e5             	mov    %rsp,%rbp
  401f2e:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  401f35:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401f3c:	00 00 
  401f3e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401f42:	31 c0                	xor    %eax,%eax
  401f44:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  401f4b:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401f52:	48 89 c7             	mov    %rax,%rdi
  401f55:	e8 bf 02 00 00       	call   402219 <Gets>
  401f5a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401f5d:	48 98                	cltq
  401f5f:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401f66:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  401f6a:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401f71:	ba 80 00 00 00       	mov    $0x80,%edx
  401f76:	48 89 c6             	mov    %rax,%rsi
  401f79:	48 89 cf             	mov    %rcx,%rdi
  401f7c:	e8 bf f1 ff ff       	call   401140 <memcpy@plt>
  401f81:	b8 01 00 00 00       	mov    $0x1,%eax
  401f86:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401f8a:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401f91:	00 00 
  401f93:	74 05                	je     401f9a <getbuf_withcanary+0x70>
  401f95:	e8 6e 07 00 00       	call   402708 <__stack_chk_fail>
  401f9a:	c9                   	leave
  401f9b:	c3                   	ret

0000000000401f9c <start_farm>:
  401f9c:	f3 0f 1e fa          	endbr64
  401fa0:	b8 01 00 00 00       	mov    $0x1,%eax
  401fa5:	c3                   	ret

0000000000401fa6 <getval_231>:
  401fa6:	f3 0f 1e fa          	endbr64
  401faa:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  401faf:	c3                   	ret

0000000000401fb0 <setval_262>:
  401fb0:	f3 0f 1e fa          	endbr64
  401fb4:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi)
  401fba:	c3                   	ret

0000000000401fbb <getval_491>:
  401fbb:	f3 0f 1e fa          	endbr64
  401fbf:	b8 48 89 c7 94       	mov    $0x94c78948,%eax
  401fc4:	c3                   	ret

0000000000401fc5 <addval_151>:
  401fc5:	f3 0f 1e fa          	endbr64
  401fc9:	8d 87 b0 58 90 90    	lea    -0x6f6fa750(%rdi),%eax
  401fcf:	c3                   	ret

0000000000401fd0 <getval_127>:
  401fd0:	f3 0f 1e fa          	endbr64
  401fd4:	b8 45 48 c9 c7       	mov    $0xc7c94845,%eax
  401fd9:	c3                   	ret

0000000000401fda <getval_387>:
  401fda:	f3 0f 1e fa          	endbr64
  401fde:	b8 95 03 58 90       	mov    $0x90580395,%eax
  401fe3:	c3                   	ret

0000000000401fe4 <addval_455>:
  401fe4:	f3 0f 1e fa          	endbr64
  401fe8:	8d 87 b6 ad 18 90    	lea    -0x6fe7524a(%rdi),%eax
  401fee:	c3                   	ret

0000000000401fef <addval_409>:
  401fef:	f3 0f 1e fa          	endbr64
  401ff3:	8d 87 ab 78 90 c3    	lea    -0x3c6f8755(%rdi),%eax
  401ff9:	c3                   	ret

0000000000401ffa <mid_farm>:
  401ffa:	f3 0f 1e fa          	endbr64
  401ffe:	b8 01 00 00 00       	mov    $0x1,%eax
  402003:	c3                   	ret

0000000000402004 <add_xy>:
  402004:	f3 0f 1e fa          	endbr64
  402008:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  40200c:	c3                   	ret

000000000040200d <setval_390>:
  40200d:	f3 0f 1e fa          	endbr64
  402011:	c7 07 8d ca 08 c9    	movl   $0xc908ca8d,(%rdi)
  402017:	c3                   	ret

0000000000402018 <setval_371>:
  402018:	f3 0f 1e fa          	endbr64
  40201c:	c7 07 c3 88 d6 c3    	movl   $0xc3d688c3,(%rdi)
  402022:	c3                   	ret

0000000000402023 <getval_440>:
  402023:	f3 0f 1e fa          	endbr64
  402027:	b8 a1 40 89 e0       	mov    $0xe08940a1,%eax
  40202c:	c3                   	ret

000000000040202d <setval_477>:
  40202d:	f3 0f 1e fa          	endbr64
  402031:	c7 07 89 c1 18 db    	movl   $0xdb18c189,(%rdi)
  402037:	c3                   	ret

0000000000402038 <addval_122>:
  402038:	f3 0f 1e fa          	endbr64
  40203c:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
  402042:	c3                   	ret

0000000000402043 <addval_180>:
  402043:	f3 0f 1e fa          	endbr64
  402047:	8d 87 48 8b e0 90    	lea    -0x6f1f74b8(%rdi),%eax
  40204d:	c3                   	ret

000000000040204e <getval_130>:
  40204e:	f3 0f 1e fa          	endbr64
  402052:	b8 89 c1 48 c9       	mov    $0xc948c189,%eax
  402057:	c3                   	ret

0000000000402058 <getval_414>:
  402058:	f3 0f 1e fa          	endbr64
  40205c:	b8 8d d6 90 90       	mov    $0x9090d68d,%eax
  402061:	c3                   	ret

0000000000402062 <addval_377>:
  402062:	f3 0f 1e fa          	endbr64
  402066:	8d 87 89 d6 78 c9    	lea    -0x36872977(%rdi),%eax
  40206c:	c3                   	ret

000000000040206d <getval_318>:
  40206d:	f3 0f 1e fa          	endbr64
  402071:	b8 89 c1 c4 d2       	mov    $0xd2c4c189,%eax
  402076:	c3                   	ret

0000000000402077 <setval_131>:
  402077:	f3 0f 1e fa          	endbr64
  40207b:	c7 07 89 d6 91 90    	movl   $0x9091d689,(%rdi)
  402081:	c3                   	ret

0000000000402082 <getval_389>:
  402082:	f3 0f 1e fa          	endbr64
  402086:	b8 89 c1 48 d2       	mov    $0xd248c189,%eax
  40208b:	c3                   	ret

000000000040208c <setval_401>:
  40208c:	f3 0f 1e fa          	endbr64
  402090:	c7 07 f9 89 c1 92    	movl   $0x92c189f9,(%rdi)
  402096:	c3                   	ret

0000000000402097 <setval_275>:
  402097:	f3 0f 1e fa          	endbr64
  40209b:	c7 07 76 89 ca c2    	movl   $0xc2ca8976,(%rdi)
  4020a1:	c3                   	ret

00000000004020a2 <addval_224>:
  4020a2:	f3 0f 1e fa          	endbr64
  4020a6:	8d 87 48 89 e0 90    	lea    -0x6f1f76b8(%rdi),%eax
  4020ac:	c3                   	ret

00000000004020ad <addval_212>:
  4020ad:	f3 0f 1e fa          	endbr64
  4020b1:	8d 87 89 ca 28 c0    	lea    -0x3fd73577(%rdi),%eax
  4020b7:	c3                   	ret

00000000004020b8 <getval_247>:
  4020b8:	f3 0f 1e fa          	endbr64
  4020bc:	b8 48 89 e0 94       	mov    $0x94e08948,%eax
  4020c1:	c3                   	ret

00000000004020c2 <addval_107>:
  4020c2:	f3 0f 1e fa          	endbr64
  4020c6:	8d 87 89 d6 90 c3    	lea    -0x3c6f2977(%rdi),%eax
  4020cc:	c3                   	ret

00000000004020cd <addval_199>:
  4020cd:	f3 0f 1e fa          	endbr64
  4020d1:	8d 87 09 d6 c3 e0    	lea    -0x1f3c29f7(%rdi),%eax
  4020d7:	c3                   	ret

00000000004020d8 <addval_357>:
  4020d8:	f3 0f 1e fa          	endbr64
  4020dc:	8d 87 48 a9 e0 90    	lea    -0x6f1f56b8(%rdi),%eax
  4020e2:	c3                   	ret

00000000004020e3 <getval_149>:
  4020e3:	f3 0f 1e fa          	endbr64
  4020e7:	b8 48 89 e0 92       	mov    $0x92e08948,%eax
  4020ec:	c3                   	ret

00000000004020ed <getval_482>:
  4020ed:	f3 0f 1e fa          	endbr64
  4020f1:	b8 df 89 c1 c3       	mov    $0xc3c189df,%eax
  4020f6:	c3                   	ret

00000000004020f7 <addval_125>:
  4020f7:	f3 0f 1e fa          	endbr64
  4020fb:	8d 87 89 d6 90 90    	lea    -0x6f6f2977(%rdi),%eax
  402101:	c3                   	ret

0000000000402102 <addval_292>:
  402102:	f3 0f 1e fa          	endbr64
  402106:	8d 87 89 ca 20 d2    	lea    -0x2ddf3577(%rdi),%eax
  40210c:	c3                   	ret

000000000040210d <addval_291>:
  40210d:	f3 0f 1e fa          	endbr64
  402111:	8d 87 48 a9 e0 c3    	lea    -0x3c1f56b8(%rdi),%eax
  402117:	c3                   	ret

0000000000402118 <getval_437>:
  402118:	f3 0f 1e fa          	endbr64
  40211c:	b8 89 d6 18 c9       	mov    $0xc918d689,%eax
  402121:	c3                   	ret

0000000000402122 <getval_163>:
  402122:	f3 0f 1e fa          	endbr64
  402126:	b8 89 c1 84 db       	mov    $0xdb84c189,%eax
  40212b:	c3                   	ret

000000000040212c <setval_421>:
  40212c:	f3 0f 1e fa          	endbr64
  402130:	c7 07 89 c1 18 c9    	movl   $0xc918c189,(%rdi)
  402136:	c3                   	ret

0000000000402137 <getval_435>:
  402137:	f3 0f 1e fa          	endbr64
  40213b:	b8 8d ca 20 c9       	mov    $0xc920ca8d,%eax
  402140:	c3                   	ret

0000000000402141 <setval_159>:
  402141:	f3 0f 1e fa          	endbr64
  402145:	c7 07 89 ca 84 c0    	movl   $0xc084ca89,(%rdi)
  40214b:	c3                   	ret

000000000040214c <setval_276>:
  40214c:	f3 0f 1e fa          	endbr64
  402150:	c7 07 89 ca 28 d2    	movl   $0xd228ca89,(%rdi)
  402156:	c3                   	ret

0000000000402157 <addval_264>:
  402157:	f3 0f 1e fa          	endbr64
  40215b:	8d 87 09 ca 84 db    	lea    -0x247b35f7(%rdi),%eax
  402161:	c3                   	ret

0000000000402162 <end_farm>:
  402162:	f3 0f 1e fa          	endbr64
  402166:	b8 01 00 00 00       	mov    $0x1,%eax
  40216b:	c3                   	ret

000000000040216c <save_char>:
  40216c:	8b 05 d2 5f 00 00    	mov    0x5fd2(%rip),%eax        # 408144 <gets_cnt>
  402172:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  402177:	7f 4a                	jg     4021c3 <save_char+0x57>
  402179:	89 f9                	mov    %edi,%ecx
  40217b:	c0 e9 04             	shr    $0x4,%cl
  40217e:	8d 14 40             	lea    (%rax,%rax,2),%edx
  402181:	4c 8d 05 78 26 00 00 	lea    0x2678(%rip),%r8        # 404800 <trans_char>
  402188:	83 e1 0f             	and    $0xf,%ecx
  40218b:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  402190:	48 8d 0d a9 53 00 00 	lea    0x53a9(%rip),%rcx        # 407540 <gets_buf>
  402197:	48 63 f2             	movslq %edx,%rsi
  40219a:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  40219e:	8d 72 01             	lea    0x1(%rdx),%esi
  4021a1:	83 e7 0f             	and    $0xf,%edi
  4021a4:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  4021a9:	48 63 f6             	movslq %esi,%rsi
  4021ac:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  4021b0:	83 c2 02             	add    $0x2,%edx
  4021b3:	48 63 d2             	movslq %edx,%rdx
  4021b6:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  4021ba:	83 c0 01             	add    $0x1,%eax
  4021bd:	89 05 81 5f 00 00    	mov    %eax,0x5f81(%rip)        # 408144 <gets_cnt>
  4021c3:	c3                   	ret

00000000004021c4 <save_term>:
  4021c4:	8b 05 7a 5f 00 00    	mov    0x5f7a(%rip),%eax        # 408144 <gets_cnt>
  4021ca:	8d 04 40             	lea    (%rax,%rax,2),%eax
  4021cd:	48 98                	cltq
  4021cf:	48 8d 15 6a 53 00 00 	lea    0x536a(%rip),%rdx        # 407540 <gets_buf>
  4021d6:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4021da:	c3                   	ret

00000000004021db <check_fail>:
  4021db:	f3 0f 1e fa          	endbr64
  4021df:	50                   	push   %rax
  4021e0:	58                   	pop    %rax
  4021e1:	48 83 ec 08          	sub    $0x8,%rsp
  4021e5:	0f be 15 5c 5f 00 00 	movsbl 0x5f5c(%rip),%edx        # 408148 <target_prefix>
  4021ec:	4c 8d 05 4d 53 00 00 	lea    0x534d(%rip),%r8        # 407540 <gets_buf>
  4021f3:	8b 0d 27 53 00 00    	mov    0x5327(%rip),%ecx        # 407520 <check_level>
  4021f9:	48 8d 35 2d 24 00 00 	lea    0x242d(%rip),%rsi        # 40462d <_IO_stdin_used+0x62d>
  402200:	bf 02 00 00 00       	mov    $0x2,%edi
  402205:	b8 00 00 00 00       	mov    $0x0,%eax
  40220a:	e8 81 ef ff ff       	call   401190 <__printf_chk@plt>
  40220f:	bf 01 00 00 00       	mov    $0x1,%edi
  402214:	e8 c7 ef ff ff       	call   4011e0 <exit@plt>

0000000000402219 <Gets>:
  402219:	f3 0f 1e fa          	endbr64
  40221d:	41 54                	push   %r12
  40221f:	55                   	push   %rbp
  402220:	53                   	push   %rbx
  402221:	49 89 fc             	mov    %rdi,%r12
  402224:	c7 05 16 5f 00 00 00 	movl   $0x0,0x5f16(%rip)        # 408144 <gets_cnt>
  40222b:	00 00 00 
  40222e:	48 89 fb             	mov    %rdi,%rbx
  402231:	eb 11                	jmp    402244 <Gets+0x2b>
  402233:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  402237:	88 03                	mov    %al,(%rbx)
  402239:	0f b6 f8             	movzbl %al,%edi
  40223c:	e8 2b ff ff ff       	call   40216c <save_char>
  402241:	48 89 eb             	mov    %rbp,%rbx
  402244:	48 8b 3d cd 52 00 00 	mov    0x52cd(%rip),%rdi        # 407518 <infile>
  40224b:	e8 c0 ef ff ff       	call   401210 <getc@plt>
  402250:	83 f8 ff             	cmp    $0xffffffff,%eax
  402253:	74 05                	je     40225a <Gets+0x41>
  402255:	83 f8 0a             	cmp    $0xa,%eax
  402258:	75 d9                	jne    402233 <Gets+0x1a>
  40225a:	c6 03 00             	movb   $0x0,(%rbx)
  40225d:	b8 00 00 00 00       	mov    $0x0,%eax
  402262:	e8 5d ff ff ff       	call   4021c4 <save_term>
  402267:	4c 89 e0             	mov    %r12,%rax
  40226a:	5b                   	pop    %rbx
  40226b:	5d                   	pop    %rbp
  40226c:	41 5c                	pop    %r12
  40226e:	c3                   	ret

000000000040226f <notify_server>:
  40226f:	f3 0f 1e fa          	endbr64
  402273:	55                   	push   %rbp
  402274:	53                   	push   %rbx
  402275:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  40227c:	ff 
  40227d:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402284:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402289:	4c 39 dc             	cmp    %r11,%rsp
  40228c:	75 ef                	jne    40227d <notify_server+0xe>
  40228e:	48 83 ec 18          	sub    $0x18,%rsp
  402292:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402299:	00 00 
  40229b:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  4022a2:	00 
  4022a3:	31 c0                	xor    %eax,%eax
  4022a5:	83 3d 84 52 00 00 00 	cmpl   $0x0,0x5284(%rip)        # 407530 <is_checker>
  4022ac:	0f 85 c2 01 00 00    	jne    402474 <notify_server+0x205>
  4022b2:	89 fb                	mov    %edi,%ebx
  4022b4:	81 3d 86 5e 00 00 9c 	cmpl   $0x1f9c,0x5e86(%rip)        # 408144 <gets_cnt>
  4022bb:	1f 00 00 
  4022be:	0f 8f bd 00 00 00    	jg     402381 <notify_server+0x112>
  4022c4:	0f be 05 7d 5e 00 00 	movsbl 0x5e7d(%rip),%eax        # 408148 <target_prefix>
  4022cb:	83 3d ae 51 00 00 00 	cmpl   $0x0,0x51ae(%rip)        # 407480 <notify>
  4022d2:	0f 84 c4 00 00 00    	je     40239c <notify_server+0x12d>
  4022d8:	8b 15 4a 52 00 00    	mov    0x524a(%rip),%edx        # 407528 <authkey>
  4022de:	85 db                	test   %ebx,%ebx
  4022e0:	0f 84 c0 00 00 00    	je     4023a6 <notify_server+0x137>
  4022e6:	48 8d 2d 56 23 00 00 	lea    0x2356(%rip),%rbp        # 404643 <_IO_stdin_used+0x643>
  4022ed:	48 89 e7             	mov    %rsp,%rdi
  4022f0:	48 8d 0d 49 52 00 00 	lea    0x5249(%rip),%rcx        # 407540 <gets_buf>
  4022f7:	51                   	push   %rcx
  4022f8:	56                   	push   %rsi
  4022f9:	50                   	push   %rax
  4022fa:	52                   	push   %rdx
  4022fb:	49 89 e9             	mov    %rbp,%r9
  4022fe:	44 8b 05 2b 4e 00 00 	mov    0x4e2b(%rip),%r8d        # 407130 <target_id>
  402305:	48 8d 0d 41 23 00 00 	lea    0x2341(%rip),%rcx        # 40464d <_IO_stdin_used+0x64d>
  40230c:	ba 00 20 00 00       	mov    $0x2000,%edx
  402311:	be 02 00 00 00       	mov    $0x2,%esi
  402316:	b8 00 00 00 00       	mov    $0x0,%eax
  40231b:	e8 00 ef ff ff       	call   401220 <__sprintf_chk@plt>
  402320:	48 83 c4 20          	add    $0x20,%rsp
  402324:	83 3d 55 51 00 00 00 	cmpl   $0x0,0x5155(%rip)        # 407480 <notify>
  40232b:	0f 84 ba 00 00 00    	je     4023eb <notify_server+0x17c>
  402331:	48 89 e1             	mov    %rsp,%rcx
  402334:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  40233b:	00 
  40233c:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402342:	48 8b 15 ff 4d 00 00 	mov    0x4dff(%rip),%rdx        # 407148 <lab>
  402349:	48 8b 35 00 4e 00 00 	mov    0x4e00(%rip),%rsi        # 407150 <course>
  402350:	48 8b 3d e9 4d 00 00 	mov    0x4de9(%rip),%rdi        # 407140 <user_id>
  402357:	e8 4e 12 00 00       	call   4035aa <driver_post>
  40235c:	85 c0                	test   %eax,%eax
  40235e:	78 52                	js     4023b2 <notify_server+0x143>
  402360:	85 db                	test   %ebx,%ebx
  402362:	74 76                	je     4023da <notify_server+0x16b>
  402364:	48 8d 3d 15 1f 00 00 	lea    0x1f15(%rip),%rdi        # 404280 <_IO_stdin_used+0x280>
  40236b:	e8 10 ed ff ff       	call   401080 <puts@plt>
  402370:	48 8d 3d fe 22 00 00 	lea    0x22fe(%rip),%rdi        # 404675 <_IO_stdin_used+0x675>
  402377:	e8 04 ed ff ff       	call   401080 <puts@plt>
  40237c:	e9 f3 00 00 00       	jmp    402474 <notify_server+0x205>
  402381:	48 8d 35 c8 1e 00 00 	lea    0x1ec8(%rip),%rsi        # 404250 <_IO_stdin_used+0x250>
  402388:	bf 02 00 00 00       	mov    $0x2,%edi
  40238d:	e8 fe ed ff ff       	call   401190 <__printf_chk@plt>
  402392:	bf 01 00 00 00       	mov    $0x1,%edi
  402397:	e8 44 ee ff ff       	call   4011e0 <exit@plt>
  40239c:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  4023a1:	e9 38 ff ff ff       	jmp    4022de <notify_server+0x6f>
  4023a6:	48 8d 2d 9b 22 00 00 	lea    0x229b(%rip),%rbp        # 404648 <_IO_stdin_used+0x648>
  4023ad:	e9 3b ff ff ff       	jmp    4022ed <notify_server+0x7e>
  4023b2:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  4023b9:	00 
  4023ba:	48 8d 35 a8 22 00 00 	lea    0x22a8(%rip),%rsi        # 404669 <_IO_stdin_used+0x669>
  4023c1:	bf 02 00 00 00       	mov    $0x2,%edi
  4023c6:	b8 00 00 00 00       	mov    $0x0,%eax
  4023cb:	e8 c0 ed ff ff       	call   401190 <__printf_chk@plt>
  4023d0:	bf 01 00 00 00       	mov    $0x1,%edi
  4023d5:	e8 06 ee ff ff       	call   4011e0 <exit@plt>
  4023da:	48 8d 3d 9e 22 00 00 	lea    0x229e(%rip),%rdi        # 40467f <_IO_stdin_used+0x67f>
  4023e1:	e8 9a ec ff ff       	call   401080 <puts@plt>
  4023e6:	e9 89 00 00 00       	jmp    402474 <notify_server+0x205>
  4023eb:	48 89 ea             	mov    %rbp,%rdx
  4023ee:	48 8d 35 c3 1e 00 00 	lea    0x1ec3(%rip),%rsi        # 4042b8 <_IO_stdin_used+0x2b8>
  4023f5:	bf 02 00 00 00       	mov    $0x2,%edi
  4023fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4023ff:	e8 8c ed ff ff       	call   401190 <__printf_chk@plt>
  402404:	48 8b 15 35 4d 00 00 	mov    0x4d35(%rip),%rdx        # 407140 <user_id>
  40240b:	48 8d 35 74 22 00 00 	lea    0x2274(%rip),%rsi        # 404686 <_IO_stdin_used+0x686>
  402412:	bf 02 00 00 00       	mov    $0x2,%edi
  402417:	b8 00 00 00 00       	mov    $0x0,%eax
  40241c:	e8 6f ed ff ff       	call   401190 <__printf_chk@plt>
  402421:	48 8b 15 28 4d 00 00 	mov    0x4d28(%rip),%rdx        # 407150 <course>
  402428:	48 8d 35 64 22 00 00 	lea    0x2264(%rip),%rsi        # 404693 <_IO_stdin_used+0x693>
  40242f:	bf 02 00 00 00       	mov    $0x2,%edi
  402434:	b8 00 00 00 00       	mov    $0x0,%eax
  402439:	e8 52 ed ff ff       	call   401190 <__printf_chk@plt>
  40243e:	48 8b 15 03 4d 00 00 	mov    0x4d03(%rip),%rdx        # 407148 <lab>
  402445:	48 8d 35 53 22 00 00 	lea    0x2253(%rip),%rsi        # 40469f <_IO_stdin_used+0x69f>
  40244c:	bf 02 00 00 00       	mov    $0x2,%edi
  402451:	b8 00 00 00 00       	mov    $0x0,%eax
  402456:	e8 35 ed ff ff       	call   401190 <__printf_chk@plt>
  40245b:	48 89 e2             	mov    %rsp,%rdx
  40245e:	48 8d 35 43 22 00 00 	lea    0x2243(%rip),%rsi        # 4046a8 <_IO_stdin_used+0x6a8>
  402465:	bf 02 00 00 00       	mov    $0x2,%edi
  40246a:	b8 00 00 00 00       	mov    $0x0,%eax
  40246f:	e8 1c ed ff ff       	call   401190 <__printf_chk@plt>
  402474:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  40247b:	00 
  40247c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402483:	00 00 
  402485:	75 0a                	jne    402491 <notify_server+0x222>
  402487:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  40248e:	5b                   	pop    %rbx
  40248f:	5d                   	pop    %rbp
  402490:	c3                   	ret
  402491:	e8 72 02 00 00       	call   402708 <__stack_chk_fail>

0000000000402496 <validate>:
  402496:	f3 0f 1e fa          	endbr64
  40249a:	53                   	push   %rbx
  40249b:	89 fb                	mov    %edi,%ebx
  40249d:	83 3d 8c 50 00 00 00 	cmpl   $0x0,0x508c(%rip)        # 407530 <is_checker>
  4024a4:	74 79                	je     40251f <validate+0x89>
  4024a6:	39 3d 78 50 00 00    	cmp    %edi,0x5078(%rip)        # 407524 <vlevel>
  4024ac:	75 39                	jne    4024e7 <validate+0x51>
  4024ae:	8b 15 6c 50 00 00    	mov    0x506c(%rip),%edx        # 407520 <check_level>
  4024b4:	39 fa                	cmp    %edi,%edx
  4024b6:	75 45                	jne    4024fd <validate+0x67>
  4024b8:	0f be 0d 89 5c 00 00 	movsbl 0x5c89(%rip),%ecx        # 408148 <target_prefix>
  4024bf:	4c 8d 0d 7a 50 00 00 	lea    0x507a(%rip),%r9        # 407540 <gets_buf>
  4024c6:	41 89 f8             	mov    %edi,%r8d
  4024c9:	8b 15 59 50 00 00    	mov    0x5059(%rip),%edx        # 407528 <authkey>
  4024cf:	48 8d 35 32 1e 00 00 	lea    0x1e32(%rip),%rsi        # 404308 <_IO_stdin_used+0x308>
  4024d6:	bf 02 00 00 00       	mov    $0x2,%edi
  4024db:	b8 00 00 00 00       	mov    $0x0,%eax
  4024e0:	e8 ab ec ff ff       	call   401190 <__printf_chk@plt>
  4024e5:	5b                   	pop    %rbx
  4024e6:	c3                   	ret
  4024e7:	48 8d 3d c6 21 00 00 	lea    0x21c6(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  4024ee:	e8 8d eb ff ff       	call   401080 <puts@plt>
  4024f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4024f8:	e8 de fc ff ff       	call   4021db <check_fail>
  4024fd:	89 f9                	mov    %edi,%ecx
  4024ff:	48 8d 35 da 1d 00 00 	lea    0x1dda(%rip),%rsi        # 4042e0 <_IO_stdin_used+0x2e0>
  402506:	bf 02 00 00 00       	mov    $0x2,%edi
  40250b:	b8 00 00 00 00       	mov    $0x0,%eax
  402510:	e8 7b ec ff ff       	call   401190 <__printf_chk@plt>
  402515:	b8 00 00 00 00       	mov    $0x0,%eax
  40251a:	e8 bc fc ff ff       	call   4021db <check_fail>
  40251f:	39 3d ff 4f 00 00    	cmp    %edi,0x4fff(%rip)        # 407524 <vlevel>
  402525:	74 1a                	je     402541 <validate+0xab>
  402527:	48 8d 3d 86 21 00 00 	lea    0x2186(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  40252e:	e8 4d eb ff ff       	call   401080 <puts@plt>
  402533:	89 de                	mov    %ebx,%esi
  402535:	bf 00 00 00 00       	mov    $0x0,%edi
  40253a:	e8 30 fd ff ff       	call   40226f <notify_server>
  40253f:	eb a4                	jmp    4024e5 <validate+0x4f>
  402541:	0f be 0d 00 5c 00 00 	movsbl 0x5c00(%rip),%ecx        # 408148 <target_prefix>
  402548:	89 fa                	mov    %edi,%edx
  40254a:	48 8d 35 df 1d 00 00 	lea    0x1ddf(%rip),%rsi        # 404330 <_IO_stdin_used+0x330>
  402551:	bf 02 00 00 00       	mov    $0x2,%edi
  402556:	b8 00 00 00 00       	mov    $0x0,%eax
  40255b:	e8 30 ec ff ff       	call   401190 <__printf_chk@plt>
  402560:	89 de                	mov    %ebx,%esi
  402562:	bf 01 00 00 00       	mov    $0x1,%edi
  402567:	e8 03 fd ff ff       	call   40226f <notify_server>
  40256c:	e9 74 ff ff ff       	jmp    4024e5 <validate+0x4f>

0000000000402571 <fail>:
  402571:	f3 0f 1e fa          	endbr64
  402575:	48 83 ec 08          	sub    $0x8,%rsp
  402579:	83 3d b0 4f 00 00 00 	cmpl   $0x0,0x4fb0(%rip)        # 407530 <is_checker>
  402580:	75 11                	jne    402593 <fail+0x22>
  402582:	89 fe                	mov    %edi,%esi
  402584:	bf 00 00 00 00       	mov    $0x0,%edi
  402589:	e8 e1 fc ff ff       	call   40226f <notify_server>
  40258e:	48 83 c4 08          	add    $0x8,%rsp
  402592:	c3                   	ret
  402593:	b8 00 00 00 00       	mov    $0x0,%eax
  402598:	e8 3e fc ff ff       	call   4021db <check_fail>

000000000040259d <bushandler>:
  40259d:	f3 0f 1e fa          	endbr64
  4025a1:	50                   	push   %rax
  4025a2:	58                   	pop    %rax
  4025a3:	48 83 ec 08          	sub    $0x8,%rsp
  4025a7:	83 3d 82 4f 00 00 00 	cmpl   $0x0,0x4f82(%rip)        # 407530 <is_checker>
  4025ae:	74 16                	je     4025c6 <bushandler+0x29>
  4025b0:	48 8d 3d 1b 21 00 00 	lea    0x211b(%rip),%rdi        # 4046d2 <_IO_stdin_used+0x6d2>
  4025b7:	e8 c4 ea ff ff       	call   401080 <puts@plt>
  4025bc:	b8 00 00 00 00       	mov    $0x0,%eax
  4025c1:	e8 15 fc ff ff       	call   4021db <check_fail>
  4025c6:	48 8d 3d 9b 1d 00 00 	lea    0x1d9b(%rip),%rdi        # 404368 <_IO_stdin_used+0x368>
  4025cd:	e8 ae ea ff ff       	call   401080 <puts@plt>
  4025d2:	48 8d 3d 03 21 00 00 	lea    0x2103(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  4025d9:	e8 a2 ea ff ff       	call   401080 <puts@plt>
  4025de:	be 00 00 00 00       	mov    $0x0,%esi
  4025e3:	bf 00 00 00 00       	mov    $0x0,%edi
  4025e8:	e8 82 fc ff ff       	call   40226f <notify_server>
  4025ed:	bf 01 00 00 00       	mov    $0x1,%edi
  4025f2:	e8 e9 eb ff ff       	call   4011e0 <exit@plt>

00000000004025f7 <seghandler>:
  4025f7:	f3 0f 1e fa          	endbr64
  4025fb:	50                   	push   %rax
  4025fc:	58                   	pop    %rax
  4025fd:	48 83 ec 08          	sub    $0x8,%rsp
  402601:	83 3d 28 4f 00 00 00 	cmpl   $0x0,0x4f28(%rip)        # 407530 <is_checker>
  402608:	74 16                	je     402620 <seghandler+0x29>
  40260a:	48 8d 3d e1 20 00 00 	lea    0x20e1(%rip),%rdi        # 4046f2 <_IO_stdin_used+0x6f2>
  402611:	e8 6a ea ff ff       	call   401080 <puts@plt>
  402616:	b8 00 00 00 00       	mov    $0x0,%eax
  40261b:	e8 bb fb ff ff       	call   4021db <check_fail>
  402620:	48 8d 3d 61 1d 00 00 	lea    0x1d61(%rip),%rdi        # 404388 <_IO_stdin_used+0x388>
  402627:	e8 54 ea ff ff       	call   401080 <puts@plt>
  40262c:	48 8d 3d a9 20 00 00 	lea    0x20a9(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  402633:	e8 48 ea ff ff       	call   401080 <puts@plt>
  402638:	be 00 00 00 00       	mov    $0x0,%esi
  40263d:	bf 00 00 00 00       	mov    $0x0,%edi
  402642:	e8 28 fc ff ff       	call   40226f <notify_server>
  402647:	bf 01 00 00 00       	mov    $0x1,%edi
  40264c:	e8 8f eb ff ff       	call   4011e0 <exit@plt>

0000000000402651 <illegalhandler>:
  402651:	f3 0f 1e fa          	endbr64
  402655:	50                   	push   %rax
  402656:	58                   	pop    %rax
  402657:	48 83 ec 08          	sub    $0x8,%rsp
  40265b:	83 3d ce 4e 00 00 00 	cmpl   $0x0,0x4ece(%rip)        # 407530 <is_checker>
  402662:	74 16                	je     40267a <illegalhandler+0x29>
  402664:	48 8d 3d 9a 20 00 00 	lea    0x209a(%rip),%rdi        # 404705 <_IO_stdin_used+0x705>
  40266b:	e8 10 ea ff ff       	call   401080 <puts@plt>
  402670:	b8 00 00 00 00       	mov    $0x0,%eax
  402675:	e8 61 fb ff ff       	call   4021db <check_fail>
  40267a:	48 8d 3d 2f 1d 00 00 	lea    0x1d2f(%rip),%rdi        # 4043b0 <_IO_stdin_used+0x3b0>
  402681:	e8 fa e9 ff ff       	call   401080 <puts@plt>
  402686:	48 8d 3d 4f 20 00 00 	lea    0x204f(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  40268d:	e8 ee e9 ff ff       	call   401080 <puts@plt>
  402692:	be 00 00 00 00       	mov    $0x0,%esi
  402697:	bf 00 00 00 00       	mov    $0x0,%edi
  40269c:	e8 ce fb ff ff       	call   40226f <notify_server>
  4026a1:	bf 01 00 00 00       	mov    $0x1,%edi
  4026a6:	e8 35 eb ff ff       	call   4011e0 <exit@plt>

00000000004026ab <sigalrmhandler>:
  4026ab:	f3 0f 1e fa          	endbr64
  4026af:	50                   	push   %rax
  4026b0:	58                   	pop    %rax
  4026b1:	48 83 ec 08          	sub    $0x8,%rsp
  4026b5:	83 3d 74 4e 00 00 00 	cmpl   $0x0,0x4e74(%rip)        # 407530 <is_checker>
  4026bc:	74 16                	je     4026d4 <sigalrmhandler+0x29>
  4026be:	48 8d 3d 54 20 00 00 	lea    0x2054(%rip),%rdi        # 404719 <_IO_stdin_used+0x719>
  4026c5:	e8 b6 e9 ff ff       	call   401080 <puts@plt>
  4026ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4026cf:	e8 07 fb ff ff       	call   4021db <check_fail>
  4026d4:	ba 02 00 00 00       	mov    $0x2,%edx
  4026d9:	48 8d 35 00 1d 00 00 	lea    0x1d00(%rip),%rsi        # 4043e0 <_IO_stdin_used+0x3e0>
  4026e0:	bf 02 00 00 00       	mov    $0x2,%edi
  4026e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4026ea:	e8 a1 ea ff ff       	call   401190 <__printf_chk@plt>
  4026ef:	be 00 00 00 00       	mov    $0x0,%esi
  4026f4:	bf 00 00 00 00       	mov    $0x0,%edi
  4026f9:	e8 71 fb ff ff       	call   40226f <notify_server>
  4026fe:	bf 01 00 00 00       	mov    $0x1,%edi
  402703:	e8 d8 ea ff ff       	call   4011e0 <exit@plt>

0000000000402708 <__stack_chk_fail>:
  402708:	f3 0f 1e fa          	endbr64
  40270c:	50                   	push   %rax
  40270d:	58                   	pop    %rax
  40270e:	48 83 ec 08          	sub    $0x8,%rsp
  402712:	83 3d 17 4e 00 00 00 	cmpl   $0x0,0x4e17(%rip)        # 407530 <is_checker>
  402719:	74 16                	je     402731 <__stack_chk_fail+0x29>
  40271b:	48 8d 3d ff 1f 00 00 	lea    0x1fff(%rip),%rdi        # 404721 <_IO_stdin_used+0x721>
  402722:	e8 59 e9 ff ff       	call   401080 <puts@plt>
  402727:	b8 00 00 00 00       	mov    $0x0,%eax
  40272c:	e8 aa fa ff ff       	call   4021db <check_fail>
  402731:	48 8d 3d e0 1c 00 00 	lea    0x1ce0(%rip),%rdi        # 404418 <_IO_stdin_used+0x418>
  402738:	e8 43 e9 ff ff       	call   401080 <puts@plt>
  40273d:	48 8d 3d 98 1f 00 00 	lea    0x1f98(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  402744:	e8 37 e9 ff ff       	call   401080 <puts@plt>
  402749:	be 00 00 00 00       	mov    $0x0,%esi
  40274e:	bf 00 00 00 00       	mov    $0x0,%edi
  402753:	e8 17 fb ff ff       	call   40226f <notify_server>
  402758:	bf 01 00 00 00       	mov    $0x1,%edi
  40275d:	e8 7e ea ff ff       	call   4011e0 <exit@plt>

0000000000402762 <launch>:
  402762:	f3 0f 1e fa          	endbr64
  402766:	55                   	push   %rbp
  402767:	48 89 e5             	mov    %rsp,%rbp
  40276a:	53                   	push   %rbx
  40276b:	48 83 ec 18          	sub    $0x18,%rsp
  40276f:	48 89 fa             	mov    %rdi,%rdx
  402772:	89 f3                	mov    %esi,%ebx
  402774:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40277b:	00 00 
  40277d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402781:	31 c0                	xor    %eax,%eax
  402783:	48 8d 47 17          	lea    0x17(%rdi),%rax
  402787:	48 89 c6             	mov    %rax,%rsi
  40278a:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  40278e:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  402794:	48 89 e1             	mov    %rsp,%rcx
  402797:	48 29 c1             	sub    %rax,%rcx
  40279a:	48 39 cc             	cmp    %rcx,%rsp
  40279d:	74 12                	je     4027b1 <launch+0x4f>
  40279f:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4027a6:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  4027ad:	00 00 
  4027af:	eb e9                	jmp    40279a <launch+0x38>
  4027b1:	48 89 f0             	mov    %rsi,%rax
  4027b4:	25 ff 0f 00 00       	and    $0xfff,%eax
  4027b9:	48 29 c4             	sub    %rax,%rsp
  4027bc:	48 85 c0             	test   %rax,%rax
  4027bf:	74 06                	je     4027c7 <launch+0x65>
  4027c1:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  4027c7:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4027cc:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4027d0:	48 89 d1             	mov    %rdx,%rcx
  4027d3:	be f4 00 00 00       	mov    $0xf4,%esi
  4027d8:	e8 f3 e9 ff ff       	call   4011d0 <__memset_chk@plt>
  4027dd:	48 8b 05 bc 4c 00 00 	mov    0x4cbc(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  4027e4:	48 39 05 2d 4d 00 00 	cmp    %rax,0x4d2d(%rip)        # 407518 <infile>
  4027eb:	74 42                	je     40282f <launch+0xcd>
  4027ed:	c7 05 2d 4d 00 00 00 	movl   $0x0,0x4d2d(%rip)        # 407524 <vlevel>
  4027f4:	00 00 00 
  4027f7:	85 db                	test   %ebx,%ebx
  4027f9:	75 4c                	jne    402847 <launch+0xe5>
  4027fb:	b8 00 00 00 00       	mov    $0x0,%eax
  402800:	e8 c7 f6 ff ff       	call   401ecc <test>
  402805:	83 3d 24 4d 00 00 00 	cmpl   $0x0,0x4d24(%rip)        # 407530 <is_checker>
  40280c:	75 45                	jne    402853 <launch+0xf1>
  40280e:	48 8d 3d 33 1f 00 00 	lea    0x1f33(%rip),%rdi        # 404748 <_IO_stdin_used+0x748>
  402815:	e8 66 e8 ff ff       	call   401080 <puts@plt>
  40281a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40281e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402825:	00 00 
  402827:	75 40                	jne    402869 <launch+0x107>
  402829:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  40282d:	c9                   	leave
  40282e:	c3                   	ret
  40282f:	48 8d 35 fa 1e 00 00 	lea    0x1efa(%rip),%rsi        # 404730 <_IO_stdin_used+0x730>
  402836:	bf 02 00 00 00       	mov    $0x2,%edi
  40283b:	b8 00 00 00 00       	mov    $0x0,%eax
  402840:	e8 4b e9 ff ff       	call   401190 <__printf_chk@plt>
  402845:	eb a6                	jmp    4027ed <launch+0x8b>
  402847:	b8 00 00 00 00       	mov    $0x0,%eax
  40284c:	e8 aa f6 ff ff       	call   401efb <test2>
  402851:	eb b2                	jmp    402805 <launch+0xa3>
  402853:	48 8d 3d e3 1e 00 00 	lea    0x1ee3(%rip),%rdi        # 40473d <_IO_stdin_used+0x73d>
  40285a:	e8 21 e8 ff ff       	call   401080 <puts@plt>
  40285f:	b8 00 00 00 00       	mov    $0x0,%eax
  402864:	e8 72 f9 ff ff       	call   4021db <check_fail>
  402869:	e8 9a fe ff ff       	call   402708 <__stack_chk_fail>

000000000040286e <stable_launch>:
  40286e:	f3 0f 1e fa          	endbr64
  402872:	55                   	push   %rbp
  402873:	53                   	push   %rbx
  402874:	48 83 ec 08          	sub    $0x8,%rsp
  402878:	89 f5                	mov    %esi,%ebp
  40287a:	48 89 3d 8f 4c 00 00 	mov    %rdi,0x4c8f(%rip)        # 407510 <global_offset>
  402881:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402887:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40288d:	b9 32 01 00 00       	mov    $0x132,%ecx
  402892:	ba 07 00 00 00       	mov    $0x7,%edx
  402897:	be 00 00 10 00       	mov    $0x100000,%esi
  40289c:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4028a1:	e8 0a e8 ff ff       	call   4010b0 <mmap@plt>
  4028a6:	48 89 c3             	mov    %rax,%rbx
  4028a9:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4028af:	75 4a                	jne    4028fb <stable_launch+0x8d>
  4028b1:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4028b8:	48 89 15 49 4c 00 00 	mov    %rdx,0x4c49(%rip)        # 407508 <stack_top>
  4028bf:	48 89 e0             	mov    %rsp,%rax
  4028c2:	48 89 d4             	mov    %rdx,%rsp
  4028c5:	48 89 c2             	mov    %rax,%rdx
  4028c8:	48 89 15 31 4c 00 00 	mov    %rdx,0x4c31(%rip)        # 407500 <global_save_stack>
  4028cf:	89 ee                	mov    %ebp,%esi
  4028d1:	48 8b 3d 38 4c 00 00 	mov    0x4c38(%rip),%rdi        # 407510 <global_offset>
  4028d8:	e8 85 fe ff ff       	call   402762 <launch>
  4028dd:	48 8b 05 1c 4c 00 00 	mov    0x4c1c(%rip),%rax        # 407500 <global_save_stack>
  4028e4:	48 89 c4             	mov    %rax,%rsp
  4028e7:	be 00 00 10 00       	mov    $0x100000,%esi
  4028ec:	48 89 df             	mov    %rbx,%rdi
  4028ef:	e8 8c e8 ff ff       	call   401180 <munmap@plt>
  4028f4:	48 83 c4 08          	add    $0x8,%rsp
  4028f8:	5b                   	pop    %rbx
  4028f9:	5d                   	pop    %rbp
  4028fa:	c3                   	ret
  4028fb:	be 00 00 10 00       	mov    $0x100000,%esi
  402900:	48 89 c7             	mov    %rax,%rdi
  402903:	e8 78 e8 ff ff       	call   401180 <munmap@plt>
  402908:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  40290d:	48 8d 15 2c 1b 00 00 	lea    0x1b2c(%rip),%rdx        # 404440 <_IO_stdin_used+0x440>
  402914:	be 02 00 00 00       	mov    $0x2,%esi
  402919:	48 8b 3d c0 4b 00 00 	mov    0x4bc0(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402920:	b8 00 00 00 00       	mov    $0x0,%eax
  402925:	e8 d6 e8 ff ff       	call   401200 <__fprintf_chk@plt>
  40292a:	bf 01 00 00 00       	mov    $0x1,%edi
  40292f:	e8 ac e8 ff ff       	call   4011e0 <exit@plt>

0000000000402934 <rio_readinitb>:
  402934:	89 37                	mov    %esi,(%rdi)
  402936:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  40293d:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402941:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402945:	c3                   	ret

0000000000402946 <sigalrm_handler>:
  402946:	f3 0f 1e fa          	endbr64
  40294a:	50                   	push   %rax
  40294b:	58                   	pop    %rax
  40294c:	48 83 ec 08          	sub    $0x8,%rsp
  402950:	b9 00 00 00 00       	mov    $0x0,%ecx
  402955:	48 8d 15 0c 1b 00 00 	lea    0x1b0c(%rip),%rdx        # 404468 <_IO_stdin_used+0x468>
  40295c:	be 02 00 00 00       	mov    $0x2,%esi
  402961:	48 8b 3d 78 4b 00 00 	mov    0x4b78(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402968:	b8 00 00 00 00       	mov    $0x0,%eax
  40296d:	e8 8e e8 ff ff       	call   401200 <__fprintf_chk@plt>
  402972:	bf 01 00 00 00       	mov    $0x1,%edi
  402977:	e8 64 e8 ff ff       	call   4011e0 <exit@plt>

000000000040297c <rio_writen>:
  40297c:	41 55                	push   %r13
  40297e:	41 54                	push   %r12
  402980:	55                   	push   %rbp
  402981:	53                   	push   %rbx
  402982:	48 83 ec 08          	sub    $0x8,%rsp
  402986:	41 89 fc             	mov    %edi,%r12d
  402989:	48 89 f5             	mov    %rsi,%rbp
  40298c:	49 89 d5             	mov    %rdx,%r13
  40298f:	48 89 d3             	mov    %rdx,%rbx
  402992:	eb 06                	jmp    40299a <rio_writen+0x1e>
  402994:	48 29 c3             	sub    %rax,%rbx
  402997:	48 01 c5             	add    %rax,%rbp
  40299a:	48 85 db             	test   %rbx,%rbx
  40299d:	74 24                	je     4029c3 <rio_writen+0x47>
  40299f:	48 89 da             	mov    %rbx,%rdx
  4029a2:	48 89 ee             	mov    %rbp,%rsi
  4029a5:	44 89 e7             	mov    %r12d,%edi
  4029a8:	e8 e3 e6 ff ff       	call   401090 <write@plt>
  4029ad:	48 85 c0             	test   %rax,%rax
  4029b0:	7f e2                	jg     402994 <rio_writen+0x18>
  4029b2:	e8 79 e6 ff ff       	call   401030 <__errno_location@plt>
  4029b7:	83 38 04             	cmpl   $0x4,(%rax)
  4029ba:	75 15                	jne    4029d1 <rio_writen+0x55>
  4029bc:	b8 00 00 00 00       	mov    $0x0,%eax
  4029c1:	eb d1                	jmp    402994 <rio_writen+0x18>
  4029c3:	4c 89 e8             	mov    %r13,%rax
  4029c6:	48 83 c4 08          	add    $0x8,%rsp
  4029ca:	5b                   	pop    %rbx
  4029cb:	5d                   	pop    %rbp
  4029cc:	41 5c                	pop    %r12
  4029ce:	41 5d                	pop    %r13
  4029d0:	c3                   	ret
  4029d1:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4029d8:	eb ec                	jmp    4029c6 <rio_writen+0x4a>

00000000004029da <rio_read>:
  4029da:	41 55                	push   %r13
  4029dc:	41 54                	push   %r12
  4029de:	55                   	push   %rbp
  4029df:	53                   	push   %rbx
  4029e0:	48 83 ec 08          	sub    $0x8,%rsp
  4029e4:	48 89 fb             	mov    %rdi,%rbx
  4029e7:	49 89 f5             	mov    %rsi,%r13
  4029ea:	49 89 d4             	mov    %rdx,%r12
  4029ed:	eb 0a                	jmp    4029f9 <rio_read+0x1f>
  4029ef:	e8 3c e6 ff ff       	call   401030 <__errno_location@plt>
  4029f4:	83 38 04             	cmpl   $0x4,(%rax)
  4029f7:	75 5f                	jne    402a58 <rio_read+0x7e>
  4029f9:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4029fc:	85 ed                	test   %ebp,%ebp
  4029fe:	7f 22                	jg     402a22 <rio_read+0x48>
  402a00:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402a04:	8b 3b                	mov    (%rbx),%edi
  402a06:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a0b:	48 89 ee             	mov    %rbp,%rsi
  402a0e:	e8 cd e6 ff ff       	call   4010e0 <read@plt>
  402a13:	89 43 04             	mov    %eax,0x4(%rbx)
  402a16:	85 c0                	test   %eax,%eax
  402a18:	78 d5                	js     4029ef <rio_read+0x15>
  402a1a:	74 45                	je     402a61 <rio_read+0x87>
  402a1c:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402a20:	eb d7                	jmp    4029f9 <rio_read+0x1f>
  402a22:	89 e8                	mov    %ebp,%eax
  402a24:	4c 39 e0             	cmp    %r12,%rax
  402a27:	72 03                	jb     402a2c <rio_read+0x52>
  402a29:	44 89 e5             	mov    %r12d,%ebp
  402a2c:	4c 63 e5             	movslq %ebp,%r12
  402a2f:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402a33:	4c 89 e2             	mov    %r12,%rdx
  402a36:	4c 89 ef             	mov    %r13,%rdi
  402a39:	e8 02 e7 ff ff       	call   401140 <memcpy@plt>
  402a3e:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402a42:	8b 43 04             	mov    0x4(%rbx),%eax
  402a45:	29 e8                	sub    %ebp,%eax
  402a47:	89 43 04             	mov    %eax,0x4(%rbx)
  402a4a:	4c 89 e0             	mov    %r12,%rax
  402a4d:	48 83 c4 08          	add    $0x8,%rsp
  402a51:	5b                   	pop    %rbx
  402a52:	5d                   	pop    %rbp
  402a53:	41 5c                	pop    %r12
  402a55:	41 5d                	pop    %r13
  402a57:	c3                   	ret
  402a58:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402a5f:	eb ec                	jmp    402a4d <rio_read+0x73>
  402a61:	b8 00 00 00 00       	mov    $0x0,%eax
  402a66:	eb e5                	jmp    402a4d <rio_read+0x73>

0000000000402a68 <rio_readlineb>:
  402a68:	41 55                	push   %r13
  402a6a:	41 54                	push   %r12
  402a6c:	55                   	push   %rbp
  402a6d:	53                   	push   %rbx
  402a6e:	48 83 ec 18          	sub    $0x18,%rsp
  402a72:	49 89 fd             	mov    %rdi,%r13
  402a75:	48 89 f5             	mov    %rsi,%rbp
  402a78:	49 89 d4             	mov    %rdx,%r12
  402a7b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a82:	00 00 
  402a84:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402a89:	31 c0                	xor    %eax,%eax
  402a8b:	bb 01 00 00 00       	mov    $0x1,%ebx
  402a90:	eb 18                	jmp    402aaa <rio_readlineb+0x42>
  402a92:	85 c0                	test   %eax,%eax
  402a94:	75 65                	jne    402afb <rio_readlineb+0x93>
  402a96:	48 83 fb 01          	cmp    $0x1,%rbx
  402a9a:	75 3d                	jne    402ad9 <rio_readlineb+0x71>
  402a9c:	b8 00 00 00 00       	mov    $0x0,%eax
  402aa1:	eb 3d                	jmp    402ae0 <rio_readlineb+0x78>
  402aa3:	48 83 c3 01          	add    $0x1,%rbx
  402aa7:	48 89 d5             	mov    %rdx,%rbp
  402aaa:	4c 39 e3             	cmp    %r12,%rbx
  402aad:	73 2a                	jae    402ad9 <rio_readlineb+0x71>
  402aaf:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402ab4:	ba 01 00 00 00       	mov    $0x1,%edx
  402ab9:	4c 89 ef             	mov    %r13,%rdi
  402abc:	e8 19 ff ff ff       	call   4029da <rio_read>
  402ac1:	83 f8 01             	cmp    $0x1,%eax
  402ac4:	75 cc                	jne    402a92 <rio_readlineb+0x2a>
  402ac6:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402aca:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402acf:	88 45 00             	mov    %al,0x0(%rbp)
  402ad2:	3c 0a                	cmp    $0xa,%al
  402ad4:	75 cd                	jne    402aa3 <rio_readlineb+0x3b>
  402ad6:	48 89 d5             	mov    %rdx,%rbp
  402ad9:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402add:	48 89 d8             	mov    %rbx,%rax
  402ae0:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402ae5:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402aec:	00 00 
  402aee:	75 14                	jne    402b04 <rio_readlineb+0x9c>
  402af0:	48 83 c4 18          	add    $0x18,%rsp
  402af4:	5b                   	pop    %rbx
  402af5:	5d                   	pop    %rbp
  402af6:	41 5c                	pop    %r12
  402af8:	41 5d                	pop    %r13
  402afa:	c3                   	ret
  402afb:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402b02:	eb dc                	jmp    402ae0 <rio_readlineb+0x78>
  402b04:	e8 ff fb ff ff       	call   402708 <__stack_chk_fail>

0000000000402b09 <urlencode>:
  402b09:	41 54                	push   %r12
  402b0b:	55                   	push   %rbp
  402b0c:	53                   	push   %rbx
  402b0d:	48 83 ec 10          	sub    $0x10,%rsp
  402b11:	48 89 fb             	mov    %rdi,%rbx
  402b14:	48 89 f5             	mov    %rsi,%rbp
  402b17:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402b1e:	00 00 
  402b20:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402b25:	31 c0                	xor    %eax,%eax
  402b27:	e8 74 e5 ff ff       	call   4010a0 <strlen@plt>
  402b2c:	eb 0f                	jmp    402b3d <urlencode+0x34>
  402b2e:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402b32:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402b36:	48 83 c3 01          	add    $0x1,%rbx
  402b3a:	44 89 e0             	mov    %r12d,%eax
  402b3d:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402b41:	85 c0                	test   %eax,%eax
  402b43:	0f 84 a8 00 00 00    	je     402bf1 <urlencode+0xe8>
  402b49:	44 0f b6 03          	movzbl (%rbx),%r8d
  402b4d:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402b51:	0f 94 c0             	sete   %al
  402b54:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402b58:	0f 94 c2             	sete   %dl
  402b5b:	08 d0                	or     %dl,%al
  402b5d:	75 cf                	jne    402b2e <urlencode+0x25>
  402b5f:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402b63:	74 c9                	je     402b2e <urlencode+0x25>
  402b65:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402b69:	74 c3                	je     402b2e <urlencode+0x25>
  402b6b:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402b6f:	3c 09                	cmp    $0x9,%al
  402b71:	76 bb                	jbe    402b2e <urlencode+0x25>
  402b73:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402b77:	3c 19                	cmp    $0x19,%al
  402b79:	76 b3                	jbe    402b2e <urlencode+0x25>
  402b7b:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402b7f:	3c 19                	cmp    $0x19,%al
  402b81:	76 ab                	jbe    402b2e <urlencode+0x25>
  402b83:	41 80 f8 20          	cmp    $0x20,%r8b
  402b87:	74 56                	je     402bdf <urlencode+0xd6>
  402b89:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402b8d:	3c 5f                	cmp    $0x5f,%al
  402b8f:	0f 96 c0             	setbe  %al
  402b92:	41 80 f8 09          	cmp    $0x9,%r8b
  402b96:	0f 94 c2             	sete   %dl
  402b99:	08 d0                	or     %dl,%al
  402b9b:	74 4f                	je     402bec <urlencode+0xe3>
  402b9d:	48 89 e7             	mov    %rsp,%rdi
  402ba0:	45 0f b6 c0          	movzbl %r8b,%r8d
  402ba4:	48 8d 0d ab 1b 00 00 	lea    0x1bab(%rip),%rcx        # 404756 <_IO_stdin_used+0x756>
  402bab:	ba 08 00 00 00       	mov    $0x8,%edx
  402bb0:	be 02 00 00 00       	mov    $0x2,%esi
  402bb5:	b8 00 00 00 00       	mov    $0x0,%eax
  402bba:	e8 61 e6 ff ff       	call   401220 <__sprintf_chk@plt>
  402bbf:	0f b6 04 24          	movzbl (%rsp),%eax
  402bc3:	88 45 00             	mov    %al,0x0(%rbp)
  402bc6:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402bcb:	88 45 01             	mov    %al,0x1(%rbp)
  402bce:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402bd3:	88 45 02             	mov    %al,0x2(%rbp)
  402bd6:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402bda:	e9 57 ff ff ff       	jmp    402b36 <urlencode+0x2d>
  402bdf:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402be3:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402be7:	e9 4a ff ff ff       	jmp    402b36 <urlencode+0x2d>
  402bec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bf1:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402bf6:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402bfd:	00 00 
  402bff:	75 09                	jne    402c0a <urlencode+0x101>
  402c01:	48 83 c4 10          	add    $0x10,%rsp
  402c05:	5b                   	pop    %rbx
  402c06:	5d                   	pop    %rbp
  402c07:	41 5c                	pop    %r12
  402c09:	c3                   	ret
  402c0a:	e8 f9 fa ff ff       	call   402708 <__stack_chk_fail>

0000000000402c0f <submitr>:
  402c0f:	f3 0f 1e fa          	endbr64
  402c13:	41 57                	push   %r15
  402c15:	41 56                	push   %r14
  402c17:	41 55                	push   %r13
  402c19:	41 54                	push   %r12
  402c1b:	55                   	push   %rbp
  402c1c:	53                   	push   %rbx
  402c1d:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402c24:	ff 
  402c25:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402c2c:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402c31:	4c 39 dc             	cmp    %r11,%rsp
  402c34:	75 ef                	jne    402c25 <submitr+0x16>
  402c36:	48 83 ec 68          	sub    $0x68,%rsp
  402c3a:	49 89 fd             	mov    %rdi,%r13
  402c3d:	41 89 f6             	mov    %esi,%r14d
  402c40:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  402c45:	49 89 cc             	mov    %rcx,%r12
  402c48:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402c4d:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
  402c52:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
  402c59:	00 
  402c5a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402c61:	00 00 
  402c63:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402c6a:	00 
  402c6b:	31 c0                	xor    %eax,%eax
  402c6d:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402c74:	00 
  402c75:	ba 00 00 00 00       	mov    $0x0,%edx
  402c7a:	be 01 00 00 00       	mov    $0x1,%esi
  402c7f:	bf 02 00 00 00       	mov    $0x2,%edi
  402c84:	e8 a7 e5 ff ff       	call   401230 <socket@plt>
  402c89:	85 c0                	test   %eax,%eax
  402c8b:	0f 88 72 02 00 00    	js     402f03 <submitr+0x2f4>
  402c91:	89 c3                	mov    %eax,%ebx
  402c93:	4c 89 ef             	mov    %r13,%rdi
  402c96:	e8 75 e4 ff ff       	call   401110 <gethostbyname@plt>
  402c9b:	48 85 c0             	test   %rax,%rax
  402c9e:	0f 84 ab 02 00 00    	je     402f4f <submitr+0x340>
  402ca4:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
  402ca9:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402cad:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  402cb2:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402cb9:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402cbd:	48 8b 40 18          	mov    0x18(%rax),%rax
  402cc1:	48 8b 30             	mov    (%rax),%rsi
  402cc4:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402cc9:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402cce:	e8 4d e4 ff ff       	call   401120 <__memmove_chk@plt>
  402cd3:	66 41 c1 c6 08       	rol    $0x8,%r14w
  402cd8:	66 44 89 74 24 32    	mov    %r14w,0x32(%rsp)
  402cde:	ba 10 00 00 00       	mov    $0x10,%edx
  402ce3:	48 89 ee             	mov    %rbp,%rsi
  402ce6:	89 df                	mov    %ebx,%edi
  402ce8:	e8 03 e5 ff ff       	call   4011f0 <connect@plt>
  402ced:	85 c0                	test   %eax,%eax
  402cef:	0f 88 cc 02 00 00    	js     402fc1 <submitr+0x3b2>
  402cf5:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402cfa:	e8 a1 e3 ff ff       	call   4010a0 <strlen@plt>
  402cff:	49 89 c6             	mov    %rax,%r14
  402d02:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402d07:	e8 94 e3 ff ff       	call   4010a0 <strlen@plt>
  402d0c:	48 89 c5             	mov    %rax,%rbp
  402d0f:	4c 89 e7             	mov    %r12,%rdi
  402d12:	e8 89 e3 ff ff       	call   4010a0 <strlen@plt>
  402d17:	48 01 c5             	add    %rax,%rbp
  402d1a:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402d1f:	e8 7c e3 ff ff       	call   4010a0 <strlen@plt>
  402d24:	48 01 c5             	add    %rax,%rbp
  402d27:	4b 8d 04 76          	lea    (%r14,%r14,2),%rax
  402d2b:	48 8d 84 05 80 00 00 	lea    0x80(%rbp,%rax,1),%rax
  402d32:	00 
  402d33:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402d39:	0f 87 e6 02 00 00    	ja     403025 <submitr+0x416>
  402d3f:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402d46:	00 
  402d47:	b9 00 04 00 00       	mov    $0x400,%ecx
  402d4c:	b8 00 00 00 00       	mov    $0x0,%eax
  402d51:	48 89 f7             	mov    %rsi,%rdi
  402d54:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402d57:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402d5c:	e8 a8 fd ff ff       	call   402b09 <urlencode>
  402d61:	85 c0                	test   %eax,%eax
  402d63:	0f 88 2e 03 00 00    	js     403097 <submitr+0x488>
  402d69:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
  402d70:	00 
  402d71:	48 83 ec 08          	sub    $0x8,%rsp
  402d75:	41 55                	push   %r13
  402d77:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402d7e:	00 
  402d7f:	50                   	push   %rax
  402d80:	41 54                	push   %r12
  402d82:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
  402d87:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
  402d8c:	48 8d 0d fd 16 00 00 	lea    0x16fd(%rip),%rcx        # 404490 <_IO_stdin_used+0x490>
  402d93:	ba 00 20 00 00       	mov    $0x2000,%edx
  402d98:	be 02 00 00 00       	mov    $0x2,%esi
  402d9d:	48 89 ef             	mov    %rbp,%rdi
  402da0:	b8 00 00 00 00       	mov    $0x0,%eax
  402da5:	e8 76 e4 ff ff       	call   401220 <__sprintf_chk@plt>
  402daa:	48 83 c4 20          	add    $0x20,%rsp
  402dae:	48 89 ef             	mov    %rbp,%rdi
  402db1:	e8 ea e2 ff ff       	call   4010a0 <strlen@plt>
  402db6:	48 89 c2             	mov    %rax,%rdx
  402db9:	48 89 ee             	mov    %rbp,%rsi
  402dbc:	89 df                	mov    %ebx,%edi
  402dbe:	e8 b9 fb ff ff       	call   40297c <rio_writen>
  402dc3:	48 85 c0             	test   %rax,%rax
  402dc6:	0f 88 53 03 00 00    	js     40311f <submitr+0x510>
  402dcc:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  402dd1:	89 de                	mov    %ebx,%esi
  402dd3:	48 89 ef             	mov    %rbp,%rdi
  402dd6:	e8 59 fb ff ff       	call   402934 <rio_readinitb>
  402ddb:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402de2:	00 
  402de3:	ba 00 20 00 00       	mov    $0x2000,%edx
  402de8:	48 89 ef             	mov    %rbp,%rdi
  402deb:	e8 78 fc ff ff       	call   402a68 <rio_readlineb>
  402df0:	48 85 c0             	test   %rax,%rax
  402df3:	0f 8e 92 03 00 00    	jle    40318b <submitr+0x57c>
  402df9:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402dfe:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402e05:	00 
  402e06:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402e0d:	00 
  402e0e:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402e15:	00 
  402e16:	48 8d 35 40 19 00 00 	lea    0x1940(%rip),%rsi        # 40475d <_IO_stdin_used+0x75d>
  402e1d:	b8 00 00 00 00       	mov    $0x0,%eax
  402e22:	e8 49 e3 ff ff       	call   401170 <__isoc99_sscanf@plt>
  402e27:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402e2e:	00 
  402e2f:	48 8d 35 3e 19 00 00 	lea    0x193e(%rip),%rsi        # 404774 <_IO_stdin_used+0x774>
  402e36:	e8 b5 e2 ff ff       	call   4010f0 <strcmp@plt>
  402e3b:	85 c0                	test   %eax,%eax
  402e3d:	0f 84 c8 03 00 00    	je     40320b <submitr+0x5fc>
  402e43:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402e4a:	00 
  402e4b:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402e50:	ba 00 20 00 00       	mov    $0x2000,%edx
  402e55:	e8 0e fc ff ff       	call   402a68 <rio_readlineb>
  402e5a:	48 85 c0             	test   %rax,%rax
  402e5d:	7f c8                	jg     402e27 <submitr+0x218>
  402e5f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402e66:	3a 20 43 
  402e69:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402e70:	20 75 6e 
  402e73:	49 89 07             	mov    %rax,(%r15)
  402e76:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402e7a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402e81:	74 6f 20 
  402e84:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402e8b:	68 65 61 
  402e8e:	49 89 47 10          	mov    %rax,0x10(%r15)
  402e92:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402e96:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402e9d:	66 72 6f 
  402ea0:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402ea7:	6f 6c 61 
  402eaa:	49 89 47 20          	mov    %rax,0x20(%r15)
  402eae:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402eb2:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402eb9:	6c 61 62 
  402ebc:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402ec3:	65 72 00 
  402ec6:	49 89 47 29          	mov    %rax,0x29(%r15)
  402eca:	49 89 57 31          	mov    %rdx,0x31(%r15)
  402ece:	89 df                	mov    %ebx,%edi
  402ed0:	e8 fb e1 ff ff       	call   4010d0 <close@plt>
  402ed5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402eda:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
  402ee1:	00 
  402ee2:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402ee9:	00 00 
  402eeb:	0f 85 67 04 00 00    	jne    403358 <submitr+0x749>
  402ef1:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402ef8:	5b                   	pop    %rbx
  402ef9:	5d                   	pop    %rbp
  402efa:	41 5c                	pop    %r12
  402efc:	41 5d                	pop    %r13
  402efe:	41 5e                	pop    %r14
  402f00:	41 5f                	pop    %r15
  402f02:	c3                   	ret
  402f03:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f0a:	3a 20 43 
  402f0d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402f14:	20 75 6e 
  402f17:	49 89 07             	mov    %rax,(%r15)
  402f1a:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402f1e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f25:	74 6f 20 
  402f28:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402f2f:	65 20 73 
  402f32:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f36:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f3a:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  402f41:	65 74 00 
  402f44:	49 89 47 1e          	mov    %rax,0x1e(%r15)
  402f48:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f4d:	eb 8b                	jmp    402eda <submitr+0x2cb>
  402f4f:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402f56:	3a 20 44 
  402f59:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402f60:	20 75 6e 
  402f63:	49 89 07             	mov    %rax,(%r15)
  402f66:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402f6a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f71:	74 6f 20 
  402f74:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402f7b:	76 65 20 
  402f7e:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f82:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f86:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402f8d:	61 62 20 
  402f90:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402f97:	72 20 61 
  402f9a:	49 89 47 20          	mov    %rax,0x20(%r15)
  402f9e:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402fa2:	48 b8 61 64 64 72 65 	movabs $0x73736572646461,%rax
  402fa9:	73 73 00 
  402fac:	49 89 47 2f          	mov    %rax,0x2f(%r15)
  402fb0:	89 df                	mov    %ebx,%edi
  402fb2:	e8 19 e1 ff ff       	call   4010d0 <close@plt>
  402fb7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fbc:	e9 19 ff ff ff       	jmp    402eda <submitr+0x2cb>
  402fc1:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402fc8:	3a 20 55 
  402fcb:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402fd2:	20 74 6f 
  402fd5:	49 89 07             	mov    %rax,(%r15)
  402fd8:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402fdc:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402fe3:	65 63 74 
  402fe6:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402fed:	68 65 20 
  402ff0:	49 89 47 10          	mov    %rax,0x10(%r15)
  402ff4:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402ff8:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402fff:	6c 61 62 
  403002:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  403009:	65 72 00 
  40300c:	49 89 47 1f          	mov    %rax,0x1f(%r15)
  403010:	49 89 57 27          	mov    %rdx,0x27(%r15)
  403014:	89 df                	mov    %ebx,%edi
  403016:	e8 b5 e0 ff ff       	call   4010d0 <close@plt>
  40301b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403020:	e9 b5 fe ff ff       	jmp    402eda <submitr+0x2cb>
  403025:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40302c:	3a 20 52 
  40302f:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  403036:	20 73 74 
  403039:	49 89 07             	mov    %rax,(%r15)
  40303c:	49 89 57 08          	mov    %rdx,0x8(%r15)
  403040:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  403047:	74 6f 6f 
  40304a:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  403051:	65 2e 20 
  403054:	49 89 47 10          	mov    %rax,0x10(%r15)
  403058:	49 89 57 18          	mov    %rdx,0x18(%r15)
  40305c:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  403063:	61 73 65 
  403066:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  40306d:	49 54 52 
  403070:	49 89 47 20          	mov    %rax,0x20(%r15)
  403074:	49 89 57 28          	mov    %rdx,0x28(%r15)
  403078:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  40307f:	55 46 00 
  403082:	49 89 47 30          	mov    %rax,0x30(%r15)
  403086:	89 df                	mov    %ebx,%edi
  403088:	e8 43 e0 ff ff       	call   4010d0 <close@plt>
  40308d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403092:	e9 43 fe ff ff       	jmp    402eda <submitr+0x2cb>
  403097:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40309e:	3a 20 55 
  4030a1:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
  4030a8:	20 73 74 
  4030ab:	49 89 07             	mov    %rax,(%r15)
  4030ae:	49 89 57 08          	mov    %rdx,0x8(%r15)
  4030b2:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4030b9:	63 6f 6e 
  4030bc:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  4030c3:	20 61 6e 
  4030c6:	49 89 47 10          	mov    %rax,0x10(%r15)
  4030ca:	49 89 57 18          	mov    %rdx,0x18(%r15)
  4030ce:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4030d5:	67 61 6c 
  4030d8:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  4030df:	6e 70 72 
  4030e2:	49 89 47 20          	mov    %rax,0x20(%r15)
  4030e6:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4030ea:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4030f1:	6c 65 20 
  4030f4:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  4030fb:	63 74 65 
  4030fe:	49 89 47 30          	mov    %rax,0x30(%r15)
  403102:	49 89 57 38          	mov    %rdx,0x38(%r15)
  403106:	41 c7 47 3f 65 72 2e 	movl   $0x2e7265,0x3f(%r15)
  40310d:	00 
  40310e:	89 df                	mov    %ebx,%edi
  403110:	e8 bb df ff ff       	call   4010d0 <close@plt>
  403115:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40311a:	e9 bb fd ff ff       	jmp    402eda <submitr+0x2cb>
  40311f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403126:	3a 20 43 
  403129:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403130:	20 75 6e 
  403133:	49 89 07             	mov    %rax,(%r15)
  403136:	49 89 57 08          	mov    %rdx,0x8(%r15)
  40313a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403141:	74 6f 20 
  403144:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  40314b:	20 74 6f 
  40314e:	49 89 47 10          	mov    %rax,0x10(%r15)
  403152:	49 89 57 18          	mov    %rdx,0x18(%r15)
  403156:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  40315d:	41 75 74 
  403160:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  403167:	73 65 72 
  40316a:	49 89 47 20          	mov    %rax,0x20(%r15)
  40316e:	49 89 57 28          	mov    %rdx,0x28(%r15)
  403172:	41 c7 47 30 76 65 72 	movl   $0x726576,0x30(%r15)
  403179:	00 
  40317a:	89 df                	mov    %ebx,%edi
  40317c:	e8 4f df ff ff       	call   4010d0 <close@plt>
  403181:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403186:	e9 4f fd ff ff       	jmp    402eda <submitr+0x2cb>
  40318b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403192:	3a 20 43 
  403195:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40319c:	20 75 6e 
  40319f:	49 89 07             	mov    %rax,(%r15)
  4031a2:	49 89 57 08          	mov    %rdx,0x8(%r15)
  4031a6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4031ad:	74 6f 20 
  4031b0:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  4031b7:	66 69 72 
  4031ba:	49 89 47 10          	mov    %rax,0x10(%r15)
  4031be:	49 89 57 18          	mov    %rdx,0x18(%r15)
  4031c2:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  4031c9:	61 64 65 
  4031cc:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  4031d3:	6d 20 41 
  4031d6:	49 89 47 20          	mov    %rax,0x20(%r15)
  4031da:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4031de:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  4031e5:	6c 61 62 
  4031e8:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  4031ef:	65 72 00 
  4031f2:	49 89 47 2e          	mov    %rax,0x2e(%r15)
  4031f6:	49 89 57 36          	mov    %rdx,0x36(%r15)
  4031fa:	89 df                	mov    %ebx,%edi
  4031fc:	e8 cf de ff ff       	call   4010d0 <close@plt>
  403201:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403206:	e9 cf fc ff ff       	jmp    402eda <submitr+0x2cb>
  40320b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403212:	00 
  403213:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  403218:	ba 00 20 00 00       	mov    $0x2000,%edx
  40321d:	e8 46 f8 ff ff       	call   402a68 <rio_readlineb>
  403222:	48 85 c0             	test   %rax,%rax
  403225:	7e 78                	jle    40329f <submitr+0x690>
  403227:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  40322c:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  403233:	0f 85 e6 00 00 00    	jne    40331f <submitr+0x710>
  403239:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403240:	00 
  403241:	4c 89 ff             	mov    %r15,%rdi
  403244:	e8 27 de ff ff       	call   401070 <strcpy@plt>
  403249:	89 df                	mov    %ebx,%edi
  40324b:	e8 80 de ff ff       	call   4010d0 <close@plt>
  403250:	48 8d 35 17 15 00 00 	lea    0x1517(%rip),%rsi        # 40476e <_IO_stdin_used+0x76e>
  403257:	4c 89 ff             	mov    %r15,%rdi
  40325a:	e8 91 de ff ff       	call   4010f0 <strcmp@plt>
  40325f:	85 c0                	test   %eax,%eax
  403261:	0f 84 73 fc ff ff    	je     402eda <submitr+0x2cb>
  403267:	48 8d 35 04 15 00 00 	lea    0x1504(%rip),%rsi        # 404772 <_IO_stdin_used+0x772>
  40326e:	4c 89 ff             	mov    %r15,%rdi
  403271:	e8 7a de ff ff       	call   4010f0 <strcmp@plt>
  403276:	85 c0                	test   %eax,%eax
  403278:	0f 84 5c fc ff ff    	je     402eda <submitr+0x2cb>
  40327e:	48 8d 35 f2 14 00 00 	lea    0x14f2(%rip),%rsi        # 404777 <_IO_stdin_used+0x777>
  403285:	4c 89 ff             	mov    %r15,%rdi
  403288:	e8 63 de ff ff       	call   4010f0 <strcmp@plt>
  40328d:	85 c0                	test   %eax,%eax
  40328f:	0f 84 45 fc ff ff    	je     402eda <submitr+0x2cb>
  403295:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40329a:	e9 3b fc ff ff       	jmp    402eda <submitr+0x2cb>
  40329f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4032a6:	3a 20 43 
  4032a9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4032b0:	20 75 6e 
  4032b3:	49 89 07             	mov    %rax,(%r15)
  4032b6:	49 89 57 08          	mov    %rdx,0x8(%r15)
  4032ba:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4032c1:	74 6f 20 
  4032c4:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  4032cb:	73 74 61 
  4032ce:	49 89 47 10          	mov    %rax,0x10(%r15)
  4032d2:	49 89 57 18          	mov    %rdx,0x18(%r15)
  4032d6:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  4032dd:	65 73 73 
  4032e0:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  4032e7:	72 6f 6d 
  4032ea:	49 89 47 20          	mov    %rax,0x20(%r15)
  4032ee:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4032f2:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  4032f9:	6c 61 62 
  4032fc:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  403303:	65 72 00 
  403306:	49 89 47 30          	mov    %rax,0x30(%r15)
  40330a:	49 89 57 38          	mov    %rdx,0x38(%r15)
  40330e:	89 df                	mov    %ebx,%edi
  403310:	e8 bb dd ff ff       	call   4010d0 <close@plt>
  403315:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40331a:	e9 bb fb ff ff       	jmp    402eda <submitr+0x2cb>
  40331f:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  403326:	00 
  403327:	48 8d 0d c2 11 00 00 	lea    0x11c2(%rip),%rcx        # 4044f0 <_IO_stdin_used+0x4f0>
  40332e:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  403335:	be 02 00 00 00       	mov    $0x2,%esi
  40333a:	4c 89 ff             	mov    %r15,%rdi
  40333d:	b8 00 00 00 00       	mov    $0x0,%eax
  403342:	e8 d9 de ff ff       	call   401220 <__sprintf_chk@plt>
  403347:	89 df                	mov    %ebx,%edi
  403349:	e8 82 dd ff ff       	call   4010d0 <close@plt>
  40334e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403353:	e9 82 fb ff ff       	jmp    402eda <submitr+0x2cb>
  403358:	e8 ab f3 ff ff       	call   402708 <__stack_chk_fail>

000000000040335d <init_timeout>:
  40335d:	f3 0f 1e fa          	endbr64
  403361:	85 ff                	test   %edi,%edi
  403363:	74 26                	je     40338b <init_timeout+0x2e>
  403365:	53                   	push   %rbx
  403366:	89 fb                	mov    %edi,%ebx
  403368:	78 1a                	js     403384 <init_timeout+0x27>
  40336a:	48 8d 35 d5 f5 ff ff 	lea    -0xa2b(%rip),%rsi        # 402946 <sigalrm_handler>
  403371:	bf 0e 00 00 00       	mov    $0xe,%edi
  403376:	e8 85 dd ff ff       	call   401100 <signal@plt>
  40337b:	89 df                	mov    %ebx,%edi
  40337d:	e8 3e dd ff ff       	call   4010c0 <alarm@plt>
  403382:	5b                   	pop    %rbx
  403383:	c3                   	ret
  403384:	bb 00 00 00 00       	mov    $0x0,%ebx
  403389:	eb df                	jmp    40336a <init_timeout+0xd>
  40338b:	c3                   	ret

000000000040338c <init_driver>:
  40338c:	f3 0f 1e fa          	endbr64
  403390:	41 54                	push   %r12
  403392:	55                   	push   %rbp
  403393:	53                   	push   %rbx
  403394:	48 83 ec 20          	sub    $0x20,%rsp
  403398:	48 89 fd             	mov    %rdi,%rbp
  40339b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4033a2:	00 00 
  4033a4:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4033a9:	31 c0                	xor    %eax,%eax
  4033ab:	be 01 00 00 00       	mov    $0x1,%esi
  4033b0:	bf 0d 00 00 00       	mov    $0xd,%edi
  4033b5:	e8 46 dd ff ff       	call   401100 <signal@plt>
  4033ba:	be 01 00 00 00       	mov    $0x1,%esi
  4033bf:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4033c4:	e8 37 dd ff ff       	call   401100 <signal@plt>
  4033c9:	be 01 00 00 00       	mov    $0x1,%esi
  4033ce:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4033d3:	e8 28 dd ff ff       	call   401100 <signal@plt>
  4033d8:	ba 00 00 00 00       	mov    $0x0,%edx
  4033dd:	be 01 00 00 00       	mov    $0x1,%esi
  4033e2:	bf 02 00 00 00       	mov    $0x2,%edi
  4033e7:	e8 44 de ff ff       	call   401230 <socket@plt>
  4033ec:	85 c0                	test   %eax,%eax
  4033ee:	0f 88 93 00 00 00    	js     403487 <init_driver+0xfb>
  4033f4:	89 c3                	mov    %eax,%ebx
  4033f6:	48 8d 3d 7d 13 00 00 	lea    0x137d(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  4033fd:	e8 0e dd ff ff       	call   401110 <gethostbyname@plt>
  403402:	48 85 c0             	test   %rax,%rax
  403405:	0f 84 c9 00 00 00    	je     4034d4 <init_driver+0x148>
  40340b:	49 89 e4             	mov    %rsp,%r12
  40340e:	66 0f ef c0          	pxor   %xmm0,%xmm0
  403412:	0f 29 04 24          	movaps %xmm0,(%rsp)
  403416:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  40341c:	48 63 50 14          	movslq 0x14(%rax),%rdx
  403420:	48 8b 40 18          	mov    0x18(%rax),%rax
  403424:	48 8b 30             	mov    (%rax),%rsi
  403427:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  40342c:	b9 0c 00 00 00       	mov    $0xc,%ecx
  403431:	e8 ea dc ff ff       	call   401120 <__memmove_chk@plt>
  403436:	66 c7 44 24 02 0b b8 	movw   $0xb80b,0x2(%rsp)
  40343d:	ba 10 00 00 00       	mov    $0x10,%edx
  403442:	4c 89 e6             	mov    %r12,%rsi
  403445:	89 df                	mov    %ebx,%edi
  403447:	e8 a4 dd ff ff       	call   4011f0 <connect@plt>
  40344c:	85 c0                	test   %eax,%eax
  40344e:	0f 88 e5 00 00 00    	js     403539 <init_driver+0x1ad>
  403454:	89 df                	mov    %ebx,%edi
  403456:	e8 75 dc ff ff       	call   4010d0 <close@plt>
  40345b:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  403461:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  403465:	b8 00 00 00 00       	mov    $0x0,%eax
  40346a:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  40346f:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  403476:	00 00 
  403478:	0f 85 27 01 00 00    	jne    4035a5 <init_driver+0x219>
  40347e:	48 83 c4 20          	add    $0x20,%rsp
  403482:	5b                   	pop    %rbx
  403483:	5d                   	pop    %rbp
  403484:	41 5c                	pop    %r12
  403486:	c3                   	ret
  403487:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40348e:	3a 20 43 
  403491:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403498:	20 75 6e 
  40349b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40349f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4034a3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4034aa:	74 6f 20 
  4034ad:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  4034b4:	65 20 73 
  4034b7:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4034bb:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4034bf:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  4034c6:	65 74 00 
  4034c9:	48 89 45 1e          	mov    %rax,0x1e(%rbp)
  4034cd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034d2:	eb 96                	jmp    40346a <init_driver+0xde>
  4034d4:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4034db:	3a 20 44 
  4034de:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4034e5:	20 75 6e 
  4034e8:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4034ec:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4034f0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4034f7:	74 6f 20 
  4034fa:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  403501:	76 65 20 
  403504:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403508:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40350c:	48 b8 20 73 65 72 76 	movabs $0x2072657672657320,%rax
  403513:	65 72 20 
  403516:	48 ba 61 64 64 72 65 	movabs $0x73736572646461,%rdx
  40351d:	73 73 00 
  403520:	48 89 45 1f          	mov    %rax,0x1f(%rbp)
  403524:	48 89 55 27          	mov    %rdx,0x27(%rbp)
  403528:	89 df                	mov    %ebx,%edi
  40352a:	e8 a1 db ff ff       	call   4010d0 <close@plt>
  40352f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403534:	e9 31 ff ff ff       	jmp    40346a <init_driver+0xde>
  403539:	48 b8 31 39 32 2e 31 	movabs $0x2e3836312e323931,%rax
  403540:	36 38 2e 
  403543:	48 ba 31 33 32 2e 31 	movabs $0x3737312e323331,%rdx
  40354a:	37 37 00 
  40354d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403551:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403555:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40355c:	3a 20 55 
  40355f:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403566:	20 74 6f 
  403569:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40356d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403571:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403578:	65 63 74 
  40357b:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  403582:	65 72 76 
  403585:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403589:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40358d:	c7 45 1f 76 65 72 00 	movl   $0x726576,0x1f(%rbp)
  403594:	89 df                	mov    %ebx,%edi
  403596:	e8 35 db ff ff       	call   4010d0 <close@plt>
  40359b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4035a0:	e9 c5 fe ff ff       	jmp    40346a <init_driver+0xde>
  4035a5:	e8 5e f1 ff ff       	call   402708 <__stack_chk_fail>

00000000004035aa <driver_post>:
  4035aa:	f3 0f 1e fa          	endbr64
  4035ae:	53                   	push   %rbx
  4035af:	4c 89 cb             	mov    %r9,%rbx
  4035b2:	45 85 c0             	test   %r8d,%r8d
  4035b5:	75 18                	jne    4035cf <driver_post+0x25>
  4035b7:	48 85 ff             	test   %rdi,%rdi
  4035ba:	74 05                	je     4035c1 <driver_post+0x17>
  4035bc:	80 3f 00             	cmpb   $0x0,(%rdi)
  4035bf:	75 37                	jne    4035f8 <driver_post+0x4e>
  4035c1:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4035c6:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4035ca:	44 89 c0             	mov    %r8d,%eax
  4035cd:	5b                   	pop    %rbx
  4035ce:	c3                   	ret
  4035cf:	48 89 ca             	mov    %rcx,%rdx
  4035d2:	48 8d 35 b1 11 00 00 	lea    0x11b1(%rip),%rsi        # 40478a <_IO_stdin_used+0x78a>
  4035d9:	bf 02 00 00 00       	mov    $0x2,%edi
  4035de:	b8 00 00 00 00       	mov    $0x0,%eax
  4035e3:	e8 a8 db ff ff       	call   401190 <__printf_chk@plt>
  4035e8:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4035ed:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4035f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4035f6:	eb d5                	jmp    4035cd <driver_post+0x23>
  4035f8:	48 83 ec 08          	sub    $0x8,%rsp
  4035fc:	41 51                	push   %r9
  4035fe:	49 89 c9             	mov    %rcx,%r9
  403601:	49 89 d0             	mov    %rdx,%r8
  403604:	48 89 f9             	mov    %rdi,%rcx
  403607:	48 89 f2             	mov    %rsi,%rdx
  40360a:	be b8 0b 00 00       	mov    $0xbb8,%esi
  40360f:	48 8d 3d 64 11 00 00 	lea    0x1164(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  403616:	e8 f4 f5 ff ff       	call   402c0f <submitr>
  40361b:	48 83 c4 10          	add    $0x10,%rsp
  40361f:	eb ac                	jmp    4035cd <driver_post+0x23>

0000000000403621 <check>:
  403621:	f3 0f 1e fa          	endbr64
  403625:	89 f8                	mov    %edi,%eax
  403627:	c1 e8 1c             	shr    $0x1c,%eax
  40362a:	74 1d                	je     403649 <check+0x28>
  40362c:	b9 00 00 00 00       	mov    $0x0,%ecx
  403631:	83 f9 1f             	cmp    $0x1f,%ecx
  403634:	7f 0d                	jg     403643 <check+0x22>
  403636:	89 f8                	mov    %edi,%eax
  403638:	d3 e8                	shr    %cl,%eax
  40363a:	3c 0a                	cmp    $0xa,%al
  40363c:	74 11                	je     40364f <check+0x2e>
  40363e:	83 c1 08             	add    $0x8,%ecx
  403641:	eb ee                	jmp    403631 <check+0x10>
  403643:	b8 01 00 00 00       	mov    $0x1,%eax
  403648:	c3                   	ret
  403649:	b8 00 00 00 00       	mov    $0x0,%eax
  40364e:	c3                   	ret
  40364f:	b8 00 00 00 00       	mov    $0x0,%eax
  403654:	c3                   	ret

0000000000403655 <gencookie>:
  403655:	f3 0f 1e fa          	endbr64
  403659:	53                   	push   %rbx
  40365a:	83 c7 01             	add    $0x1,%edi
  40365d:	e8 de d9 ff ff       	call   401040 <srandom@plt>
  403662:	e8 f9 da ff ff       	call   401160 <random@plt>
  403667:	89 c3                	mov    %eax,%ebx
  403669:	89 c7                	mov    %eax,%edi
  40366b:	e8 b1 ff ff ff       	call   403621 <check>
  403670:	85 c0                	test   %eax,%eax
  403672:	74 ee                	je     403662 <gencookie+0xd>
  403674:	89 d8                	mov    %ebx,%eax
  403676:	5b                   	pop    %rbx
  403677:	c3                   	ret

Disassembly of section .fini:

0000000000403678 <_fini>:
  403678:	f3 0f 1e fa          	endbr64
  40367c:	48 83 ec 08          	sub    $0x8,%rsp
  403680:	48 83 c4 08          	add    $0x8,%rsp
  403684:	c3                   	ret
