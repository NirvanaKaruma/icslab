
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 d1 4f 00 00 	mov    0x4fd1(%rip),%rax        # 405fe0 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <__errno_location@plt-0x10>:
  401020:	ff 35 ca 4f 00 00    	push   0x4fca(%rip)        # 405ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 4f 00 00    	jmp    *0x4fcc(%rip)        # 405ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <__errno_location@plt>:
  401030:	ff 25 ca 4f 00 00    	jmp    *0x4fca(%rip)        # 406000 <__errno_location@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <srandom@plt>:
  401040:	ff 25 c2 4f 00 00    	jmp    *0x4fc2(%rip)        # 406008 <srandom@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <strncpy@plt>:
  401050:	ff 25 ba 4f 00 00    	jmp    *0x4fba(%rip)        # 406010 <strncpy@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <strncmp@plt>:
  401060:	ff 25 b2 4f 00 00    	jmp    *0x4fb2(%rip)        # 406018 <strncmp@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <strcpy@plt>:
  401070:	ff 25 aa 4f 00 00    	jmp    *0x4faa(%rip)        # 406020 <strcpy@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   $0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <puts@plt>:
  401080:	ff 25 a2 4f 00 00    	jmp    *0x4fa2(%rip)        # 406028 <puts@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   $0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <write@plt>:
  401090:	ff 25 9a 4f 00 00    	jmp    *0x4f9a(%rip)        # 406030 <write@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   $0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <strlen@plt>:
  4010a0:	ff 25 92 4f 00 00    	jmp    *0x4f92(%rip)        # 406038 <strlen@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   $0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010b0 <mmap@plt>:
  4010b0:	ff 25 8a 4f 00 00    	jmp    *0x4f8a(%rip)        # 406040 <mmap@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	push   $0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010c0 <alarm@plt>:
  4010c0:	ff 25 82 4f 00 00    	jmp    *0x4f82(%rip)        # 406048 <alarm@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	push   $0x9
  4010cb:	e9 50 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010d0 <close@plt>:
  4010d0:	ff 25 7a 4f 00 00    	jmp    *0x4f7a(%rip)        # 406050 <close@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	push   $0xa
  4010db:	e9 40 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010e0 <read@plt>:
  4010e0:	ff 25 72 4f 00 00    	jmp    *0x4f72(%rip)        # 406058 <read@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	push   $0xb
  4010eb:	e9 30 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010f0 <strcmp@plt>:
  4010f0:	ff 25 6a 4f 00 00    	jmp    *0x4f6a(%rip)        # 406060 <strcmp@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	push   $0xc
  4010fb:	e9 20 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401100 <signal@plt>:
  401100:	ff 25 62 4f 00 00    	jmp    *0x4f62(%rip)        # 406068 <signal@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	push   $0xd
  40110b:	e9 10 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401110 <gethostbyname@plt>:
  401110:	ff 25 5a 4f 00 00    	jmp    *0x4f5a(%rip)        # 406070 <gethostbyname@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	push   $0xe
  40111b:	e9 00 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401120 <__memmove_chk@plt>:
  401120:	ff 25 52 4f 00 00    	jmp    *0x4f52(%rip)        # 406078 <__memmove_chk@GLIBC_2.3.4>
  401126:	68 0f 00 00 00       	push   $0xf
  40112b:	e9 f0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401130 <strtol@plt>:
  401130:	ff 25 4a 4f 00 00    	jmp    *0x4f4a(%rip)        # 406080 <strtol@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	push   $0x10
  40113b:	e9 e0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401140 <memcpy@plt>:
  401140:	ff 25 42 4f 00 00    	jmp    *0x4f42(%rip)        # 406088 <memcpy@GLIBC_2.14>
  401146:	68 11 00 00 00       	push   $0x11
  40114b:	e9 d0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401150 <time@plt>:
  401150:	ff 25 3a 4f 00 00    	jmp    *0x4f3a(%rip)        # 406090 <time@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	push   $0x12
  40115b:	e9 c0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401160 <random@plt>:
  401160:	ff 25 32 4f 00 00    	jmp    *0x4f32(%rip)        # 406098 <random@GLIBC_2.2.5>
  401166:	68 13 00 00 00       	push   $0x13
  40116b:	e9 b0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401170 <__isoc99_sscanf@plt>:
  401170:	ff 25 2a 4f 00 00    	jmp    *0x4f2a(%rip)        # 4060a0 <__isoc99_sscanf@GLIBC_2.7>
  401176:	68 14 00 00 00       	push   $0x14
  40117b:	e9 a0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401180 <munmap@plt>:
  401180:	ff 25 22 4f 00 00    	jmp    *0x4f22(%rip)        # 4060a8 <munmap@GLIBC_2.2.5>
  401186:	68 15 00 00 00       	push   $0x15
  40118b:	e9 90 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401190 <__printf_chk@plt>:
  401190:	ff 25 1a 4f 00 00    	jmp    *0x4f1a(%rip)        # 4060b0 <__printf_chk@GLIBC_2.3.4>
  401196:	68 16 00 00 00       	push   $0x16
  40119b:	e9 80 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011a0 <fopen@plt>:
  4011a0:	ff 25 12 4f 00 00    	jmp    *0x4f12(%rip)        # 4060b8 <fopen@GLIBC_2.2.5>
  4011a6:	68 17 00 00 00       	push   $0x17
  4011ab:	e9 70 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011b0 <getopt@plt>:
  4011b0:	ff 25 0a 4f 00 00    	jmp    *0x4f0a(%rip)        # 4060c0 <getopt@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	push   $0x18
  4011bb:	e9 60 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011c0 <strtoul@plt>:
  4011c0:	ff 25 02 4f 00 00    	jmp    *0x4f02(%rip)        # 4060c8 <strtoul@GLIBC_2.2.5>
  4011c6:	68 19 00 00 00       	push   $0x19
  4011cb:	e9 50 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011d0 <__memset_chk@plt>:
  4011d0:	ff 25 fa 4e 00 00    	jmp    *0x4efa(%rip)        # 4060d0 <__memset_chk@GLIBC_2.3.4>
  4011d6:	68 1a 00 00 00       	push   $0x1a
  4011db:	e9 40 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011e0 <exit@plt>:
  4011e0:	ff 25 f2 4e 00 00    	jmp    *0x4ef2(%rip)        # 4060d8 <exit@GLIBC_2.2.5>
  4011e6:	68 1b 00 00 00       	push   $0x1b
  4011eb:	e9 30 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011f0 <connect@plt>:
  4011f0:	ff 25 ea 4e 00 00    	jmp    *0x4eea(%rip)        # 4060e0 <connect@GLIBC_2.2.5>
  4011f6:	68 1c 00 00 00       	push   $0x1c
  4011fb:	e9 20 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401200 <__fprintf_chk@plt>:
  401200:	ff 25 e2 4e 00 00    	jmp    *0x4ee2(%rip)        # 4060e8 <__fprintf_chk@GLIBC_2.3.4>
  401206:	68 1d 00 00 00       	push   $0x1d
  40120b:	e9 10 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401210 <getc@plt>:
  401210:	ff 25 da 4e 00 00    	jmp    *0x4eda(%rip)        # 4060f0 <getc@GLIBC_2.2.5>
  401216:	68 1e 00 00 00       	push   $0x1e
  40121b:	e9 00 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401220 <__sprintf_chk@plt>:
  401220:	ff 25 d2 4e 00 00    	jmp    *0x4ed2(%rip)        # 4060f8 <__sprintf_chk@GLIBC_2.3.4>
  401226:	68 1f 00 00 00       	push   $0x1f
  40122b:	e9 f0 fd ff ff       	jmp    401020 <_init+0x20>

