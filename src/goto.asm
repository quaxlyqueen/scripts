goto:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 c1 2f 00 00 	mov    0x2fc1(%rip),%rax        # 3fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <getenv@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <getenv@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <getenv@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <strlen@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <strlen@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <chdir@plt>:
    1050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 4010 <chdir@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <__stack_chk_fail@plt>:
    1060:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 4018 <__stack_chk_fail@GLIBC_2.4>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <printf@plt>:
    1070:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 4020 <printf@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <getcwd@plt>:
    1080:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 4028 <getcwd@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <strcmp@plt>:
    1090:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 4030 <strcmp@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <fopen@plt>:
    10a0:	ff 25 92 2f 00 00    	jmp    *0x2f92(%rip)        # 4038 <fopen@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <getline@plt>:
    10b0:	ff 25 8a 2f 00 00    	jmp    *0x2f8a(%rip)        # 4040 <getline@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010c0 <exit@plt>:
    10c0:	ff 25 82 2f 00 00    	jmp    *0x2f82(%rip)        # 4048 <exit@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	push   $0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010d0 <strstr@plt>:
    10d0:	ff 25 7a 2f 00 00    	jmp    *0x2f7a(%rip)        # 4050 <strstr@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	push   $0xa
    10db:	e9 40 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

00000000000010e0 <_start>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	31 ed                	xor    %ebp,%ebp
    10e6:	49 89 d1             	mov    %rdx,%r9
    10e9:	5e                   	pop    %rsi
    10ea:	48 89 e2             	mov    %rsp,%rdx
    10ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10f1:	50                   	push   %rax
    10f2:	54                   	push   %rsp
    10f3:	45 31 c0             	xor    %r8d,%r8d
    10f6:	31 c9                	xor    %ecx,%ecx
    10f8:	48 8d 3d 1d 02 00 00 	lea    0x21d(%rip),%rdi        # 131c <main>
    10ff:	ff 15 bb 2e 00 00    	call   *0x2ebb(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    1105:	f4                   	hlt
    1106:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    110d:	00 00 00 
    1110:	48 8d 3d 51 2f 00 00 	lea    0x2f51(%rip),%rdi        # 4068 <__TMC_END__>
    1117:	48 8d 05 4a 2f 00 00 	lea    0x2f4a(%rip),%rax        # 4068 <__TMC_END__>
    111e:	48 39 f8             	cmp    %rdi,%rax
    1121:	74 15                	je     1138 <_start+0x58>
    1123:	48 8b 05 9e 2e 00 00 	mov    0x2e9e(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    112a:	48 85 c0             	test   %rax,%rax
    112d:	74 09                	je     1138 <_start+0x58>
    112f:	ff e0                	jmp    *%rax
    1131:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1138:	c3                   	ret
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1140:	48 8d 3d 21 2f 00 00 	lea    0x2f21(%rip),%rdi        # 4068 <__TMC_END__>
    1147:	48 8d 35 1a 2f 00 00 	lea    0x2f1a(%rip),%rsi        # 4068 <__TMC_END__>
    114e:	48 29 fe             	sub    %rdi,%rsi
    1151:	48 89 f0             	mov    %rsi,%rax
    1154:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1158:	48 c1 f8 03          	sar    $0x3,%rax
    115c:	48 01 c6             	add    %rax,%rsi
    115f:	48 d1 fe             	sar    $1,%rsi
    1162:	74 14                	je     1178 <_start+0x98>
    1164:	48 8b 05 6d 2e 00 00 	mov    0x2e6d(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    116b:	48 85 c0             	test   %rax,%rax
    116e:	74 08                	je     1178 <_start+0x98>
    1170:	ff e0                	jmp    *%rax
    1172:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1178:	c3                   	ret
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1180:	f3 0f 1e fa          	endbr64
    1184:	80 3d dd 2e 00 00 00 	cmpb   $0x0,0x2edd(%rip)        # 4068 <__TMC_END__>
    118b:	75 33                	jne    11c0 <_start+0xe0>
    118d:	55                   	push   %rbp
    118e:	48 83 3d 4a 2e 00 00 	cmpq   $0x0,0x2e4a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1195:	00 
    1196:	48 89 e5             	mov    %rsp,%rbp
    1199:	74 0d                	je     11a8 <_start+0xc8>
    119b:	48 8b 3d be 2e 00 00 	mov    0x2ebe(%rip),%rdi        # 4060 <__dso_handle>
    11a2:	ff 15 38 2e 00 00    	call   *0x2e38(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    11a8:	e8 63 ff ff ff       	call   1110 <_start+0x30>
    11ad:	c6 05 b4 2e 00 00 01 	movb   $0x1,0x2eb4(%rip)        # 4068 <__TMC_END__>
    11b4:	5d                   	pop    %rbp
    11b5:	c3                   	ret
    11b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11bd:	00 00 00 
    11c0:	c3                   	ret
    11c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    11c8:	00 00 00 00 
    11cc:	0f 1f 40 00          	nopl   0x0(%rax)
    11d0:	f3 0f 1e fa          	endbr64
    11d4:	e9 67 ff ff ff       	jmp    1140 <_start+0x60>

00000000000011d9 <validateDir>:
    11d9:	41 54                	push   %r12
    11db:	55                   	push   %rbp
    11dc:	53                   	push   %rbx
    11dd:	48 81 ec 20 10 00 00 	sub    $0x1020,%rsp
    11e4:	49 89 fc             	mov    %rdi,%r12
    11e7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    11ee:	00 00 
    11f0:	48 89 84 24 18 10 00 	mov    %rax,0x1018(%rsp)
    11f7:	00 
    11f8:	31 c0                	xor    %eax,%eax
    11fa:	48 8d 3d 03 0e 00 00 	lea    0xe03(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1201:	e8 2a fe ff ff       	call   1030 <getenv@plt>
    1206:	48 89 c3             	mov    %rax,%rbx
    1209:	48 89 c7             	mov    %rax,%rdi
    120c:	e8 2f fe ff ff       	call   1040 <strlen@plt>
    1211:	48 01 d8             	add    %rbx,%rax
    1214:	48 b9 2f 2e 62 6f 6f 	movabs $0x616d6b6f6f622e2f,%rcx
    121b:	6b 6d 61 
    121e:	48 89 08             	mov    %rcx,(%rax)
    1221:	c7 40 08 72 6b 73 00 	movl   $0x736b72,0x8(%rax)
    1228:	48 8d 35 ea 0d 00 00 	lea    0xdea(%rip),%rsi        # 2019 <_IO_stdin_used+0x19>
    122f:	48 89 df             	mov    %rbx,%rdi
    1232:	e8 69 fe ff ff       	call   10a0 <fopen@plt>
    1237:	48 85 c0             	test   %rax,%rax
    123a:	0f 84 b9 00 00 00    	je     12f9 <validateDir+0x120>
    1240:	48 89 c5             	mov    %rax,%rbp
    1243:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1248:	be 00 10 00 00       	mov    $0x1000,%esi
    124d:	e8 2e fe ff ff       	call   1080 <getcwd@plt>
    1252:	48 85 c0             	test   %rax,%rax
    1255:	74 16                	je     126d <validateDir+0x94>
    1257:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
    125c:	48 8d 3d a6 0d 00 00 	lea    0xda6(%rip),%rdi        # 2009 <_IO_stdin_used+0x9>
    1263:	b8 00 00 00 00       	mov    $0x0,%eax
    1268:	e8 03 fe ff ff       	call   1070 <printf@plt>
    126d:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    1274:	00 
    1275:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    127c:	00 00 
    127e:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
    1283:	48 89 e7             	mov    %rsp,%rdi
    1286:	48 89 ea             	mov    %rbp,%rdx
    1289:	e8 22 fe ff ff       	call   10b0 <getline@plt>
    128e:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
    1292:	74 46                	je     12da <validateDir+0x101>
    1294:	48 8b 34 24          	mov    (%rsp),%rsi
    1298:	48 8d 3d 73 0d 00 00 	lea    0xd73(%rip),%rdi        # 2012 <_IO_stdin_used+0x12>
    129f:	b8 00 00 00 00       	mov    $0x0,%eax
    12a4:	e8 c7 fd ff ff       	call   1070 <printf@plt>
    12a9:	48 8b 1c 24          	mov    (%rsp),%rbx
    12ad:	4c 89 e6             	mov    %r12,%rsi
    12b0:	48 89 df             	mov    %rbx,%rdi
    12b3:	e8 18 fe ff ff       	call   10d0 <strstr@plt>
    12b8:	48 85 c0             	test   %rax,%rax
    12bb:	74 c1                	je     127e <validateDir+0xa5>
    12bd:	48 89 de             	mov    %rbx,%rsi
    12c0:	48 8d 3d 4b 0d 00 00 	lea    0xd4b(%rip),%rdi        # 2012 <_IO_stdin_used+0x12>
    12c7:	b8 00 00 00 00       	mov    $0x0,%eax
    12cc:	e8 9f fd ff ff       	call   1070 <printf@plt>
    12d1:	48 8b 3c 24          	mov    (%rsp),%rdi
    12d5:	e8 76 fd ff ff       	call   1050 <chdir@plt>
    12da:	48 8b 84 24 18 10 00 	mov    0x1018(%rsp),%rax
    12e1:	00 
    12e2:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    12e9:	00 00 
    12eb:	75 2a                	jne    1317 <validateDir+0x13e>
    12ed:	48 81 c4 20 10 00 00 	add    $0x1020,%rsp
    12f4:	5b                   	pop    %rbx
    12f5:	5d                   	pop    %rbp
    12f6:	41 5c                	pop    %r12
    12f8:	c3                   	ret
    12f9:	48 89 de             	mov    %rbx,%rsi
    12fc:	48 8d 3d 25 0d 00 00 	lea    0xd25(%rip),%rdi        # 2028 <_IO_stdin_used+0x28>
    1303:	b8 00 00 00 00       	mov    $0x0,%eax
    1308:	e8 63 fd ff ff       	call   1070 <printf@plt>
    130d:	bf 02 00 00 00       	mov    $0x2,%edi
    1312:	e8 a9 fd ff ff       	call   10c0 <exit@plt>
    1317:	e8 44 fd ff ff       	call   1060 <__stack_chk_fail@plt>

000000000000131c <main>:
    131c:	53                   	push   %rbx
    131d:	83 ff 02             	cmp    $0x2,%edi
    1320:	75 42                	jne    1364 <main+0x48>
    1322:	48 8b 5e 08          	mov    0x8(%rsi),%rbx
    1326:	48 8d 35 ee 0c 00 00 	lea    0xcee(%rip),%rsi        # 201b <_IO_stdin_used+0x1b>
    132d:	48 89 df             	mov    %rbx,%rdi
    1330:	e8 5b fd ff ff       	call   1090 <strcmp@plt>
    1335:	85 c0                	test   %eax,%eax
    1337:	74 13                	je     134c <main+0x30>
    1339:	48 8d 35 de 0c 00 00 	lea    0xcde(%rip),%rsi        # 201e <_IO_stdin_used+0x1e>
    1340:	48 89 df             	mov    %rbx,%rdi
    1343:	e8 48 fd ff ff       	call   1090 <strcmp@plt>
    1348:	85 c0                	test   %eax,%eax
    134a:	75 30                	jne    137c <main+0x60>
    134c:	48 8d 3d cd 0c 00 00 	lea    0xccd(%rip),%rdi        # 2020 <_IO_stdin_used+0x20>
    1353:	b8 00 00 00 00       	mov    $0x0,%eax
    1358:	e8 13 fd ff ff       	call   1070 <printf@plt>
    135d:	b8 00 00 00 00       	mov    $0x0,%eax
    1362:	5b                   	pop    %rbx
    1363:	c3                   	ret
    1364:	48 8d 3d aa 0c 00 00 	lea    0xcaa(%rip),%rdi        # 2015 <_IO_stdin_used+0x15>
    136b:	b8 00 00 00 00       	mov    $0x0,%eax
    1370:	e8 fb fc ff ff       	call   1070 <printf@plt>
    1375:	b8 01 00 00 00       	mov    $0x1,%eax
    137a:	eb e6                	jmp    1362 <main+0x46>
    137c:	48 89 df             	mov    %rbx,%rdi
    137f:	e8 55 fe ff ff       	call   11d9 <validateDir>
    1384:	b8 00 00 00 00       	mov    $0x0,%eax
    1389:	eb d7                	jmp    1362 <main+0x46>

Disassembly of section .fini:

000000000000138c <_fini>:
    138c:	f3 0f 1e fa          	endbr64
    1390:	48 83 ec 08          	sub    $0x8,%rsp
    1394:	48 83 c4 08          	add    $0x8,%rsp
    1398:	c3                   	ret
