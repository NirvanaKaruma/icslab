
starget:     file format elf64-x86-64


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
  401258:	48 c7 c7 de 14 40 00 	mov    $0x4014de,%rdi
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
  401403:	e8 54 22 00 00       	call   40365c <gencookie>
  401408:	89 c7                	mov    %eax,%edi
  40140a:	89 05 1c 61 00 00    	mov    %eax,0x611c(%rip)        # 40752c <cookie>
  401410:	e8 47 22 00 00       	call   40365c <gencookie>
  401415:	89 05 0d 61 00 00    	mov    %eax,0x610d(%rip)        # 407528 <authkey>
  40141b:	8b 05 0f 5d 00 00    	mov    0x5d0f(%rip),%eax        # 407130 <target_id>
  401421:	8d 78 01             	lea    0x1(%rax),%edi
  401424:	e8 17 fc ff ff       	call   401040 <srandom@plt>
  401429:	e8 32 fd ff ff       	call   401160 <random@plt>
  40142e:	89 c7                	mov    %eax,%edi
  401430:	e8 0e 03 00 00       	call   401743 <scramble>
  401435:	89 c3                	mov    %eax,%ebx
  401437:	85 ed                	test   %ebp,%ebp
  401439:	75 57                	jne    401492 <initialize_target+0xce>
  40143b:	b8 00 00 00 00       	mov    $0x0,%eax
  401440:	01 d8                	add    %ebx,%eax
  401442:	0f b7 c0             	movzwl %ax,%eax
  401445:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  40144c:	89 c0                	mov    %eax,%eax
  40144e:	48 89 05 33 60 00 00 	mov    %rax,0x6033(%rip)        # 407488 <buf_offset>
  401455:	c6 05 ec 6c 00 00 72 	movb   $0x72,0x6cec(%rip)        # 408148 <target_prefix>
  40145c:	c6 05 e5 6c 00 00 73 	movb   $0x73,0x6ce5(%rip)        # 408148 <target_prefix>
  401463:	83 3d 16 60 00 00 00 	cmpl   $0x0,0x6016(%rip)        # 407480 <notify>
  40146a:	74 09                	je     401475 <initialize_target+0xb1>
  40146c:	83 3d bd 60 00 00 00 	cmpl   $0x0,0x60bd(%rip)        # 407530 <is_checker>
  401473:	74 35                	je     4014aa <initialize_target+0xe6>
  401475:	48 8b 84 24 08 20 00 	mov    0x2008(%rsp),%rax
  40147c:	00 
  40147d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401484:	00 00 
  401486:	75 51                	jne    4014d9 <initialize_target+0x115>
  401488:	48 81 c4 18 20 00 00 	add    $0x2018,%rsp
  40148f:	5b                   	pop    %rbx
  401490:	5d                   	pop    %rbp
  401491:	c3                   	ret
  401492:	bf 00 00 00 00       	mov    $0x0,%edi
  401497:	e8 b4 fc ff ff       	call   401150 <time@plt>
  40149c:	89 c7                	mov    %eax,%edi
  40149e:	e8 9d fb ff ff       	call   401040 <srandom@plt>
  4014a3:	e8 b8 fc ff ff       	call   401160 <random@plt>
  4014a8:	eb 96                	jmp    401440 <initialize_target+0x7c>
  4014aa:	48 89 e7             	mov    %rsp,%rdi
  4014ad:	e8 e1 1e 00 00       	call   403393 <init_driver>
  4014b2:	85 c0                	test   %eax,%eax
  4014b4:	79 bf                	jns    401475 <initialize_target+0xb1>
  4014b6:	48 89 e2             	mov    %rsp,%rdx
  4014b9:	48 8d 35 28 2c 00 00 	lea    0x2c28(%rip),%rsi        # 4040e8 <_IO_stdin_used+0xe8>
  4014c0:	bf 02 00 00 00       	mov    $0x2,%edi
  4014c5:	b8 00 00 00 00       	mov    $0x0,%eax
  4014ca:	e8 c1 fc ff ff       	call   401190 <__printf_chk@plt>
  4014cf:	bf 08 00 00 00       	mov    $0x8,%edi
  4014d4:	e8 07 fd ff ff       	call   4011e0 <exit@plt>
  4014d9:	e8 31 12 00 00       	call   40270f <__stack_chk_fail>