0000000000401230 <socket@plt>:
  401230:	ff 25 ca 4e 00 00    	jmp    *0x4eca(%rip)        # 406100 <socket@GLIBC_2.2.5>
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
  40125f:	ff 15 73 4d 00 00    	call   *0x4d73(%rip)        # 405fd8 <__libc_start_main@GLIBC_2.34>
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
  401280:	b8 90 64 40 00       	mov    $0x406490,%eax
  401285:	48 3d 90 64 40 00    	cmp    $0x406490,%rax
  40128b:	74 13                	je     4012a0 <deregister_tm_clones+0x20>
  40128d:	b8 00 00 00 00       	mov    $0x0,%eax
  401292:	48 85 c0             	test   %rax,%rax
  401295:	74 09                	je     4012a0 <deregister_tm_clones+0x20>
  401297:	bf 90 64 40 00       	mov    $0x406490,%edi
  40129c:	ff e0                	jmp    *%rax
  40129e:	66 90                	xchg   %ax,%ax
  4012a0:	c3                   	ret
  4012a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012a8:	00 00 00 00 
  4012ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012b0 <register_tm_clones>:
  4012b0:	be 90 64 40 00       	mov    $0x406490,%esi
  4012b5:	48 81 ee 90 64 40 00 	sub    $0x406490,%rsi
  4012bc:	48 89 f0             	mov    %rsi,%rax
  4012bf:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4012c3:	48 c1 f8 03          	sar    $0x3,%rax
  4012c7:	48 01 c6             	add    %rax,%rsi
  4012ca:	48 d1 fe             	sar    $1,%rsi
  4012cd:	74 11                	je     4012e0 <register_tm_clones+0x30>
  4012cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d4:	48 85 c0             	test   %rax,%rax
  4012d7:	74 07                	je     4012e0 <register_tm_clones+0x30>
  4012d9:	bf 90 64 40 00       	mov    $0x406490,%edi
  4012de:	ff e0                	jmp    *%rax
  4012e0:	c3                   	ret
  4012e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012e8:	00 00 00 00 
  4012ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012f0 <__do_global_dtors_aux>:
  4012f0:	f3 0f 1e fa          	endbr64
  4012f4:	80 3d ed 51 00 00 00 	cmpb   $0x0,0x51ed(%rip)        # 4064e8 <completed.0>
  4012fb:	75 13                	jne    401310 <__do_global_dtors_aux+0x20>
  4012fd:	55                   	push   %rbp
  4012fe:	48 89 e5             	mov    %rsp,%rbp
  401301:	e8 7a ff ff ff       	call   401280 <deregister_tm_clones>
  401306:	c6 05 db 51 00 00 01 	movb   $0x1,0x51db(%rip)        # 4064e8 <completed.0>
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
  40132f:	83 3d fa 51 00 00 00 	cmpl   $0x0,0x51fa(%rip)        # 406530 <is_checker>
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
  4013f7:	89 3d 23 51 00 00    	mov    %edi,0x5123(%rip)        # 406520 <check_level>
  4013fd:	8b 3d 2d 4d 00 00    	mov    0x4d2d(%rip),%edi        # 406130 <target_id>
  401403:	e8 7d 20 00 00       	call   403485 <gencookie>
  401408:	89 c7                	mov    %eax,%edi
  40140a:	89 05 1c 51 00 00    	mov    %eax,0x511c(%rip)        # 40652c <cookie>
  401410:	e8 70 20 00 00       	call   403485 <gencookie>
  401415:	89 05 0d 51 00 00    	mov    %eax,0x510d(%rip)        # 406528 <authkey>
  40141b:	8b 05 0f 4d 00 00    	mov    0x4d0f(%rip),%eax        # 406130 <target_id>
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
  40144e:	48 89 05 33 50 00 00 	mov    %rax,0x5033(%rip)        # 406488 <buf_offset>
  401455:	c6 05 ec 5c 00 00 63 	movb   $0x63,0x5cec(%rip)        # 407148 <target_prefix>
  40145c:	83 3d 1d 50 00 00 00 	cmpl   $0x0,0x501d(%rip)        # 406480 <notify>
  401463:	74 09                	je     40146e <initialize_target+0xaa>
  401465:	83 3d c4 50 00 00 00 	cmpl   $0x0,0x50c4(%rip)        # 406530 <is_checker>
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
  4014a6:	e8 11 1d 00 00       	call   4031bc <init_driver>
  4014ab:	85 c0                	test   %eax,%eax
  4014ad:	79 bf                	jns    40146e <initialize_target+0xaa>
  4014af:	48 89 e2             	mov    %rsp,%rdx
  4014b2:	48 8d 35 2f 2c 00 00 	lea    0x2c2f(%rip),%rsi        # 4040e8 <_IO_stdin_used+0xe8>
  4014b9:	bf 02 00 00 00       	mov    $0x2,%edi
  4014be:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c3:	e8 c8 fc ff ff       	call   401190 <__printf_chk@plt>
  4014c8:	bf 08 00 00 00       	mov    $0x8,%edi
  4014cd:	e8 0e fd ff ff       	call   4011e0 <exit@plt>
  4014d2:	e8 61 10 00 00       	call   402538 <__stack_chk_fail>

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
  401519:	48 c7 c6 27 24 40 00 	mov    $0x402427,%rsi
  401520:	bf 0b 00 00 00       	mov    $0xb,%edi
  401525:	e8 d6 fb ff ff       	call   401100 <signal@plt>
  40152a:	48 c7 c6 cd 23 40 00 	mov    $0x4023cd,%rsi
  401531:	bf 07 00 00 00       	mov    $0x7,%edi
  401536:	e8 c5 fb ff ff       	call   401100 <signal@plt>
  40153b:	48 c7 c6 81 24 40 00 	mov    $0x402481,%rsi
  401542:	bf 04 00 00 00       	mov    $0x4,%edi
  401547:	e8 b4 fb ff ff       	call   401100 <signal@plt>
  40154c:	83 3d dd 4f 00 00 00 	cmpl   $0x0,0x4fdd(%rip)        # 406530 <is_checker>
  401553:	75 26                	jne    40157b <main+0xa4>
  401555:	4c 8d 25 2e 30 00 00 	lea    0x302e(%rip),%r12        # 40458a <_IO_stdin_used+0x58a>
  40155c:	48 8b 05 3d 4f 00 00 	mov    0x4f3d(%rip),%rax        # 4064a0 <stdin@GLIBC_2.2.5>
  401563:	48 89 05 ae 4f 00 00 	mov    %rax,0x4fae(%rip)        # 406518 <infile>
  40156a:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401570:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401576:	e9 8d 00 00 00       	jmp    401608 <main+0x131>
  40157b:	48 c7 c6 db 24 40 00 	mov    $0x4024db,%rsi
  401582:	bf 0e 00 00 00       	mov    $0xe,%edi
  401587:	e8 74 fb ff ff       	call   401100 <signal@plt>
  40158c:	bf 02 00 00 00       	mov    $0x2,%edi
  401591:	e8 2a fb ff ff       	call   4010c0 <alarm@plt>
  401596:	4c 8d 25 f2 2f 00 00 	lea    0x2ff2(%rip),%r12        # 40458f <_IO_stdin_used+0x58f>
  40159d:	eb bd                	jmp    40155c <main+0x85>
  40159f:	48 8b 3b             	mov    (%rbx),%rdi
  4015a2:	e8 7f fd ff ff       	call   401326 <usage>
  4015a7:	48 8d 35 5b 30 00 00 	lea    0x305b(%rip),%rsi        # 404609 <_IO_stdin_used+0x609>
  4015ae:	48 8b 3d 0b 4f 00 00 	mov    0x4f0b(%rip),%rdi        # 4064c0 <optarg@GLIBC_2.2.5>
  4015b5:	e8 e6 fb ff ff       	call   4011a0 <fopen@plt>
  4015ba:	48 89 05 57 4f 00 00 	mov    %rax,0x4f57(%rip)        # 406518 <infile>
  4015c1:	48 85 c0             	test   %rax,%rax
  4015c4:	75 42                	jne    401608 <main+0x131>
  4015c6:	48 8b 0d f3 4e 00 00 	mov    0x4ef3(%rip),%rcx        # 4064c0 <optarg@GLIBC_2.2.5>
  4015cd:	48 8d 15 c5 2f 00 00 	lea    0x2fc5(%rip),%rdx        # 404599 <_IO_stdin_used+0x599>
  4015d4:	be 02 00 00 00       	mov    $0x2,%esi
  4015d9:	48 8b 3d 00 4f 00 00 	mov    0x4f00(%rip),%rdi        # 4064e0 <stderr@GLIBC_2.2.5>
  4015e0:	e8 1b fc ff ff       	call   401200 <__fprintf_chk@plt>
  4015e5:	b8 01 00 00 00       	mov    $0x1,%eax
  4015ea:	e9 2b 01 00 00       	jmp    40171a <main+0x243>
  4015ef:	ba 10 00 00 00       	mov    $0x10,%edx
  4015f4:	be 00 00 00 00       	mov    $0x0,%esi
  4015f9:	48 8b 3d c0 4e 00 00 	mov    0x4ec0(%rip),%rdi        # 4064c0 <optarg@GLIBC_2.2.5>
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
  40163f:	48 8b 3d 7a 4e 00 00 	mov    0x4e7a(%rip),%rdi        # 4064c0 <optarg@GLIBC_2.2.5>
  401646:	e8 e5 fa ff ff       	call   401130 <strtol@plt>
  40164b:	41 89 c5             	mov    %eax,%r13d
  40164e:	eb b8                	jmp    401608 <main+0x131>
  401650:	c7 05 26 4e 00 00 00 	movl   $0x0,0x4e26(%rip)        # 406480 <notify>
  401657:	00 00 00 
  40165a:	eb ac                	jmp    401608 <main+0x131>
  40165c:	48 89 e7             	mov    %rsp,%rdi
  40165f:	ba 50 00 00 00       	mov    $0x50,%edx
  401664:	48 8b 35 55 4e 00 00 	mov    0x4e55(%rip),%rsi        # 4064c0 <optarg@GLIBC_2.2.5>
  40166b:	e8 e0 f9 ff ff       	call   401050 <strncpy@plt>
  401670:	eb 96                	jmp    401608 <main+0x131>
  401672:	0f be d0             	movsbl %al,%edx
  401675:	48 8d 35 3a 2f 00 00 	lea    0x2f3a(%rip),%rsi        # 4045b6 <_IO_stdin_used+0x5b6>
  40167c:	bf 02 00 00 00       	mov    $0x2,%edi
  401681:	b8 00 00 00 00       	mov    $0x0,%eax
  401686:	e8 05 fb ff ff       	call   401190 <__printf_chk@plt>
  40168b:	48 8b 3b             	mov    (%rbx),%rdi
  40168e:	e8 93 fc ff ff       	call   401326 <usage>
  401693:	be 00 00 00 00       	mov    $0x0,%esi
  401698:	44 89 ef             	mov    %r13d,%edi
  40169b:	e8 24 fd ff ff       	call   4013c4 <initialize_target>
  4016a0:	83 3d 89 4e 00 00 00 	cmpl   $0x0,0x4e89(%rip)        # 406530 <is_checker>
  4016a7:	74 3f                	je     4016e8 <main+0x211>
  4016a9:	44 39 35 78 4e 00 00 	cmp    %r14d,0x4e78(%rip)        # 406528 <authkey>
  4016b0:	75 13                	jne    4016c5 <main+0x1ee>
  4016b2:	48 89 e7             	mov    %rsp,%rdi
  4016b5:	48 8b 35 84 4a 00 00 	mov    0x4a84(%rip),%rsi        # 406140 <user_id>
  4016bc:	e8 2f fa ff ff       	call   4010f0 <strcmp@plt>
  4016c1:	85 c0                	test   %eax,%eax
  4016c3:	74 23                	je     4016e8 <main+0x211>
  4016c5:	44 89 f2             	mov    %r14d,%edx
  4016c8:	48 8d 35 41 2a 00 00 	lea    0x2a41(%rip),%rsi        # 404110 <_IO_stdin_used+0x110>
  4016cf:	bf 02 00 00 00       	mov    $0x2,%edi
  4016d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4016d9:	e8 b2 fa ff ff       	call   401190 <__printf_chk@plt>
  4016de:	b8 00 00 00 00       	mov    $0x0,%eax
  4016e3:	e8 23 09 00 00       	call   40200b <check_fail>
  4016e8:	8b 15 3e 4e 00 00    	mov    0x4e3e(%rip),%edx        # 40652c <cookie>
  4016ee:	48 8d 35 d4 2e 00 00 	lea    0x2ed4(%rip),%rsi        # 4045c9 <_IO_stdin_used+0x5c9>
  4016f5:	bf 02 00 00 00       	mov    $0x2,%edi
  4016fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4016ff:	e8 8c fa ff ff       	call   401190 <__printf_chk@plt>
  401704:	be 00 00 00 00       	mov    $0x0,%esi
  401709:	48 8b 3d 78 4d 00 00 	mov    0x4d78(%rip),%rdi        # 406488 <buf_offset>
  401710:	e8 89 0f 00 00       	call   40269e <stable_launch>
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
  401737:	e8 fc 0d 00 00       	call   402538 <__stack_chk_fail>

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
  401cdd:	e8 56 08 00 00       	call   402538 <__stack_chk_fail>

0000000000401ce2 <getbuf>:
  401ce2:	f3 0f 1e fa          	endbr64
  401ce6:	48 83 ec 38          	sub    $0x38,%rsp
  401cea:	48 89 e7             	mov    %rsp,%rdi
  401ced:	e8 57 03 00 00       	call   402049 <Gets>
  401cf2:	b8 01 00 00 00       	mov    $0x1,%eax
  401cf7:	48 83 c4 38          	add    $0x38,%rsp
  401cfb:	c3                   	ret

0000000000401cfc <getbuf_withcanary>:
  401cfc:	55                   	push   %rbp
  401cfd:	48 89 e5             	mov    %rsp,%rbp
  401d00:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  401d07:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401d0e:	00 00 
  401d10:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401d14:	31 c0                	xor    %eax,%eax
  401d16:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  401d1d:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401d24:	48 89 c7             	mov    %rax,%rdi
  401d27:	e8 1d 03 00 00       	call   402049 <Gets>
  401d2c:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401d2f:	48 98                	cltq
  401d31:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401d38:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  401d3c:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401d43:	ba 80 00 00 00       	mov    $0x80,%edx
  401d48:	48 89 c6             	mov    %rax,%rsi
  401d4b:	48 89 cf             	mov    %rcx,%rdi
  401d4e:	e8 ed f3 ff ff       	call   401140 <memcpy@plt>
  401d53:	b8 01 00 00 00       	mov    $0x1,%eax
  401d58:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401d5c:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401d63:	00 00 
  401d65:	74 05                	je     401d6c <getbuf_withcanary+0x70>
  401d67:	e8 cc 07 00 00       	call   402538 <__stack_chk_fail>
  401d6c:	c9                   	leave
  401d6d:	c3                   	ret

0000000000401d6e <touch1>:
  401d6e:	f3 0f 1e fa          	endbr64
  401d72:	50                   	push   %rax
  401d73:	58                   	pop    %rax
  401d74:	48 83 ec 08          	sub    $0x8,%rsp
  401d78:	c7 05 a2 47 00 00 01 	movl   $0x1,0x47a2(%rip)        # 406524 <vlevel>
  401d7f:	00 00 00 
  401d82:	48 8d 3d 82 28 00 00 	lea    0x2882(%rip),%rdi        # 40460b <_IO_stdin_used+0x60b>
  401d89:	e8 f2 f2 ff ff       	call   401080 <puts@plt>
  401d8e:	bf 01 00 00 00       	mov    $0x1,%edi
  401d93:	e8 2e 05 00 00       	call   4022c6 <validate>
  401d98:	bf 00 00 00 00       	mov    $0x0,%edi
  401d9d:	e8 3e f4 ff ff       	call   4011e0 <exit@plt>

0000000000401da2 <touch2>:
  401da2:	f3 0f 1e fa          	endbr64
  401da6:	50                   	push   %rax
  401da7:	58                   	pop    %rax
  401da8:	48 83 ec 08          	sub    $0x8,%rsp
  401dac:	89 fa                	mov    %edi,%edx
  401dae:	c7 05 6c 47 00 00 02 	movl   $0x2,0x476c(%rip)        # 406524 <vlevel>
  401db5:	00 00 00 
  401db8:	39 3d 6e 47 00 00    	cmp    %edi,0x476e(%rip)        # 40652c <cookie>
  401dbe:	74 2a                	je     401dea <touch2+0x48>
  401dc0:	48 8d 35 b9 23 00 00 	lea    0x23b9(%rip),%rsi        # 404180 <_IO_stdin_used+0x180>
  401dc7:	bf 02 00 00 00       	mov    $0x2,%edi
  401dcc:	b8 00 00 00 00       	mov    $0x0,%eax
  401dd1:	e8 ba f3 ff ff       	call   401190 <__printf_chk@plt>
  401dd6:	bf 02 00 00 00       	mov    $0x2,%edi
  401ddb:	e8 c1 05 00 00       	call   4023a1 <fail>
  401de0:	bf 00 00 00 00       	mov    $0x0,%edi
  401de5:	e8 f6 f3 ff ff       	call   4011e0 <exit@plt>
  401dea:	48 8d 35 67 23 00 00 	lea    0x2367(%rip),%rsi        # 404158 <_IO_stdin_used+0x158>
  401df1:	bf 02 00 00 00       	mov    $0x2,%edi
  401df6:	b8 00 00 00 00       	mov    $0x0,%eax
  401dfb:	e8 90 f3 ff ff       	call   401190 <__printf_chk@plt>
  401e00:	bf 02 00 00 00       	mov    $0x2,%edi
  401e05:	e8 bc 04 00 00       	call   4022c6 <validate>
  401e0a:	eb d4                	jmp    401de0 <touch2+0x3e>

0000000000401e0c <hexmatch>:
  401e0c:	f3 0f 1e fa          	endbr64
  401e10:	41 54                	push   %r12
  401e12:	55                   	push   %rbp
  401e13:	53                   	push   %rbx
  401e14:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401e18:	89 fd                	mov    %edi,%ebp
  401e1a:	48 89 f3             	mov    %rsi,%rbx
  401e1d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401e24:	00 00 
  401e26:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401e2b:	31 c0                	xor    %eax,%eax
  401e2d:	e8 2e f3 ff ff       	call   401160 <random@plt>
  401e32:	48 89 c6             	mov    %rax,%rsi
  401e35:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401e3c:	0a d7 a3 
  401e3f:	48 f7 ea             	imul   %rdx
  401e42:	48 8d 0c 32          	lea    (%rdx,%rsi,1),%rcx
  401e46:	48 c1 f9 06          	sar    $0x6,%rcx
  401e4a:	48 89 f0             	mov    %rsi,%rax
  401e4d:	48 c1 f8 3f          	sar    $0x3f,%rax
  401e51:	48 29 c1             	sub    %rax,%rcx
  401e54:	48 8d 04 89          	lea    (%rcx,%rcx,4),%rax
  401e58:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401e5c:	48 c1 e0 02          	shl    $0x2,%rax
  401e60:	48 29 c6             	sub    %rax,%rsi
  401e63:	4c 8d 24 34          	lea    (%rsp,%rsi,1),%r12
  401e67:	ba 6e 00 00 00       	mov    $0x6e,%edx
  401e6c:	48 39 d6             	cmp    %rdx,%rsi
  401e6f:	48 0f 43 d6          	cmovae %rsi,%rdx
  401e73:	48 29 f2             	sub    %rsi,%rdx
  401e76:	41 89 e8             	mov    %ebp,%r8d
  401e79:	48 8d 0d a8 27 00 00 	lea    0x27a8(%rip),%rcx        # 404628 <_IO_stdin_used+0x628>
  401e80:	be 02 00 00 00       	mov    $0x2,%esi
  401e85:	4c 89 e7             	mov    %r12,%rdi
  401e88:	b8 00 00 00 00       	mov    $0x0,%eax
  401e8d:	e8 8e f3 ff ff       	call   401220 <__sprintf_chk@plt>
  401e92:	ba 09 00 00 00       	mov    $0x9,%edx
  401e97:	4c 89 e6             	mov    %r12,%rsi
  401e9a:	48 89 df             	mov    %rbx,%rdi
  401e9d:	e8 be f1 ff ff       	call   401060 <strncmp@plt>
  401ea2:	85 c0                	test   %eax,%eax
  401ea4:	0f 94 c0             	sete   %al
  401ea7:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
  401eac:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401eb3:	00 00 
  401eb5:	75 0c                	jne    401ec3 <hexmatch+0xb7>
  401eb7:	0f b6 c0             	movzbl %al,%eax
  401eba:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401ebe:	5b                   	pop    %rbx
  401ebf:	5d                   	pop    %rbp
  401ec0:	41 5c                	pop    %r12
  401ec2:	c3                   	ret
  401ec3:	e8 70 06 00 00       	call   402538 <__stack_chk_fail>

0000000000401ec8 <touch3>:
  401ec8:	f3 0f 1e fa          	endbr64
  401ecc:	53                   	push   %rbx
  401ecd:	48 89 fb             	mov    %rdi,%rbx
  401ed0:	c7 05 4a 46 00 00 03 	movl   $0x3,0x464a(%rip)        # 406524 <vlevel>
  401ed7:	00 00 00 
  401eda:	48 89 fe             	mov    %rdi,%rsi
  401edd:	8b 3d 49 46 00 00    	mov    0x4649(%rip),%edi        # 40652c <cookie>
  401ee3:	e8 24 ff ff ff       	call   401e0c <hexmatch>
  401ee8:	85 c0                	test   %eax,%eax
  401eea:	74 2d                	je     401f19 <touch3+0x51>
  401eec:	48 89 da             	mov    %rbx,%rdx
  401eef:	48 8d 35 b2 22 00 00 	lea    0x22b2(%rip),%rsi        # 4041a8 <_IO_stdin_used+0x1a8>
  401ef6:	bf 02 00 00 00       	mov    $0x2,%edi
  401efb:	b8 00 00 00 00       	mov    $0x0,%eax
  401f00:	e8 8b f2 ff ff       	call   401190 <__printf_chk@plt>
  401f05:	bf 03 00 00 00       	mov    $0x3,%edi
  401f0a:	e8 b7 03 00 00       	call   4022c6 <validate>
  401f0f:	bf 00 00 00 00       	mov    $0x0,%edi
  401f14:	e8 c7 f2 ff ff       	call   4011e0 <exit@plt>
  401f19:	48 89 da             	mov    %rbx,%rdx
  401f1c:	48 8d 35 ad 22 00 00 	lea    0x22ad(%rip),%rsi        # 4041d0 <_IO_stdin_used+0x1d0>
  401f23:	bf 02 00 00 00       	mov    $0x2,%edi
  401f28:	b8 00 00 00 00       	mov    $0x0,%eax
  401f2d:	e8 5e f2 ff ff       	call   401190 <__printf_chk@plt>
  401f32:	bf 03 00 00 00       	mov    $0x3,%edi
  401f37:	e8 65 04 00 00       	call   4023a1 <fail>
  401f3c:	eb d1                	jmp    401f0f <touch3+0x47>

0000000000401f3e <test>:
  401f3e:	f3 0f 1e fa          	endbr64
  401f42:	48 83 ec 08          	sub    $0x8,%rsp
  401f46:	b8 00 00 00 00       	mov    $0x0,%eax
  401f4b:	e8 92 fd ff ff       	call   401ce2 <getbuf>
  401f50:	89 c2                	mov    %eax,%edx
  401f52:	48 8d 35 9f 22 00 00 	lea    0x229f(%rip),%rsi        # 4041f8 <_IO_stdin_used+0x1f8>
  401f59:	bf 02 00 00 00       	mov    $0x2,%edi
  401f5e:	b8 00 00 00 00       	mov    $0x0,%eax
  401f63:	e8 28 f2 ff ff       	call   401190 <__printf_chk@plt>
  401f68:	48 83 c4 08          	add    $0x8,%rsp
  401f6c:	c3                   	ret

0000000000401f6d <test2>:
  401f6d:	f3 0f 1e fa          	endbr64
  401f71:	48 83 ec 08          	sub    $0x8,%rsp
  401f75:	b8 00 00 00 00       	mov    $0x0,%eax
  401f7a:	e8 7d fd ff ff       	call   401cfc <getbuf_withcanary>
  401f7f:	89 c2                	mov    %eax,%edx
  401f81:	48 8d 35 98 22 00 00 	lea    0x2298(%rip),%rsi        # 404220 <_IO_stdin_used+0x220>
  401f88:	bf 02 00 00 00       	mov    $0x2,%edi
  401f8d:	b8 00 00 00 00       	mov    $0x0,%eax
  401f92:	e8 f9 f1 ff ff       	call   401190 <__printf_chk@plt>
  401f97:	48 83 c4 08          	add    $0x8,%rsp
  401f9b:	c3                   	ret

0000000000401f9c <save_char>:
  401f9c:	8b 05 a2 51 00 00    	mov    0x51a2(%rip),%eax        # 407144 <gets_cnt>
  401fa2:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401fa7:	7f 4a                	jg     401ff3 <save_char+0x57>
  401fa9:	89 f9                	mov    %edi,%ecx
  401fab:	c0 e9 04             	shr    $0x4,%cl
  401fae:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401fb1:	4c 8d 05 48 28 00 00 	lea    0x2848(%rip),%r8        # 404800 <trans_char>
  401fb8:	83 e1 0f             	and    $0xf,%ecx
  401fbb:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401fc0:	48 8d 0d 79 45 00 00 	lea    0x4579(%rip),%rcx        # 406540 <gets_buf>
  401fc7:	48 63 f2             	movslq %edx,%rsi
  401fca:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401fce:	8d 72 01             	lea    0x1(%rdx),%esi
  401fd1:	83 e7 0f             	and    $0xf,%edi
  401fd4:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401fd9:	48 63 f6             	movslq %esi,%rsi
  401fdc:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401fe0:	83 c2 02             	add    $0x2,%edx
  401fe3:	48 63 d2             	movslq %edx,%rdx
  401fe6:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401fea:	83 c0 01             	add    $0x1,%eax
  401fed:	89 05 51 51 00 00    	mov    %eax,0x5151(%rip)        # 407144 <gets_cnt>
  401ff3:	c3                   	ret

0000000000401ff4 <save_term>:
  401ff4:	8b 05 4a 51 00 00    	mov    0x514a(%rip),%eax        # 407144 <gets_cnt>
  401ffa:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401ffd:	48 98                	cltq
  401fff:	48 8d 15 3a 45 00 00 	lea    0x453a(%rip),%rdx        # 406540 <gets_buf>
  402006:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40200a:	c3                   	ret

000000000040200b <check_fail>:
  40200b:	f3 0f 1e fa          	endbr64
  40200f:	50                   	push   %rax
  402010:	58                   	pop    %rax
  402011:	48 83 ec 08          	sub    $0x8,%rsp
  402015:	0f be 15 2c 51 00 00 	movsbl 0x512c(%rip),%edx        # 407148 <target_prefix>
  40201c:	4c 8d 05 1d 45 00 00 	lea    0x451d(%rip),%r8        # 406540 <gets_buf>
  402023:	8b 0d f7 44 00 00    	mov    0x44f7(%rip),%ecx        # 406520 <check_level>
  402029:	48 8d 35 fd 25 00 00 	lea    0x25fd(%rip),%rsi        # 40462d <_IO_stdin_used+0x62d>
  402030:	bf 02 00 00 00       	mov    $0x2,%edi
  402035:	b8 00 00 00 00       	mov    $0x0,%eax
  40203a:	e8 51 f1 ff ff       	call   401190 <__printf_chk@plt>
  40203f:	bf 01 00 00 00       	mov    $0x1,%edi
  402044:	e8 97 f1 ff ff       	call   4011e0 <exit@plt>

0000000000402049 <Gets>:
  402049:	f3 0f 1e fa          	endbr64
  40204d:	41 54                	push   %r12
  40204f:	55                   	push   %rbp
  402050:	53                   	push   %rbx
  402051:	49 89 fc             	mov    %rdi,%r12
  402054:	c7 05 e6 50 00 00 00 	movl   $0x0,0x50e6(%rip)        # 407144 <gets_cnt>
  40205b:	00 00 00 
  40205e:	48 89 fb             	mov    %rdi,%rbx
  402061:	eb 11                	jmp    402074 <Gets+0x2b>
  402063:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  402067:	88 03                	mov    %al,(%rbx)
  402069:	0f b6 f8             	movzbl %al,%edi
  40206c:	e8 2b ff ff ff       	call   401f9c <save_char>
  402071:	48 89 eb             	mov    %rbp,%rbx
  402074:	48 8b 3d 9d 44 00 00 	mov    0x449d(%rip),%rdi        # 406518 <infile>
  40207b:	e8 90 f1 ff ff       	call   401210 <getc@plt>
  402080:	83 f8 ff             	cmp    $0xffffffff,%eax
  402083:	74 05                	je     40208a <Gets+0x41>
  402085:	83 f8 0a             	cmp    $0xa,%eax
  402088:	75 d9                	jne    402063 <Gets+0x1a>
  40208a:	c6 03 00             	movb   $0x0,(%rbx)
  40208d:	b8 00 00 00 00       	mov    $0x0,%eax
  402092:	e8 5d ff ff ff       	call   401ff4 <save_term>
  402097:	4c 89 e0             	mov    %r12,%rax
  40209a:	5b                   	pop    %rbx
  40209b:	5d                   	pop    %rbp
  40209c:	41 5c                	pop    %r12
  40209e:	c3                   	ret