00000000004014de <main>:
  4014de:	f3 0f 1e fa          	endbr64
  4014e2:	41 56                	push   %r14
  4014e4:	41 55                	push   %r13
  4014e6:	41 54                	push   %r12
  4014e8:	55                   	push   %rbp
  4014e9:	53                   	push   %rbx
  4014ea:	48 83 ec 60          	sub    $0x60,%rsp
  4014ee:	89 fd                	mov    %edi,%ebp
  4014f0:	48 89 f3             	mov    %rsi,%rbx
  4014f3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4014fa:	00 00 
  4014fc:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  401501:	31 c0                	xor    %eax,%eax
  401503:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  40150a:	74 65 64 
  40150d:	48 89 04 24          	mov    %rax,(%rsp)
  401511:	48 b8 64 41 77 61 79 	movabs $0x4e437961774164,%rax
  401518:	43 4e 00 
  40151b:	48 89 44 24 07       	mov    %rax,0x7(%rsp)
  401520:	48 c7 c6 fe 25 40 00 	mov    $0x4025fe,%rsi
  401527:	bf 0b 00 00 00       	mov    $0xb,%edi
  40152c:	e8 cf fb ff ff       	call   401100 <signal@plt>
  401531:	48 c7 c6 a4 25 40 00 	mov    $0x4025a4,%rsi
  401538:	bf 07 00 00 00       	mov    $0x7,%edi
  40153d:	e8 be fb ff ff       	call   401100 <signal@plt>
  401542:	48 c7 c6 58 26 40 00 	mov    $0x402658,%rsi
  401549:	bf 04 00 00 00       	mov    $0x4,%edi
  40154e:	e8 ad fb ff ff       	call   401100 <signal@plt>
  401553:	83 3d d6 5f 00 00 00 	cmpl   $0x0,0x5fd6(%rip)        # 407530 <is_checker>
  40155a:	75 26                	jne    401582 <main+0xa4>
  40155c:	4c 8d 25 27 30 00 00 	lea    0x3027(%rip),%r12        # 40458a <_IO_stdin_used+0x58a>
  401563:	48 8b 05 36 5f 00 00 	mov    0x5f36(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  40156a:	48 89 05 a7 5f 00 00 	mov    %rax,0x5fa7(%rip)        # 407518 <infile>
  401571:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401577:	41 be 00 00 00 00    	mov    $0x0,%r14d
  40157d:	e9 8d 00 00 00       	jmp    40160f <main+0x131>
  401582:	48 c7 c6 b2 26 40 00 	mov    $0x4026b2,%rsi
  401589:	bf 0e 00 00 00       	mov    $0xe,%edi
  40158e:	e8 6d fb ff ff       	call   401100 <signal@plt>
  401593:	bf 02 00 00 00       	mov    $0x2,%edi
  401598:	e8 23 fb ff ff       	call   4010c0 <alarm@plt>
  40159d:	4c 8d 25 eb 2f 00 00 	lea    0x2feb(%rip),%r12        # 40458f <_IO_stdin_used+0x58f>
  4015a4:	eb bd                	jmp    401563 <main+0x85>
  4015a6:	48 8b 3b             	mov    (%rbx),%rdi
  4015a9:	e8 78 fd ff ff       	call   401326 <usage>
  4015ae:	48 8d 35 54 30 00 00 	lea    0x3054(%rip),%rsi        # 404609 <_IO_stdin_used+0x609>
  4015b5:	48 8b 3d 04 5f 00 00 	mov    0x5f04(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  4015bc:	e8 df fb ff ff       	call   4011a0 <fopen@plt>
  4015c1:	48 89 05 50 5f 00 00 	mov    %rax,0x5f50(%rip)        # 407518 <infile>
  4015c8:	48 85 c0             	test   %rax,%rax
  4015cb:	75 42                	jne    40160f <main+0x131>
  4015cd:	48 8b 0d ec 5e 00 00 	mov    0x5eec(%rip),%rcx        # 4074c0 <optarg@GLIBC_2.2.5>
  4015d4:	48 8d 15 be 2f 00 00 	lea    0x2fbe(%rip),%rdx        # 404599 <_IO_stdin_used+0x599>
  4015db:	be 02 00 00 00       	mov    $0x2,%esi
  4015e0:	48 8b 3d f9 5e 00 00 	mov    0x5ef9(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4015e7:	e8 14 fc ff ff       	call   401200 <__fprintf_chk@plt>
  4015ec:	b8 01 00 00 00       	mov    $0x1,%eax
  4015f1:	e9 2b 01 00 00       	jmp    401721 <main+0x243>
  4015f6:	ba 10 00 00 00       	mov    $0x10,%edx
  4015fb:	be 00 00 00 00       	mov    $0x0,%esi
  401600:	48 8b 3d b9 5e 00 00 	mov    0x5eb9(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  401607:	e8 b4 fb ff ff       	call   4011c0 <strtoul@plt>
  40160c:	41 89 c6             	mov    %eax,%r14d
  40160f:	4c 89 e2             	mov    %r12,%rdx
  401612:	48 89 de             	mov    %rbx,%rsi
  401615:	89 ef                	mov    %ebp,%edi
  401617:	e8 94 fb ff ff       	call   4011b0 <getopt@plt>
  40161c:	3c ff                	cmp    $0xff,%al
  40161e:	74 7a                	je     40169a <main+0x1bc>
  401620:	8d 50 9f             	lea    -0x61(%rax),%edx
  401623:	80 fa 14             	cmp    $0x14,%dl
  401626:	77 51                	ja     401679 <main+0x19b>
  401628:	0f b6 d2             	movzbl %dl,%edx
  40162b:	48 8d 0d 72 31 00 00 	lea    0x3172(%rip),%rcx        # 4047a4 <_IO_stdin_used+0x7a4>
  401632:	48 63 14 91          	movslq (%rcx,%rdx,4),%rdx
  401636:	48 01 ca             	add    %rcx,%rdx
  401639:	3e ff e2             	notrack jmp *%rdx
  40163c:	ba 0a 00 00 00       	mov    $0xa,%edx
  401641:	be 00 00 00 00       	mov    $0x0,%esi
  401646:	48 8b 3d 73 5e 00 00 	mov    0x5e73(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  40164d:	e8 de fa ff ff       	call   401130 <strtol@plt>
  401652:	41 89 c5             	mov    %eax,%r13d
  401655:	eb b8                	jmp    40160f <main+0x131>
  401657:	c7 05 1f 5e 00 00 00 	movl   $0x0,0x5e1f(%rip)        # 407480 <notify>
  40165e:	00 00 00 
  401661:	eb ac                	jmp    40160f <main+0x131>
  401663:	48 89 e7             	mov    %rsp,%rdi
  401666:	ba 50 00 00 00       	mov    $0x50,%edx
  40166b:	48 8b 35 4e 5e 00 00 	mov    0x5e4e(%rip),%rsi        # 4074c0 <optarg@GLIBC_2.2.5>
  401672:	e8 d9 f9 ff ff       	call   401050 <strncpy@plt>
  401677:	eb 96                	jmp    40160f <main+0x131>
  401679:	0f be d0             	movsbl %al,%edx
  40167c:	48 8d 35 33 2f 00 00 	lea    0x2f33(%rip),%rsi        # 4045b6 <_IO_stdin_used+0x5b6>
  401683:	bf 02 00 00 00       	mov    $0x2,%edi
  401688:	b8 00 00 00 00       	mov    $0x0,%eax
  40168d:	e8 fe fa ff ff       	call   401190 <__printf_chk@plt>
  401692:	48 8b 3b             	mov    (%rbx),%rdi
  401695:	e8 8c fc ff ff       	call   401326 <usage>
  40169a:	be 01 00 00 00       	mov    $0x1,%esi
  40169f:	44 89 ef             	mov    %r13d,%edi
  4016a2:	e8 1d fd ff ff       	call   4013c4 <initialize_target>
  4016a7:	83 3d 82 5e 00 00 00 	cmpl   $0x0,0x5e82(%rip)        # 407530 <is_checker>
  4016ae:	74 3f                	je     4016ef <main+0x211>
  4016b0:	44 39 35 71 5e 00 00 	cmp    %r14d,0x5e71(%rip)        # 407528 <authkey>
  4016b7:	75 13                	jne    4016cc <main+0x1ee>
  4016b9:	48 89 e7             	mov    %rsp,%rdi
  4016bc:	48 8b 35 7d 5a 00 00 	mov    0x5a7d(%rip),%rsi        # 407140 <user_id>
  4016c3:	e8 28 fa ff ff       	call   4010f0 <strcmp@plt>
  4016c8:	85 c0                	test   %eax,%eax
  4016ca:	74 23                	je     4016ef <main+0x211>
  4016cc:	44 89 f2             	mov    %r14d,%edx
  4016cf:	48 8d 35 3a 2a 00 00 	lea    0x2a3a(%rip),%rsi        # 404110 <_IO_stdin_used+0x110>
  4016d6:	bf 02 00 00 00       	mov    $0x2,%edi
  4016db:	b8 00 00 00 00       	mov    $0x0,%eax
  4016e0:	e8 ab fa ff ff       	call   401190 <__printf_chk@plt>
  4016e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4016ea:	e8 f3 0a 00 00       	call   4021e2 <check_fail>
  4016ef:	8b 15 37 5e 00 00    	mov    0x5e37(%rip),%edx        # 40752c <cookie>
  4016f5:	48 8d 35 cd 2e 00 00 	lea    0x2ecd(%rip),%rsi        # 4045c9 <_IO_stdin_used+0x5c9>
  4016fc:	bf 02 00 00 00       	mov    $0x2,%edi
  401701:	b8 00 00 00 00       	mov    $0x0,%eax
  401706:	e8 85 fa ff ff       	call   401190 <__printf_chk@plt>
  40170b:	be 01 00 00 00       	mov    $0x1,%esi
  401710:	48 8b 3d 71 5d 00 00 	mov    0x5d71(%rip),%rdi        # 407488 <buf_offset>
  401717:	e8 4d 10 00 00       	call   402769 <launch>
  40171c:	b8 00 00 00 00       	mov    $0x0,%eax
  401721:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
  401726:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40172d:	00 00 
  40172f:	75 0d                	jne    40173e <main+0x260>
  401731:	48 83 c4 60          	add    $0x60,%rsp
  401735:	5b                   	pop    %rbx
  401736:	5d                   	pop    %rbp
  401737:	41 5c                	pop    %r12
  401739:	41 5d                	pop    %r13
  40173b:	41 5e                	pop    %r14
  40173d:	c3                   	ret
  40173e:	e8 cc 0f 00 00       	call   40270f <__stack_chk_fail>

0000000000401743 <scramble>:
  401743:	f3 0f 1e fa          	endbr64
  401747:	48 83 ec 38          	sub    $0x38,%rsp
  40174b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401752:	00 00 
  401754:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401759:	31 c0                	xor    %eax,%eax
  40175b:	eb 10                	jmp    40176d <scramble+0x2a>
  40175d:	69 d0 f5 ef 00 00    	imul   $0xeff5,%eax,%edx
  401763:	01 fa                	add    %edi,%edx
  401765:	89 c1                	mov    %eax,%ecx
  401767:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  40176a:	83 c0 01             	add    $0x1,%eax
  40176d:	83 f8 09             	cmp    $0x9,%eax
  401770:	76 eb                	jbe    40175d <scramble+0x1a>
  401772:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401776:	69 c0 b4 e5 00 00    	imul   $0xe5b4,%eax,%eax
  40177c:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401780:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401784:	69 c0 8a 2e 00 00    	imul   $0x2e8a,%eax,%eax
  40178a:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40178e:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401792:	69 c0 a0 96 00 00    	imul   $0x96a0,%eax,%eax
  401798:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40179c:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017a0:	69 c0 6c cf 00 00    	imul   $0xcf6c,%eax,%eax
  4017a6:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4017aa:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4017ae:	69 c0 d9 60 00 00    	imul   $0x60d9,%eax,%eax
  4017b4:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4017b8:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4017bc:	69 c0 d3 81 00 00    	imul   $0x81d3,%eax,%eax
  4017c2:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4017c6:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017ca:	69 c0 a8 a6 00 00    	imul   $0xa6a8,%eax,%eax
  4017d0:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4017d4:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017d8:	69 c0 2a 54 00 00    	imul   $0x542a,%eax,%eax
  4017de:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017e2:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017e6:	69 c0 43 fe 00 00    	imul   $0xfe43,%eax,%eax
  4017ec:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017f0:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017f4:	69 c0 3e 75 00 00    	imul   $0x753e,%eax,%eax
  4017fa:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4017fe:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401802:	69 c0 9e 3c 00 00    	imul   $0x3c9e,%eax,%eax
  401808:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40180c:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401810:	69 c0 16 1b 00 00    	imul   $0x1b16,%eax,%eax
  401816:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40181a:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40181e:	69 c0 cf 89 00 00    	imul   $0x89cf,%eax,%eax
  401824:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401828:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40182c:	69 c0 60 74 00 00    	imul   $0x7460,%eax,%eax
  401832:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401836:	8b 04 24             	mov    (%rsp),%eax
  401839:	69 c0 06 c2 00 00    	imul   $0xc206,%eax,%eax
  40183f:	89 04 24             	mov    %eax,(%rsp)
  401842:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401846:	69 c0 15 ae 00 00    	imul   $0xae15,%eax,%eax
  40184c:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401850:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401854:	69 c0 0a d6 00 00    	imul   $0xd60a,%eax,%eax
  40185a:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40185e:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401862:	69 c0 ab 54 00 00    	imul   $0x54ab,%eax,%eax
  401868:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40186c:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401870:	69 c0 49 8b 00 00    	imul   $0x8b49,%eax,%eax
  401876:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40187a:	8b 04 24             	mov    (%rsp),%eax
  40187d:	69 c0 a9 8f 00 00    	imul   $0x8fa9,%eax,%eax
  401883:	89 04 24             	mov    %eax,(%rsp)
  401886:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40188a:	69 c0 23 69 00 00    	imul   $0x6923,%eax,%eax
  401890:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401894:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401898:	69 c0 20 27 00 00    	imul   $0x2720,%eax,%eax
  40189e:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018a2:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4018a6:	69 c0 f1 2f 00 00    	imul   $0x2ff1,%eax,%eax
  4018ac:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4018b0:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4018b4:	69 c0 bc c5 00 00    	imul   $0xc5bc,%eax,%eax
  4018ba:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4018be:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018c2:	69 c0 00 82 00 00    	imul   $0x8200,%eax,%eax
  4018c8:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018cc:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4018d0:	69 c0 6a b8 00 00    	imul   $0xb86a,%eax,%eax
  4018d6:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4018da:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018de:	69 c0 72 df 00 00    	imul   $0xdf72,%eax,%eax
  4018e4:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018e8:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4018ec:	69 c0 d1 29 00 00    	imul   $0x29d1,%eax,%eax
  4018f2:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4018f6:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4018fa:	69 c0 95 94 00 00    	imul   $0x9495,%eax,%eax
  401900:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401904:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401908:	69 c0 61 27 00 00    	imul   $0x2761,%eax,%eax
  40190e:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401912:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401916:	69 c0 a6 08 00 00    	imul   $0x8a6,%eax,%eax
  40191c:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401920:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401924:	69 c0 56 fe 00 00    	imul   $0xfe56,%eax,%eax
  40192a:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40192e:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401932:	69 c0 15 b2 00 00    	imul   $0xb215,%eax,%eax
  401938:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40193c:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401940:	69 c0 5a 4b 00 00    	imul   $0x4b5a,%eax,%eax
  401946:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40194a:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40194e:	69 c0 18 77 00 00    	imul   $0x7718,%eax,%eax
  401954:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401958:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40195c:	69 c0 80 29 00 00    	imul   $0x2980,%eax,%eax
  401962:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401966:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40196a:	69 c0 7f ec 00 00    	imul   $0xec7f,%eax,%eax
  401970:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401974:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401978:	69 c0 07 f0 00 00    	imul   $0xf007,%eax,%eax
  40197e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401982:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401986:	69 c0 ec cb 00 00    	imul   $0xcbec,%eax,%eax
  40198c:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401990:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401994:	69 c0 a5 4a 00 00    	imul   $0x4aa5,%eax,%eax
  40199a:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40199e:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4019a2:	69 c0 be f0 00 00    	imul   $0xf0be,%eax,%eax
  4019a8:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4019ac:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4019b0:	69 c0 8b 0c 00 00    	imul   $0xc8b,%eax,%eax
  4019b6:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4019ba:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4019be:	69 c0 91 d6 00 00    	imul   $0xd691,%eax,%eax
  4019c4:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4019c8:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4019cc:	69 c0 71 39 00 00    	imul   $0x3971,%eax,%eax
  4019d2:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4019d6:	8b 04 24             	mov    (%rsp),%eax
  4019d9:	69 c0 8e d4 00 00    	imul   $0xd48e,%eax,%eax
  4019df:	89 04 24             	mov    %eax,(%rsp)
  4019e2:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4019e6:	69 c0 c2 c1 00 00    	imul   $0xc1c2,%eax,%eax
  4019ec:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4019f0:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4019f4:	69 c0 48 36 00 00    	imul   $0x3648,%eax,%eax
  4019fa:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4019fe:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401a02:	69 c0 e4 bb 00 00    	imul   $0xbbe4,%eax,%eax
  401a08:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401a0c:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401a10:	69 c0 19 13 00 00    	imul   $0x1319,%eax,%eax
  401a16:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401a1a:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401a1e:	69 c0 bc 25 00 00    	imul   $0x25bc,%eax,%eax
  401a24:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401a28:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401a2c:	69 c0 41 e2 00 00    	imul   $0xe241,%eax,%eax
  401a32:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401a36:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401a3a:	69 c0 6d 6a 00 00    	imul   $0x6a6d,%eax,%eax
  401a40:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401a44:	8b 04 24             	mov    (%rsp),%eax
  401a47:	69 c0 de 9f 00 00    	imul   $0x9fde,%eax,%eax
  401a4d:	89 04 24             	mov    %eax,(%rsp)
  401a50:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401a54:	69 c0 31 eb 00 00    	imul   $0xeb31,%eax,%eax
  401a5a:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401a5e:	8b 04 24             	mov    (%rsp),%eax
  401a61:	69 c0 37 10 00 00    	imul   $0x1037,%eax,%eax
  401a67:	89 04 24             	mov    %eax,(%rsp)
  401a6a:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401a6e:	69 c0 b6 b9 00 00    	imul   $0xb9b6,%eax,%eax
  401a74:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401a78:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401a7c:	69 c0 e6 38 00 00    	imul   $0x38e6,%eax,%eax
  401a82:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401a86:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a8a:	69 c0 26 d1 00 00    	imul   $0xd126,%eax,%eax
  401a90:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a94:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401a98:	69 c0 9f fc 00 00    	imul   $0xfc9f,%eax,%eax
  401a9e:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401aa2:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401aa6:	69 c0 9e 7a 00 00    	imul   $0x7a9e,%eax,%eax
  401aac:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401ab0:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401ab4:	69 c0 6a 6b 00 00    	imul   $0x6b6a,%eax,%eax
  401aba:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401abe:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401ac2:	69 c0 62 ae 00 00    	imul   $0xae62,%eax,%eax
  401ac8:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401acc:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401ad0:	69 c0 78 fc 00 00    	imul   $0xfc78,%eax,%eax
  401ad6:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401ada:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401ade:	69 c0 11 8a 00 00    	imul   $0x8a11,%eax,%eax
  401ae4:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401ae8:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401aec:	69 c0 85 71 00 00    	imul   $0x7185,%eax,%eax
  401af2:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401af6:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401afa:	69 c0 c2 99 00 00    	imul   $0x99c2,%eax,%eax
  401b00:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401b04:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b08:	69 c0 0a ff 00 00    	imul   $0xff0a,%eax,%eax
  401b0e:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b12:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401b16:	69 c0 87 22 00 00    	imul   $0x2287,%eax,%eax
  401b1c:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401b20:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401b24:	69 c0 a3 5e 00 00    	imul   $0x5ea3,%eax,%eax
  401b2a:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401b2e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401b32:	69 c0 b2 0a 00 00    	imul   $0xab2,%eax,%eax
  401b38:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401b3c:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b40:	69 c0 8e 43 00 00    	imul   $0x438e,%eax,%eax
  401b46:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b4a:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401b4e:	69 c0 d1 6f 00 00    	imul   $0x6fd1,%eax,%eax
  401b54:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401b58:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b5c:	69 c0 ab 8a 00 00    	imul   $0x8aab,%eax,%eax
  401b62:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b66:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b6a:	69 c0 ec 8b 00 00    	imul   $0x8bec,%eax,%eax
  401b70:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b74:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b78:	69 c0 8f 4b 00 00    	imul   $0x4b8f,%eax,%eax
  401b7e:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b82:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401b86:	69 c0 77 58 00 00    	imul   $0x5877,%eax,%eax
  401b8c:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401b90:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b94:	69 c0 ea 42 00 00    	imul   $0x42ea,%eax,%eax
  401b9a:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b9e:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401ba2:	69 c0 ad 58 00 00    	imul   $0x58ad,%eax,%eax
  401ba8:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401bac:	8b 04 24             	mov    (%rsp),%eax
  401baf:	69 c0 20 71 00 00    	imul   $0x7120,%eax,%eax
  401bb5:	89 04 24             	mov    %eax,(%rsp)
  401bb8:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401bbc:	69 c0 f3 4e 00 00    	imul   $0x4ef3,%eax,%eax
  401bc2:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401bc6:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401bca:	69 c0 8b 92 00 00    	imul   $0x928b,%eax,%eax
  401bd0:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401bd4:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401bd8:	69 c0 6b 36 00 00    	imul   $0x366b,%eax,%eax
  401bde:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401be2:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401be6:	69 c0 e5 ec 00 00    	imul   $0xece5,%eax,%eax
  401bec:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401bf0:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401bf4:	69 c0 7e 30 00 00    	imul   $0x307e,%eax,%eax
  401bfa:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401bfe:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401c02:	69 c0 aa 66 00 00    	imul   $0x66aa,%eax,%eax
  401c08:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c0c:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401c10:	69 c0 64 ba 00 00    	imul   $0xba64,%eax,%eax
  401c16:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401c1a:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401c1e:	69 c0 9a ff 00 00    	imul   $0xff9a,%eax,%eax
  401c24:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401c28:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401c2c:	69 c0 ae 26 00 00    	imul   $0x26ae,%eax,%eax
  401c32:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401c36:	8b 04 24             	mov    (%rsp),%eax
  401c39:	69 c0 2c 6b 00 00    	imul   $0x6b2c,%eax,%eax
  401c3f:	89 04 24             	mov    %eax,(%rsp)
  401c42:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401c46:	69 c0 8f 11 00 00    	imul   $0x118f,%eax,%eax
  401c4c:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401c50:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401c54:	69 c0 25 b9 00 00    	imul   $0xb925,%eax,%eax
  401c5a:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401c5e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401c62:	69 c0 b6 6d 00 00    	imul   $0x6db6,%eax,%eax
  401c68:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c6c:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c70:	69 c0 e0 70 00 00    	imul   $0x70e0,%eax,%eax
  401c76:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c7a:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401c7e:	69 c0 72 3b 00 00    	imul   $0x3b72,%eax,%eax
  401c84:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401c88:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401c8c:	69 c0 21 a9 00 00    	imul   $0xa921,%eax,%eax
  401c92:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401c96:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401c9a:	69 c0 a5 c4 00 00    	imul   $0xc4a5,%eax,%eax
  401ca0:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401ca4:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401ca8:	69 c0 1b 73 00 00    	imul   $0x731b,%eax,%eax
  401cae:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401cb2:	b8 00 00 00 00       	mov    $0x0,%eax
  401cb7:	ba 00 00 00 00       	mov    $0x0,%edx
  401cbc:	eb 0a                	jmp    401cc8 <scramble+0x585>
  401cbe:	89 c1                	mov    %eax,%ecx
  401cc0:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401cc3:	01 ca                	add    %ecx,%edx
  401cc5:	83 c0 01             	add    $0x1,%eax
  401cc8:	83 f8 09             	cmp    $0x9,%eax
  401ccb:	76 f1                	jbe    401cbe <scramble+0x57b>
  401ccd:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401cd2:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401cd9:	00 00 
  401cdb:	75 07                	jne    401ce4 <scramble+0x5a1>
  401cdd:	89 d0                	mov    %edx,%eax
  401cdf:	48 83 c4 38          	add    $0x38,%rsp
  401ce3:	c3                   	ret
  401ce4:	e8 26 0a 00 00       	call   40270f <__stack_chk_fail>

0000000000401ce9 <getbuf>:
  401ce9:	f3 0f 1e fa          	endbr64
  401ced:	48 83 ec 38          	sub    $0x38,%rsp
  401cf1:	48 89 e7             	mov    %rsp,%rdi
  401cf4:	e8 27 05 00 00       	call   402220 <Gets>
  401cf9:	b8 01 00 00 00       	mov    $0x1,%eax
  401cfe:	48 83 c4 38          	add    $0x38,%rsp
  401d02:	c3                   	ret

0000000000401d03 <touch1>:
  401d03:	f3 0f 1e fa          	endbr64
  401d07:	50                   	push   %rax
  401d08:	58                   	pop    %rax
  401d09:	48 83 ec 08          	sub    $0x8,%rsp
  401d0d:	c7 05 0d 58 00 00 01 	movl   $0x1,0x580d(%rip)        # 407524 <vlevel>
  401d14:	00 00 00 
  401d17:	48 8d 3d ed 28 00 00 	lea    0x28ed(%rip),%rdi        # 40460b <_IO_stdin_used+0x60b>
  401d1e:	e8 5d f3 ff ff       	call   401080 <puts@plt>
  401d23:	bf 01 00 00 00       	mov    $0x1,%edi
  401d28:	e8 70 07 00 00       	call   40249d <validate>
  401d2d:	bf 00 00 00 00       	mov    $0x0,%edi
  401d32:	e8 a9 f4 ff ff       	call   4011e0 <exit@plt>

0000000000401d37 <touch2>:
  401d37:	f3 0f 1e fa          	endbr64
  401d3b:	50                   	push   %rax
  401d3c:	58                   	pop    %rax
  401d3d:	48 83 ec 08          	sub    $0x8,%rsp
  401d41:	89 fa                	mov    %edi,%edx
  401d43:	c7 05 d7 57 00 00 02 	movl   $0x2,0x57d7(%rip)        # 407524 <vlevel>
  401d4a:	00 00 00 
  401d4d:	39 3d d9 57 00 00    	cmp    %edi,0x57d9(%rip)        # 40752c <cookie>
  401d53:	74 2a                	je     401d7f <touch2+0x48>
  401d55:	48 8d 35 24 24 00 00 	lea    0x2424(%rip),%rsi        # 404180 <_IO_stdin_used+0x180>
  401d5c:	bf 02 00 00 00       	mov    $0x2,%edi
  401d61:	b8 00 00 00 00       	mov    $0x0,%eax
  401d66:	e8 25 f4 ff ff       	call   401190 <__printf_chk@plt>
  401d6b:	bf 02 00 00 00       	mov    $0x2,%edi
  401d70:	e8 03 08 00 00       	call   402578 <fail>
  401d75:	bf 00 00 00 00       	mov    $0x0,%edi
  401d7a:	e8 61 f4 ff ff       	call   4011e0 <exit@plt>
  401d7f:	48 8d 35 d2 23 00 00 	lea    0x23d2(%rip),%rsi        # 404158 <_IO_stdin_used+0x158>
  401d86:	bf 02 00 00 00       	mov    $0x2,%edi
  401d8b:	b8 00 00 00 00       	mov    $0x0,%eax
  401d90:	e8 fb f3 ff ff       	call   401190 <__printf_chk@plt>
  401d95:	bf 02 00 00 00       	mov    $0x2,%edi
  401d9a:	e8 fe 06 00 00       	call   40249d <validate>
  401d9f:	eb d4                	jmp    401d75 <touch2+0x3e>

0000000000401da1 <hexmatch>:
  401da1:	f3 0f 1e fa          	endbr64
  401da5:	41 54                	push   %r12
  401da7:	55                   	push   %rbp
  401da8:	53                   	push   %rbx
  401da9:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401dad:	89 fd                	mov    %edi,%ebp
  401daf:	48 89 f3             	mov    %rsi,%rbx
  401db2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401db9:	00 00 
  401dbb:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401dc0:	31 c0                	xor    %eax,%eax
  401dc2:	e8 99 f3 ff ff       	call   401160 <random@plt>
  401dc7:	48 89 c6             	mov    %rax,%rsi
  401dca:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401dd1:	0a d7 a3 
  401dd4:	48 f7 ea             	imul   %rdx
  401dd7:	48 8d 0c 32          	lea    (%rdx,%rsi,1),%rcx
  401ddb:	48 c1 f9 06          	sar    $0x6,%rcx
  401ddf:	48 89 f0             	mov    %rsi,%rax
  401de2:	48 c1 f8 3f          	sar    $0x3f,%rax
  401de6:	48 29 c1             	sub    %rax,%rcx
  401de9:	48 8d 04 89          	lea    (%rcx,%rcx,4),%rax
  401ded:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401df1:	48 c1 e0 02          	shl    $0x2,%rax
  401df5:	48 29 c6             	sub    %rax,%rsi
  401df8:	4c 8d 24 34          	lea    (%rsp,%rsi,1),%r12
  401dfc:	ba 6e 00 00 00       	mov    $0x6e,%edx
  401e01:	48 39 d6             	cmp    %rdx,%rsi
  401e04:	48 0f 43 d6          	cmovae %rsi,%rdx
  401e08:	48 29 f2             	sub    %rsi,%rdx
  401e0b:	41 89 e8             	mov    %ebp,%r8d
  401e0e:	48 8d 0d 13 28 00 00 	lea    0x2813(%rip),%rcx        # 404628 <_IO_stdin_used+0x628>
  401e15:	be 02 00 00 00       	mov    $0x2,%esi
  401e1a:	4c 89 e7             	mov    %r12,%rdi
  401e1d:	b8 00 00 00 00       	mov    $0x0,%eax
  401e22:	e8 f9 f3 ff ff       	call   401220 <__sprintf_chk@plt>
  401e27:	ba 09 00 00 00       	mov    $0x9,%edx
  401e2c:	4c 89 e6             	mov    %r12,%rsi
  401e2f:	48 89 df             	mov    %rbx,%rdi
  401e32:	e8 29 f2 ff ff       	call   401060 <strncmp@plt>
  401e37:	85 c0                	test   %eax,%eax
  401e39:	0f 94 c0             	sete   %al
  401e3c:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
  401e41:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401e48:	00 00 
  401e4a:	75 0c                	jne    401e58 <hexmatch+0xb7>
  401e4c:	0f b6 c0             	movzbl %al,%eax
  401e4f:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401e53:	5b                   	pop    %rbx
  401e54:	5d                   	pop    %rbp
  401e55:	41 5c                	pop    %r12
  401e57:	c3                   	ret
  401e58:	e8 b2 08 00 00       	call   40270f <__stack_chk_fail>

0000000000401e5d <touch3>:
  401e5d:	f3 0f 1e fa          	endbr64
  401e61:	53                   	push   %rbx
  401e62:	48 89 fb             	mov    %rdi,%rbx
  401e65:	c7 05 b5 56 00 00 03 	movl   $0x3,0x56b5(%rip)        # 407524 <vlevel>
  401e6c:	00 00 00 
  401e6f:	48 89 fe             	mov    %rdi,%rsi
  401e72:	8b 3d b4 56 00 00    	mov    0x56b4(%rip),%edi        # 40752c <cookie>
  401e78:	e8 24 ff ff ff       	call   401da1 <hexmatch>
  401e7d:	85 c0                	test   %eax,%eax
  401e7f:	74 2d                	je     401eae <touch3+0x51>
  401e81:	48 89 da             	mov    %rbx,%rdx
  401e84:	48 8d 35 1d 23 00 00 	lea    0x231d(%rip),%rsi        # 4041a8 <_IO_stdin_used+0x1a8>
  401e8b:	bf 02 00 00 00       	mov    $0x2,%edi
  401e90:	b8 00 00 00 00       	mov    $0x0,%eax
  401e95:	e8 f6 f2 ff ff       	call   401190 <__printf_chk@plt>
  401e9a:	bf 03 00 00 00       	mov    $0x3,%edi
  401e9f:	e8 f9 05 00 00       	call   40249d <validate>
  401ea4:	bf 00 00 00 00       	mov    $0x0,%edi
  401ea9:	e8 32 f3 ff ff       	call   4011e0 <exit@plt>
  401eae:	48 89 da             	mov    %rbx,%rdx
  401eb1:	48 8d 35 18 23 00 00 	lea    0x2318(%rip),%rsi        # 4041d0 <_IO_stdin_used+0x1d0>
  401eb8:	bf 02 00 00 00       	mov    $0x2,%edi
  401ebd:	b8 00 00 00 00       	mov    $0x0,%eax
  401ec2:	e8 c9 f2 ff ff       	call   401190 <__printf_chk@plt>
  401ec7:	bf 03 00 00 00       	mov    $0x3,%edi
  401ecc:	e8 a7 06 00 00       	call   402578 <fail>
  401ed1:	eb d1                	jmp    401ea4 <touch3+0x47>

0000000000401ed3 <test>:
  401ed3:	f3 0f 1e fa          	endbr64
  401ed7:	48 83 ec 08          	sub    $0x8,%rsp
  401edb:	b8 00 00 00 00       	mov    $0x0,%eax
  401ee0:	e8 04 fe ff ff       	call   401ce9 <getbuf>
  401ee5:	89 c2                	mov    %eax,%edx
  401ee7:	48 8d 35 0a 23 00 00 	lea    0x230a(%rip),%rsi        # 4041f8 <_IO_stdin_used+0x1f8>
  401eee:	bf 02 00 00 00       	mov    $0x2,%edi
  401ef3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ef8:	e8 93 f2 ff ff       	call   401190 <__printf_chk@plt>
  401efd:	48 83 c4 08          	add    $0x8,%rsp
  401f01:	c3                   	ret

0000000000401f02 <test2>:
  401f02:	f3 0f 1e fa          	endbr64
  401f06:	48 83 ec 08          	sub    $0x8,%rsp
  401f0a:	b8 00 00 00 00       	mov    $0x0,%eax
  401f0f:	e8 1d 00 00 00       	call   401f31 <getbuf_withcanary>
  401f14:	89 c2                	mov    %eax,%edx
  401f16:	48 8d 35 03 23 00 00 	lea    0x2303(%rip),%rsi        # 404220 <_IO_stdin_used+0x220>
  401f1d:	bf 02 00 00 00       	mov    $0x2,%edi
  401f22:	b8 00 00 00 00       	mov    $0x0,%eax
  401f27:	e8 64 f2 ff ff       	call   401190 <__printf_chk@plt>
  401f2c:	48 83 c4 08          	add    $0x8,%rsp
  401f30:	c3                   	ret

0000000000401f31 <getbuf_withcanary>:
  401f31:	55                   	push   %rbp
  401f32:	48 89 e5             	mov    %rsp,%rbp
  401f35:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  401f3c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401f43:	00 00 
  401f45:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401f49:	31 c0                	xor    %eax,%eax
  401f4b:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  401f52:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401f59:	48 89 c7             	mov    %rax,%rdi
  401f5c:	e8 bf 02 00 00       	call   402220 <Gets>
  401f61:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401f64:	48 98                	cltq
  401f66:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401f6d:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  401f71:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401f78:	ba 80 00 00 00       	mov    $0x80,%edx
  401f7d:	48 89 c6             	mov    %rax,%rsi
  401f80:	48 89 cf             	mov    %rcx,%rdi
  401f83:	e8 b8 f1 ff ff       	call   401140 <memcpy@plt>
  401f88:	b8 01 00 00 00       	mov    $0x1,%eax
  401f8d:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401f91:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401f98:	00 00 
  401f9a:	74 05                	je     401fa1 <getbuf_withcanary+0x70>
  401f9c:	e8 6e 07 00 00       	call   40270f <__stack_chk_fail>
  401fa1:	c9                   	leave
  401fa2:	c3                   	ret

0000000000401fa3 <start_farm>:
  401fa3:	f3 0f 1e fa          	endbr64
  401fa7:	b8 01 00 00 00       	mov    $0x1,%eax
  401fac:	c3                   	ret

0000000000401fad <getval_231>:
  401fad:	f3 0f 1e fa          	endbr64
  401fb1:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  401fb6:	c3                   	ret

0000000000401fb7 <setval_262>:
  401fb7:	f3 0f 1e fa          	endbr64
  401fbb:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi)
  401fc1:	c3                   	ret

0000000000401fc2 <getval_491>:
  401fc2:	f3 0f 1e fa          	endbr64
  401fc6:	b8 48 89 c7 94       	mov    $0x94c78948,%eax
  401fcb:	c3                   	ret

0000000000401fcc <addval_151>:
  401fcc:	f3 0f 1e fa          	endbr64
  401fd0:	8d 87 b0 58 90 90    	lea    -0x6f6fa750(%rdi),%eax
  401fd6:	c3                   	ret

0000000000401fd7 <getval_127>:
  401fd7:	f3 0f 1e fa          	endbr64
  401fdb:	b8 45 48 c9 c7       	mov    $0xc7c94845,%eax
  401fe0:	c3                   	ret

0000000000401fe1 <getval_387>:
  401fe1:	f3 0f 1e fa          	endbr64
  401fe5:	b8 95 03 58 90       	mov    $0x90580395,%eax
  401fea:	c3                   	ret

0000000000401feb <addval_455>:
  401feb:	f3 0f 1e fa          	endbr64
  401fef:	8d 87 b6 ad 18 90    	lea    -0x6fe7524a(%rdi),%eax
  401ff5:	c3                   	ret

0000000000401ff6 <addval_409>:
  401ff6:	f3 0f 1e fa          	endbr64
  401ffa:	8d 87 ab 78 90 c3    	lea    -0x3c6f8755(%rdi),%eax
  402000:	c3                   	ret

0000000000402001 <mid_farm>:
  402001:	f3 0f 1e fa          	endbr64
  402005:	b8 01 00 00 00       	mov    $0x1,%eax
  40200a:	c3                   	ret

000000000040200b <add_xy>:
  40200b:	f3 0f 1e fa          	endbr64
  40200f:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  402013:	c3                   	ret

0000000000402014 <setval_390>:
  402014:	f3 0f 1e fa          	endbr64
  402018:	c7 07 8d ca 08 c9    	movl   $0xc908ca8d,(%rdi)
  40201e:	c3                   	ret

000000000040201f <setval_371>:
  40201f:	f3 0f 1e fa          	endbr64
  402023:	c7 07 c3 88 d6 c3    	movl   $0xc3d688c3,(%rdi)
  402029:	c3                   	ret

000000000040202a <getval_440>:
  40202a:	f3 0f 1e fa          	endbr64
  40202e:	b8 a1 40 89 e0       	mov    $0xe08940a1,%eax
  402033:	c3                   	ret

0000000000402034 <setval_477>:
  402034:	f3 0f 1e fa          	endbr64
  402038:	c7 07 89 c1 18 db    	movl   $0xdb18c189,(%rdi)
  40203e:	c3                   	ret

000000000040203f <addval_122>:
  40203f:	f3 0f 1e fa          	endbr64
  402043:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
  402049:	c3                   	ret

000000000040204a <addval_180>:
  40204a:	f3 0f 1e fa          	endbr64
  40204e:	8d 87 48 8b e0 90    	lea    -0x6f1f74b8(%rdi),%eax
  402054:	c3                   	ret

0000000000402055 <getval_130>:
  402055:	f3 0f 1e fa          	endbr64
  402059:	b8 89 c1 48 c9       	mov    $0xc948c189,%eax
  40205e:	c3                   	ret

000000000040205f <getval_414>:
  40205f:	f3 0f 1e fa          	endbr64
  402063:	b8 8d d6 90 90       	mov    $0x9090d68d,%eax
  402068:	c3                   	ret

0000000000402069 <addval_377>:
  402069:	f3 0f 1e fa          	endbr64
  40206d:	8d 87 89 d6 78 c9    	lea    -0x36872977(%rdi),%eax
  402073:	c3                   	ret

0000000000402074 <getval_318>:
  402074:	f3 0f 1e fa          	endbr64
  402078:	b8 89 c1 c4 d2       	mov    $0xd2c4c189,%eax
  40207d:	c3                   	ret

000000000040207e <setval_131>:
  40207e:	f3 0f 1e fa          	endbr64
  402082:	c7 07 89 d6 91 90    	movl   $0x9091d689,(%rdi)
  402088:	c3                   	ret

0000000000402089 <getval_389>:
  402089:	f3 0f 1e fa          	endbr64
  40208d:	b8 89 c1 48 d2       	mov    $0xd248c189,%eax
  402092:	c3                   	ret

0000000000402093 <setval_401>:
  402093:	f3 0f 1e fa          	endbr64
  402097:	c7 07 f9 89 c1 92    	movl   $0x92c189f9,(%rdi)
  40209d:	c3                   	ret

000000000040209e <setval_275>:
  40209e:	f3 0f 1e fa          	endbr64
  4020a2:	c7 07 76 89 ca c2    	movl   $0xc2ca8976,(%rdi)
  4020a8:	c3                   	ret

00000000004020a9 <addval_224>:
  4020a9:	f3 0f 1e fa          	endbr64
  4020ad:	8d 87 48 89 e0 90    	lea    -0x6f1f76b8(%rdi),%eax
  4020b3:	c3                   	ret

00000000004020b4 <addval_212>:
  4020b4:	f3 0f 1e fa          	endbr64
  4020b8:	8d 87 89 ca 28 c0    	lea    -0x3fd73577(%rdi),%eax
  4020be:	c3                   	ret

00000000004020bf <getval_247>:
  4020bf:	f3 0f 1e fa          	endbr64
  4020c3:	b8 48 89 e0 94       	mov    $0x94e08948,%eax
  4020c8:	c3                   	ret

00000000004020c9 <addval_107>:
  4020c9:	f3 0f 1e fa          	endbr64
  4020cd:	8d 87 89 d6 90 c3    	lea    -0x3c6f2977(%rdi),%eax
  4020d3:	c3                   	ret

00000000004020d4 <addval_199>:
  4020d4:	f3 0f 1e fa          	endbr64
  4020d8:	8d 87 09 d6 c3 e0    	lea    -0x1f3c29f7(%rdi),%eax
  4020de:	c3                   	ret

00000000004020df <addval_357>:
  4020df:	f3 0f 1e fa          	endbr64
  4020e3:	8d 87 48 a9 e0 90    	lea    -0x6f1f56b8(%rdi),%eax
  4020e9:	c3                   	ret

00000000004020ea <getval_149>:
  4020ea:	f3 0f 1e fa          	endbr64
  4020ee:	b8 48 89 e0 92       	mov    $0x92e08948,%eax
  4020f3:	c3                   	ret

00000000004020f4 <getval_482>:
  4020f4:	f3 0f 1e fa          	endbr64
  4020f8:	b8 df 89 c1 c3       	mov    $0xc3c189df,%eax
  4020fd:	c3                   	ret

00000000004020fe <addval_125>:
  4020fe:	f3 0f 1e fa          	endbr64
  402102:	8d 87 89 d6 90 90    	lea    -0x6f6f2977(%rdi),%eax
  402108:	c3                   	ret

0000000000402109 <addval_292>:
  402109:	f3 0f 1e fa          	endbr64
  40210d:	8d 87 89 ca 20 d2    	lea    -0x2ddf3577(%rdi),%eax
  402113:	c3                   	ret

0000000000402114 <addval_291>:
  402114:	f3 0f 1e fa          	endbr64
  402118:	8d 87 48 a9 e0 c3    	lea    -0x3c1f56b8(%rdi),%eax
  40211e:	c3                   	ret

000000000040211f <getval_437>:
  40211f:	f3 0f 1e fa          	endbr64
  402123:	b8 89 d6 18 c9       	mov    $0xc918d689,%eax
  402128:	c3                   	ret

0000000000402129 <getval_163>:
  402129:	f3 0f 1e fa          	endbr64
  40212d:	b8 89 c1 84 db       	mov    $0xdb84c189,%eax
  402132:	c3                   	ret

0000000000402133 <setval_421>:
  402133:	f3 0f 1e fa          	endbr64
  402137:	c7 07 89 c1 18 c9    	movl   $0xc918c189,(%rdi)
  40213d:	c3                   	ret

000000000040213e <getval_435>:
  40213e:	f3 0f 1e fa          	endbr64
  402142:	b8 8d ca 20 c9       	mov    $0xc920ca8d,%eax
  402147:	c3                   	ret

0000000000402148 <setval_159>:
  402148:	f3 0f 1e fa          	endbr64
  40214c:	c7 07 89 ca 84 c0    	movl   $0xc084ca89,(%rdi)
  402152:	c3                   	ret

0000000000402153 <setval_276>:
  402153:	f3 0f 1e fa          	endbr64
  402157:	c7 07 89 ca 28 d2    	movl   $0xd228ca89,(%rdi)
  40215d:	c3                   	ret

000000000040215e <addval_264>:
  40215e:	f3 0f 1e fa          	endbr64
  402162:	8d 87 09 ca 84 db    	lea    -0x247b35f7(%rdi),%eax
  402168:	c3                   	ret

0000000000402169 <end_farm>:
  402169:	f3 0f 1e fa          	endbr64
  40216d:	b8 01 00 00 00       	mov    $0x1,%eax
  402172:	c3                   	ret

0000000000402173 <save_char>:
  402173:	8b 05 cb 5f 00 00    	mov    0x5fcb(%rip),%eax        # 408144 <gets_cnt>
  402179:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  40217e:	7f 4a                	jg     4021ca <save_char+0x57>
  402180:	89 f9                	mov    %edi,%ecx
  402182:	c0 e9 04             	shr    $0x4,%cl
  402185:	8d 14 40             	lea    (%rax,%rax,2),%edx
  402188:	4c 8d 05 71 26 00 00 	lea    0x2671(%rip),%r8        # 404800 <trans_char>
  40218f:	83 e1 0f             	and    $0xf,%ecx
  402192:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  402197:	48 8d 0d a2 53 00 00 	lea    0x53a2(%rip),%rcx        # 407540 <gets_buf>
  40219e:	48 63 f2             	movslq %edx,%rsi
  4021a1:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  4021a5:	8d 72 01             	lea    0x1(%rdx),%esi
  4021a8:	83 e7 0f             	and    $0xf,%edi
  4021ab:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  4021b0:	48 63 f6             	movslq %esi,%rsi
  4021b3:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  4021b7:	83 c2 02             	add    $0x2,%edx
  4021ba:	48 63 d2             	movslq %edx,%rdx
  4021bd:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  4021c1:	83 c0 01             	add    $0x1,%eax
  4021c4:	89 05 7a 5f 00 00    	mov    %eax,0x5f7a(%rip)        # 408144 <gets_cnt>
  4021ca:	c3                   	ret

00000000004021cb <save_term>:
  4021cb:	8b 05 73 5f 00 00    	mov    0x5f73(%rip),%eax        # 408144 <gets_cnt>
  4021d1:	8d 04 40             	lea    (%rax,%rax,2),%eax
  4021d4:	48 98                	cltq
  4021d6:	48 8d 15 63 53 00 00 	lea    0x5363(%rip),%rdx        # 407540 <gets_buf>
  4021dd:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4021e1:	c3                   	ret

00000000004021e2 <check_fail>:
  4021e2:	f3 0f 1e fa          	endbr64
  4021e6:	50                   	push   %rax
  4021e7:	58                   	pop    %rax
  4021e8:	48 83 ec 08          	sub    $0x8,%rsp
  4021ec:	0f be 15 55 5f 00 00 	movsbl 0x5f55(%rip),%edx        # 408148 <target_prefix>
  4021f3:	4c 8d 05 46 53 00 00 	lea    0x5346(%rip),%r8        # 407540 <gets_buf>
  4021fa:	8b 0d 20 53 00 00    	mov    0x5320(%rip),%ecx        # 407520 <check_level>
  402200:	48 8d 35 26 24 00 00 	lea    0x2426(%rip),%rsi        # 40462d <_IO_stdin_used+0x62d>
  402207:	bf 02 00 00 00       	mov    $0x2,%edi
  40220c:	b8 00 00 00 00       	mov    $0x0,%eax
  402211:	e8 7a ef ff ff       	call   401190 <__printf_chk@plt>
  402216:	bf 01 00 00 00       	mov    $0x1,%edi
  40221b:	e8 c0 ef ff ff       	call   4011e0 <exit@plt>

0000000000402220 <Gets>:
  402220:	f3 0f 1e fa          	endbr64
  402224:	41 54                	push   %r12
  402226:	55                   	push   %rbp
  402227:	53                   	push   %rbx
  402228:	49 89 fc             	mov    %rdi,%r12
  40222b:	c7 05 0f 5f 00 00 00 	movl   $0x0,0x5f0f(%rip)        # 408144 <gets_cnt>
  402232:	00 00 00 
  402235:	48 89 fb             	mov    %rdi,%rbx
  402238:	eb 11                	jmp    40224b <Gets+0x2b>
  40223a:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  40223e:	88 03                	mov    %al,(%rbx)
  402240:	0f b6 f8             	movzbl %al,%edi
  402243:	e8 2b ff ff ff       	call   402173 <save_char>
  402248:	48 89 eb             	mov    %rbp,%rbx
  40224b:	48 8b 3d c6 52 00 00 	mov    0x52c6(%rip),%rdi        # 407518 <infile>
  402252:	e8 b9 ef ff ff       	call   401210 <getc@plt>
  402257:	83 f8 ff             	cmp    $0xffffffff,%eax
  40225a:	74 05                	je     402261 <Gets+0x41>
  40225c:	83 f8 0a             	cmp    $0xa,%eax
  40225f:	75 d9                	jne    40223a <Gets+0x1a>
  402261:	c6 03 00             	movb   $0x0,(%rbx)
  402264:	b8 00 00 00 00       	mov    $0x0,%eax
  402269:	e8 5d ff ff ff       	call   4021cb <save_term>
  40226e:	4c 89 e0             	mov    %r12,%rax
  402271:	5b                   	pop    %rbx
  402272:	5d                   	pop    %rbp
  402273:	41 5c                	pop    %r12
  402275:	c3                   	ret

0000000000402276 <notify_server>:
  402276:	f3 0f 1e fa          	endbr64
  40227a:	55                   	push   %rbp
  40227b:	53                   	push   %rbx
  40227c:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  402283:	ff 
  402284:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  40228b:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402290:	4c 39 dc             	cmp    %r11,%rsp
  402293:	75 ef                	jne    402284 <notify_server+0xe>
  402295:	48 83 ec 18          	sub    $0x18,%rsp
  402299:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4022a0:	00 00 
  4022a2:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  4022a9:	00 
  4022aa:	31 c0                	xor    %eax,%eax
  4022ac:	83 3d 7d 52 00 00 00 	cmpl   $0x0,0x527d(%rip)        # 407530 <is_checker>
  4022b3:	0f 85 c2 01 00 00    	jne    40247b <notify_server+0x205>
  4022b9:	89 fb                	mov    %edi,%ebx
  4022bb:	81 3d 7f 5e 00 00 9c 	cmpl   $0x1f9c,0x5e7f(%rip)        # 408144 <gets_cnt>
  4022c2:	1f 00 00 
  4022c5:	0f 8f bd 00 00 00    	jg     402388 <notify_server+0x112>
  4022cb:	0f be 05 76 5e 00 00 	movsbl 0x5e76(%rip),%eax        # 408148 <target_prefix>
  4022d2:	83 3d a7 51 00 00 00 	cmpl   $0x0,0x51a7(%rip)        # 407480 <notify>
  4022d9:	0f 84 c4 00 00 00    	je     4023a3 <notify_server+0x12d>
  4022df:	8b 15 43 52 00 00    	mov    0x5243(%rip),%edx        # 407528 <authkey>
  4022e5:	85 db                	test   %ebx,%ebx
  4022e7:	0f 84 c0 00 00 00    	je     4023ad <notify_server+0x137>
  4022ed:	48 8d 2d 4f 23 00 00 	lea    0x234f(%rip),%rbp        # 404643 <_IO_stdin_used+0x643>
  4022f4:	48 89 e7             	mov    %rsp,%rdi
  4022f7:	48 8d 0d 42 52 00 00 	lea    0x5242(%rip),%rcx        # 407540 <gets_buf>
  4022fe:	51                   	push   %rcx
  4022ff:	56                   	push   %rsi
  402300:	50                   	push   %rax
  402301:	52                   	push   %rdx
  402302:	49 89 e9             	mov    %rbp,%r9
  402305:	44 8b 05 24 4e 00 00 	mov    0x4e24(%rip),%r8d        # 407130 <target_id>
  40230c:	48 8d 0d 3a 23 00 00 	lea    0x233a(%rip),%rcx        # 40464d <_IO_stdin_used+0x64d>
  402313:	ba 00 20 00 00       	mov    $0x2000,%edx
  402318:	be 02 00 00 00       	mov    $0x2,%esi
  40231d:	b8 00 00 00 00       	mov    $0x0,%eax
  402322:	e8 f9 ee ff ff       	call   401220 <__sprintf_chk@plt>
  402327:	48 83 c4 20          	add    $0x20,%rsp
  40232b:	83 3d 4e 51 00 00 00 	cmpl   $0x0,0x514e(%rip)        # 407480 <notify>
  402332:	0f 84 ba 00 00 00    	je     4023f2 <notify_server+0x17c>
  402338:	48 89 e1             	mov    %rsp,%rcx
  40233b:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  402342:	00 
  402343:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402349:	48 8b 15 f8 4d 00 00 	mov    0x4df8(%rip),%rdx        # 407148 <lab>
  402350:	48 8b 35 f9 4d 00 00 	mov    0x4df9(%rip),%rsi        # 407150 <course>
  402357:	48 8b 3d e2 4d 00 00 	mov    0x4de2(%rip),%rdi        # 407140 <user_id>
  40235e:	e8 4e 12 00 00       	call   4035b1 <driver_post>
  402363:	85 c0                	test   %eax,%eax
  402365:	78 52                	js     4023b9 <notify_server+0x143>
  402367:	85 db                	test   %ebx,%ebx
  402369:	74 76                	je     4023e1 <notify_server+0x16b>
  40236b:	48 8d 3d 0e 1f 00 00 	lea    0x1f0e(%rip),%rdi        # 404280 <_IO_stdin_used+0x280>
  402372:	e8 09 ed ff ff       	call   401080 <puts@plt>
  402377:	48 8d 3d f7 22 00 00 	lea    0x22f7(%rip),%rdi        # 404675 <_IO_stdin_used+0x675>
  40237e:	e8 fd ec ff ff       	call   401080 <puts@plt>
  402383:	e9 f3 00 00 00       	jmp    40247b <notify_server+0x205>
  402388:	48 8d 35 c1 1e 00 00 	lea    0x1ec1(%rip),%rsi        # 404250 <_IO_stdin_used+0x250>
  40238f:	bf 02 00 00 00       	mov    $0x2,%edi
  402394:	e8 f7 ed ff ff       	call   401190 <__printf_chk@plt>
  402399:	bf 01 00 00 00       	mov    $0x1,%edi
  40239e:	e8 3d ee ff ff       	call   4011e0 <exit@plt>
  4023a3:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  4023a8:	e9 38 ff ff ff       	jmp    4022e5 <notify_server+0x6f>
  4023ad:	48 8d 2d 94 22 00 00 	lea    0x2294(%rip),%rbp        # 404648 <_IO_stdin_used+0x648>
  4023b4:	e9 3b ff ff ff       	jmp    4022f4 <notify_server+0x7e>
  4023b9:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  4023c0:	00 
  4023c1:	48 8d 35 a1 22 00 00 	lea    0x22a1(%rip),%rsi        # 404669 <_IO_stdin_used+0x669>
  4023c8:	bf 02 00 00 00       	mov    $0x2,%edi
  4023cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4023d2:	e8 b9 ed ff ff       	call   401190 <__printf_chk@plt>
  4023d7:	bf 01 00 00 00       	mov    $0x1,%edi
  4023dc:	e8 ff ed ff ff       	call   4011e0 <exit@plt>
  4023e1:	48 8d 3d 97 22 00 00 	lea    0x2297(%rip),%rdi        # 40467f <_IO_stdin_used+0x67f>
  4023e8:	e8 93 ec ff ff       	call   401080 <puts@plt>
  4023ed:	e9 89 00 00 00       	jmp    40247b <notify_server+0x205>
  4023f2:	48 89 ea             	mov    %rbp,%rdx
  4023f5:	48 8d 35 bc 1e 00 00 	lea    0x1ebc(%rip),%rsi        # 4042b8 <_IO_stdin_used+0x2b8>
  4023fc:	bf 02 00 00 00       	mov    $0x2,%edi
  402401:	b8 00 00 00 00       	mov    $0x0,%eax
  402406:	e8 85 ed ff ff       	call   401190 <__printf_chk@plt>
  40240b:	48 8b 15 2e 4d 00 00 	mov    0x4d2e(%rip),%rdx        # 407140 <user_id>
  402412:	48 8d 35 6d 22 00 00 	lea    0x226d(%rip),%rsi        # 404686 <_IO_stdin_used+0x686>
  402419:	bf 02 00 00 00       	mov    $0x2,%edi
  40241e:	b8 00 00 00 00       	mov    $0x0,%eax
  402423:	e8 68 ed ff ff       	call   401190 <__printf_chk@plt>
  402428:	48 8b 15 21 4d 00 00 	mov    0x4d21(%rip),%rdx        # 407150 <course>
  40242f:	48 8d 35 5d 22 00 00 	lea    0x225d(%rip),%rsi        # 404693 <_IO_stdin_used+0x693>
  402436:	bf 02 00 00 00       	mov    $0x2,%edi
  40243b:	b8 00 00 00 00       	mov    $0x0,%eax
  402440:	e8 4b ed ff ff       	call   401190 <__printf_chk@plt>
  402445:	48 8b 15 fc 4c 00 00 	mov    0x4cfc(%rip),%rdx        # 407148 <lab>
  40244c:	48 8d 35 4c 22 00 00 	lea    0x224c(%rip),%rsi        # 40469f <_IO_stdin_used+0x69f>
  402453:	bf 02 00 00 00       	mov    $0x2,%edi
  402458:	b8 00 00 00 00       	mov    $0x0,%eax
  40245d:	e8 2e ed ff ff       	call   401190 <__printf_chk@plt>
  402462:	48 89 e2             	mov    %rsp,%rdx
  402465:	48 8d 35 3c 22 00 00 	lea    0x223c(%rip),%rsi        # 4046a8 <_IO_stdin_used+0x6a8>
  40246c:	bf 02 00 00 00       	mov    $0x2,%edi
  402471:	b8 00 00 00 00       	mov    $0x0,%eax
  402476:	e8 15 ed ff ff       	call   401190 <__printf_chk@plt>
  40247b:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  402482:	00 
  402483:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40248a:	00 00 
  40248c:	75 0a                	jne    402498 <notify_server+0x222>
  40248e:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  402495:	5b                   	pop    %rbx
  402496:	5d                   	pop    %rbp
  402497:	c3                   	ret
  402498:	e8 72 02 00 00       	call   40270f <__stack_chk_fail>

000000000040249d <validate>:
  40249d:	f3 0f 1e fa          	endbr64
  4024a1:	53                   	push   %rbx
  4024a2:	89 fb                	mov    %edi,%ebx
  4024a4:	83 3d 85 50 00 00 00 	cmpl   $0x0,0x5085(%rip)        # 407530 <is_checker>
  4024ab:	74 79                	je     402526 <validate+0x89>
  4024ad:	39 3d 71 50 00 00    	cmp    %edi,0x5071(%rip)        # 407524 <vlevel>
  4024b3:	75 39                	jne    4024ee <validate+0x51>
  4024b5:	8b 15 65 50 00 00    	mov    0x5065(%rip),%edx        # 407520 <check_level>
  4024bb:	39 fa                	cmp    %edi,%edx
  4024bd:	75 45                	jne    402504 <validate+0x67>
  4024bf:	0f be 0d 82 5c 00 00 	movsbl 0x5c82(%rip),%ecx        # 408148 <target_prefix>
  4024c6:	4c 8d 0d 73 50 00 00 	lea    0x5073(%rip),%r9        # 407540 <gets_buf>
  4024cd:	41 89 f8             	mov    %edi,%r8d
  4024d0:	8b 15 52 50 00 00    	mov    0x5052(%rip),%edx        # 407528 <authkey>
  4024d6:	48 8d 35 2b 1e 00 00 	lea    0x1e2b(%rip),%rsi        # 404308 <_IO_stdin_used+0x308>
  4024dd:	bf 02 00 00 00       	mov    $0x2,%edi
  4024e2:	b8 00 00 00 00       	mov    $0x0,%eax
  4024e7:	e8 a4 ec ff ff       	call   401190 <__printf_chk@plt>
  4024ec:	5b                   	pop    %rbx
  4024ed:	c3                   	ret
  4024ee:	48 8d 3d bf 21 00 00 	lea    0x21bf(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  4024f5:	e8 86 eb ff ff       	call   401080 <puts@plt>
  4024fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4024ff:	e8 de fc ff ff       	call   4021e2 <check_fail>
  402504:	89 f9                	mov    %edi,%ecx
  402506:	48 8d 35 d3 1d 00 00 	lea    0x1dd3(%rip),%rsi        # 4042e0 <_IO_stdin_used+0x2e0>
  40250d:	bf 02 00 00 00       	mov    $0x2,%edi
  402512:	b8 00 00 00 00       	mov    $0x0,%eax
  402517:	e8 74 ec ff ff       	call   401190 <__printf_chk@plt>
  40251c:	b8 00 00 00 00       	mov    $0x0,%eax
  402521:	e8 bc fc ff ff       	call   4021e2 <check_fail>
  402526:	39 3d f8 4f 00 00    	cmp    %edi,0x4ff8(%rip)        # 407524 <vlevel>
  40252c:	74 1a                	je     402548 <validate+0xab>
  40252e:	48 8d 3d 7f 21 00 00 	lea    0x217f(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  402535:	e8 46 eb ff ff       	call   401080 <puts@plt>
  40253a:	89 de                	mov    %ebx,%esi
  40253c:	bf 00 00 00 00       	mov    $0x0,%edi
  402541:	e8 30 fd ff ff       	call   402276 <notify_server>
  402546:	eb a4                	jmp    4024ec <validate+0x4f>
  402548:	0f be 0d f9 5b 00 00 	movsbl 0x5bf9(%rip),%ecx        # 408148 <target_prefix>
  40254f:	89 fa                	mov    %edi,%edx
  402551:	48 8d 35 d8 1d 00 00 	lea    0x1dd8(%rip),%rsi        # 404330 <_IO_stdin_used+0x330>
  402558:	bf 02 00 00 00       	mov    $0x2,%edi
  40255d:	b8 00 00 00 00       	mov    $0x0,%eax
  402562:	e8 29 ec ff ff       	call   401190 <__printf_chk@plt>
  402567:	89 de                	mov    %ebx,%esi
  402569:	bf 01 00 00 00       	mov    $0x1,%edi
  40256e:	e8 03 fd ff ff       	call   402276 <notify_server>
  402573:	e9 74 ff ff ff       	jmp    4024ec <validate+0x4f>

0000000000402578 <fail>:
  402578:	f3 0f 1e fa          	endbr64
  40257c:	48 83 ec 08          	sub    $0x8,%rsp
  402580:	83 3d a9 4f 00 00 00 	cmpl   $0x0,0x4fa9(%rip)        # 407530 <is_checker>
  402587:	75 11                	jne    40259a <fail+0x22>
  402589:	89 fe                	mov    %edi,%esi
  40258b:	bf 00 00 00 00       	mov    $0x0,%edi
  402590:	e8 e1 fc ff ff       	call   402276 <notify_server>
  402595:	48 83 c4 08          	add    $0x8,%rsp
  402599:	c3                   	ret
  40259a:	b8 00 00 00 00       	mov    $0x0,%eax
  40259f:	e8 3e fc ff ff       	call   4021e2 <check_fail>

00000000004025a4 <bushandler>:
  4025a4:	f3 0f 1e fa          	endbr64
  4025a8:	50                   	push   %rax
  4025a9:	58                   	pop    %rax
  4025aa:	48 83 ec 08          	sub    $0x8,%rsp
  4025ae:	83 3d 7b 4f 00 00 00 	cmpl   $0x0,0x4f7b(%rip)        # 407530 <is_checker>
  4025b5:	74 16                	je     4025cd <bushandler+0x29>
  4025b7:	48 8d 3d 14 21 00 00 	lea    0x2114(%rip),%rdi        # 4046d2 <_IO_stdin_used+0x6d2>
  4025be:	e8 bd ea ff ff       	call   401080 <puts@plt>
  4025c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4025c8:	e8 15 fc ff ff       	call   4021e2 <check_fail>
  4025cd:	48 8d 3d 94 1d 00 00 	lea    0x1d94(%rip),%rdi        # 404368 <_IO_stdin_used+0x368>
  4025d4:	e8 a7 ea ff ff       	call   401080 <puts@plt>
  4025d9:	48 8d 3d fc 20 00 00 	lea    0x20fc(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  4025e0:	e8 9b ea ff ff       	call   401080 <puts@plt>
  4025e5:	be 00 00 00 00       	mov    $0x0,%esi
  4025ea:	bf 00 00 00 00       	mov    $0x0,%edi
  4025ef:	e8 82 fc ff ff       	call   402276 <notify_server>
  4025f4:	bf 01 00 00 00       	mov    $0x1,%edi
  4025f9:	e8 e2 eb ff ff       	call   4011e0 <exit@plt>

00000000004025fe <seghandler>:
  4025fe:	f3 0f 1e fa          	endbr64
  402602:	50                   	push   %rax
  402603:	58                   	pop    %rax
  402604:	48 83 ec 08          	sub    $0x8,%rsp
  402608:	83 3d 21 4f 00 00 00 	cmpl   $0x0,0x4f21(%rip)        # 407530 <is_checker>
  40260f:	74 16                	je     402627 <seghandler+0x29>
  402611:	48 8d 3d da 20 00 00 	lea    0x20da(%rip),%rdi        # 4046f2 <_IO_stdin_used+0x6f2>
  402618:	e8 63 ea ff ff       	call   401080 <puts@plt>
  40261d:	b8 00 00 00 00       	mov    $0x0,%eax
  402622:	e8 bb fb ff ff       	call   4021e2 <check_fail>
  402627:	48 8d 3d 5a 1d 00 00 	lea    0x1d5a(%rip),%rdi        # 404388 <_IO_stdin_used+0x388>
  40262e:	e8 4d ea ff ff       	call   401080 <puts@plt>
  402633:	48 8d 3d a2 20 00 00 	lea    0x20a2(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  40263a:	e8 41 ea ff ff       	call   401080 <puts@plt>
  40263f:	be 00 00 00 00       	mov    $0x0,%esi
  402644:	bf 00 00 00 00       	mov    $0x0,%edi
  402649:	e8 28 fc ff ff       	call   402276 <notify_server>
  40264e:	bf 01 00 00 00       	mov    $0x1,%edi
  402653:	e8 88 eb ff ff       	call   4011e0 <exit@plt>

0000000000402658 <illegalhandler>:
  402658:	f3 0f 1e fa          	endbr64
  40265c:	50                   	push   %rax
  40265d:	58                   	pop    %rax
  40265e:	48 83 ec 08          	sub    $0x8,%rsp
  402662:	83 3d c7 4e 00 00 00 	cmpl   $0x0,0x4ec7(%rip)        # 407530 <is_checker>
  402669:	74 16                	je     402681 <illegalhandler+0x29>
  40266b:	48 8d 3d 93 20 00 00 	lea    0x2093(%rip),%rdi        # 404705 <_IO_stdin_used+0x705>
  402672:	e8 09 ea ff ff       	call   401080 <puts@plt>
  402677:	b8 00 00 00 00       	mov    $0x0,%eax
  40267c:	e8 61 fb ff ff       	call   4021e2 <check_fail>
  402681:	48 8d 3d 28 1d 00 00 	lea    0x1d28(%rip),%rdi        # 4043b0 <_IO_stdin_used+0x3b0>
  402688:	e8 f3 e9 ff ff       	call   401080 <puts@plt>
  40268d:	48 8d 3d 48 20 00 00 	lea    0x2048(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  402694:	e8 e7 e9 ff ff       	call   401080 <puts@plt>
  402699:	be 00 00 00 00       	mov    $0x0,%esi
  40269e:	bf 00 00 00 00       	mov    $0x0,%edi
  4026a3:	e8 ce fb ff ff       	call   402276 <notify_server>
  4026a8:	bf 01 00 00 00       	mov    $0x1,%edi
  4026ad:	e8 2e eb ff ff       	call   4011e0 <exit@plt>

00000000004026b2 <sigalrmhandler>:
  4026b2:	f3 0f 1e fa          	endbr64
  4026b6:	50                   	push   %rax
  4026b7:	58                   	pop    %rax
  4026b8:	48 83 ec 08          	sub    $0x8,%rsp
  4026bc:	83 3d 6d 4e 00 00 00 	cmpl   $0x0,0x4e6d(%rip)        # 407530 <is_checker>
  4026c3:	74 16                	je     4026db <sigalrmhandler+0x29>
  4026c5:	48 8d 3d 4d 20 00 00 	lea    0x204d(%rip),%rdi        # 404719 <_IO_stdin_used+0x719>
  4026cc:	e8 af e9 ff ff       	call   401080 <puts@plt>
  4026d1:	b8 00 00 00 00       	mov    $0x0,%eax
  4026d6:	e8 07 fb ff ff       	call   4021e2 <check_fail>
  4026db:	ba 02 00 00 00       	mov    $0x2,%edx
  4026e0:	48 8d 35 f9 1c 00 00 	lea    0x1cf9(%rip),%rsi        # 4043e0 <_IO_stdin_used+0x3e0>
  4026e7:	bf 02 00 00 00       	mov    $0x2,%edi
  4026ec:	b8 00 00 00 00       	mov    $0x0,%eax
  4026f1:	e8 9a ea ff ff       	call   401190 <__printf_chk@plt>
  4026f6:	be 00 00 00 00       	mov    $0x0,%esi
  4026fb:	bf 00 00 00 00       	mov    $0x0,%edi
  402700:	e8 71 fb ff ff       	call   402276 <notify_server>
  402705:	bf 01 00 00 00       	mov    $0x1,%edi
  40270a:	e8 d1 ea ff ff       	call   4011e0 <exit@plt>

000000000040270f <__stack_chk_fail>:
  40270f:	f3 0f 1e fa          	endbr64
  402713:	50                   	push   %rax
  402714:	58                   	pop    %rax
  402715:	48 83 ec 08          	sub    $0x8,%rsp
  402719:	83 3d 10 4e 00 00 00 	cmpl   $0x0,0x4e10(%rip)        # 407530 <is_checker>
  402720:	74 16                	je     402738 <__stack_chk_fail+0x29>
  402722:	48 8d 3d f8 1f 00 00 	lea    0x1ff8(%rip),%rdi        # 404721 <_IO_stdin_used+0x721>
  402729:	e8 52 e9 ff ff       	call   401080 <puts@plt>
  40272e:	b8 00 00 00 00       	mov    $0x0,%eax
  402733:	e8 aa fa ff ff       	call   4021e2 <check_fail>
  402738:	48 8d 3d d9 1c 00 00 	lea    0x1cd9(%rip),%rdi        # 404418 <_IO_stdin_used+0x418>
  40273f:	e8 3c e9 ff ff       	call   401080 <puts@plt>
  402744:	48 8d 3d 91 1f 00 00 	lea    0x1f91(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  40274b:	e8 30 e9 ff ff       	call   401080 <puts@plt>
  402750:	be 00 00 00 00       	mov    $0x0,%esi
  402755:	bf 00 00 00 00       	mov    $0x0,%edi
  40275a:	e8 17 fb ff ff       	call   402276 <notify_server>
  40275f:	bf 01 00 00 00       	mov    $0x1,%edi
  402764:	e8 77 ea ff ff       	call   4011e0 <exit@plt>

0000000000402769 <launch>:
  402769:	f3 0f 1e fa          	endbr64
  40276d:	55                   	push   %rbp
  40276e:	48 89 e5             	mov    %rsp,%rbp
  402771:	53                   	push   %rbx
  402772:	48 83 ec 18          	sub    $0x18,%rsp
  402776:	48 89 fa             	mov    %rdi,%rdx
  402779:	89 f3                	mov    %esi,%ebx
  40277b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402782:	00 00 
  402784:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402788:	31 c0                	xor    %eax,%eax
  40278a:	48 8d 47 17          	lea    0x17(%rdi),%rax
  40278e:	48 89 c6             	mov    %rax,%rsi
  402791:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  402795:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  40279b:	48 89 e1             	mov    %rsp,%rcx
  40279e:	48 29 c1             	sub    %rax,%rcx
  4027a1:	48 39 cc             	cmp    %rcx,%rsp
  4027a4:	74 12                	je     4027b8 <launch+0x4f>
  4027a6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4027ad:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  4027b4:	00 00 
  4027b6:	eb e9                	jmp    4027a1 <launch+0x38>
  4027b8:	48 89 f0             	mov    %rsi,%rax
  4027bb:	25 ff 0f 00 00       	and    $0xfff,%eax
  4027c0:	48 29 c4             	sub    %rax,%rsp
  4027c3:	48 85 c0             	test   %rax,%rax
  4027c6:	74 06                	je     4027ce <launch+0x65>
  4027c8:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  4027ce:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4027d3:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4027d7:	48 89 d1             	mov    %rdx,%rcx
  4027da:	be f4 00 00 00       	mov    $0xf4,%esi
  4027df:	e8 ec e9 ff ff       	call   4011d0 <__memset_chk@plt>
  4027e4:	48 8b 05 b5 4c 00 00 	mov    0x4cb5(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  4027eb:	48 39 05 26 4d 00 00 	cmp    %rax,0x4d26(%rip)        # 407518 <infile>
  4027f2:	74 42                	je     402836 <launch+0xcd>
  4027f4:	c7 05 26 4d 00 00 00 	movl   $0x0,0x4d26(%rip)        # 407524 <vlevel>
  4027fb:	00 00 00 
  4027fe:	85 db                	test   %ebx,%ebx
  402800:	75 4c                	jne    40284e <launch+0xe5>
  402802:	b8 00 00 00 00       	mov    $0x0,%eax
  402807:	e8 c7 f6 ff ff       	call   401ed3 <test>
  40280c:	83 3d 1d 4d 00 00 00 	cmpl   $0x0,0x4d1d(%rip)        # 407530 <is_checker>
  402813:	75 45                	jne    40285a <launch+0xf1>
  402815:	48 8d 3d 2c 1f 00 00 	lea    0x1f2c(%rip),%rdi        # 404748 <_IO_stdin_used+0x748>
  40281c:	e8 5f e8 ff ff       	call   401080 <puts@plt>
  402821:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402825:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40282c:	00 00 
  40282e:	75 40                	jne    402870 <launch+0x107>
  402830:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402834:	c9                   	leave
  402835:	c3                   	ret
  402836:	48 8d 35 f3 1e 00 00 	lea    0x1ef3(%rip),%rsi        # 404730 <_IO_stdin_used+0x730>
  40283d:	bf 02 00 00 00       	mov    $0x2,%edi
  402842:	b8 00 00 00 00       	mov    $0x0,%eax
  402847:	e8 44 e9 ff ff       	call   401190 <__printf_chk@plt>
  40284c:	eb a6                	jmp    4027f4 <launch+0x8b>
  40284e:	b8 00 00 00 00       	mov    $0x0,%eax
  402853:	e8 aa f6 ff ff       	call   401f02 <test2>
  402858:	eb b2                	jmp    40280c <launch+0xa3>
  40285a:	48 8d 3d dc 1e 00 00 	lea    0x1edc(%rip),%rdi        # 40473d <_IO_stdin_used+0x73d>
  402861:	e8 1a e8 ff ff       	call   401080 <puts@plt>
  402866:	b8 00 00 00 00       	mov    $0x0,%eax
  40286b:	e8 72 f9 ff ff       	call   4021e2 <check_fail>
  402870:	e8 9a fe ff ff       	call   40270f <__stack_chk_fail>

0000000000402875 <stable_launch>:
  402875:	f3 0f 1e fa          	endbr64
  402879:	55                   	push   %rbp
  40287a:	53                   	push   %rbx
  40287b:	48 83 ec 08          	sub    $0x8,%rsp
  40287f:	89 f5                	mov    %esi,%ebp
  402881:	48 89 3d 88 4c 00 00 	mov    %rdi,0x4c88(%rip)        # 407510 <global_offset>
  402888:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40288e:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402894:	b9 32 01 00 00       	mov    $0x132,%ecx
  402899:	ba 07 00 00 00       	mov    $0x7,%edx
  40289e:	be 00 00 10 00       	mov    $0x100000,%esi
  4028a3:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4028a8:	e8 03 e8 ff ff       	call   4010b0 <mmap@plt>
  4028ad:	48 89 c3             	mov    %rax,%rbx
  4028b0:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4028b6:	75 4a                	jne    402902 <stable_launch+0x8d>
  4028b8:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4028bf:	48 89 15 42 4c 00 00 	mov    %rdx,0x4c42(%rip)        # 407508 <stack_top>
  4028c6:	48 89 e0             	mov    %rsp,%rax
  4028c9:	48 89 d4             	mov    %rdx,%rsp
  4028cc:	48 89 c2             	mov    %rax,%rdx
  4028cf:	48 89 15 2a 4c 00 00 	mov    %rdx,0x4c2a(%rip)        # 407500 <global_save_stack>
  4028d6:	89 ee                	mov    %ebp,%esi
  4028d8:	48 8b 3d 31 4c 00 00 	mov    0x4c31(%rip),%rdi        # 407510 <global_offset>
  4028df:	e8 85 fe ff ff       	call   402769 <launch>
  4028e4:	48 8b 05 15 4c 00 00 	mov    0x4c15(%rip),%rax        # 407500 <global_save_stack>
  4028eb:	48 89 c4             	mov    %rax,%rsp
  4028ee:	be 00 00 10 00       	mov    $0x100000,%esi
  4028f3:	48 89 df             	mov    %rbx,%rdi
  4028f6:	e8 85 e8 ff ff       	call   401180 <munmap@plt>
  4028fb:	48 83 c4 08          	add    $0x8,%rsp
  4028ff:	5b                   	pop    %rbx
  402900:	5d                   	pop    %rbp
  402901:	c3                   	ret
  402902:	be 00 00 10 00       	mov    $0x100000,%esi
  402907:	48 89 c7             	mov    %rax,%rdi
  40290a:	e8 71 e8 ff ff       	call   401180 <munmap@plt>
  40290f:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402914:	48 8d 15 25 1b 00 00 	lea    0x1b25(%rip),%rdx        # 404440 <_IO_stdin_used+0x440>
  40291b:	be 02 00 00 00       	mov    $0x2,%esi
  402920:	48 8b 3d b9 4b 00 00 	mov    0x4bb9(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402927:	b8 00 00 00 00       	mov    $0x0,%eax
  40292c:	e8 cf e8 ff ff       	call   401200 <__fprintf_chk@plt>
  402931:	bf 01 00 00 00       	mov    $0x1,%edi
  402936:	e8 a5 e8 ff ff       	call   4011e0 <exit@plt>

000000000040293b <rio_readinitb>:
  40293b:	89 37                	mov    %esi,(%rdi)
  40293d:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402944:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402948:	48 89 47 08          	mov    %rax,0x8(%rdi)
  40294c:	c3                   	ret

000000000040294d <sigalrm_handler>:
  40294d:	f3 0f 1e fa          	endbr64
  402951:	50                   	push   %rax
  402952:	58                   	pop    %rax
  402953:	48 83 ec 08          	sub    $0x8,%rsp
  402957:	b9 00 00 00 00       	mov    $0x0,%ecx
  40295c:	48 8d 15 05 1b 00 00 	lea    0x1b05(%rip),%rdx        # 404468 <_IO_stdin_used+0x468>
  402963:	be 02 00 00 00       	mov    $0x2,%esi
  402968:	48 8b 3d 71 4b 00 00 	mov    0x4b71(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  40296f:	b8 00 00 00 00       	mov    $0x0,%eax
  402974:	e8 87 e8 ff ff       	call   401200 <__fprintf_chk@plt>
  402979:	bf 01 00 00 00       	mov    $0x1,%edi
  40297e:	e8 5d e8 ff ff       	call   4011e0 <exit@plt>

0000000000402983 <rio_writen>:
  402983:	41 55                	push   %r13
  402985:	41 54                	push   %r12
  402987:	55                   	push   %rbp
  402988:	53                   	push   %rbx
  402989:	48 83 ec 08          	sub    $0x8,%rsp
  40298d:	41 89 fc             	mov    %edi,%r12d
  402990:	48 89 f5             	mov    %rsi,%rbp
  402993:	49 89 d5             	mov    %rdx,%r13
  402996:	48 89 d3             	mov    %rdx,%rbx
  402999:	eb 06                	jmp    4029a1 <rio_writen+0x1e>
  40299b:	48 29 c3             	sub    %rax,%rbx
  40299e:	48 01 c5             	add    %rax,%rbp
  4029a1:	48 85 db             	test   %rbx,%rbx
  4029a4:	74 24                	je     4029ca <rio_writen+0x47>
  4029a6:	48 89 da             	mov    %rbx,%rdx
  4029a9:	48 89 ee             	mov    %rbp,%rsi
  4029ac:	44 89 e7             	mov    %r12d,%edi
  4029af:	e8 dc e6 ff ff       	call   401090 <write@plt>
  4029b4:	48 85 c0             	test   %rax,%rax
  4029b7:	7f e2                	jg     40299b <rio_writen+0x18>
  4029b9:	e8 72 e6 ff ff       	call   401030 <__errno_location@plt>
  4029be:	83 38 04             	cmpl   $0x4,(%rax)
  4029c1:	75 15                	jne    4029d8 <rio_writen+0x55>
  4029c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4029c8:	eb d1                	jmp    40299b <rio_writen+0x18>
  4029ca:	4c 89 e8             	mov    %r13,%rax
  4029cd:	48 83 c4 08          	add    $0x8,%rsp
  4029d1:	5b                   	pop    %rbx
  4029d2:	5d                   	pop    %rbp
  4029d3:	41 5c                	pop    %r12
  4029d5:	41 5d                	pop    %r13
  4029d7:	c3                   	ret
  4029d8:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4029df:	eb ec                	jmp    4029cd <rio_writen+0x4a>

00000000004029e1 <rio_read>:
  4029e1:	41 55                	push   %r13
  4029e3:	41 54                	push   %r12
  4029e5:	55                   	push   %rbp
  4029e6:	53                   	push   %rbx
  4029e7:	48 83 ec 08          	sub    $0x8,%rsp
  4029eb:	48 89 fb             	mov    %rdi,%rbx
  4029ee:	49 89 f5             	mov    %rsi,%r13
  4029f1:	49 89 d4             	mov    %rdx,%r12
  4029f4:	eb 0a                	jmp    402a00 <rio_read+0x1f>
  4029f6:	e8 35 e6 ff ff       	call   401030 <__errno_location@plt>
  4029fb:	83 38 04             	cmpl   $0x4,(%rax)
  4029fe:	75 5f                	jne    402a5f <rio_read+0x7e>
  402a00:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402a03:	85 ed                	test   %ebp,%ebp
  402a05:	7f 22                	jg     402a29 <rio_read+0x48>
  402a07:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402a0b:	8b 3b                	mov    (%rbx),%edi
  402a0d:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a12:	48 89 ee             	mov    %rbp,%rsi
  402a15:	e8 c6 e6 ff ff       	call   4010e0 <read@plt>
  402a1a:	89 43 04             	mov    %eax,0x4(%rbx)
  402a1d:	85 c0                	test   %eax,%eax
  402a1f:	78 d5                	js     4029f6 <rio_read+0x15>
  402a21:	74 45                	je     402a68 <rio_read+0x87>
  402a23:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402a27:	eb d7                	jmp    402a00 <rio_read+0x1f>
  402a29:	89 e8                	mov    %ebp,%eax
  402a2b:	4c 39 e0             	cmp    %r12,%rax
  402a2e:	72 03                	jb     402a33 <rio_read+0x52>
  402a30:	44 89 e5             	mov    %r12d,%ebp
  402a33:	4c 63 e5             	movslq %ebp,%r12
  402a36:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402a3a:	4c 89 e2             	mov    %r12,%rdx
  402a3d:	4c 89 ef             	mov    %r13,%rdi
  402a40:	e8 fb e6 ff ff       	call   401140 <memcpy@plt>
  402a45:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402a49:	8b 43 04             	mov    0x4(%rbx),%eax
  402a4c:	29 e8                	sub    %ebp,%eax
  402a4e:	89 43 04             	mov    %eax,0x4(%rbx)
  402a51:	4c 89 e0             	mov    %r12,%rax
  402a54:	48 83 c4 08          	add    $0x8,%rsp
  402a58:	5b                   	pop    %rbx
  402a59:	5d                   	pop    %rbp
  402a5a:	41 5c                	pop    %r12
  402a5c:	41 5d                	pop    %r13
  402a5e:	c3                   	ret
  402a5f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402a66:	eb ec                	jmp    402a54 <rio_read+0x73>
  402a68:	b8 00 00 00 00       	mov    $0x0,%eax
  402a6d:	eb e5                	jmp    402a54 <rio_read+0x73>

0000000000402a6f <rio_readlineb>:
  402a6f:	41 55                	push   %r13
  402a71:	41 54                	push   %r12
  402a73:	55                   	push   %rbp
  402a74:	53                   	push   %rbx
  402a75:	48 83 ec 18          	sub    $0x18,%rsp
  402a79:	49 89 fd             	mov    %rdi,%r13
  402a7c:	48 89 f5             	mov    %rsi,%rbp
  402a7f:	49 89 d4             	mov    %rdx,%r12
  402a82:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a89:	00 00 
  402a8b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402a90:	31 c0                	xor    %eax,%eax
  402a92:	bb 01 00 00 00       	mov    $0x1,%ebx
  402a97:	eb 18                	jmp    402ab1 <rio_readlineb+0x42>
  402a99:	85 c0                	test   %eax,%eax
  402a9b:	75 65                	jne    402b02 <rio_readlineb+0x93>
  402a9d:	48 83 fb 01          	cmp    $0x1,%rbx
  402aa1:	75 3d                	jne    402ae0 <rio_readlineb+0x71>
  402aa3:	b8 00 00 00 00       	mov    $0x0,%eax
  402aa8:	eb 3d                	jmp    402ae7 <rio_readlineb+0x78>
  402aaa:	48 83 c3 01          	add    $0x1,%rbx
  402aae:	48 89 d5             	mov    %rdx,%rbp
  402ab1:	4c 39 e3             	cmp    %r12,%rbx
  402ab4:	73 2a                	jae    402ae0 <rio_readlineb+0x71>
  402ab6:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402abb:	ba 01 00 00 00       	mov    $0x1,%edx
  402ac0:	4c 89 ef             	mov    %r13,%rdi
  402ac3:	e8 19 ff ff ff       	call   4029e1 <rio_read>
  402ac8:	83 f8 01             	cmp    $0x1,%eax
  402acb:	75 cc                	jne    402a99 <rio_readlineb+0x2a>
  402acd:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402ad1:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402ad6:	88 45 00             	mov    %al,0x0(%rbp)
  402ad9:	3c 0a                	cmp    $0xa,%al
  402adb:	75 cd                	jne    402aaa <rio_readlineb+0x3b>
  402add:	48 89 d5             	mov    %rdx,%rbp
  402ae0:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402ae4:	48 89 d8             	mov    %rbx,%rax
  402ae7:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402aec:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402af3:	00 00 
  402af5:	75 14                	jne    402b0b <rio_readlineb+0x9c>
  402af7:	48 83 c4 18          	add    $0x18,%rsp
  402afb:	5b                   	pop    %rbx
  402afc:	5d                   	pop    %rbp
  402afd:	41 5c                	pop    %r12
  402aff:	41 5d                	pop    %r13
  402b01:	c3                   	ret
  402b02:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402b09:	eb dc                	jmp    402ae7 <rio_readlineb+0x78>
  402b0b:	e8 ff fb ff ff       	call   40270f <__stack_chk_fail>

0000000000402b10 <urlencode>:
  402b10:	41 54                	push   %r12
  402b12:	55                   	push   %rbp
  402b13:	53                   	push   %rbx
  402b14:	48 83 ec 10          	sub    $0x10,%rsp
  402b18:	48 89 fb             	mov    %rdi,%rbx
  402b1b:	48 89 f5             	mov    %rsi,%rbp
  402b1e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402b25:	00 00 
  402b27:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402b2c:	31 c0                	xor    %eax,%eax
  402b2e:	e8 6d e5 ff ff       	call   4010a0 <strlen@plt>
  402b33:	eb 0f                	jmp    402b44 <urlencode+0x34>
  402b35:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402b39:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402b3d:	48 83 c3 01          	add    $0x1,%rbx
  402b41:	44 89 e0             	mov    %r12d,%eax
  402b44:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402b48:	85 c0                	test   %eax,%eax
  402b4a:	0f 84 a8 00 00 00    	je     402bf8 <urlencode+0xe8>
  402b50:	44 0f b6 03          	movzbl (%rbx),%r8d
  402b54:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402b58:	0f 94 c0             	sete   %al
  402b5b:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402b5f:	0f 94 c2             	sete   %dl
  402b62:	08 d0                	or     %dl,%al
  402b64:	75 cf                	jne    402b35 <urlencode+0x25>
  402b66:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402b6a:	74 c9                	je     402b35 <urlencode+0x25>
  402b6c:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402b70:	74 c3                	je     402b35 <urlencode+0x25>
  402b72:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402b76:	3c 09                	cmp    $0x9,%al
  402b78:	76 bb                	jbe    402b35 <urlencode+0x25>
  402b7a:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402b7e:	3c 19                	cmp    $0x19,%al
  402b80:	76 b3                	jbe    402b35 <urlencode+0x25>
  402b82:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402b86:	3c 19                	cmp    $0x19,%al
  402b88:	76 ab                	jbe    402b35 <urlencode+0x25>
  402b8a:	41 80 f8 20          	cmp    $0x20,%r8b
  402b8e:	74 56                	je     402be6 <urlencode+0xd6>
  402b90:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402b94:	3c 5f                	cmp    $0x5f,%al
  402b96:	0f 96 c0             	setbe  %al
  402b99:	41 80 f8 09          	cmp    $0x9,%r8b
  402b9d:	0f 94 c2             	sete   %dl
  402ba0:	08 d0                	or     %dl,%al
  402ba2:	74 4f                	je     402bf3 <urlencode+0xe3>
  402ba4:	48 89 e7             	mov    %rsp,%rdi
  402ba7:	45 0f b6 c0          	movzbl %r8b,%r8d
  402bab:	48 8d 0d a4 1b 00 00 	lea    0x1ba4(%rip),%rcx        # 404756 <_IO_stdin_used+0x756>
  402bb2:	ba 08 00 00 00       	mov    $0x8,%edx
  402bb7:	be 02 00 00 00       	mov    $0x2,%esi
  402bbc:	b8 00 00 00 00       	mov    $0x0,%eax
  402bc1:	e8 5a e6 ff ff       	call   401220 <__sprintf_chk@plt>
  402bc6:	0f b6 04 24          	movzbl (%rsp),%eax
  402bca:	88 45 00             	mov    %al,0x0(%rbp)
  402bcd:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402bd2:	88 45 01             	mov    %al,0x1(%rbp)
  402bd5:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402bda:	88 45 02             	mov    %al,0x2(%rbp)
  402bdd:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402be1:	e9 57 ff ff ff       	jmp    402b3d <urlencode+0x2d>
  402be6:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402bea:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402bee:	e9 4a ff ff ff       	jmp    402b3d <urlencode+0x2d>
  402bf3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bf8:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402bfd:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402c04:	00 00 
  402c06:	75 09                	jne    402c11 <urlencode+0x101>
  402c08:	48 83 c4 10          	add    $0x10,%rsp
  402c0c:	5b                   	pop    %rbx
  402c0d:	5d                   	pop    %rbp
  402c0e:	41 5c                	pop    %r12
  402c10:	c3                   	ret
  402c11:	e8 f9 fa ff ff       	call   40270f <__stack_chk_fail>

0000000000402c16 <submitr>:
  402c16:	f3 0f 1e fa          	endbr64
  402c1a:	41 57                	push   %r15
  402c1c:	41 56                	push   %r14
  402c1e:	41 55                	push   %r13
  402c20:	41 54                	push   %r12
  402c22:	55                   	push   %rbp
  402c23:	53                   	push   %rbx
  402c24:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402c2b:	ff 
  402c2c:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402c33:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402c38:	4c 39 dc             	cmp    %r11,%rsp
  402c3b:	75 ef                	jne    402c2c <submitr+0x16>
  402c3d:	48 83 ec 68          	sub    $0x68,%rsp
  402c41:	49 89 fd             	mov    %rdi,%r13
  402c44:	41 89 f6             	mov    %esi,%r14d
  402c47:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  402c4c:	49 89 cc             	mov    %rcx,%r12
  402c4f:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402c54:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
  402c59:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
  402c60:	00 
  402c61:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402c68:	00 00 
  402c6a:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402c71:	00 
  402c72:	31 c0                	xor    %eax,%eax
  402c74:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402c7b:	00 
  402c7c:	ba 00 00 00 00       	mov    $0x0,%edx
  402c81:	be 01 00 00 00       	mov    $0x1,%esi
  402c86:	bf 02 00 00 00       	mov    $0x2,%edi
  402c8b:	e8 a0 e5 ff ff       	call   401230 <socket@plt>
  402c90:	85 c0                	test   %eax,%eax
  402c92:	0f 88 72 02 00 00    	js     402f0a <submitr+0x2f4>
  402c98:	89 c3                	mov    %eax,%ebx
  402c9a:	4c 89 ef             	mov    %r13,%rdi
  402c9d:	e8 6e e4 ff ff       	call   401110 <gethostbyname@plt>
  402ca2:	48 85 c0             	test   %rax,%rax
  402ca5:	0f 84 ab 02 00 00    	je     402f56 <submitr+0x340>
  402cab:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
  402cb0:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402cb4:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  402cb9:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402cc0:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402cc4:	48 8b 40 18          	mov    0x18(%rax),%rax
  402cc8:	48 8b 30             	mov    (%rax),%rsi
  402ccb:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402cd0:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402cd5:	e8 46 e4 ff ff       	call   401120 <__memmove_chk@plt>
  402cda:	66 41 c1 c6 08       	rol    $0x8,%r14w
  402cdf:	66 44 89 74 24 32    	mov    %r14w,0x32(%rsp)
  402ce5:	ba 10 00 00 00       	mov    $0x10,%edx
  402cea:	48 89 ee             	mov    %rbp,%rsi
  402ced:	89 df                	mov    %ebx,%edi
  402cef:	e8 fc e4 ff ff       	call   4011f0 <connect@plt>
  402cf4:	85 c0                	test   %eax,%eax
  402cf6:	0f 88 cc 02 00 00    	js     402fc8 <submitr+0x3b2>
  402cfc:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402d01:	e8 9a e3 ff ff       	call   4010a0 <strlen@plt>
  402d06:	49 89 c6             	mov    %rax,%r14
  402d09:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402d0e:	e8 8d e3 ff ff       	call   4010a0 <strlen@plt>
  402d13:	48 89 c5             	mov    %rax,%rbp
  402d16:	4c 89 e7             	mov    %r12,%rdi
  402d19:	e8 82 e3 ff ff       	call   4010a0 <strlen@plt>
  402d1e:	48 01 c5             	add    %rax,%rbp
  402d21:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402d26:	e8 75 e3 ff ff       	call   4010a0 <strlen@plt>
  402d2b:	48 01 c5             	add    %rax,%rbp
  402d2e:	4b 8d 04 76          	lea    (%r14,%r14,2),%rax
  402d32:	48 8d 84 05 80 00 00 	lea    0x80(%rbp,%rax,1),%rax
  402d39:	00 
  402d3a:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402d40:	0f 87 e6 02 00 00    	ja     40302c <submitr+0x416>
  402d46:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402d4d:	00 
  402d4e:	b9 00 04 00 00       	mov    $0x400,%ecx
  402d53:	b8 00 00 00 00       	mov    $0x0,%eax
  402d58:	48 89 f7             	mov    %rsi,%rdi
  402d5b:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402d5e:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402d63:	e8 a8 fd ff ff       	call   402b10 <urlencode>
  402d68:	85 c0                	test   %eax,%eax
  402d6a:	0f 88 2e 03 00 00    	js     40309e <submitr+0x488>
  402d70:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
  402d77:	00 
  402d78:	48 83 ec 08          	sub    $0x8,%rsp
  402d7c:	41 55                	push   %r13
  402d7e:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402d85:	00 
  402d86:	50                   	push   %rax
  402d87:	41 54                	push   %r12
  402d89:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
  402d8e:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
  402d93:	48 8d 0d f6 16 00 00 	lea    0x16f6(%rip),%rcx        # 404490 <_IO_stdin_used+0x490>
  402d9a:	ba 00 20 00 00       	mov    $0x2000,%edx
  402d9f:	be 02 00 00 00       	mov    $0x2,%esi
  402da4:	48 89 ef             	mov    %rbp,%rdi
  402da7:	b8 00 00 00 00       	mov    $0x0,%eax
  402dac:	e8 6f e4 ff ff       	call   401220 <__sprintf_chk@plt>
  402db1:	48 83 c4 20          	add    $0x20,%rsp
  402db5:	48 89 ef             	mov    %rbp,%rdi
  402db8:	e8 e3 e2 ff ff       	call   4010a0 <strlen@plt>
  402dbd:	48 89 c2             	mov    %rax,%rdx
  402dc0:	48 89 ee             	mov    %rbp,%rsi
  402dc3:	89 df                	mov    %ebx,%edi
  402dc5:	e8 b9 fb ff ff       	call   402983 <rio_writen>
  402dca:	48 85 c0             	test   %rax,%rax
  402dcd:	0f 88 53 03 00 00    	js     403126 <submitr+0x510>
  402dd3:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  402dd8:	89 de                	mov    %ebx,%esi
  402dda:	48 89 ef             	mov    %rbp,%rdi
  402ddd:	e8 59 fb ff ff       	call   40293b <rio_readinitb>
  402de2:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402de9:	00 
  402dea:	ba 00 20 00 00       	mov    $0x2000,%edx
  402def:	48 89 ef             	mov    %rbp,%rdi
  402df2:	e8 78 fc ff ff       	call   402a6f <rio_readlineb>
  402df7:	48 85 c0             	test   %rax,%rax
  402dfa:	0f 8e 92 03 00 00    	jle    403192 <submitr+0x57c>
  402e00:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402e05:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402e0c:	00 
  402e0d:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402e14:	00 
  402e15:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402e1c:	00 
  402e1d:	48 8d 35 39 19 00 00 	lea    0x1939(%rip),%rsi        # 40475d <_IO_stdin_used+0x75d>
  402e24:	b8 00 00 00 00       	mov    $0x0,%eax
  402e29:	e8 42 e3 ff ff       	call   401170 <__isoc99_sscanf@plt>
  402e2e:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402e35:	00 
  402e36:	48 8d 35 37 19 00 00 	lea    0x1937(%rip),%rsi        # 404774 <_IO_stdin_used+0x774>
  402e3d:	e8 ae e2 ff ff       	call   4010f0 <strcmp@plt>
  402e42:	85 c0                	test   %eax,%eax
  402e44:	0f 84 c8 03 00 00    	je     403212 <submitr+0x5fc>
  402e4a:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402e51:	00 
  402e52:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402e57:	ba 00 20 00 00       	mov    $0x2000,%edx
  402e5c:	e8 0e fc ff ff       	call   402a6f <rio_readlineb>
  402e61:	48 85 c0             	test   %rax,%rax
  402e64:	7f c8                	jg     402e2e <submitr+0x218>
  402e66:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402e6d:	3a 20 43 
  402e70:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402e77:	20 75 6e 
  402e7a:	49 89 07             	mov    %rax,(%r15)
  402e7d:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402e81:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402e88:	74 6f 20 
  402e8b:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402e92:	68 65 61 
  402e95:	49 89 47 10          	mov    %rax,0x10(%r15)
  402e99:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402e9d:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402ea4:	66 72 6f 
  402ea7:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402eae:	6f 6c 61 
  402eb1:	49 89 47 20          	mov    %rax,0x20(%r15)
  402eb5:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402eb9:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402ec0:	6c 61 62 
  402ec3:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402eca:	65 72 00 
  402ecd:	49 89 47 29          	mov    %rax,0x29(%r15)
  402ed1:	49 89 57 31          	mov    %rdx,0x31(%r15)
  402ed5:	89 df                	mov    %ebx,%edi
  402ed7:	e8 f4 e1 ff ff       	call   4010d0 <close@plt>
  402edc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ee1:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
  402ee8:	00 
  402ee9:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402ef0:	00 00 
  402ef2:	0f 85 67 04 00 00    	jne    40335f <submitr+0x749>
  402ef8:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402eff:	5b                   	pop    %rbx
  402f00:	5d                   	pop    %rbp
  402f01:	41 5c                	pop    %r12
  402f03:	41 5d                	pop    %r13
  402f05:	41 5e                	pop    %r14
  402f07:	41 5f                	pop    %r15
  402f09:	c3                   	ret
  402f0a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f11:	3a 20 43 
  402f14:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402f1b:	20 75 6e 
  402f1e:	49 89 07             	mov    %rax,(%r15)
  402f21:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402f25:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f2c:	74 6f 20 
  402f2f:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402f36:	65 20 73 
  402f39:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f3d:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f41:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  402f48:	65 74 00 
  402f4b:	49 89 47 1e          	mov    %rax,0x1e(%r15)
  402f4f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f54:	eb 8b                	jmp    402ee1 <submitr+0x2cb>
  402f56:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402f5d:	3a 20 44 
  402f60:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402f67:	20 75 6e 
  402f6a:	49 89 07             	mov    %rax,(%r15)
  402f6d:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402f71:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f78:	74 6f 20 
  402f7b:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402f82:	76 65 20 
  402f85:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f89:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f8d:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402f94:	61 62 20 
  402f97:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402f9e:	72 20 61 
  402fa1:	49 89 47 20          	mov    %rax,0x20(%r15)
  402fa5:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402fa9:	48 b8 61 64 64 72 65 	movabs $0x73736572646461,%rax
  402fb0:	73 73 00 
  402fb3:	49 89 47 2f          	mov    %rax,0x2f(%r15)
  402fb7:	89 df                	mov    %ebx,%edi
  402fb9:	e8 12 e1 ff ff       	call   4010d0 <close@plt>
  402fbe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fc3:	e9 19 ff ff ff       	jmp    402ee1 <submitr+0x2cb>
  402fc8:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402fcf:	3a 20 55 
  402fd2:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402fd9:	20 74 6f 
  402fdc:	49 89 07             	mov    %rax,(%r15)
  402fdf:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402fe3:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402fea:	65 63 74 
  402fed:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402ff4:	68 65 20 
  402ff7:	49 89 47 10          	mov    %rax,0x10(%r15)
  402ffb:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402fff:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  403006:	6c 61 62 
  403009:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  403010:	65 72 00 
  403013:	49 89 47 1f          	mov    %rax,0x1f(%r15)
  403017:	49 89 57 27          	mov    %rdx,0x27(%r15)
  40301b:	89 df                	mov    %ebx,%edi
  40301d:	e8 ae e0 ff ff       	call   4010d0 <close@plt>
  403022:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403027:	e9 b5 fe ff ff       	jmp    402ee1 <submitr+0x2cb>
  40302c:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  403033:	3a 20 52 
  403036:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  40303d:	20 73 74 
  403040:	49 89 07             	mov    %rax,(%r15)
  403043:	49 89 57 08          	mov    %rdx,0x8(%r15)
  403047:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  40304e:	74 6f 6f 
  403051:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  403058:	65 2e 20 
  40305b:	49 89 47 10          	mov    %rax,0x10(%r15)
  40305f:	49 89 57 18          	mov    %rdx,0x18(%r15)
  403063:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  40306a:	61 73 65 
  40306d:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  403074:	49 54 52 
  403077:	49 89 47 20          	mov    %rax,0x20(%r15)
  40307b:	49 89 57 28          	mov    %rdx,0x28(%r15)
  40307f:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  403086:	55 46 00 
  403089:	49 89 47 30          	mov    %rax,0x30(%r15)
  40308d:	89 df                	mov    %ebx,%edi
  40308f:	e8 3c e0 ff ff       	call   4010d0 <close@plt>
  403094:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403099:	e9 43 fe ff ff       	jmp    402ee1 <submitr+0x2cb>
  40309e:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4030a5:	3a 20 55 
  4030a8:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
  4030af:	20 73 74 
  4030b2:	49 89 07             	mov    %rax,(%r15)
  4030b5:	49 89 57 08          	mov    %rdx,0x8(%r15)
  4030b9:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4030c0:	63 6f 6e 
  4030c3:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  4030ca:	20 61 6e 
  4030cd:	49 89 47 10          	mov    %rax,0x10(%r15)
  4030d1:	49 89 57 18          	mov    %rdx,0x18(%r15)
  4030d5:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4030dc:	67 61 6c 
  4030df:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  4030e6:	6e 70 72 
  4030e9:	49 89 47 20          	mov    %rax,0x20(%r15)
  4030ed:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4030f1:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4030f8:	6c 65 20 
  4030fb:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  403102:	63 74 65 
  403105:	49 89 47 30          	mov    %rax,0x30(%r15)
  403109:	49 89 57 38          	mov    %rdx,0x38(%r15)
  40310d:	41 c7 47 3f 65 72 2e 	movl   $0x2e7265,0x3f(%r15)
  403114:	00 
  403115:	89 df                	mov    %ebx,%edi
  403117:	e8 b4 df ff ff       	call   4010d0 <close@plt>
  40311c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403121:	e9 bb fd ff ff       	jmp    402ee1 <submitr+0x2cb>
  403126:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40312d:	3a 20 43 
  403130:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403137:	20 75 6e 
  40313a:	49 89 07             	mov    %rax,(%r15)
  40313d:	49 89 57 08          	mov    %rdx,0x8(%r15)
  403141:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403148:	74 6f 20 
  40314b:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  403152:	20 74 6f 
  403155:	49 89 47 10          	mov    %rax,0x10(%r15)
  403159:	49 89 57 18          	mov    %rdx,0x18(%r15)
  40315d:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  403164:	41 75 74 
  403167:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  40316e:	73 65 72 
  403171:	49 89 47 20          	mov    %rax,0x20(%r15)
  403175:	49 89 57 28          	mov    %rdx,0x28(%r15)
  403179:	41 c7 47 30 76 65 72 	movl   $0x726576,0x30(%r15)
  403180:	00 
  403181:	89 df                	mov    %ebx,%edi
  403183:	e8 48 df ff ff       	call   4010d0 <close@plt>
  403188:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40318d:	e9 4f fd ff ff       	jmp    402ee1 <submitr+0x2cb>
  403192:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403199:	3a 20 43 
  40319c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4031a3:	20 75 6e 
  4031a6:	49 89 07             	mov    %rax,(%r15)
  4031a9:	49 89 57 08          	mov    %rdx,0x8(%r15)
  4031ad:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4031b4:	74 6f 20 
  4031b7:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  4031be:	66 69 72 
  4031c1:	49 89 47 10          	mov    %rax,0x10(%r15)
  4031c5:	49 89 57 18          	mov    %rdx,0x18(%r15)
  4031c9:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  4031d0:	61 64 65 
  4031d3:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  4031da:	6d 20 41 
  4031dd:	49 89 47 20          	mov    %rax,0x20(%r15)
  4031e1:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4031e5:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  4031ec:	6c 61 62 
  4031ef:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  4031f6:	65 72 00 
  4031f9:	49 89 47 2e          	mov    %rax,0x2e(%r15)
  4031fd:	49 89 57 36          	mov    %rdx,0x36(%r15)
  403201:	89 df                	mov    %ebx,%edi
  403203:	e8 c8 de ff ff       	call   4010d0 <close@plt>
  403208:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40320d:	e9 cf fc ff ff       	jmp    402ee1 <submitr+0x2cb>
  403212:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403219:	00 
  40321a:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40321f:	ba 00 20 00 00       	mov    $0x2000,%edx
  403224:	e8 46 f8 ff ff       	call   402a6f <rio_readlineb>
  403229:	48 85 c0             	test   %rax,%rax
  40322c:	7e 78                	jle    4032a6 <submitr+0x690>
  40322e:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  403233:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  40323a:	0f 85 e6 00 00 00    	jne    403326 <submitr+0x710>
  403240:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403247:	00 
  403248:	4c 89 ff             	mov    %r15,%rdi
  40324b:	e8 20 de ff ff       	call   401070 <strcpy@plt>
  403250:	89 df                	mov    %ebx,%edi
  403252:	e8 79 de ff ff       	call   4010d0 <close@plt>
  403257:	48 8d 35 10 15 00 00 	lea    0x1510(%rip),%rsi        # 40476e <_IO_stdin_used+0x76e>
  40325e:	4c 89 ff             	mov    %r15,%rdi
  403261:	e8 8a de ff ff       	call   4010f0 <strcmp@plt>
  403266:	85 c0                	test   %eax,%eax
  403268:	0f 84 73 fc ff ff    	je     402ee1 <submitr+0x2cb>
  40326e:	48 8d 35 fd 14 00 00 	lea    0x14fd(%rip),%rsi        # 404772 <_IO_stdin_used+0x772>
  403275:	4c 89 ff             	mov    %r15,%rdi
  403278:	e8 73 de ff ff       	call   4010f0 <strcmp@plt>
  40327d:	85 c0                	test   %eax,%eax
  40327f:	0f 84 5c fc ff ff    	je     402ee1 <submitr+0x2cb>
  403285:	48 8d 35 eb 14 00 00 	lea    0x14eb(%rip),%rsi        # 404777 <_IO_stdin_used+0x777>
  40328c:	4c 89 ff             	mov    %r15,%rdi
  40328f:	e8 5c de ff ff       	call   4010f0 <strcmp@plt>
  403294:	85 c0                	test   %eax,%eax
  403296:	0f 84 45 fc ff ff    	je     402ee1 <submitr+0x2cb>
  40329c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032a1:	e9 3b fc ff ff       	jmp    402ee1 <submitr+0x2cb>
  4032a6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4032ad:	3a 20 43 
  4032b0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4032b7:	20 75 6e 
  4032ba:	49 89 07             	mov    %rax,(%r15)
  4032bd:	49 89 57 08          	mov    %rdx,0x8(%r15)
  4032c1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4032c8:	74 6f 20 
  4032cb:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  4032d2:	73 74 61 
  4032d5:	49 89 47 10          	mov    %rax,0x10(%r15)
  4032d9:	49 89 57 18          	mov    %rdx,0x18(%r15)
  4032dd:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  4032e4:	65 73 73 
  4032e7:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  4032ee:	72 6f 6d 
  4032f1:	49 89 47 20          	mov    %rax,0x20(%r15)
  4032f5:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4032f9:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  403300:	6c 61 62 
  403303:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  40330a:	65 72 00 
  40330d:	49 89 47 30          	mov    %rax,0x30(%r15)
  403311:	49 89 57 38          	mov    %rdx,0x38(%r15)
  403315:	89 df                	mov    %ebx,%edi
  403317:	e8 b4 dd ff ff       	call   4010d0 <close@plt>
  40331c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403321:	e9 bb fb ff ff       	jmp    402ee1 <submitr+0x2cb>
  403326:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  40332d:	00 
  40332e:	48 8d 0d bb 11 00 00 	lea    0x11bb(%rip),%rcx        # 4044f0 <_IO_stdin_used+0x4f0>
  403335:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40333c:	be 02 00 00 00       	mov    $0x2,%esi
  403341:	4c 89 ff             	mov    %r15,%rdi
  403344:	b8 00 00 00 00       	mov    $0x0,%eax
  403349:	e8 d2 de ff ff       	call   401220 <__sprintf_chk@plt>
  40334e:	89 df                	mov    %ebx,%edi
  403350:	e8 7b dd ff ff       	call   4010d0 <close@plt>
  403355:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40335a:	e9 82 fb ff ff       	jmp    402ee1 <submitr+0x2cb>
  40335f:	e8 ab f3 ff ff       	call   40270f <__stack_chk_fail>

0000000000403364 <init_timeout>:
  403364:	f3 0f 1e fa          	endbr64
  403368:	85 ff                	test   %edi,%edi
  40336a:	74 26                	je     403392 <init_timeout+0x2e>
  40336c:	53                   	push   %rbx
  40336d:	89 fb                	mov    %edi,%ebx
  40336f:	78 1a                	js     40338b <init_timeout+0x27>
  403371:	48 8d 35 d5 f5 ff ff 	lea    -0xa2b(%rip),%rsi        # 40294d <sigalrm_handler>
  403378:	bf 0e 00 00 00       	mov    $0xe,%edi
  40337d:	e8 7e dd ff ff       	call   401100 <signal@plt>
  403382:	89 df                	mov    %ebx,%edi
  403384:	e8 37 dd ff ff       	call   4010c0 <alarm@plt>
  403389:	5b                   	pop    %rbx
  40338a:	c3                   	ret
  40338b:	bb 00 00 00 00       	mov    $0x0,%ebx
  403390:	eb df                	jmp    403371 <init_timeout+0xd>
  403392:	c3                   	ret

0000000000403393 <init_driver>:
  403393:	f3 0f 1e fa          	endbr64
  403397:	41 54                	push   %r12
  403399:	55                   	push   %rbp
  40339a:	53                   	push   %rbx
  40339b:	48 83 ec 20          	sub    $0x20,%rsp
  40339f:	48 89 fd             	mov    %rdi,%rbp
  4033a2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4033a9:	00 00 
  4033ab:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4033b0:	31 c0                	xor    %eax,%eax
  4033b2:	be 01 00 00 00       	mov    $0x1,%esi
  4033b7:	bf 0d 00 00 00       	mov    $0xd,%edi
  4033bc:	e8 3f dd ff ff       	call   401100 <signal@plt>
  4033c1:	be 01 00 00 00       	mov    $0x1,%esi
  4033c6:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4033cb:	e8 30 dd ff ff       	call   401100 <signal@plt>
  4033d0:	be 01 00 00 00       	mov    $0x1,%esi
  4033d5:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4033da:	e8 21 dd ff ff       	call   401100 <signal@plt>
  4033df:	ba 00 00 00 00       	mov    $0x0,%edx
  4033e4:	be 01 00 00 00       	mov    $0x1,%esi
  4033e9:	bf 02 00 00 00       	mov    $0x2,%edi
  4033ee:	e8 3d de ff ff       	call   401230 <socket@plt>
  4033f3:	85 c0                	test   %eax,%eax
  4033f5:	0f 88 93 00 00 00    	js     40348e <init_driver+0xfb>
  4033fb:	89 c3                	mov    %eax,%ebx
  4033fd:	48 8d 3d 76 13 00 00 	lea    0x1376(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  403404:	e8 07 dd ff ff       	call   401110 <gethostbyname@plt>
  403409:	48 85 c0             	test   %rax,%rax
  40340c:	0f 84 c9 00 00 00    	je     4034db <init_driver+0x148>
  403412:	49 89 e4             	mov    %rsp,%r12
  403415:	66 0f ef c0          	pxor   %xmm0,%xmm0
  403419:	0f 29 04 24          	movaps %xmm0,(%rsp)
  40341d:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  403423:	48 63 50 14          	movslq 0x14(%rax),%rdx
  403427:	48 8b 40 18          	mov    0x18(%rax),%rax
  40342b:	48 8b 30             	mov    (%rax),%rsi
  40342e:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  403433:	b9 0c 00 00 00       	mov    $0xc,%ecx
  403438:	e8 e3 dc ff ff       	call   401120 <__memmove_chk@plt>
  40343d:	66 c7 44 24 02 0b b8 	movw   $0xb80b,0x2(%rsp)
  403444:	ba 10 00 00 00       	mov    $0x10,%edx
  403449:	4c 89 e6             	mov    %r12,%rsi
  40344c:	89 df                	mov    %ebx,%edi
  40344e:	e8 9d dd ff ff       	call   4011f0 <connect@plt>
  403453:	85 c0                	test   %eax,%eax
  403455:	0f 88 e5 00 00 00    	js     403540 <init_driver+0x1ad>
  40345b:	89 df                	mov    %ebx,%edi
  40345d:	e8 6e dc ff ff       	call   4010d0 <close@plt>
  403462:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  403468:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  40346c:	b8 00 00 00 00       	mov    $0x0,%eax
  403471:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  403476:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40347d:	00 00 
  40347f:	0f 85 27 01 00 00    	jne    4035ac <init_driver+0x219>
  403485:	48 83 c4 20          	add    $0x20,%rsp
  403489:	5b                   	pop    %rbx
  40348a:	5d                   	pop    %rbp
  40348b:	41 5c                	pop    %r12
  40348d:	c3                   	ret
  40348e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403495:	3a 20 43 
  403498:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40349f:	20 75 6e 
  4034a2:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4034a6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4034aa:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4034b1:	74 6f 20 
  4034b4:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  4034bb:	65 20 73 
  4034be:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4034c2:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4034c6:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  4034cd:	65 74 00 
  4034d0:	48 89 45 1e          	mov    %rax,0x1e(%rbp)
  4034d4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034d9:	eb 96                	jmp    403471 <init_driver+0xde>
  4034db:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4034e2:	3a 20 44 
  4034e5:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4034ec:	20 75 6e 
  4034ef:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4034f3:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4034f7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4034fe:	74 6f 20 
  403501:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  403508:	76 65 20 
  40350b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40350f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403513:	48 b8 20 73 65 72 76 	movabs $0x2072657672657320,%rax
  40351a:	65 72 20 
  40351d:	48 ba 61 64 64 72 65 	movabs $0x73736572646461,%rdx
  403524:	73 73 00 
  403527:	48 89 45 1f          	mov    %rax,0x1f(%rbp)
  40352b:	48 89 55 27          	mov    %rdx,0x27(%rbp)
  40352f:	89 df                	mov    %ebx,%edi
  403531:	e8 9a db ff ff       	call   4010d0 <close@plt>
  403536:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40353b:	e9 31 ff ff ff       	jmp    403471 <init_driver+0xde>
  403540:	48 b8 31 39 32 2e 31 	movabs $0x2e3836312e323931,%rax
  403547:	36 38 2e 
  40354a:	48 ba 31 33 32 2e 31 	movabs $0x3737312e323331,%rdx
  403551:	37 37 00 
  403554:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403558:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40355c:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403563:	3a 20 55 
  403566:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  40356d:	20 74 6f 
  403570:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403574:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403578:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40357f:	65 63 74 
  403582:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  403589:	65 72 76 
  40358c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403590:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403594:	c7 45 1f 76 65 72 00 	movl   $0x726576,0x1f(%rbp)
  40359b:	89 df                	mov    %ebx,%edi
  40359d:	e8 2e db ff ff       	call   4010d0 <close@plt>
  4035a2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4035a7:	e9 c5 fe ff ff       	jmp    403471 <init_driver+0xde>
  4035ac:	e8 5e f1 ff ff       	call   40270f <__stack_chk_fail>

00000000004035b1 <driver_post>:
  4035b1:	f3 0f 1e fa          	endbr64
  4035b5:	53                   	push   %rbx
  4035b6:	4c 89 cb             	mov    %r9,%rbx
  4035b9:	45 85 c0             	test   %r8d,%r8d
  4035bc:	75 18                	jne    4035d6 <driver_post+0x25>
  4035be:	48 85 ff             	test   %rdi,%rdi
  4035c1:	74 05                	je     4035c8 <driver_post+0x17>
  4035c3:	80 3f 00             	cmpb   $0x0,(%rdi)
  4035c6:	75 37                	jne    4035ff <driver_post+0x4e>
  4035c8:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4035cd:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4035d1:	44 89 c0             	mov    %r8d,%eax
  4035d4:	5b                   	pop    %rbx
  4035d5:	c3                   	ret
  4035d6:	48 89 ca             	mov    %rcx,%rdx
  4035d9:	48 8d 35 aa 11 00 00 	lea    0x11aa(%rip),%rsi        # 40478a <_IO_stdin_used+0x78a>
  4035e0:	bf 02 00 00 00       	mov    $0x2,%edi
  4035e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4035ea:	e8 a1 db ff ff       	call   401190 <__printf_chk@plt>
  4035ef:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4035f4:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4035f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4035fd:	eb d5                	jmp    4035d4 <driver_post+0x23>
  4035ff:	48 83 ec 08          	sub    $0x8,%rsp
  403603:	41 51                	push   %r9
  403605:	49 89 c9             	mov    %rcx,%r9
  403608:	49 89 d0             	mov    %rdx,%r8
  40360b:	48 89 f9             	mov    %rdi,%rcx
  40360e:	48 89 f2             	mov    %rsi,%rdx
  403611:	be b8 0b 00 00       	mov    $0xbb8,%esi
  403616:	48 8d 3d 5d 11 00 00 	lea    0x115d(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  40361d:	e8 f4 f5 ff ff       	call   402c16 <submitr>
  403622:	48 83 c4 10          	add    $0x10,%rsp
  403626:	eb ac                	jmp    4035d4 <driver_post+0x23>

0000000000403628 <check>:
  403628:	f3 0f 1e fa          	endbr64
  40362c:	89 f8                	mov    %edi,%eax
  40362e:	c1 e8 1c             	shr    $0x1c,%eax
  403631:	74 1d                	je     403650 <check+0x28>
  403633:	b9 00 00 00 00       	mov    $0x0,%ecx
  403638:	83 f9 1f             	cmp    $0x1f,%ecx
  40363b:	7f 0d                	jg     40364a <check+0x22>
  40363d:	89 f8                	mov    %edi,%eax
  40363f:	d3 e8                	shr    %cl,%eax
  403641:	3c 0a                	cmp    $0xa,%al
  403643:	74 11                	je     403656 <check+0x2e>
  403645:	83 c1 08             	add    $0x8,%ecx
  403648:	eb ee                	jmp    403638 <check+0x10>
  40364a:	b8 01 00 00 00       	mov    $0x1,%eax
  40364f:	c3                   	ret
  403650:	b8 00 00 00 00       	mov    $0x0,%eax
  403655:	c3                   	ret
  403656:	b8 00 00 00 00       	mov    $0x0,%eax
  40365b:	c3                   	ret

000000000040365c <gencookie>:
  40365c:	f3 0f 1e fa          	endbr64
  403660:	53                   	push   %rbx
  403661:	83 c7 01             	add    $0x1,%edi
  403664:	e8 d7 d9 ff ff       	call   401040 <srandom@plt>
  403669:	e8 f2 da ff ff       	call   401160 <random@plt>
  40366e:	89 c3                	mov    %eax,%ebx
  403670:	89 c7                	mov    %eax,%edi
  403672:	e8 b1 ff ff ff       	call   403628 <check>
  403677:	85 c0                	test   %eax,%eax
  403679:	74 ee                	je     403669 <gencookie+0xd>
  40367b:	89 d8                	mov    %ebx,%eax
  40367d:	5b                   	pop    %rbx
  40367e:	c3                   	ret

Disassembly of section .fini:

0000000000403680 <_fini>:
  403680:	f3 0f 1e fa          	endbr64
  403684:	48 83 ec 08          	sub    $0x8,%rsp
  403688:	48 83 c4 08          	add    $0x8,%rsp
  40368c:	c3                   	ret