000000000040209f <notify_server>:
  40209f:	f3 0f 1e fa          	endbr64
  4020a3:	55                   	push   %rbp
  4020a4:	53                   	push   %rbx
  4020a5:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  4020ac:	ff 
  4020ad:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4020b4:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4020b9:	4c 39 dc             	cmp    %r11,%rsp
  4020bc:	75 ef                	jne    4020ad <notify_server+0xe>
  4020be:	48 83 ec 18          	sub    $0x18,%rsp
  4020c2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4020c9:	00 00 
  4020cb:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  4020d2:	00 
  4020d3:	31 c0                	xor    %eax,%eax
  4020d5:	83 3d 54 44 00 00 00 	cmpl   $0x0,0x4454(%rip)        # 406530 <is_checker>
  4020dc:	0f 85 c2 01 00 00    	jne    4022a4 <notify_server+0x205>
  4020e2:	89 fb                	mov    %edi,%ebx
  4020e4:	81 3d 56 50 00 00 9c 	cmpl   $0x1f9c,0x5056(%rip)        # 407144 <gets_cnt>
  4020eb:	1f 00 00 
  4020ee:	0f 8f bd 00 00 00    	jg     4021b1 <notify_server+0x112>
  4020f4:	0f be 05 4d 50 00 00 	movsbl 0x504d(%rip),%eax        # 407148 <target_prefix>
  4020fb:	83 3d 7e 43 00 00 00 	cmpl   $0x0,0x437e(%rip)        # 406480 <notify>
  402102:	0f 84 c4 00 00 00    	je     4021cc <notify_server+0x12d>
  402108:	8b 15 1a 44 00 00    	mov    0x441a(%rip),%edx        # 406528 <authkey>
  40210e:	85 db                	test   %ebx,%ebx
  402110:	0f 84 c0 00 00 00    	je     4021d6 <notify_server+0x137>
  402116:	48 8d 2d 26 25 00 00 	lea    0x2526(%rip),%rbp        # 404643 <_IO_stdin_used+0x643>
  40211d:	48 89 e7             	mov    %rsp,%rdi
  402120:	48 8d 0d 19 44 00 00 	lea    0x4419(%rip),%rcx        # 406540 <gets_buf>
  402127:	51                   	push   %rcx
  402128:	56                   	push   %rsi
  402129:	50                   	push   %rax
  40212a:	52                   	push   %rdx
  40212b:	49 89 e9             	mov    %rbp,%r9
  40212e:	44 8b 05 fb 3f 00 00 	mov    0x3ffb(%rip),%r8d        # 406130 <target_id>
  402135:	48 8d 0d 11 25 00 00 	lea    0x2511(%rip),%rcx        # 40464d <_IO_stdin_used+0x64d>
  40213c:	ba 00 20 00 00       	mov    $0x2000,%edx
  402141:	be 02 00 00 00       	mov    $0x2,%esi
  402146:	b8 00 00 00 00       	mov    $0x0,%eax
  40214b:	e8 d0 f0 ff ff       	call   401220 <__sprintf_chk@plt>
  402150:	48 83 c4 20          	add    $0x20,%rsp
  402154:	83 3d 25 43 00 00 00 	cmpl   $0x0,0x4325(%rip)        # 406480 <notify>
  40215b:	0f 84 ba 00 00 00    	je     40221b <notify_server+0x17c>
  402161:	48 89 e1             	mov    %rsp,%rcx
  402164:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  40216b:	00 
  40216c:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402172:	48 8b 15 cf 3f 00 00 	mov    0x3fcf(%rip),%rdx        # 406148 <lab>
  402179:	48 8b 35 d0 3f 00 00 	mov    0x3fd0(%rip),%rsi        # 406150 <course>
  402180:	48 8b 3d b9 3f 00 00 	mov    0x3fb9(%rip),%rdi        # 406140 <user_id>
  402187:	e8 4e 12 00 00       	call   4033da <driver_post>
  40218c:	85 c0                	test   %eax,%eax
  40218e:	78 52                	js     4021e2 <notify_server+0x143>
  402190:	85 db                	test   %ebx,%ebx
  402192:	74 76                	je     40220a <notify_server+0x16b>
  402194:	48 8d 3d e5 20 00 00 	lea    0x20e5(%rip),%rdi        # 404280 <_IO_stdin_used+0x280>
  40219b:	e8 e0 ee ff ff       	call   401080 <puts@plt>
  4021a0:	48 8d 3d ce 24 00 00 	lea    0x24ce(%rip),%rdi        # 404675 <_IO_stdin_used+0x675>
  4021a7:	e8 d4 ee ff ff       	call   401080 <puts@plt>
  4021ac:	e9 f3 00 00 00       	jmp    4022a4 <notify_server+0x205>
  4021b1:	48 8d 35 98 20 00 00 	lea    0x2098(%rip),%rsi        # 404250 <_IO_stdin_used+0x250>
  4021b8:	bf 02 00 00 00       	mov    $0x2,%edi
  4021bd:	e8 ce ef ff ff       	call   401190 <__printf_chk@plt>
  4021c2:	bf 01 00 00 00       	mov    $0x1,%edi
  4021c7:	e8 14 f0 ff ff       	call   4011e0 <exit@plt>
  4021cc:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  4021d1:	e9 38 ff ff ff       	jmp    40210e <notify_server+0x6f>
  4021d6:	48 8d 2d 6b 24 00 00 	lea    0x246b(%rip),%rbp        # 404648 <_IO_stdin_used+0x648>
  4021dd:	e9 3b ff ff ff       	jmp    40211d <notify_server+0x7e>
  4021e2:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  4021e9:	00 
  4021ea:	48 8d 35 78 24 00 00 	lea    0x2478(%rip),%rsi        # 404669 <_IO_stdin_used+0x669>
  4021f1:	bf 02 00 00 00       	mov    $0x2,%edi
  4021f6:	b8 00 00 00 00       	mov    $0x0,%eax
  4021fb:	e8 90 ef ff ff       	call   401190 <__printf_chk@plt>
  402200:	bf 01 00 00 00       	mov    $0x1,%edi
  402205:	e8 d6 ef ff ff       	call   4011e0 <exit@plt>
  40220a:	48 8d 3d 6e 24 00 00 	lea    0x246e(%rip),%rdi        # 40467f <_IO_stdin_used+0x67f>
  402211:	e8 6a ee ff ff       	call   401080 <puts@plt>
  402216:	e9 89 00 00 00       	jmp    4022a4 <notify_server+0x205>
  40221b:	48 89 ea             	mov    %rbp,%rdx
  40221e:	48 8d 35 93 20 00 00 	lea    0x2093(%rip),%rsi        # 4042b8 <_IO_stdin_used+0x2b8>
  402225:	bf 02 00 00 00       	mov    $0x2,%edi
  40222a:	b8 00 00 00 00       	mov    $0x0,%eax
  40222f:	e8 5c ef ff ff       	call   401190 <__printf_chk@plt>
  402234:	48 8b 15 05 3f 00 00 	mov    0x3f05(%rip),%rdx        # 406140 <user_id>
  40223b:	48 8d 35 44 24 00 00 	lea    0x2444(%rip),%rsi        # 404686 <_IO_stdin_used+0x686>
  402242:	bf 02 00 00 00       	mov    $0x2,%edi
  402247:	b8 00 00 00 00       	mov    $0x0,%eax
  40224c:	e8 3f ef ff ff       	call   401190 <__printf_chk@plt>
  402251:	48 8b 15 f8 3e 00 00 	mov    0x3ef8(%rip),%rdx        # 406150 <course>
  402258:	48 8d 35 34 24 00 00 	lea    0x2434(%rip),%rsi        # 404693 <_IO_stdin_used+0x693>
  40225f:	bf 02 00 00 00       	mov    $0x2,%edi
  402264:	b8 00 00 00 00       	mov    $0x0,%eax
  402269:	e8 22 ef ff ff       	call   401190 <__printf_chk@plt>
  40226e:	48 8b 15 d3 3e 00 00 	mov    0x3ed3(%rip),%rdx        # 406148 <lab>
  402275:	48 8d 35 23 24 00 00 	lea    0x2423(%rip),%rsi        # 40469f <_IO_stdin_used+0x69f>
  40227c:	bf 02 00 00 00       	mov    $0x2,%edi
  402281:	b8 00 00 00 00       	mov    $0x0,%eax
  402286:	e8 05 ef ff ff       	call   401190 <__printf_chk@plt>
  40228b:	48 89 e2             	mov    %rsp,%rdx
  40228e:	48 8d 35 13 24 00 00 	lea    0x2413(%rip),%rsi        # 4046a8 <_IO_stdin_used+0x6a8>
  402295:	bf 02 00 00 00       	mov    $0x2,%edi
  40229a:	b8 00 00 00 00       	mov    $0x0,%eax
  40229f:	e8 ec ee ff ff       	call   401190 <__printf_chk@plt>
  4022a4:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  4022ab:	00 
  4022ac:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4022b3:	00 00 
  4022b5:	75 0a                	jne    4022c1 <notify_server+0x222>
  4022b7:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  4022be:	5b                   	pop    %rbx
  4022bf:	5d                   	pop    %rbp
  4022c0:	c3                   	ret
  4022c1:	e8 72 02 00 00       	call   402538 <__stack_chk_fail>

00000000004022c6 <validate>:
  4022c6:	f3 0f 1e fa          	endbr64
  4022ca:	53                   	push   %rbx
  4022cb:	89 fb                	mov    %edi,%ebx
  4022cd:	83 3d 5c 42 00 00 00 	cmpl   $0x0,0x425c(%rip)        # 406530 <is_checker>
  4022d4:	74 79                	je     40234f <validate+0x89>
  4022d6:	39 3d 48 42 00 00    	cmp    %edi,0x4248(%rip)        # 406524 <vlevel>
  4022dc:	75 39                	jne    402317 <validate+0x51>
  4022de:	8b 15 3c 42 00 00    	mov    0x423c(%rip),%edx        # 406520 <check_level>
  4022e4:	39 fa                	cmp    %edi,%edx
  4022e6:	75 45                	jne    40232d <validate+0x67>
  4022e8:	0f be 0d 59 4e 00 00 	movsbl 0x4e59(%rip),%ecx        # 407148 <target_prefix>
  4022ef:	4c 8d 0d 4a 42 00 00 	lea    0x424a(%rip),%r9        # 406540 <gets_buf>
  4022f6:	41 89 f8             	mov    %edi,%r8d
  4022f9:	8b 15 29 42 00 00    	mov    0x4229(%rip),%edx        # 406528 <authkey>
  4022ff:	48 8d 35 02 20 00 00 	lea    0x2002(%rip),%rsi        # 404308 <_IO_stdin_used+0x308>
  402306:	bf 02 00 00 00       	mov    $0x2,%edi
  40230b:	b8 00 00 00 00       	mov    $0x0,%eax
  402310:	e8 7b ee ff ff       	call   401190 <__printf_chk@plt>
  402315:	5b                   	pop    %rbx
  402316:	c3                   	ret
  402317:	48 8d 3d 96 23 00 00 	lea    0x2396(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  40231e:	e8 5d ed ff ff       	call   401080 <puts@plt>
  402323:	b8 00 00 00 00       	mov    $0x0,%eax
  402328:	e8 de fc ff ff       	call   40200b <check_fail>
  40232d:	89 f9                	mov    %edi,%ecx
  40232f:	48 8d 35 aa 1f 00 00 	lea    0x1faa(%rip),%rsi        # 4042e0 <_IO_stdin_used+0x2e0>
  402336:	bf 02 00 00 00       	mov    $0x2,%edi
  40233b:	b8 00 00 00 00       	mov    $0x0,%eax
  402340:	e8 4b ee ff ff       	call   401190 <__printf_chk@plt>
  402345:	b8 00 00 00 00       	mov    $0x0,%eax
  40234a:	e8 bc fc ff ff       	call   40200b <check_fail>
  40234f:	39 3d cf 41 00 00    	cmp    %edi,0x41cf(%rip)        # 406524 <vlevel>
  402355:	74 1a                	je     402371 <validate+0xab>
  402357:	48 8d 3d 56 23 00 00 	lea    0x2356(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  40235e:	e8 1d ed ff ff       	call   401080 <puts@plt>
  402363:	89 de                	mov    %ebx,%esi
  402365:	bf 00 00 00 00       	mov    $0x0,%edi
  40236a:	e8 30 fd ff ff       	call   40209f <notify_server>
  40236f:	eb a4                	jmp    402315 <validate+0x4f>
  402371:	0f be 0d d0 4d 00 00 	movsbl 0x4dd0(%rip),%ecx        # 407148 <target_prefix>
  402378:	89 fa                	mov    %edi,%edx
  40237a:	48 8d 35 af 1f 00 00 	lea    0x1faf(%rip),%rsi        # 404330 <_IO_stdin_used+0x330>
  402381:	bf 02 00 00 00       	mov    $0x2,%edi
  402386:	b8 00 00 00 00       	mov    $0x0,%eax
  40238b:	e8 00 ee ff ff       	call   401190 <__printf_chk@plt>
  402390:	89 de                	mov    %ebx,%esi
  402392:	bf 01 00 00 00       	mov    $0x1,%edi
  402397:	e8 03 fd ff ff       	call   40209f <notify_server>
  40239c:	e9 74 ff ff ff       	jmp    402315 <validate+0x4f>

00000000004023a1 <fail>:
  4023a1:	f3 0f 1e fa          	endbr64
  4023a5:	48 83 ec 08          	sub    $0x8,%rsp
  4023a9:	83 3d 80 41 00 00 00 	cmpl   $0x0,0x4180(%rip)        # 406530 <is_checker>
  4023b0:	75 11                	jne    4023c3 <fail+0x22>
  4023b2:	89 fe                	mov    %edi,%esi
  4023b4:	bf 00 00 00 00       	mov    $0x0,%edi
  4023b9:	e8 e1 fc ff ff       	call   40209f <notify_server>
  4023be:	48 83 c4 08          	add    $0x8,%rsp
  4023c2:	c3                   	ret
  4023c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4023c8:	e8 3e fc ff ff       	call   40200b <check_fail>

00000000004023cd <bushandler>:
  4023cd:	f3 0f 1e fa          	endbr64
  4023d1:	50                   	push   %rax
  4023d2:	58                   	pop    %rax
  4023d3:	48 83 ec 08          	sub    $0x8,%rsp
  4023d7:	83 3d 52 41 00 00 00 	cmpl   $0x0,0x4152(%rip)        # 406530 <is_checker>
  4023de:	74 16                	je     4023f6 <bushandler+0x29>
  4023e0:	48 8d 3d eb 22 00 00 	lea    0x22eb(%rip),%rdi        # 4046d2 <_IO_stdin_used+0x6d2>
  4023e7:	e8 94 ec ff ff       	call   401080 <puts@plt>
  4023ec:	b8 00 00 00 00       	mov    $0x0,%eax
  4023f1:	e8 15 fc ff ff       	call   40200b <check_fail>
  4023f6:	48 8d 3d 6b 1f 00 00 	lea    0x1f6b(%rip),%rdi        # 404368 <_IO_stdin_used+0x368>
  4023fd:	e8 7e ec ff ff       	call   401080 <puts@plt>
  402402:	48 8d 3d d3 22 00 00 	lea    0x22d3(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  402409:	e8 72 ec ff ff       	call   401080 <puts@plt>
  40240e:	be 00 00 00 00       	mov    $0x0,%esi
  402413:	bf 00 00 00 00       	mov    $0x0,%edi
  402418:	e8 82 fc ff ff       	call   40209f <notify_server>
  40241d:	bf 01 00 00 00       	mov    $0x1,%edi
  402422:	e8 b9 ed ff ff       	call   4011e0 <exit@plt>

0000000000402427 <seghandler>:
  402427:	f3 0f 1e fa          	endbr64
  40242b:	50                   	push   %rax
  40242c:	58                   	pop    %rax
  40242d:	48 83 ec 08          	sub    $0x8,%rsp
  402431:	83 3d f8 40 00 00 00 	cmpl   $0x0,0x40f8(%rip)        # 406530 <is_checker>
  402438:	74 16                	je     402450 <seghandler+0x29>
  40243a:	48 8d 3d b1 22 00 00 	lea    0x22b1(%rip),%rdi        # 4046f2 <_IO_stdin_used+0x6f2>
  402441:	e8 3a ec ff ff       	call   401080 <puts@plt>
  402446:	b8 00 00 00 00       	mov    $0x0,%eax
  40244b:	e8 bb fb ff ff       	call   40200b <check_fail>
  402450:	48 8d 3d 31 1f 00 00 	lea    0x1f31(%rip),%rdi        # 404388 <_IO_stdin_used+0x388>
  402457:	e8 24 ec ff ff       	call   401080 <puts@plt>
  40245c:	48 8d 3d 79 22 00 00 	lea    0x2279(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  402463:	e8 18 ec ff ff       	call   401080 <puts@plt>
  402468:	be 00 00 00 00       	mov    $0x0,%esi
  40246d:	bf 00 00 00 00       	mov    $0x0,%edi
  402472:	e8 28 fc ff ff       	call   40209f <notify_server>
  402477:	bf 01 00 00 00       	mov    $0x1,%edi
  40247c:	e8 5f ed ff ff       	call   4011e0 <exit@plt>

0000000000402481 <illegalhandler>:
  402481:	f3 0f 1e fa          	endbr64
  402485:	50                   	push   %rax
  402486:	58                   	pop    %rax
  402487:	48 83 ec 08          	sub    $0x8,%rsp
  40248b:	83 3d 9e 40 00 00 00 	cmpl   $0x0,0x409e(%rip)        # 406530 <is_checker>
  402492:	74 16                	je     4024aa <illegalhandler+0x29>
  402494:	48 8d 3d 6a 22 00 00 	lea    0x226a(%rip),%rdi        # 404705 <_IO_stdin_used+0x705>
  40249b:	e8 e0 eb ff ff       	call   401080 <puts@plt>
  4024a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4024a5:	e8 61 fb ff ff       	call   40200b <check_fail>
  4024aa:	48 8d 3d ff 1e 00 00 	lea    0x1eff(%rip),%rdi        # 4043b0 <_IO_stdin_used+0x3b0>
  4024b1:	e8 ca eb ff ff       	call   401080 <puts@plt>
  4024b6:	48 8d 3d 1f 22 00 00 	lea    0x221f(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  4024bd:	e8 be eb ff ff       	call   401080 <puts@plt>
  4024c2:	be 00 00 00 00       	mov    $0x0,%esi
  4024c7:	bf 00 00 00 00       	mov    $0x0,%edi
  4024cc:	e8 ce fb ff ff       	call   40209f <notify_server>
  4024d1:	bf 01 00 00 00       	mov    $0x1,%edi
  4024d6:	e8 05 ed ff ff       	call   4011e0 <exit@plt>

00000000004024db <sigalrmhandler>:
  4024db:	f3 0f 1e fa          	endbr64
  4024df:	50                   	push   %rax
  4024e0:	58                   	pop    %rax
  4024e1:	48 83 ec 08          	sub    $0x8,%rsp
  4024e5:	83 3d 44 40 00 00 00 	cmpl   $0x0,0x4044(%rip)        # 406530 <is_checker>
  4024ec:	74 16                	je     402504 <sigalrmhandler+0x29>
  4024ee:	48 8d 3d 24 22 00 00 	lea    0x2224(%rip),%rdi        # 404719 <_IO_stdin_used+0x719>
  4024f5:	e8 86 eb ff ff       	call   401080 <puts@plt>
  4024fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4024ff:	e8 07 fb ff ff       	call   40200b <check_fail>
  402504:	ba 02 00 00 00       	mov    $0x2,%edx
  402509:	48 8d 35 d0 1e 00 00 	lea    0x1ed0(%rip),%rsi        # 4043e0 <_IO_stdin_used+0x3e0>
  402510:	bf 02 00 00 00       	mov    $0x2,%edi
  402515:	b8 00 00 00 00       	mov    $0x0,%eax
  40251a:	e8 71 ec ff ff       	call   401190 <__printf_chk@plt>
  40251f:	be 00 00 00 00       	mov    $0x0,%esi
  402524:	bf 00 00 00 00       	mov    $0x0,%edi
  402529:	e8 71 fb ff ff       	call   40209f <notify_server>
  40252e:	bf 01 00 00 00       	mov    $0x1,%edi
  402533:	e8 a8 ec ff ff       	call   4011e0 <exit@plt>

0000000000402538 <__stack_chk_fail>:
  402538:	f3 0f 1e fa          	endbr64
  40253c:	50                   	push   %rax
  40253d:	58                   	pop    %rax
  40253e:	48 83 ec 08          	sub    $0x8,%rsp
  402542:	83 3d e7 3f 00 00 00 	cmpl   $0x0,0x3fe7(%rip)        # 406530 <is_checker>
  402549:	74 16                	je     402561 <__stack_chk_fail+0x29>
  40254b:	48 8d 3d cf 21 00 00 	lea    0x21cf(%rip),%rdi        # 404721 <_IO_stdin_used+0x721>
  402552:	e8 29 eb ff ff       	call   401080 <puts@plt>
  402557:	b8 00 00 00 00       	mov    $0x0,%eax
  40255c:	e8 aa fa ff ff       	call   40200b <check_fail>
  402561:	48 8d 3d b0 1e 00 00 	lea    0x1eb0(%rip),%rdi        # 404418 <_IO_stdin_used+0x418>
  402568:	e8 13 eb ff ff       	call   401080 <puts@plt>
  40256d:	48 8d 3d 68 21 00 00 	lea    0x2168(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  402574:	e8 07 eb ff ff       	call   401080 <puts@plt>
  402579:	be 00 00 00 00       	mov    $0x0,%esi
  40257e:	bf 00 00 00 00       	mov    $0x0,%edi
  402583:	e8 17 fb ff ff       	call   40209f <notify_server>
  402588:	bf 01 00 00 00       	mov    $0x1,%edi
  40258d:	e8 4e ec ff ff       	call   4011e0 <exit@plt>

0000000000402592 <launch>:
  402592:	f3 0f 1e fa          	endbr64
  402596:	55                   	push   %rbp
  402597:	48 89 e5             	mov    %rsp,%rbp
  40259a:	53                   	push   %rbx
  40259b:	48 83 ec 18          	sub    $0x18,%rsp
  40259f:	48 89 fa             	mov    %rdi,%rdx
  4025a2:	89 f3                	mov    %esi,%ebx
  4025a4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4025ab:	00 00 
  4025ad:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4025b1:	31 c0                	xor    %eax,%eax
  4025b3:	48 8d 47 17          	lea    0x17(%rdi),%rax
  4025b7:	48 89 c6             	mov    %rax,%rsi
  4025ba:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  4025be:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  4025c4:	48 89 e1             	mov    %rsp,%rcx
  4025c7:	48 29 c1             	sub    %rax,%rcx
  4025ca:	48 39 cc             	cmp    %rcx,%rsp
  4025cd:	74 12                	je     4025e1 <launch+0x4f>
  4025cf:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4025d6:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  4025dd:	00 00 
  4025df:	eb e9                	jmp    4025ca <launch+0x38>
  4025e1:	48 89 f0             	mov    %rsi,%rax
  4025e4:	25 ff 0f 00 00       	and    $0xfff,%eax
  4025e9:	48 29 c4             	sub    %rax,%rsp
  4025ec:	48 85 c0             	test   %rax,%rax
  4025ef:	74 06                	je     4025f7 <launch+0x65>
  4025f1:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  4025f7:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4025fc:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402600:	48 89 d1             	mov    %rdx,%rcx
  402603:	be f4 00 00 00       	mov    $0xf4,%esi
  402608:	e8 c3 eb ff ff       	call   4011d0 <__memset_chk@plt>
  40260d:	48 8b 05 8c 3e 00 00 	mov    0x3e8c(%rip),%rax        # 4064a0 <stdin@GLIBC_2.2.5>
  402614:	48 39 05 fd 3e 00 00 	cmp    %rax,0x3efd(%rip)        # 406518 <infile>
  40261b:	74 42                	je     40265f <launch+0xcd>
  40261d:	c7 05 fd 3e 00 00 00 	movl   $0x0,0x3efd(%rip)        # 406524 <vlevel>
  402624:	00 00 00 
  402627:	85 db                	test   %ebx,%ebx
  402629:	75 4c                	jne    402677 <launch+0xe5>
  40262b:	b8 00 00 00 00       	mov    $0x0,%eax
  402630:	e8 09 f9 ff ff       	call   401f3e <test>
  402635:	83 3d f4 3e 00 00 00 	cmpl   $0x0,0x3ef4(%rip)        # 406530 <is_checker>
  40263c:	75 45                	jne    402683 <launch+0xf1>
  40263e:	48 8d 3d 03 21 00 00 	lea    0x2103(%rip),%rdi        # 404748 <_IO_stdin_used+0x748>
  402645:	e8 36 ea ff ff       	call   401080 <puts@plt>
  40264a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40264e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402655:	00 00 
  402657:	75 40                	jne    402699 <launch+0x107>
  402659:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  40265d:	c9                   	leave
  40265e:	c3                   	ret
  40265f:	48 8d 35 ca 20 00 00 	lea    0x20ca(%rip),%rsi        # 404730 <_IO_stdin_used+0x730>
  402666:	bf 02 00 00 00       	mov    $0x2,%edi
  40266b:	b8 00 00 00 00       	mov    $0x0,%eax
  402670:	e8 1b eb ff ff       	call   401190 <__printf_chk@plt>
  402675:	eb a6                	jmp    40261d <launch+0x8b>
  402677:	b8 00 00 00 00       	mov    $0x0,%eax
  40267c:	e8 ec f8 ff ff       	call   401f6d <test2>
  402681:	eb b2                	jmp    402635 <launch+0xa3>
  402683:	48 8d 3d b3 20 00 00 	lea    0x20b3(%rip),%rdi        # 40473d <_IO_stdin_used+0x73d>
  40268a:	e8 f1 e9 ff ff       	call   401080 <puts@plt>
  40268f:	b8 00 00 00 00       	mov    $0x0,%eax
  402694:	e8 72 f9 ff ff       	call   40200b <check_fail>
  402699:	e8 9a fe ff ff       	call   402538 <__stack_chk_fail>

000000000040269e <stable_launch>:
  40269e:	f3 0f 1e fa          	endbr64
  4026a2:	55                   	push   %rbp
  4026a3:	53                   	push   %rbx
  4026a4:	48 83 ec 08          	sub    $0x8,%rsp
  4026a8:	89 f5                	mov    %esi,%ebp
  4026aa:	48 89 3d 5f 3e 00 00 	mov    %rdi,0x3e5f(%rip)        # 406510 <global_offset>
  4026b1:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4026b7:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4026bd:	b9 32 01 00 00       	mov    $0x132,%ecx
  4026c2:	ba 07 00 00 00       	mov    $0x7,%edx
  4026c7:	be 00 00 10 00       	mov    $0x100000,%esi
  4026cc:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4026d1:	e8 da e9 ff ff       	call   4010b0 <mmap@plt>
  4026d6:	48 89 c3             	mov    %rax,%rbx
  4026d9:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4026df:	75 4a                	jne    40272b <stable_launch+0x8d>
  4026e1:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4026e8:	48 89 15 19 3e 00 00 	mov    %rdx,0x3e19(%rip)        # 406508 <stack_top>
  4026ef:	48 89 e0             	mov    %rsp,%rax
  4026f2:	48 89 d4             	mov    %rdx,%rsp
  4026f5:	48 89 c2             	mov    %rax,%rdx
  4026f8:	48 89 15 01 3e 00 00 	mov    %rdx,0x3e01(%rip)        # 406500 <global_save_stack>
  4026ff:	89 ee                	mov    %ebp,%esi
  402701:	48 8b 3d 08 3e 00 00 	mov    0x3e08(%rip),%rdi        # 406510 <global_offset>
  402708:	e8 85 fe ff ff       	call   402592 <launch>
  40270d:	48 8b 05 ec 3d 00 00 	mov    0x3dec(%rip),%rax        # 406500 <global_save_stack>
  402714:	48 89 c4             	mov    %rax,%rsp
  402717:	be 00 00 10 00       	mov    $0x100000,%esi
  40271c:	48 89 df             	mov    %rbx,%rdi
  40271f:	e8 5c ea ff ff       	call   401180 <munmap@plt>
  402724:	48 83 c4 08          	add    $0x8,%rsp
  402728:	5b                   	pop    %rbx
  402729:	5d                   	pop    %rbp
  40272a:	c3                   	ret
  40272b:	be 00 00 10 00       	mov    $0x100000,%esi
  402730:	48 89 c7             	mov    %rax,%rdi
  402733:	e8 48 ea ff ff       	call   401180 <munmap@plt>
  402738:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  40273d:	48 8d 15 fc 1c 00 00 	lea    0x1cfc(%rip),%rdx        # 404440 <_IO_stdin_used+0x440>
  402744:	be 02 00 00 00       	mov    $0x2,%esi
  402749:	48 8b 3d 90 3d 00 00 	mov    0x3d90(%rip),%rdi        # 4064e0 <stderr@GLIBC_2.2.5>
  402750:	b8 00 00 00 00       	mov    $0x0,%eax
  402755:	e8 a6 ea ff ff       	call   401200 <__fprintf_chk@plt>
  40275a:	bf 01 00 00 00       	mov    $0x1,%edi
  40275f:	e8 7c ea ff ff       	call   4011e0 <exit@plt>

0000000000402764 <rio_readinitb>:
  402764:	89 37                	mov    %esi,(%rdi)
  402766:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  40276d:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402771:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402775:	c3                   	ret

0000000000402776 <sigalrm_handler>:
  402776:	f3 0f 1e fa          	endbr64
  40277a:	50                   	push   %rax
  40277b:	58                   	pop    %rax
  40277c:	48 83 ec 08          	sub    $0x8,%rsp
  402780:	b9 00 00 00 00       	mov    $0x0,%ecx
  402785:	48 8d 15 dc 1c 00 00 	lea    0x1cdc(%rip),%rdx        # 404468 <_IO_stdin_used+0x468>
  40278c:	be 02 00 00 00       	mov    $0x2,%esi
  402791:	48 8b 3d 48 3d 00 00 	mov    0x3d48(%rip),%rdi        # 4064e0 <stderr@GLIBC_2.2.5>
  402798:	b8 00 00 00 00       	mov    $0x0,%eax
  40279d:	e8 5e ea ff ff       	call   401200 <__fprintf_chk@plt>
  4027a2:	bf 01 00 00 00       	mov    $0x1,%edi
  4027a7:	e8 34 ea ff ff       	call   4011e0 <exit@plt>

00000000004027ac <rio_writen>:
  4027ac:	41 55                	push   %r13
  4027ae:	41 54                	push   %r12
  4027b0:	55                   	push   %rbp
  4027b1:	53                   	push   %rbx
  4027b2:	48 83 ec 08          	sub    $0x8,%rsp
  4027b6:	41 89 fc             	mov    %edi,%r12d
  4027b9:	48 89 f5             	mov    %rsi,%rbp
  4027bc:	49 89 d5             	mov    %rdx,%r13
  4027bf:	48 89 d3             	mov    %rdx,%rbx
  4027c2:	eb 06                	jmp    4027ca <rio_writen+0x1e>
  4027c4:	48 29 c3             	sub    %rax,%rbx
  4027c7:	48 01 c5             	add    %rax,%rbp
  4027ca:	48 85 db             	test   %rbx,%rbx
  4027cd:	74 24                	je     4027f3 <rio_writen+0x47>
  4027cf:	48 89 da             	mov    %rbx,%rdx
  4027d2:	48 89 ee             	mov    %rbp,%rsi
  4027d5:	44 89 e7             	mov    %r12d,%edi
  4027d8:	e8 b3 e8 ff ff       	call   401090 <write@plt>
  4027dd:	48 85 c0             	test   %rax,%rax
  4027e0:	7f e2                	jg     4027c4 <rio_writen+0x18>
  4027e2:	e8 49 e8 ff ff       	call   401030 <__errno_location@plt>
  4027e7:	83 38 04             	cmpl   $0x4,(%rax)
  4027ea:	75 15                	jne    402801 <rio_writen+0x55>
  4027ec:	b8 00 00 00 00       	mov    $0x0,%eax
  4027f1:	eb d1                	jmp    4027c4 <rio_writen+0x18>
  4027f3:	4c 89 e8             	mov    %r13,%rax
  4027f6:	48 83 c4 08          	add    $0x8,%rsp
  4027fa:	5b                   	pop    %rbx
  4027fb:	5d                   	pop    %rbp
  4027fc:	41 5c                	pop    %r12
  4027fe:	41 5d                	pop    %r13
  402800:	c3                   	ret
  402801:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402808:	eb ec                	jmp    4027f6 <rio_writen+0x4a>

000000000040280a <rio_read>:
  40280a:	41 55                	push   %r13
  40280c:	41 54                	push   %r12
  40280e:	55                   	push   %rbp
  40280f:	53                   	push   %rbx
  402810:	48 83 ec 08          	sub    $0x8,%rsp
  402814:	48 89 fb             	mov    %rdi,%rbx
  402817:	49 89 f5             	mov    %rsi,%r13
  40281a:	49 89 d4             	mov    %rdx,%r12
  40281d:	eb 0a                	jmp    402829 <rio_read+0x1f>
  40281f:	e8 0c e8 ff ff       	call   401030 <__errno_location@plt>
  402824:	83 38 04             	cmpl   $0x4,(%rax)
  402827:	75 5f                	jne    402888 <rio_read+0x7e>
  402829:	8b 6b 04             	mov    0x4(%rbx),%ebp
  40282c:	85 ed                	test   %ebp,%ebp
  40282e:	7f 22                	jg     402852 <rio_read+0x48>
  402830:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402834:	8b 3b                	mov    (%rbx),%edi
  402836:	ba 00 20 00 00       	mov    $0x2000,%edx
  40283b:	48 89 ee             	mov    %rbp,%rsi
  40283e:	e8 9d e8 ff ff       	call   4010e0 <read@plt>
  402843:	89 43 04             	mov    %eax,0x4(%rbx)
  402846:	85 c0                	test   %eax,%eax
  402848:	78 d5                	js     40281f <rio_read+0x15>
  40284a:	74 45                	je     402891 <rio_read+0x87>
  40284c:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402850:	eb d7                	jmp    402829 <rio_read+0x1f>
  402852:	89 e8                	mov    %ebp,%eax
  402854:	4c 39 e0             	cmp    %r12,%rax
  402857:	72 03                	jb     40285c <rio_read+0x52>
  402859:	44 89 e5             	mov    %r12d,%ebp
  40285c:	4c 63 e5             	movslq %ebp,%r12
  40285f:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402863:	4c 89 e2             	mov    %r12,%rdx
  402866:	4c 89 ef             	mov    %r13,%rdi
  402869:	e8 d2 e8 ff ff       	call   401140 <memcpy@plt>
  40286e:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402872:	8b 43 04             	mov    0x4(%rbx),%eax
  402875:	29 e8                	sub    %ebp,%eax
  402877:	89 43 04             	mov    %eax,0x4(%rbx)
  40287a:	4c 89 e0             	mov    %r12,%rax
  40287d:	48 83 c4 08          	add    $0x8,%rsp
  402881:	5b                   	pop    %rbx
  402882:	5d                   	pop    %rbp
  402883:	41 5c                	pop    %r12
  402885:	41 5d                	pop    %r13
  402887:	c3                   	ret
  402888:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40288f:	eb ec                	jmp    40287d <rio_read+0x73>
  402891:	b8 00 00 00 00       	mov    $0x0,%eax
  402896:	eb e5                	jmp    40287d <rio_read+0x73>

0000000000402898 <rio_readlineb>:
  402898:	41 55                	push   %r13
  40289a:	41 54                	push   %r12
  40289c:	55                   	push   %rbp
  40289d:	53                   	push   %rbx
  40289e:	48 83 ec 18          	sub    $0x18,%rsp
  4028a2:	49 89 fd             	mov    %rdi,%r13
  4028a5:	48 89 f5             	mov    %rsi,%rbp
  4028a8:	49 89 d4             	mov    %rdx,%r12
  4028ab:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4028b2:	00 00 
  4028b4:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4028b9:	31 c0                	xor    %eax,%eax
  4028bb:	bb 01 00 00 00       	mov    $0x1,%ebx
  4028c0:	eb 18                	jmp    4028da <rio_readlineb+0x42>
  4028c2:	85 c0                	test   %eax,%eax
  4028c4:	75 65                	jne    40292b <rio_readlineb+0x93>
  4028c6:	48 83 fb 01          	cmp    $0x1,%rbx
  4028ca:	75 3d                	jne    402909 <rio_readlineb+0x71>
  4028cc:	b8 00 00 00 00       	mov    $0x0,%eax
  4028d1:	eb 3d                	jmp    402910 <rio_readlineb+0x78>
  4028d3:	48 83 c3 01          	add    $0x1,%rbx
  4028d7:	48 89 d5             	mov    %rdx,%rbp
  4028da:	4c 39 e3             	cmp    %r12,%rbx
  4028dd:	73 2a                	jae    402909 <rio_readlineb+0x71>
  4028df:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  4028e4:	ba 01 00 00 00       	mov    $0x1,%edx
  4028e9:	4c 89 ef             	mov    %r13,%rdi
  4028ec:	e8 19 ff ff ff       	call   40280a <rio_read>
  4028f1:	83 f8 01             	cmp    $0x1,%eax
  4028f4:	75 cc                	jne    4028c2 <rio_readlineb+0x2a>
  4028f6:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  4028fa:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  4028ff:	88 45 00             	mov    %al,0x0(%rbp)
  402902:	3c 0a                	cmp    $0xa,%al
  402904:	75 cd                	jne    4028d3 <rio_readlineb+0x3b>
  402906:	48 89 d5             	mov    %rdx,%rbp
  402909:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  40290d:	48 89 d8             	mov    %rbx,%rax
  402910:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402915:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40291c:	00 00 
  40291e:	75 14                	jne    402934 <rio_readlineb+0x9c>
  402920:	48 83 c4 18          	add    $0x18,%rsp
  402924:	5b                   	pop    %rbx
  402925:	5d                   	pop    %rbp
  402926:	41 5c                	pop    %r12
  402928:	41 5d                	pop    %r13
  40292a:	c3                   	ret
  40292b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402932:	eb dc                	jmp    402910 <rio_readlineb+0x78>
  402934:	e8 ff fb ff ff       	call   402538 <__stack_chk_fail>

0000000000402939 <urlencode>:
  402939:	41 54                	push   %r12
  40293b:	55                   	push   %rbp
  40293c:	53                   	push   %rbx
  40293d:	48 83 ec 10          	sub    $0x10,%rsp
  402941:	48 89 fb             	mov    %rdi,%rbx
  402944:	48 89 f5             	mov    %rsi,%rbp
  402947:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40294e:	00 00 
  402950:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402955:	31 c0                	xor    %eax,%eax
  402957:	e8 44 e7 ff ff       	call   4010a0 <strlen@plt>
  40295c:	eb 0f                	jmp    40296d <urlencode+0x34>
  40295e:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402962:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402966:	48 83 c3 01          	add    $0x1,%rbx
  40296a:	44 89 e0             	mov    %r12d,%eax
  40296d:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402971:	85 c0                	test   %eax,%eax
  402973:	0f 84 a8 00 00 00    	je     402a21 <urlencode+0xe8>
  402979:	44 0f b6 03          	movzbl (%rbx),%r8d
  40297d:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402981:	0f 94 c0             	sete   %al
  402984:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402988:	0f 94 c2             	sete   %dl
  40298b:	08 d0                	or     %dl,%al
  40298d:	75 cf                	jne    40295e <urlencode+0x25>
  40298f:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402993:	74 c9                	je     40295e <urlencode+0x25>
  402995:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402999:	74 c3                	je     40295e <urlencode+0x25>
  40299b:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  40299f:	3c 09                	cmp    $0x9,%al
  4029a1:	76 bb                	jbe    40295e <urlencode+0x25>
  4029a3:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4029a7:	3c 19                	cmp    $0x19,%al
  4029a9:	76 b3                	jbe    40295e <urlencode+0x25>
  4029ab:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4029af:	3c 19                	cmp    $0x19,%al
  4029b1:	76 ab                	jbe    40295e <urlencode+0x25>
  4029b3:	41 80 f8 20          	cmp    $0x20,%r8b
  4029b7:	74 56                	je     402a0f <urlencode+0xd6>
  4029b9:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  4029bd:	3c 5f                	cmp    $0x5f,%al
  4029bf:	0f 96 c0             	setbe  %al
  4029c2:	41 80 f8 09          	cmp    $0x9,%r8b
  4029c6:	0f 94 c2             	sete   %dl
  4029c9:	08 d0                	or     %dl,%al
  4029cb:	74 4f                	je     402a1c <urlencode+0xe3>
  4029cd:	48 89 e7             	mov    %rsp,%rdi
  4029d0:	45 0f b6 c0          	movzbl %r8b,%r8d
  4029d4:	48 8d 0d 7b 1d 00 00 	lea    0x1d7b(%rip),%rcx        # 404756 <_IO_stdin_used+0x756>
  4029db:	ba 08 00 00 00       	mov    $0x8,%edx
  4029e0:	be 02 00 00 00       	mov    $0x2,%esi
  4029e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4029ea:	e8 31 e8 ff ff       	call   401220 <__sprintf_chk@plt>
  4029ef:	0f b6 04 24          	movzbl (%rsp),%eax
  4029f3:	88 45 00             	mov    %al,0x0(%rbp)
  4029f6:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  4029fb:	88 45 01             	mov    %al,0x1(%rbp)
  4029fe:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402a03:	88 45 02             	mov    %al,0x2(%rbp)
  402a06:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402a0a:	e9 57 ff ff ff       	jmp    402966 <urlencode+0x2d>
  402a0f:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402a13:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402a17:	e9 4a ff ff ff       	jmp    402966 <urlencode+0x2d>
  402a1c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a21:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402a26:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402a2d:	00 00 
  402a2f:	75 09                	jne    402a3a <urlencode+0x101>
  402a31:	48 83 c4 10          	add    $0x10,%rsp
  402a35:	5b                   	pop    %rbx
  402a36:	5d                   	pop    %rbp
  402a37:	41 5c                	pop    %r12
  402a39:	c3                   	ret
  402a3a:	e8 f9 fa ff ff       	call   402538 <__stack_chk_fail>

0000000000402a3f <submitr>:
  402a3f:	f3 0f 1e fa          	endbr64
  402a43:	41 57                	push   %r15
  402a45:	41 56                	push   %r14
  402a47:	41 55                	push   %r13
  402a49:	41 54                	push   %r12
  402a4b:	55                   	push   %rbp
  402a4c:	53                   	push   %rbx
  402a4d:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402a54:	ff 
  402a55:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402a5c:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402a61:	4c 39 dc             	cmp    %r11,%rsp
  402a64:	75 ef                	jne    402a55 <submitr+0x16>
  402a66:	48 83 ec 68          	sub    $0x68,%rsp
  402a6a:	49 89 fd             	mov    %rdi,%r13
  402a6d:	41 89 f6             	mov    %esi,%r14d
  402a70:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  402a75:	49 89 cc             	mov    %rcx,%r12
  402a78:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402a7d:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
  402a82:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
  402a89:	00 
  402a8a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a91:	00 00 
  402a93:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402a9a:	00 
  402a9b:	31 c0                	xor    %eax,%eax
  402a9d:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402aa4:	00 
  402aa5:	ba 00 00 00 00       	mov    $0x0,%edx
  402aaa:	be 01 00 00 00       	mov    $0x1,%esi
  402aaf:	bf 02 00 00 00       	mov    $0x2,%edi
  402ab4:	e8 77 e7 ff ff       	call   401230 <socket@plt>
  402ab9:	85 c0                	test   %eax,%eax
  402abb:	0f 88 72 02 00 00    	js     402d33 <submitr+0x2f4>
  402ac1:	89 c3                	mov    %eax,%ebx
  402ac3:	4c 89 ef             	mov    %r13,%rdi
  402ac6:	e8 45 e6 ff ff       	call   401110 <gethostbyname@plt>
  402acb:	48 85 c0             	test   %rax,%rax
  402ace:	0f 84 ab 02 00 00    	je     402d7f <submitr+0x340>
  402ad4:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
  402ad9:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402add:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  402ae2:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402ae9:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402aed:	48 8b 40 18          	mov    0x18(%rax),%rax
  402af1:	48 8b 30             	mov    (%rax),%rsi
  402af4:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402af9:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402afe:	e8 1d e6 ff ff       	call   401120 <__memmove_chk@plt>
  402b03:	66 41 c1 c6 08       	rol    $0x8,%r14w
  402b08:	66 44 89 74 24 32    	mov    %r14w,0x32(%rsp)
  402b0e:	ba 10 00 00 00       	mov    $0x10,%edx
  402b13:	48 89 ee             	mov    %rbp,%rsi
  402b16:	89 df                	mov    %ebx,%edi
  402b18:	e8 d3 e6 ff ff       	call   4011f0 <connect@plt>
  402b1d:	85 c0                	test   %eax,%eax
  402b1f:	0f 88 cc 02 00 00    	js     402df1 <submitr+0x3b2>
  402b25:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402b2a:	e8 71 e5 ff ff       	call   4010a0 <strlen@plt>
  402b2f:	49 89 c6             	mov    %rax,%r14
  402b32:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402b37:	e8 64 e5 ff ff       	call   4010a0 <strlen@plt>
  402b3c:	48 89 c5             	mov    %rax,%rbp
  402b3f:	4c 89 e7             	mov    %r12,%rdi
  402b42:	e8 59 e5 ff ff       	call   4010a0 <strlen@plt>
  402b47:	48 01 c5             	add    %rax,%rbp
  402b4a:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402b4f:	e8 4c e5 ff ff       	call   4010a0 <strlen@plt>
  402b54:	48 01 c5             	add    %rax,%rbp
  402b57:	4b 8d 04 76          	lea    (%r14,%r14,2),%rax
  402b5b:	48 8d 84 05 80 00 00 	lea    0x80(%rbp,%rax,1),%rax
  402b62:	00 
  402b63:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402b69:	0f 87 e6 02 00 00    	ja     402e55 <submitr+0x416>
  402b6f:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402b76:	00 
  402b77:	b9 00 04 00 00       	mov    $0x400,%ecx
  402b7c:	b8 00 00 00 00       	mov    $0x0,%eax
  402b81:	48 89 f7             	mov    %rsi,%rdi
  402b84:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402b87:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402b8c:	e8 a8 fd ff ff       	call   402939 <urlencode>
  402b91:	85 c0                	test   %eax,%eax
  402b93:	0f 88 2e 03 00 00    	js     402ec7 <submitr+0x488>
  402b99:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
  402ba0:	00 
  402ba1:	48 83 ec 08          	sub    $0x8,%rsp
  402ba5:	41 55                	push   %r13
  402ba7:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402bae:	00 
  402baf:	50                   	push   %rax
  402bb0:	41 54                	push   %r12
  402bb2:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
  402bb7:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
  402bbc:	48 8d 0d cd 18 00 00 	lea    0x18cd(%rip),%rcx        # 404490 <_IO_stdin_used+0x490>
  402bc3:	ba 00 20 00 00       	mov    $0x2000,%edx
  402bc8:	be 02 00 00 00       	mov    $0x2,%esi
  402bcd:	48 89 ef             	mov    %rbp,%rdi
  402bd0:	b8 00 00 00 00       	mov    $0x0,%eax
  402bd5:	e8 46 e6 ff ff       	call   401220 <__sprintf_chk@plt>
  402bda:	48 83 c4 20          	add    $0x20,%rsp
  402bde:	48 89 ef             	mov    %rbp,%rdi
  402be1:	e8 ba e4 ff ff       	call   4010a0 <strlen@plt>
  402be6:	48 89 c2             	mov    %rax,%rdx
  402be9:	48 89 ee             	mov    %rbp,%rsi
  402bec:	89 df                	mov    %ebx,%edi
  402bee:	e8 b9 fb ff ff       	call   4027ac <rio_writen>
  402bf3:	48 85 c0             	test   %rax,%rax
  402bf6:	0f 88 53 03 00 00    	js     402f4f <submitr+0x510>
  402bfc:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  402c01:	89 de                	mov    %ebx,%esi
  402c03:	48 89 ef             	mov    %rbp,%rdi
  402c06:	e8 59 fb ff ff       	call   402764 <rio_readinitb>
  402c0b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402c12:	00 
  402c13:	ba 00 20 00 00       	mov    $0x2000,%edx
  402c18:	48 89 ef             	mov    %rbp,%rdi
  402c1b:	e8 78 fc ff ff       	call   402898 <rio_readlineb>
  402c20:	48 85 c0             	test   %rax,%rax
  402c23:	0f 8e 92 03 00 00    	jle    402fbb <submitr+0x57c>
  402c29:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402c2e:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402c35:	00 
  402c36:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402c3d:	00 
  402c3e:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402c45:	00 
  402c46:	48 8d 35 10 1b 00 00 	lea    0x1b10(%rip),%rsi        # 40475d <_IO_stdin_used+0x75d>
  402c4d:	b8 00 00 00 00       	mov    $0x0,%eax
  402c52:	e8 19 e5 ff ff       	call   401170 <__isoc99_sscanf@plt>
  402c57:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402c5e:	00 
  402c5f:	48 8d 35 0e 1b 00 00 	lea    0x1b0e(%rip),%rsi        # 404774 <_IO_stdin_used+0x774>
  402c66:	e8 85 e4 ff ff       	call   4010f0 <strcmp@plt>
  402c6b:	85 c0                	test   %eax,%eax
  402c6d:	0f 84 c8 03 00 00    	je     40303b <submitr+0x5fc>
  402c73:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402c7a:	00 
  402c7b:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402c80:	ba 00 20 00 00       	mov    $0x2000,%edx
  402c85:	e8 0e fc ff ff       	call   402898 <rio_readlineb>
  402c8a:	48 85 c0             	test   %rax,%rax
  402c8d:	7f c8                	jg     402c57 <submitr+0x218>
  402c8f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402c96:	3a 20 43 
  402c99:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402ca0:	20 75 6e 
  402ca3:	49 89 07             	mov    %rax,(%r15)
  402ca6:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402caa:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402cb1:	74 6f 20 
  402cb4:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402cbb:	68 65 61 
  402cbe:	49 89 47 10          	mov    %rax,0x10(%r15)
  402cc2:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402cc6:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402ccd:	66 72 6f 
  402cd0:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402cd7:	6f 6c 61 
  402cda:	49 89 47 20          	mov    %rax,0x20(%r15)
  402cde:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402ce2:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402ce9:	6c 61 62 
  402cec:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402cf3:	65 72 00 
  402cf6:	49 89 47 29          	mov    %rax,0x29(%r15)
  402cfa:	49 89 57 31          	mov    %rdx,0x31(%r15)
  402cfe:	89 df                	mov    %ebx,%edi
  402d00:	e8 cb e3 ff ff       	call   4010d0 <close@plt>
  402d05:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d0a:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
  402d11:	00 
  402d12:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402d19:	00 00 
  402d1b:	0f 85 67 04 00 00    	jne    403188 <submitr+0x749>
  402d21:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402d28:	5b                   	pop    %rbx
  402d29:	5d                   	pop    %rbp
  402d2a:	41 5c                	pop    %r12
  402d2c:	41 5d                	pop    %r13
  402d2e:	41 5e                	pop    %r14
  402d30:	41 5f                	pop    %r15
  402d32:	c3                   	ret
  402d33:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d3a:	3a 20 43 
  402d3d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402d44:	20 75 6e 
  402d47:	49 89 07             	mov    %rax,(%r15)
  402d4a:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402d4e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d55:	74 6f 20 
  402d58:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402d5f:	65 20 73 
  402d62:	49 89 47 10          	mov    %rax,0x10(%r15)
  402d66:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402d6a:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  402d71:	65 74 00 
  402d74:	49 89 47 1e          	mov    %rax,0x1e(%r15)
  402d78:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d7d:	eb 8b                	jmp    402d0a <submitr+0x2cb>
  402d7f:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402d86:	3a 20 44 
  402d89:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402d90:	20 75 6e 
  402d93:	49 89 07             	mov    %rax,(%r15)
  402d96:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402d9a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402da1:	74 6f 20 
  402da4:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402dab:	76 65 20 
  402dae:	49 89 47 10          	mov    %rax,0x10(%r15)
  402db2:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402db6:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402dbd:	61 62 20 
  402dc0:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402dc7:	72 20 61 
  402dca:	49 89 47 20          	mov    %rax,0x20(%r15)
  402dce:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402dd2:	48 b8 61 64 64 72 65 	movabs $0x73736572646461,%rax
  402dd9:	73 73 00 
  402ddc:	49 89 47 2f          	mov    %rax,0x2f(%r15)
  402de0:	89 df                	mov    %ebx,%edi
  402de2:	e8 e9 e2 ff ff       	call   4010d0 <close@plt>
  402de7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dec:	e9 19 ff ff ff       	jmp    402d0a <submitr+0x2cb>
  402df1:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402df8:	3a 20 55 
  402dfb:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402e02:	20 74 6f 
  402e05:	49 89 07             	mov    %rax,(%r15)
  402e08:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402e0c:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402e13:	65 63 74 
  402e16:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402e1d:	68 65 20 
  402e20:	49 89 47 10          	mov    %rax,0x10(%r15)
  402e24:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402e28:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402e2f:	6c 61 62 
  402e32:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402e39:	65 72 00 
  402e3c:	49 89 47 1f          	mov    %rax,0x1f(%r15)
  402e40:	49 89 57 27          	mov    %rdx,0x27(%r15)
  402e44:	89 df                	mov    %ebx,%edi
  402e46:	e8 85 e2 ff ff       	call   4010d0 <close@plt>
  402e4b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e50:	e9 b5 fe ff ff       	jmp    402d0a <submitr+0x2cb>
  402e55:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402e5c:	3a 20 52 
  402e5f:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402e66:	20 73 74 
  402e69:	49 89 07             	mov    %rax,(%r15)
  402e6c:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402e70:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402e77:	74 6f 6f 
  402e7a:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402e81:	65 2e 20 
  402e84:	49 89 47 10          	mov    %rax,0x10(%r15)
  402e88:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402e8c:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402e93:	61 73 65 
  402e96:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402e9d:	49 54 52 
  402ea0:	49 89 47 20          	mov    %rax,0x20(%r15)
  402ea4:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402ea8:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402eaf:	55 46 00 
  402eb2:	49 89 47 30          	mov    %rax,0x30(%r15)
  402eb6:	89 df                	mov    %ebx,%edi
  402eb8:	e8 13 e2 ff ff       	call   4010d0 <close@plt>
  402ebd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ec2:	e9 43 fe ff ff       	jmp    402d0a <submitr+0x2cb>
  402ec7:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402ece:	3a 20 55 
  402ed1:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
  402ed8:	20 73 74 
  402edb:	49 89 07             	mov    %rax,(%r15)
  402ede:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402ee2:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402ee9:	63 6f 6e 
  402eec:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402ef3:	20 61 6e 
  402ef6:	49 89 47 10          	mov    %rax,0x10(%r15)
  402efa:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402efe:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402f05:	67 61 6c 
  402f08:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402f0f:	6e 70 72 
  402f12:	49 89 47 20          	mov    %rax,0x20(%r15)
  402f16:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402f1a:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402f21:	6c 65 20 
  402f24:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402f2b:	63 74 65 
  402f2e:	49 89 47 30          	mov    %rax,0x30(%r15)
  402f32:	49 89 57 38          	mov    %rdx,0x38(%r15)
  402f36:	41 c7 47 3f 65 72 2e 	movl   $0x2e7265,0x3f(%r15)
  402f3d:	00 
  402f3e:	89 df                	mov    %ebx,%edi
  402f40:	e8 8b e1 ff ff       	call   4010d0 <close@plt>
  402f45:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f4a:	e9 bb fd ff ff       	jmp    402d0a <submitr+0x2cb>
  402f4f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f56:	3a 20 43 
  402f59:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402f60:	20 75 6e 
  402f63:	49 89 07             	mov    %rax,(%r15)
  402f66:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402f6a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f71:	74 6f 20 
  402f74:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402f7b:	20 74 6f 
  402f7e:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f82:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f86:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  402f8d:	41 75 74 
  402f90:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  402f97:	73 65 72 
  402f9a:	49 89 47 20          	mov    %rax,0x20(%r15)
  402f9e:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402fa2:	41 c7 47 30 76 65 72 	movl   $0x726576,0x30(%r15)
  402fa9:	00 
  402faa:	89 df                	mov    %ebx,%edi
  402fac:	e8 1f e1 ff ff       	call   4010d0 <close@plt>
  402fb1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fb6:	e9 4f fd ff ff       	jmp    402d0a <submitr+0x2cb>
  402fbb:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402fc2:	3a 20 43 
  402fc5:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402fcc:	20 75 6e 
  402fcf:	49 89 07             	mov    %rax,(%r15)
  402fd2:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402fd6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402fdd:	74 6f 20 
  402fe0:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402fe7:	66 69 72 
  402fea:	49 89 47 10          	mov    %rax,0x10(%r15)
  402fee:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402ff2:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402ff9:	61 64 65 
  402ffc:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  403003:	6d 20 41 
  403006:	49 89 47 20          	mov    %rax,0x20(%r15)
  40300a:	49 89 57 28          	mov    %rdx,0x28(%r15)
  40300e:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  403015:	6c 61 62 
  403018:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  40301f:	65 72 00 
  403022:	49 89 47 2e          	mov    %rax,0x2e(%r15)
  403026:	49 89 57 36          	mov    %rdx,0x36(%r15)
  40302a:	89 df                	mov    %ebx,%edi
  40302c:	e8 9f e0 ff ff       	call   4010d0 <close@plt>
  403031:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403036:	e9 cf fc ff ff       	jmp    402d0a <submitr+0x2cb>
  40303b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403042:	00 
  403043:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  403048:	ba 00 20 00 00       	mov    $0x2000,%edx
  40304d:	e8 46 f8 ff ff       	call   402898 <rio_readlineb>
  403052:	48 85 c0             	test   %rax,%rax
  403055:	7e 78                	jle    4030cf <submitr+0x690>
  403057:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  40305c:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  403063:	0f 85 e6 00 00 00    	jne    40314f <submitr+0x710>
  403069:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403070:	00 
  403071:	4c 89 ff             	mov    %r15,%rdi
  403074:	e8 f7 df ff ff       	call   401070 <strcpy@plt>
  403079:	89 df                	mov    %ebx,%edi
  40307b:	e8 50 e0 ff ff       	call   4010d0 <close@plt>
  403080:	48 8d 35 e7 16 00 00 	lea    0x16e7(%rip),%rsi        # 40476e <_IO_stdin_used+0x76e>
  403087:	4c 89 ff             	mov    %r15,%rdi
  40308a:	e8 61 e0 ff ff       	call   4010f0 <strcmp@plt>
  40308f:	85 c0                	test   %eax,%eax
  403091:	0f 84 73 fc ff ff    	je     402d0a <submitr+0x2cb>
  403097:	48 8d 35 d4 16 00 00 	lea    0x16d4(%rip),%rsi        # 404772 <_IO_stdin_used+0x772>
  40309e:	4c 89 ff             	mov    %r15,%rdi
  4030a1:	e8 4a e0 ff ff       	call   4010f0 <strcmp@plt>
  4030a6:	85 c0                	test   %eax,%eax
  4030a8:	0f 84 5c fc ff ff    	je     402d0a <submitr+0x2cb>
  4030ae:	48 8d 35 c2 16 00 00 	lea    0x16c2(%rip),%rsi        # 404777 <_IO_stdin_used+0x777>
  4030b5:	4c 89 ff             	mov    %r15,%rdi
  4030b8:	e8 33 e0 ff ff       	call   4010f0 <strcmp@plt>
  4030bd:	85 c0                	test   %eax,%eax
  4030bf:	0f 84 45 fc ff ff    	je     402d0a <submitr+0x2cb>
  4030c5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4030ca:	e9 3b fc ff ff       	jmp    402d0a <submitr+0x2cb>
  4030cf:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4030d6:	3a 20 43 
  4030d9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4030e0:	20 75 6e 
  4030e3:	49 89 07             	mov    %rax,(%r15)
  4030e6:	49 89 57 08          	mov    %rdx,0x8(%r15)
  4030ea:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4030f1:	74 6f 20 
  4030f4:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  4030fb:	73 74 61 
  4030fe:	49 89 47 10          	mov    %rax,0x10(%r15)
  403102:	49 89 57 18          	mov    %rdx,0x18(%r15)
  403106:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  40310d:	65 73 73 
  403110:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  403117:	72 6f 6d 
  40311a:	49 89 47 20          	mov    %rax,0x20(%r15)
  40311e:	49 89 57 28          	mov    %rdx,0x28(%r15)
  403122:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  403129:	6c 61 62 
  40312c:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  403133:	65 72 00 
  403136:	49 89 47 30          	mov    %rax,0x30(%r15)
  40313a:	49 89 57 38          	mov    %rdx,0x38(%r15)
  40313e:	89 df                	mov    %ebx,%edi
  403140:	e8 8b df ff ff       	call   4010d0 <close@plt>
  403145:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40314a:	e9 bb fb ff ff       	jmp    402d0a <submitr+0x2cb>
  40314f:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  403156:	00 
  403157:	48 8d 0d 92 13 00 00 	lea    0x1392(%rip),%rcx        # 4044f0 <_IO_stdin_used+0x4f0>
  40315e:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  403165:	be 02 00 00 00       	mov    $0x2,%esi
  40316a:	4c 89 ff             	mov    %r15,%rdi
  40316d:	b8 00 00 00 00       	mov    $0x0,%eax
  403172:	e8 a9 e0 ff ff       	call   401220 <__sprintf_chk@plt>
  403177:	89 df                	mov    %ebx,%edi
  403179:	e8 52 df ff ff       	call   4010d0 <close@plt>
  40317e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403183:	e9 82 fb ff ff       	jmp    402d0a <submitr+0x2cb>
  403188:	e8 ab f3 ff ff       	call   402538 <__stack_chk_fail>

000000000040318d <init_timeout>:
  40318d:	f3 0f 1e fa          	endbr64
  403191:	85 ff                	test   %edi,%edi
  403193:	74 26                	je     4031bb <init_timeout+0x2e>
  403195:	53                   	push   %rbx
  403196:	89 fb                	mov    %edi,%ebx
  403198:	78 1a                	js     4031b4 <init_timeout+0x27>
  40319a:	48 8d 35 d5 f5 ff ff 	lea    -0xa2b(%rip),%rsi        # 402776 <sigalrm_handler>
  4031a1:	bf 0e 00 00 00       	mov    $0xe,%edi
  4031a6:	e8 55 df ff ff       	call   401100 <signal@plt>
  4031ab:	89 df                	mov    %ebx,%edi
  4031ad:	e8 0e df ff ff       	call   4010c0 <alarm@plt>
  4031b2:	5b                   	pop    %rbx
  4031b3:	c3                   	ret
  4031b4:	bb 00 00 00 00       	mov    $0x0,%ebx
  4031b9:	eb df                	jmp    40319a <init_timeout+0xd>
  4031bb:	c3                   	ret

00000000004031bc <init_driver>:
  4031bc:	f3 0f 1e fa          	endbr64
  4031c0:	41 54                	push   %r12
  4031c2:	55                   	push   %rbp
  4031c3:	53                   	push   %rbx
  4031c4:	48 83 ec 20          	sub    $0x20,%rsp
  4031c8:	48 89 fd             	mov    %rdi,%rbp
  4031cb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4031d2:	00 00 
  4031d4:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4031d9:	31 c0                	xor    %eax,%eax
  4031db:	be 01 00 00 00       	mov    $0x1,%esi
  4031e0:	bf 0d 00 00 00       	mov    $0xd,%edi
  4031e5:	e8 16 df ff ff       	call   401100 <signal@plt>
  4031ea:	be 01 00 00 00       	mov    $0x1,%esi
  4031ef:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4031f4:	e8 07 df ff ff       	call   401100 <signal@plt>
  4031f9:	be 01 00 00 00       	mov    $0x1,%esi
  4031fe:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403203:	e8 f8 de ff ff       	call   401100 <signal@plt>
  403208:	ba 00 00 00 00       	mov    $0x0,%edx
  40320d:	be 01 00 00 00       	mov    $0x1,%esi
  403212:	bf 02 00 00 00       	mov    $0x2,%edi
  403217:	e8 14 e0 ff ff       	call   401230 <socket@plt>
  40321c:	85 c0                	test   %eax,%eax
  40321e:	0f 88 93 00 00 00    	js     4032b7 <init_driver+0xfb>
  403224:	89 c3                	mov    %eax,%ebx
  403226:	48 8d 3d 4d 15 00 00 	lea    0x154d(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  40322d:	e8 de de ff ff       	call   401110 <gethostbyname@plt>
  403232:	48 85 c0             	test   %rax,%rax
  403235:	0f 84 c9 00 00 00    	je     403304 <init_driver+0x148>
  40323b:	49 89 e4             	mov    %rsp,%r12
  40323e:	66 0f ef c0          	pxor   %xmm0,%xmm0
  403242:	0f 29 04 24          	movaps %xmm0,(%rsp)
  403246:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  40324c:	48 63 50 14          	movslq 0x14(%rax),%rdx
  403250:	48 8b 40 18          	mov    0x18(%rax),%rax
  403254:	48 8b 30             	mov    (%rax),%rsi
  403257:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  40325c:	b9 0c 00 00 00       	mov    $0xc,%ecx
  403261:	e8 ba de ff ff       	call   401120 <__memmove_chk@plt>
  403266:	66 c7 44 24 02 0b b8 	movw   $0xb80b,0x2(%rsp)
  40326d:	ba 10 00 00 00       	mov    $0x10,%edx
  403272:	4c 89 e6             	mov    %r12,%rsi
  403275:	89 df                	mov    %ebx,%edi
  403277:	e8 74 df ff ff       	call   4011f0 <connect@plt>
  40327c:	85 c0                	test   %eax,%eax
  40327e:	0f 88 e5 00 00 00    	js     403369 <init_driver+0x1ad>
  403284:	89 df                	mov    %ebx,%edi
  403286:	e8 45 de ff ff       	call   4010d0 <close@plt>
  40328b:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  403291:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  403295:	b8 00 00 00 00       	mov    $0x0,%eax
  40329a:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  40329f:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4032a6:	00 00 
  4032a8:	0f 85 27 01 00 00    	jne    4033d5 <init_driver+0x219>
  4032ae:	48 83 c4 20          	add    $0x20,%rsp
  4032b2:	5b                   	pop    %rbx
  4032b3:	5d                   	pop    %rbp
  4032b4:	41 5c                	pop    %r12
  4032b6:	c3                   	ret
  4032b7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4032be:	3a 20 43 
  4032c1:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4032c8:	20 75 6e 
  4032cb:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4032cf:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4032d3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4032da:	74 6f 20 
  4032dd:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  4032e4:	65 20 73 
  4032e7:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4032eb:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4032ef:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  4032f6:	65 74 00 
  4032f9:	48 89 45 1e          	mov    %rax,0x1e(%rbp)
  4032fd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403302:	eb 96                	jmp    40329a <init_driver+0xde>
  403304:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40330b:	3a 20 44 
  40330e:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  403315:	20 75 6e 
  403318:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40331c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403320:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403327:	74 6f 20 
  40332a:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  403331:	76 65 20 
  403334:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403338:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40333c:	48 b8 20 73 65 72 76 	movabs $0x2072657672657320,%rax
  403343:	65 72 20 
  403346:	48 ba 61 64 64 72 65 	movabs $0x73736572646461,%rdx
  40334d:	73 73 00 
  403350:	48 89 45 1f          	mov    %rax,0x1f(%rbp)
  403354:	48 89 55 27          	mov    %rdx,0x27(%rbp)
  403358:	89 df                	mov    %ebx,%edi
  40335a:	e8 71 dd ff ff       	call   4010d0 <close@plt>
  40335f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403364:	e9 31 ff ff ff       	jmp    40329a <init_driver+0xde>
  403369:	48 b8 31 39 32 2e 31 	movabs $0x2e3836312e323931,%rax
  403370:	36 38 2e 
  403373:	48 ba 31 33 32 2e 31 	movabs $0x3737312e323331,%rdx
  40337a:	37 37 00 
  40337d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403381:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403385:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40338c:	3a 20 55 
  40338f:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403396:	20 74 6f 
  403399:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40339d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4033a1:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4033a8:	65 63 74 
  4033ab:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  4033b2:	65 72 76 
  4033b5:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4033b9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4033bd:	c7 45 1f 76 65 72 00 	movl   $0x726576,0x1f(%rbp)
  4033c4:	89 df                	mov    %ebx,%edi
  4033c6:	e8 05 dd ff ff       	call   4010d0 <close@plt>
  4033cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4033d0:	e9 c5 fe ff ff       	jmp    40329a <init_driver+0xde>
  4033d5:	e8 5e f1 ff ff       	call   402538 <__stack_chk_fail>

00000000004033da <driver_post>:
  4033da:	f3 0f 1e fa          	endbr64
  4033de:	53                   	push   %rbx
  4033df:	4c 89 cb             	mov    %r9,%rbx
  4033e2:	45 85 c0             	test   %r8d,%r8d
  4033e5:	75 18                	jne    4033ff <driver_post+0x25>
  4033e7:	48 85 ff             	test   %rdi,%rdi
  4033ea:	74 05                	je     4033f1 <driver_post+0x17>
  4033ec:	80 3f 00             	cmpb   $0x0,(%rdi)
  4033ef:	75 37                	jne    403428 <driver_post+0x4e>
  4033f1:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4033f6:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4033fa:	44 89 c0             	mov    %r8d,%eax
  4033fd:	5b                   	pop    %rbx
  4033fe:	c3                   	ret
  4033ff:	48 89 ca             	mov    %rcx,%rdx
  403402:	48 8d 35 81 13 00 00 	lea    0x1381(%rip),%rsi        # 40478a <_IO_stdin_used+0x78a>
  403409:	bf 02 00 00 00       	mov    $0x2,%edi
  40340e:	b8 00 00 00 00       	mov    $0x0,%eax
  403413:	e8 78 dd ff ff       	call   401190 <__printf_chk@plt>
  403418:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40341d:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403421:	b8 00 00 00 00       	mov    $0x0,%eax
  403426:	eb d5                	jmp    4033fd <driver_post+0x23>
  403428:	48 83 ec 08          	sub    $0x8,%rsp
  40342c:	41 51                	push   %r9
  40342e:	49 89 c9             	mov    %rcx,%r9
  403431:	49 89 d0             	mov    %rdx,%r8
  403434:	48 89 f9             	mov    %rdi,%rcx
  403437:	48 89 f2             	mov    %rsi,%rdx
  40343a:	be b8 0b 00 00       	mov    $0xbb8,%esi
  40343f:	48 8d 3d 34 13 00 00 	lea    0x1334(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  403446:	e8 f4 f5 ff ff       	call   402a3f <submitr>
  40344b:	48 83 c4 10          	add    $0x10,%rsp
  40344f:	eb ac                	jmp    4033fd <driver_post+0x23>

0000000000403451 <check>:
  403451:	f3 0f 1e fa          	endbr64
  403455:	89 f8                	mov    %edi,%eax
  403457:	c1 e8 1c             	shr    $0x1c,%eax
  40345a:	74 1d                	je     403479 <check+0x28>
  40345c:	b9 00 00 00 00       	mov    $0x0,%ecx
  403461:	83 f9 1f             	cmp    $0x1f,%ecx
  403464:	7f 0d                	jg     403473 <check+0x22>
  403466:	89 f8                	mov    %edi,%eax
  403468:	d3 e8                	shr    %cl,%eax
  40346a:	3c 0a                	cmp    $0xa,%al
  40346c:	74 11                	je     40347f <check+0x2e>
  40346e:	83 c1 08             	add    $0x8,%ecx
  403471:	eb ee                	jmp    403461 <check+0x10>
  403473:	b8 01 00 00 00       	mov    $0x1,%eax
  403478:	c3                   	ret
  403479:	b8 00 00 00 00       	mov    $0x0,%eax
  40347e:	c3                   	ret
  40347f:	b8 00 00 00 00       	mov    $0x0,%eax
  403484:	c3                   	ret

0000000000403485 <gencookie>:
  403485:	f3 0f 1e fa          	endbr64
  403489:	53                   	push   %rbx
  40348a:	83 c7 01             	add    $0x1,%edi
  40348d:	e8 ae db ff ff       	call   401040 <srandom@plt>
  403492:	e8 c9 dc ff ff       	call   401160 <random@plt>
  403497:	89 c3                	mov    %eax,%ebx
  403499:	89 c7                	mov    %eax,%edi
  40349b:	e8 b1 ff ff ff       	call   403451 <check>
  4034a0:	85 c0                	test   %eax,%eax
  4034a2:	74 ee                	je     403492 <gencookie+0xd>
  4034a4:	89 d8                	mov    %ebx,%eax
  4034a6:	5b                   	pop    %rbx
  4034a7:	c3                   	ret

Disassembly of section .fini:

00000000004034a8 <_fini>:
  4034a8:	f3 0f 1e fa          	endbr64
  4034ac:	48 83 ec 08          	sub    $0x8,%rsp
  4034b0:	48 83 c4 08          	add    $0x8,%rsp
  4034b4:	c3                   	ret
