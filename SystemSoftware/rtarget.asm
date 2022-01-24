
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400c48 <_init>:
  400c48:	48 83 ec 08          	sub    $0x8,%rsp
  400c4c:	48 8b 05 a5 43 20 00 	mov    0x2043a5(%rip),%rax        # 604ff8 <__gmon_start__>
  400c53:	48 85 c0             	test   %rax,%rax
  400c56:	74 02                	je     400c5a <_init+0x12>
  400c58:	ff d0                	callq  *%rax
  400c5a:	48 83 c4 08          	add    $0x8,%rsp
  400c5e:	c3                   	retq   

Disassembly of section .plt:

0000000000400c60 <.plt>:
  400c60:	ff 35 a2 43 20 00    	pushq  0x2043a2(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c66:	ff 25 a4 43 20 00    	jmpq   *0x2043a4(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c70 <strcasecmp@plt>:
  400c70:	ff 25 a2 43 20 00    	jmpq   *0x2043a2(%rip)        # 605018 <strcasecmp@GLIBC_2.2.5>
  400c76:	68 00 00 00 00       	pushq  $0x0
  400c7b:	e9 e0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c80 <__errno_location@plt>:
  400c80:	ff 25 9a 43 20 00    	jmpq   *0x20439a(%rip)        # 605020 <__errno_location@GLIBC_2.2.5>
  400c86:	68 01 00 00 00       	pushq  $0x1
  400c8b:	e9 d0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c90 <srandom@plt>:
  400c90:	ff 25 92 43 20 00    	jmpq   *0x204392(%rip)        # 605028 <srandom@GLIBC_2.2.5>
  400c96:	68 02 00 00 00       	pushq  $0x2
  400c9b:	e9 c0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ca0 <strncmp@plt>:
  400ca0:	ff 25 8a 43 20 00    	jmpq   *0x20438a(%rip)        # 605030 <strncmp@GLIBC_2.2.5>
  400ca6:	68 03 00 00 00       	pushq  $0x3
  400cab:	e9 b0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cb0 <strcpy@plt>:
  400cb0:	ff 25 82 43 20 00    	jmpq   *0x204382(%rip)        # 605038 <strcpy@GLIBC_2.2.5>
  400cb6:	68 04 00 00 00       	pushq  $0x4
  400cbb:	e9 a0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cc0 <puts@plt>:
  400cc0:	ff 25 7a 43 20 00    	jmpq   *0x20437a(%rip)        # 605040 <puts@GLIBC_2.2.5>
  400cc6:	68 05 00 00 00       	pushq  $0x5
  400ccb:	e9 90 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cd0 <write@plt>:
  400cd0:	ff 25 72 43 20 00    	jmpq   *0x204372(%rip)        # 605048 <write@GLIBC_2.2.5>
  400cd6:	68 06 00 00 00       	pushq  $0x6
  400cdb:	e9 80 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ce0 <__stack_chk_fail@plt>:
  400ce0:	ff 25 6a 43 20 00    	jmpq   *0x20436a(%rip)        # 605050 <__stack_chk_fail@GLIBC_2.4>
  400ce6:	68 07 00 00 00       	pushq  $0x7
  400ceb:	e9 70 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cf0 <mmap@plt>:
  400cf0:	ff 25 62 43 20 00    	jmpq   *0x204362(%rip)        # 605058 <mmap@GLIBC_2.2.5>
  400cf6:	68 08 00 00 00       	pushq  $0x8
  400cfb:	e9 60 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d00 <memset@plt>:
  400d00:	ff 25 5a 43 20 00    	jmpq   *0x20435a(%rip)        # 605060 <memset@GLIBC_2.2.5>
  400d06:	68 09 00 00 00       	pushq  $0x9
  400d0b:	e9 50 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d10 <alarm@plt>:
  400d10:	ff 25 52 43 20 00    	jmpq   *0x204352(%rip)        # 605068 <alarm@GLIBC_2.2.5>
  400d16:	68 0a 00 00 00       	pushq  $0xa
  400d1b:	e9 40 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d20 <close@plt>:
  400d20:	ff 25 4a 43 20 00    	jmpq   *0x20434a(%rip)        # 605070 <close@GLIBC_2.2.5>
  400d26:	68 0b 00 00 00       	pushq  $0xb
  400d2b:	e9 30 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d30 <read@plt>:
  400d30:	ff 25 42 43 20 00    	jmpq   *0x204342(%rip)        # 605078 <read@GLIBC_2.2.5>
  400d36:	68 0c 00 00 00       	pushq  $0xc
  400d3b:	e9 20 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d40 <signal@plt>:
  400d40:	ff 25 3a 43 20 00    	jmpq   *0x20433a(%rip)        # 605080 <signal@GLIBC_2.2.5>
  400d46:	68 0d 00 00 00       	pushq  $0xd
  400d4b:	e9 10 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d50 <gethostbyname@plt>:
  400d50:	ff 25 32 43 20 00    	jmpq   *0x204332(%rip)        # 605088 <gethostbyname@GLIBC_2.2.5>
  400d56:	68 0e 00 00 00       	pushq  $0xe
  400d5b:	e9 00 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d60 <__memmove_chk@plt>:
  400d60:	ff 25 2a 43 20 00    	jmpq   *0x20432a(%rip)        # 605090 <__memmove_chk@GLIBC_2.3.4>
  400d66:	68 0f 00 00 00       	pushq  $0xf
  400d6b:	e9 f0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d70 <strtol@plt>:
  400d70:	ff 25 22 43 20 00    	jmpq   *0x204322(%rip)        # 605098 <strtol@GLIBC_2.2.5>
  400d76:	68 10 00 00 00       	pushq  $0x10
  400d7b:	e9 e0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d80 <memcpy@plt>:
  400d80:	ff 25 1a 43 20 00    	jmpq   *0x20431a(%rip)        # 6050a0 <memcpy@GLIBC_2.14>
  400d86:	68 11 00 00 00       	pushq  $0x11
  400d8b:	e9 d0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d90 <time@plt>:
  400d90:	ff 25 12 43 20 00    	jmpq   *0x204312(%rip)        # 6050a8 <time@GLIBC_2.2.5>
  400d96:	68 12 00 00 00       	pushq  $0x12
  400d9b:	e9 c0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400da0 <random@plt>:
  400da0:	ff 25 0a 43 20 00    	jmpq   *0x20430a(%rip)        # 6050b0 <random@GLIBC_2.2.5>
  400da6:	68 13 00 00 00       	pushq  $0x13
  400dab:	e9 b0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400db0 <_IO_getc@plt>:
  400db0:	ff 25 02 43 20 00    	jmpq   *0x204302(%rip)        # 6050b8 <_IO_getc@GLIBC_2.2.5>
  400db6:	68 14 00 00 00       	pushq  $0x14
  400dbb:	e9 a0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dc0 <__isoc99_sscanf@plt>:
  400dc0:	ff 25 fa 42 20 00    	jmpq   *0x2042fa(%rip)        # 6050c0 <__isoc99_sscanf@GLIBC_2.7>
  400dc6:	68 15 00 00 00       	pushq  $0x15
  400dcb:	e9 90 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dd0 <munmap@plt>:
  400dd0:	ff 25 f2 42 20 00    	jmpq   *0x2042f2(%rip)        # 6050c8 <munmap@GLIBC_2.2.5>
  400dd6:	68 16 00 00 00       	pushq  $0x16
  400ddb:	e9 80 fe ff ff       	jmpq   400c60 <.plt>

0000000000400de0 <__printf_chk@plt>:
  400de0:	ff 25 ea 42 20 00    	jmpq   *0x2042ea(%rip)        # 6050d0 <__printf_chk@GLIBC_2.3.4>
  400de6:	68 17 00 00 00       	pushq  $0x17
  400deb:	e9 70 fe ff ff       	jmpq   400c60 <.plt>

0000000000400df0 <fopen@plt>:
  400df0:	ff 25 e2 42 20 00    	jmpq   *0x2042e2(%rip)        # 6050d8 <fopen@GLIBC_2.2.5>
  400df6:	68 18 00 00 00       	pushq  $0x18
  400dfb:	e9 60 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e00 <getopt@plt>:
  400e00:	ff 25 da 42 20 00    	jmpq   *0x2042da(%rip)        # 6050e0 <getopt@GLIBC_2.2.5>
  400e06:	68 19 00 00 00       	pushq  $0x19
  400e0b:	e9 50 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e10 <strtoul@plt>:
  400e10:	ff 25 d2 42 20 00    	jmpq   *0x2042d2(%rip)        # 6050e8 <strtoul@GLIBC_2.2.5>
  400e16:	68 1a 00 00 00       	pushq  $0x1a
  400e1b:	e9 40 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e20 <gethostname@plt>:
  400e20:	ff 25 ca 42 20 00    	jmpq   *0x2042ca(%rip)        # 6050f0 <gethostname@GLIBC_2.2.5>
  400e26:	68 1b 00 00 00       	pushq  $0x1b
  400e2b:	e9 30 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e30 <exit@plt>:
  400e30:	ff 25 c2 42 20 00    	jmpq   *0x2042c2(%rip)        # 6050f8 <exit@GLIBC_2.2.5>
  400e36:	68 1c 00 00 00       	pushq  $0x1c
  400e3b:	e9 20 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e40 <connect@plt>:
  400e40:	ff 25 ba 42 20 00    	jmpq   *0x2042ba(%rip)        # 605100 <connect@GLIBC_2.2.5>
  400e46:	68 1d 00 00 00       	pushq  $0x1d
  400e4b:	e9 10 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e50 <__fprintf_chk@plt>:
  400e50:	ff 25 b2 42 20 00    	jmpq   *0x2042b2(%rip)        # 605108 <__fprintf_chk@GLIBC_2.3.4>
  400e56:	68 1e 00 00 00       	pushq  $0x1e
  400e5b:	e9 00 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e60 <__sprintf_chk@plt>:
  400e60:	ff 25 aa 42 20 00    	jmpq   *0x2042aa(%rip)        # 605110 <__sprintf_chk@GLIBC_2.3.4>
  400e66:	68 1f 00 00 00       	pushq  $0x1f
  400e6b:	e9 f0 fd ff ff       	jmpq   400c60 <.plt>

0000000000400e70 <socket@plt>:
  400e70:	ff 25 a2 42 20 00    	jmpq   *0x2042a2(%rip)        # 605118 <socket@GLIBC_2.2.5>
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
  400e8f:	49 c7 c0 e0 2f 40 00 	mov    $0x402fe0,%r8
  400e96:	48 c7 c1 70 2f 40 00 	mov    $0x402f70,%rcx
  400e9d:	48 c7 c7 73 11 40 00 	mov    $0x401173,%rdi
  400ea4:	ff 15 46 41 20 00    	callq  *0x204146(%rip)        # 604ff0 <__libc_start_main@GLIBC_2.2.5>
  400eaa:	f4                   	hlt    
  400eab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400eb0 <_dl_relocate_static_pie>:
  400eb0:	f3 c3                	repz retq 
  400eb2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400eb9:	00 00 00 
  400ebc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ec0 <deregister_tm_clones>:
  400ec0:	55                   	push   %rbp
  400ec1:	b8 90 54 60 00       	mov    $0x605490,%eax
  400ec6:	48 3d 90 54 60 00    	cmp    $0x605490,%rax
  400ecc:	48 89 e5             	mov    %rsp,%rbp
  400ecf:	74 17                	je     400ee8 <deregister_tm_clones+0x28>
  400ed1:	b8 00 00 00 00       	mov    $0x0,%eax
  400ed6:	48 85 c0             	test   %rax,%rax
  400ed9:	74 0d                	je     400ee8 <deregister_tm_clones+0x28>
  400edb:	5d                   	pop    %rbp
  400edc:	bf 90 54 60 00       	mov    $0x605490,%edi
  400ee1:	ff e0                	jmpq   *%rax
  400ee3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400ee8:	5d                   	pop    %rbp
  400ee9:	c3                   	retq   
  400eea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400ef0 <register_tm_clones>:
  400ef0:	be 90 54 60 00       	mov    $0x605490,%esi
  400ef5:	55                   	push   %rbp
  400ef6:	48 81 ee 90 54 60 00 	sub    $0x605490,%rsi
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
  400f1e:	bf 90 54 60 00       	mov    $0x605490,%edi
  400f23:	ff e0                	jmpq   *%rax
  400f25:	0f 1f 00             	nopl   (%rax)
  400f28:	5d                   	pop    %rbp
  400f29:	c3                   	retq   
  400f2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f30 <__do_global_dtors_aux>:
  400f30:	80 3d 91 45 20 00 00 	cmpb   $0x0,0x204591(%rip)        # 6054c8 <completed.7697>
  400f37:	75 17                	jne    400f50 <__do_global_dtors_aux+0x20>
  400f39:	55                   	push   %rbp
  400f3a:	48 89 e5             	mov    %rsp,%rbp
  400f3d:	e8 7e ff ff ff       	callq  400ec0 <deregister_tm_clones>
  400f42:	c6 05 7f 45 20 00 01 	movb   $0x1,0x20457f(%rip)        # 6054c8 <completed.7697>
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
  400f6e:	83 3d 93 45 20 00 00 	cmpl   $0x0,0x204593(%rip)        # 605508 <is_checker>
  400f75:	74 46                	je     400fbd <usage+0x56>
  400f77:	be f8 2f 40 00       	mov    $0x402ff8,%esi
  400f7c:	bf 01 00 00 00       	mov    $0x1,%edi
  400f81:	b8 00 00 00 00       	mov    $0x0,%eax
  400f86:	e8 55 fe ff ff       	callq  400de0 <__printf_chk@plt>
  400f8b:	bf 30 30 40 00       	mov    $0x403030,%edi
  400f90:	e8 2b fd ff ff       	callq  400cc0 <puts@plt>
  400f95:	bf a8 31 40 00       	mov    $0x4031a8,%edi
  400f9a:	e8 21 fd ff ff       	callq  400cc0 <puts@plt>
  400f9f:	bf 58 30 40 00       	mov    $0x403058,%edi
  400fa4:	e8 17 fd ff ff       	callq  400cc0 <puts@plt>
  400fa9:	bf c2 31 40 00       	mov    $0x4031c2,%edi
  400fae:	e8 0d fd ff ff       	callq  400cc0 <puts@plt>
  400fb3:	bf 00 00 00 00       	mov    $0x0,%edi
  400fb8:	e8 73 fe ff ff       	callq  400e30 <exit@plt>
  400fbd:	be de 31 40 00       	mov    $0x4031de,%esi
  400fc2:	bf 01 00 00 00       	mov    $0x1,%edi
  400fc7:	b8 00 00 00 00       	mov    $0x0,%eax
  400fcc:	e8 0f fe ff ff       	callq  400de0 <__printf_chk@plt>
  400fd1:	bf 80 30 40 00       	mov    $0x403080,%edi
  400fd6:	e8 e5 fc ff ff       	callq  400cc0 <puts@plt>
  400fdb:	bf a8 30 40 00       	mov    $0x4030a8,%edi
  400fe0:	e8 db fc ff ff       	callq  400cc0 <puts@plt>
  400fe5:	bf fc 31 40 00       	mov    $0x4031fc,%edi
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
  40100f:	89 3d e3 44 20 00    	mov    %edi,0x2044e3(%rip)        # 6054f8 <check_level>
  401015:	8b 3d 2d 41 20 00    	mov    0x20412d(%rip),%edi        # 605148 <target_id>
  40101b:	e8 2a 1f 00 00       	callq  402f4a <gencookie>
  401020:	89 05 de 44 20 00    	mov    %eax,0x2044de(%rip)        # 605504 <cookie>
  401026:	89 c7                	mov    %eax,%edi
  401028:	e8 1d 1f 00 00       	callq  402f4a <gencookie>
  40102d:	89 05 cd 44 20 00    	mov    %eax,0x2044cd(%rip)        # 605500 <authkey>
  401033:	8b 05 0f 41 20 00    	mov    0x20410f(%rip),%eax        # 605148 <target_id>
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
  401066:	48 89 05 13 44 20 00 	mov    %rax,0x204413(%rip)        # 605480 <buf_offset>
  40106d:	c6 05 b4 50 20 00 72 	movb   $0x72,0x2050b4(%rip)        # 606128 <target_prefix>
  401074:	83 3d 0d 44 20 00 00 	cmpl   $0x0,0x20440d(%rip)        # 605488 <notify>
  40107b:	74 09                	je     401086 <initialize_target+0x95>
  40107d:	83 3d 84 44 20 00 00 	cmpl   $0x0,0x204484(%rip)        # 605508 <is_checker>
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
  4010d7:	48 8b 3c c5 60 51 60 	mov    0x605160(,%rax,8),%rdi
  4010de:	00 
  4010df:	48 85 ff             	test   %rdi,%rdi
  4010e2:	74 2a                	je     40110e <initialize_target+0x11d>
  4010e4:	48 89 e6             	mov    %rsp,%rsi
  4010e7:	e8 84 fb ff ff       	callq  400c70 <strcasecmp@plt>
  4010ec:	85 c0                	test   %eax,%eax
  4010ee:	74 19                	je     401109 <initialize_target+0x118>
  4010f0:	83 c3 01             	add    $0x1,%ebx
  4010f3:	eb df                	jmp    4010d4 <initialize_target+0xe3>
  4010f5:	bf d8 30 40 00       	mov    $0x4030d8,%edi
  4010fa:	e8 c1 fb ff ff       	callq  400cc0 <puts@plt>
  4010ff:	bf 08 00 00 00       	mov    $0x8,%edi
  401104:	e8 27 fd ff ff       	callq  400e30 <exit@plt>
  401109:	bd 01 00 00 00       	mov    $0x1,%ebp
  40110e:	85 ed                	test   %ebp,%ebp
  401110:	74 3b                	je     40114d <initialize_target+0x15c>
  401112:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401119:	00 
  40111a:	e8 80 1b 00 00       	callq  402c9f <init_driver>
  40111f:	85 c0                	test   %eax,%eax
  401121:	0f 89 5f ff ff ff    	jns    401086 <initialize_target+0x95>
  401127:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  40112e:	00 
  40112f:	be 50 31 40 00       	mov    $0x403150,%esi
  401134:	bf 01 00 00 00       	mov    $0x1,%edi
  401139:	b8 00 00 00 00       	mov    $0x0,%eax
  40113e:	e8 9d fc ff ff       	callq  400de0 <__printf_chk@plt>
  401143:	bf 08 00 00 00       	mov    $0x8,%edi
  401148:	e8 e3 fc ff ff       	callq  400e30 <exit@plt>
  40114d:	48 89 e2             	mov    %rsp,%rdx
  401150:	be 10 31 40 00       	mov    $0x403110,%esi
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
  401181:	be dc 1f 40 00       	mov    $0x401fdc,%esi
  401186:	bf 0b 00 00 00       	mov    $0xb,%edi
  40118b:	e8 b0 fb ff ff       	callq  400d40 <signal@plt>
  401190:	be 8e 1f 40 00       	mov    $0x401f8e,%esi
  401195:	bf 07 00 00 00       	mov    $0x7,%edi
  40119a:	e8 a1 fb ff ff       	callq  400d40 <signal@plt>
  40119f:	be 2a 20 40 00       	mov    $0x40202a,%esi
  4011a4:	bf 04 00 00 00       	mov    $0x4,%edi
  4011a9:	e8 92 fb ff ff       	callq  400d40 <signal@plt>
  4011ae:	83 3d 53 43 20 00 00 	cmpl   $0x0,0x204353(%rip)        # 605508 <is_checker>
  4011b5:	75 24                	jne    4011db <main+0x68>
  4011b7:	bd 15 32 40 00       	mov    $0x403215,%ebp
  4011bc:	48 8b 05 dd 42 20 00 	mov    0x2042dd(%rip),%rax        # 6054a0 <stdin@@GLIBC_2.2.5>
  4011c3:	48 89 05 26 43 20 00 	mov    %rax,0x204326(%rip)        # 6054f0 <infile>
  4011ca:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4011d0:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4011d6:	e9 85 00 00 00       	jmpq   401260 <main+0xed>
  4011db:	be 78 20 40 00       	mov    $0x402078,%esi
  4011e0:	bf 0e 00 00 00       	mov    $0xe,%edi
  4011e5:	e8 56 fb ff ff       	callq  400d40 <signal@plt>
  4011ea:	bf 05 00 00 00       	mov    $0x5,%edi
  4011ef:	e8 1c fb ff ff       	callq  400d10 <alarm@plt>
  4011f4:	bd 1a 32 40 00       	mov    $0x40321a,%ebp
  4011f9:	eb c1                	jmp    4011bc <main+0x49>
  4011fb:	48 8b 3b             	mov    (%rbx),%rdi
  4011fe:	e8 64 fd ff ff       	callq  400f67 <usage>
  401203:	be c5 34 40 00       	mov    $0x4034c5,%esi
  401208:	48 8b 3d 99 42 20 00 	mov    0x204299(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  40120f:	e8 dc fb ff ff       	callq  400df0 <fopen@plt>
  401214:	48 89 05 d5 42 20 00 	mov    %rax,0x2042d5(%rip)        # 6054f0 <infile>
  40121b:	48 85 c0             	test   %rax,%rax
  40121e:	75 40                	jne    401260 <main+0xed>
  401220:	48 8b 0d 81 42 20 00 	mov    0x204281(%rip),%rcx        # 6054a8 <optarg@@GLIBC_2.2.5>
  401227:	ba 22 32 40 00       	mov    $0x403222,%edx
  40122c:	be 01 00 00 00       	mov    $0x1,%esi
  401231:	48 8b 3d 88 42 20 00 	mov    0x204288(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  401238:	e8 13 fc ff ff       	callq  400e50 <__fprintf_chk@plt>
  40123d:	b8 01 00 00 00       	mov    $0x1,%eax
  401242:	e9 cc 00 00 00       	jmpq   401313 <main+0x1a0>
  401247:	ba 10 00 00 00       	mov    $0x10,%edx
  40124c:	be 00 00 00 00       	mov    $0x0,%esi
  401251:	48 8b 3d 50 42 20 00 	mov    0x204250(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
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
  40127f:	ff 24 c5 60 32 40 00 	jmpq   *0x403260(,%rax,8)
  401286:	ba 0a 00 00 00       	mov    $0xa,%edx
  40128b:	be 00 00 00 00       	mov    $0x0,%esi
  401290:	48 8b 3d 11 42 20 00 	mov    0x204211(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  401297:	e8 d4 fa ff ff       	callq  400d70 <strtol@plt>
  40129c:	41 89 c5             	mov    %eax,%r13d
  40129f:	eb bf                	jmp    401260 <main+0xed>
  4012a1:	c7 05 dd 41 20 00 00 	movl   $0x0,0x2041dd(%rip)        # 605488 <notify>
  4012a8:	00 00 00 
  4012ab:	eb b3                	jmp    401260 <main+0xed>
  4012ad:	be 3f 32 40 00       	mov    $0x40323f,%esi
  4012b2:	bf 01 00 00 00       	mov    $0x1,%edi
  4012b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4012bc:	e8 1f fb ff ff       	callq  400de0 <__printf_chk@plt>
  4012c1:	48 8b 3b             	mov    (%rbx),%rdi
  4012c4:	e8 9e fc ff ff       	callq  400f67 <usage>
  4012c9:	be 01 00 00 00       	mov    $0x1,%esi
  4012ce:	44 89 ef             	mov    %r13d,%edi
  4012d1:	e8 1b fd ff ff       	callq  400ff1 <initialize_target>
  4012d6:	83 3d 2b 42 20 00 00 	cmpl   $0x0,0x20422b(%rip)        # 605508 <is_checker>
  4012dd:	74 09                	je     4012e8 <main+0x175>
  4012df:	44 39 35 1a 42 20 00 	cmp    %r14d,0x20421a(%rip)        # 605500 <authkey>
  4012e6:	75 34                	jne    40131c <main+0x1a9>
  4012e8:	8b 15 16 42 20 00    	mov    0x204216(%rip),%edx        # 605504 <cookie>
  4012ee:	be 52 32 40 00       	mov    $0x403252,%esi
  4012f3:	bf 01 00 00 00       	mov    $0x1,%edi
  4012f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4012fd:	e8 de fa ff ff       	callq  400de0 <__printf_chk@plt>
  401302:	48 8b 3d 77 41 20 00 	mov    0x204177(%rip),%rdi        # 605480 <buf_offset>
  401309:	e8 bd 0d 00 00       	callq  4020cb <launch>
  40130e:	b8 00 00 00 00       	mov    $0x0,%eax
  401313:	5b                   	pop    %rbx
  401314:	5d                   	pop    %rbp
  401315:	41 5c                	pop    %r12
  401317:	41 5d                	pop    %r13
  401319:	41 5e                	pop    %r14
  40131b:	c3                   	retq   
  40131c:	44 89 f2             	mov    %r14d,%edx
  40131f:	be 78 31 40 00       	mov    $0x403178,%esi
  401324:	bf 01 00 00 00       	mov    $0x1,%edi
  401329:	b8 00 00 00 00       	mov    $0x0,%eax
  40132e:	e8 ad fa ff ff       	callq  400de0 <__printf_chk@plt>
  401333:	b8 00 00 00 00       	mov    $0x0,%eax
  401338:	e8 da 08 00 00       	callq  401c17 <check_fail>
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
  4018a8:	e8 9f 03 00 00       	callq  401c4c <Gets>
  4018ad:	b8 01 00 00 00       	mov    $0x1,%eax
  4018b2:	48 83 c4 28          	add    $0x28,%rsp
  4018b6:	c3                   	retq   

00000000004018b7 <touch1>:
  4018b7:	48 83 ec 08          	sub    $0x8,%rsp
  4018bb:	c7 05 37 3c 20 00 01 	movl   $0x1,0x203c37(%rip)        # 6054fc <vlevel>
  4018c2:	00 00 00 
  4018c5:	bf 1b 33 40 00       	mov    $0x40331b,%edi
  4018ca:	e8 f1 f3 ff ff       	callq  400cc0 <puts@plt>
  4018cf:	bf 01 00 00 00       	mov    $0x1,%edi
  4018d4:	e8 c8 05 00 00       	callq  401ea1 <validate>
  4018d9:	bf 00 00 00 00       	mov    $0x0,%edi
  4018de:	e8 4d f5 ff ff       	callq  400e30 <exit@plt>

00000000004018e3 <touch2>:
  4018e3:	48 83 ec 08          	sub    $0x8,%rsp
  4018e7:	89 fa                	mov    %edi,%edx
  4018e9:	c7 05 09 3c 20 00 02 	movl   $0x2,0x203c09(%rip)        # 6054fc <vlevel>
  4018f0:	00 00 00 
  4018f3:	39 3d 0b 3c 20 00    	cmp    %edi,0x203c0b(%rip)        # 605504 <cookie>
  4018f9:	74 28                	je     401923 <touch2+0x40>
  4018fb:	be 68 33 40 00       	mov    $0x403368,%esi
  401900:	bf 01 00 00 00       	mov    $0x1,%edi
  401905:	b8 00 00 00 00       	mov    $0x0,%eax
  40190a:	e8 d1 f4 ff ff       	callq  400de0 <__printf_chk@plt>
  40190f:	bf 02 00 00 00       	mov    $0x2,%edi
  401914:	e8 4d 06 00 00       	callq  401f66 <fail>
  401919:	bf 00 00 00 00       	mov    $0x0,%edi
  40191e:	e8 0d f5 ff ff       	callq  400e30 <exit@plt>
  401923:	be 40 33 40 00       	mov    $0x403340,%esi
  401928:	bf 01 00 00 00       	mov    $0x1,%edi
  40192d:	b8 00 00 00 00       	mov    $0x0,%eax
  401932:	e8 a9 f4 ff ff       	callq  400de0 <__printf_chk@plt>
  401937:	bf 02 00 00 00       	mov    $0x2,%edi
  40193c:	e8 60 05 00 00       	callq  401ea1 <validate>
  401941:	eb d6                	jmp    401919 <touch2+0x36>

0000000000401943 <hexmatch>:
  401943:	41 54                	push   %r12
  401945:	55                   	push   %rbp
  401946:	53                   	push   %rbx
  401947:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
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
  4019a0:	b9 38 33 40 00       	mov    $0x403338,%ecx
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

00000000004019f4 <touch3>:
  4019f4:	53                   	push   %rbx
  4019f5:	48 89 fb             	mov    %rdi,%rbx
  4019f8:	c7 05 fa 3a 20 00 03 	movl   $0x3,0x203afa(%rip)        # 6054fc <vlevel>
  4019ff:	00 00 00 
  401a02:	48 89 fe             	mov    %rdi,%rsi
  401a05:	8b 3d f9 3a 20 00    	mov    0x203af9(%rip),%edi        # 605504 <cookie>
  401a0b:	e8 33 ff ff ff       	callq  401943 <hexmatch>
  401a10:	85 c0                	test   %eax,%eax
  401a12:	74 2b                	je     401a3f <touch3+0x4b>
  401a14:	48 89 da             	mov    %rbx,%rdx
  401a17:	be 90 33 40 00       	mov    $0x403390,%esi
  401a1c:	bf 01 00 00 00       	mov    $0x1,%edi
  401a21:	b8 00 00 00 00       	mov    $0x0,%eax
  401a26:	e8 b5 f3 ff ff       	callq  400de0 <__printf_chk@plt>
  401a2b:	bf 03 00 00 00       	mov    $0x3,%edi
  401a30:	e8 6c 04 00 00       	callq  401ea1 <validate>
  401a35:	bf 00 00 00 00       	mov    $0x0,%edi
  401a3a:	e8 f1 f3 ff ff       	callq  400e30 <exit@plt>
  401a3f:	48 89 da             	mov    %rbx,%rdx
  401a42:	be b8 33 40 00       	mov    $0x4033b8,%esi
  401a47:	bf 01 00 00 00       	mov    $0x1,%edi
  401a4c:	b8 00 00 00 00       	mov    $0x0,%eax
  401a51:	e8 8a f3 ff ff       	callq  400de0 <__printf_chk@plt>
  401a56:	bf 03 00 00 00       	mov    $0x3,%edi
  401a5b:	e8 06 05 00 00       	callq  401f66 <fail>
  401a60:	eb d3                	jmp    401a35 <touch3+0x41>

0000000000401a62 <test>:
  401a62:	48 83 ec 08          	sub    $0x8,%rsp
  401a66:	b8 00 00 00 00       	mov    $0x0,%eax
  401a6b:	e8 31 fe ff ff       	callq  4018a1 <getbuf>
  401a70:	89 c2                	mov    %eax,%edx
  401a72:	be e0 33 40 00       	mov    $0x4033e0,%esi
  401a77:	bf 01 00 00 00       	mov    $0x1,%edi
  401a7c:	b8 00 00 00 00       	mov    $0x0,%eax
  401a81:	e8 5a f3 ff ff       	callq  400de0 <__printf_chk@plt>
  401a86:	48 83 c4 08          	add    $0x8,%rsp
  401a8a:	c3                   	retq   

0000000000401a8b <start_farm>:
  401a8b:	b8 01 00 00 00       	mov    $0x1,%eax
  401a90:	c3                   	retq   

0000000000401a91 <getval_179>:
  401a91:	b8 ee 6e 58 90       	mov    $0x90586eee,%eax
  401a96:	c3                   	retq   

0000000000401a97 <setval_296>:
  401a97:	c7 07 48 89 c7 90    	movl   $0x90c78948,(%rdi)
  401a9d:	c3                   	retq   

0000000000401a9e <addval_436>:
  401a9e:	8d 87 48 89 c7 c3    	lea    -0x3c3876b8(%rdi),%eax
  401aa4:	c3                   	retq   

0000000000401aa5 <setval_215>:
  401aa5:	c7 07 58 90 90 90    	movl   $0x90909058,(%rdi)
  401aab:	c3                   	retq   

0000000000401aac <addval_113>:
  401aac:	8d 87 48 88 c7 c3    	lea    -0x3c3877b8(%rdi),%eax
  401ab2:	c3                   	retq   

0000000000401ab3 <getval_423>:
  401ab3:	b8 a7 58 89 c7       	mov    $0xc78958a7,%eax
  401ab8:	c3                   	retq   

0000000000401ab9 <getval_317>:
  401ab9:	b8 3a 78 c3 85       	mov    $0x85c3783a,%eax
  401abe:	c3                   	retq   

0000000000401abf <getval_166>:
  401abf:	b8 cb 18 c3 bf       	mov    $0xbfc318cb,%eax
  401ac4:	c3                   	retq   

0000000000401ac5 <mid_farm>:
  401ac5:	b8 01 00 00 00       	mov    $0x1,%eax
  401aca:	c3                   	retq   

0000000000401acb <add_xy>:
  401acb:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401acf:	c3                   	retq   

0000000000401ad0 <addval_165>:
  401ad0:	8d 87 1f c5 81 c1    	lea    -0x3e7e3ae1(%rdi),%eax
  401ad6:	c3                   	retq   

0000000000401ad7 <getval_490>:
  401ad7:	b8 02 09 c1 90       	mov    $0x90c10902,%eax
  401adc:	c3                   	retq   

0000000000401add <setval_145>:
  401add:	c7 07 48 89 e0 90    	movl   $0x90e08948,(%rdi)
  401ae3:	c3                   	retq   

0000000000401ae4 <setval_324>:
  401ae4:	c7 07 89 d6 84 d2    	movl   $0xd284d689,(%rdi)
  401aea:	c3                   	retq   

0000000000401aeb <getval_426>:
  401aeb:	b8 89 d6 94 90       	mov    $0x9094d689,%eax
  401af0:	c3                   	retq   

0000000000401af1 <setval_184>:
  401af1:	c7 07 89 c1 28 c0    	movl   $0xc028c189,(%rdi)
  401af7:	c3                   	retq   

0000000000401af8 <setval_122>:
  401af8:	c7 07 8d d6 20 d2    	movl   $0xd220d68d,(%rdi)
  401afe:	c3                   	retq   

0000000000401aff <setval_483>:
  401aff:	c7 07 a9 d6 38 d2    	movl   $0xd238d6a9,(%rdi)
  401b05:	c3                   	retq   

0000000000401b06 <addval_110>:
  401b06:	8d 87 48 8d e0 90    	lea    -0x6f1f72b8(%rdi),%eax
  401b0c:	c3                   	retq   

0000000000401b0d <addval_114>:
  401b0d:	8d 87 89 c1 38 db    	lea    -0x24c73e77(%rdi),%eax
  401b13:	c3                   	retq   

0000000000401b14 <addval_491>:
  401b14:	8d 87 99 c1 20 db    	lea    -0x24df3e67(%rdi),%eax
  401b1a:	c3                   	retq   

0000000000401b1b <addval_463>:
  401b1b:	8d 87 89 ca 90 c3    	lea    -0x3c6f3577(%rdi),%eax
  401b21:	c3                   	retq   

0000000000401b22 <setval_307>:
  401b22:	c7 07 88 ca 84 db    	movl   $0xdb84ca88,(%rdi)
  401b28:	c3                   	retq   

0000000000401b29 <addval_172>:
  401b29:	8d 87 89 d6 38 c9    	lea    -0x36c72977(%rdi),%eax
  401b2f:	c3                   	retq   

0000000000401b30 <getval_129>:
  401b30:	b8 89 d6 48 db       	mov    $0xdb48d689,%eax
  401b35:	c3                   	retq   

0000000000401b36 <setval_430>:
  401b36:	c7 07 c4 89 ca 94    	movl   $0x94ca89c4,(%rdi)
  401b3c:	c3                   	retq   

0000000000401b3d <setval_249>:
  401b3d:	c7 07 89 ca 78 c9    	movl   $0xc978ca89,(%rdi)
  401b43:	c3                   	retq   

0000000000401b44 <setval_216>:
  401b44:	c7 07 48 89 e0 c7    	movl   $0xc7e08948,(%rdi)
  401b4a:	c3                   	retq   

0000000000401b4b <getval_231>:
  401b4b:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  401b50:	c3                   	retq   

0000000000401b51 <addval_183>:
  401b51:	8d 87 81 ca 84 c0    	lea    -0x3f7b357f(%rdi),%eax
  401b57:	c3                   	retq   

0000000000401b58 <setval_481>:
  401b58:	c7 07 48 89 e0 c7    	movl   $0xc7e08948,(%rdi)
  401b5e:	c3                   	retq   

0000000000401b5f <getval_213>:
  401b5f:	b8 48 89 e0 94       	mov    $0x94e08948,%eax
  401b64:	c3                   	retq   

0000000000401b65 <getval_407>:
  401b65:	b8 89 d6 91 90       	mov    $0x9091d689,%eax
  401b6a:	c3                   	retq   

0000000000401b6b <getval_238>:
  401b6b:	b8 89 ca 91 90       	mov    $0x9091ca89,%eax
  401b70:	c3                   	retq   

0000000000401b71 <getval_421>:
  401b71:	b8 b3 99 c1 c3       	mov    $0xc3c199b3,%eax
  401b76:	c3                   	retq   

0000000000401b77 <getval_121>:
  401b77:	b8 89 ca 91 90       	mov    $0x9091ca89,%eax
  401b7c:	c3                   	retq   

0000000000401b7d <setval_169>:
  401b7d:	c7 07 89 c1 84 c9    	movl   $0xc984c189,(%rdi)
  401b83:	c3                   	retq   

0000000000401b84 <setval_191>:
  401b84:	c7 07 a9 d6 20 db    	movl   $0xdb20d6a9,(%rdi)
  401b8a:	c3                   	retq   

0000000000401b8b <addval_224>:
  401b8b:	8d 87 40 89 e0 c3    	lea    -0x3c1f76c0(%rdi),%eax
  401b91:	c3                   	retq   

0000000000401b92 <addval_394>:
  401b92:	8d 87 3d 92 89 ca    	lea    -0x35766dc3(%rdi),%eax
  401b98:	c3                   	retq   

0000000000401b99 <setval_387>:
  401b99:	c7 07 89 c1 60 c9    	movl   $0xc960c189,(%rdi)
  401b9f:	c3                   	retq   

0000000000401ba0 <getval_484>:
  401ba0:	b8 48 89 e0 c1       	mov    $0xc1e08948,%eax
  401ba5:	c3                   	retq   

0000000000401ba6 <end_farm>:
  401ba6:	b8 01 00 00 00       	mov    $0x1,%eax
  401bab:	c3                   	retq   

0000000000401bac <save_char>:
  401bac:	8b 05 72 45 20 00    	mov    0x204572(%rip),%eax        # 606124 <gets_cnt>
  401bb2:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401bb7:	7f 49                	jg     401c02 <save_char+0x56>
  401bb9:	89 f9                	mov    %edi,%ecx
  401bbb:	c0 e9 04             	shr    $0x4,%cl
  401bbe:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401bc1:	83 e1 0f             	and    $0xf,%ecx
  401bc4:	0f b6 b1 00 37 40 00 	movzbl 0x403700(%rcx),%esi
  401bcb:	48 63 ca             	movslq %edx,%rcx
  401bce:	40 88 b1 20 55 60 00 	mov    %sil,0x605520(%rcx)
  401bd5:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401bd8:	83 e7 0f             	and    $0xf,%edi
  401bdb:	0f b6 b7 00 37 40 00 	movzbl 0x403700(%rdi),%esi
  401be2:	48 63 c9             	movslq %ecx,%rcx
  401be5:	40 88 b1 20 55 60 00 	mov    %sil,0x605520(%rcx)
  401bec:	83 c2 02             	add    $0x2,%edx
  401bef:	48 63 d2             	movslq %edx,%rdx
  401bf2:	c6 82 20 55 60 00 20 	movb   $0x20,0x605520(%rdx)
  401bf9:	83 c0 01             	add    $0x1,%eax
  401bfc:	89 05 22 45 20 00    	mov    %eax,0x204522(%rip)        # 606124 <gets_cnt>
  401c02:	f3 c3                	repz retq 

0000000000401c04 <save_term>:
  401c04:	8b 05 1a 45 20 00    	mov    0x20451a(%rip),%eax        # 606124 <gets_cnt>
  401c0a:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401c0d:	48 98                	cltq   
  401c0f:	c6 80 20 55 60 00 00 	movb   $0x0,0x605520(%rax)
  401c16:	c3                   	retq   

0000000000401c17 <check_fail>:
  401c17:	48 83 ec 08          	sub    $0x8,%rsp
  401c1b:	0f be 15 06 45 20 00 	movsbl 0x204506(%rip),%edx        # 606128 <target_prefix>
  401c22:	41 b8 20 55 60 00    	mov    $0x605520,%r8d
  401c28:	8b 0d ca 38 20 00    	mov    0x2038ca(%rip),%ecx        # 6054f8 <check_level>
  401c2e:	be 03 34 40 00       	mov    $0x403403,%esi
  401c33:	bf 01 00 00 00       	mov    $0x1,%edi
  401c38:	b8 00 00 00 00       	mov    $0x0,%eax
  401c3d:	e8 9e f1 ff ff       	callq  400de0 <__printf_chk@plt>
  401c42:	bf 01 00 00 00       	mov    $0x1,%edi
  401c47:	e8 e4 f1 ff ff       	callq  400e30 <exit@plt>

0000000000401c4c <Gets>:
  401c4c:	41 54                	push   %r12
  401c4e:	55                   	push   %rbp
  401c4f:	53                   	push   %rbx
  401c50:	49 89 fc             	mov    %rdi,%r12
  401c53:	c7 05 c7 44 20 00 00 	movl   $0x0,0x2044c7(%rip)        # 606124 <gets_cnt>
  401c5a:	00 00 00 
  401c5d:	48 89 fb             	mov    %rdi,%rbx
  401c60:	eb 11                	jmp    401c73 <Gets+0x27>
  401c62:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401c66:	88 03                	mov    %al,(%rbx)
  401c68:	0f b6 f8             	movzbl %al,%edi
  401c6b:	e8 3c ff ff ff       	callq  401bac <save_char>
  401c70:	48 89 eb             	mov    %rbp,%rbx
  401c73:	48 8b 3d 76 38 20 00 	mov    0x203876(%rip),%rdi        # 6054f0 <infile>
  401c7a:	e8 31 f1 ff ff       	callq  400db0 <_IO_getc@plt>
  401c7f:	83 f8 ff             	cmp    $0xffffffff,%eax
  401c82:	74 05                	je     401c89 <Gets+0x3d>
  401c84:	83 f8 0a             	cmp    $0xa,%eax
  401c87:	75 d9                	jne    401c62 <Gets+0x16>
  401c89:	c6 03 00             	movb   $0x0,(%rbx)
  401c8c:	b8 00 00 00 00       	mov    $0x0,%eax
  401c91:	e8 6e ff ff ff       	callq  401c04 <save_term>
  401c96:	4c 89 e0             	mov    %r12,%rax
  401c99:	5b                   	pop    %rbx
  401c9a:	5d                   	pop    %rbp
  401c9b:	41 5c                	pop    %r12
  401c9d:	c3                   	retq   

0000000000401c9e <notify_server>:
  401c9e:	55                   	push   %rbp
  401c9f:	53                   	push   %rbx
  401ca0:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401ca7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401cae:	00 00 
  401cb0:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401cb7:	00 
  401cb8:	31 c0                	xor    %eax,%eax
  401cba:	83 3d 47 38 20 00 00 	cmpl   $0x0,0x203847(%rip)        # 605508 <is_checker>
  401cc1:	0f 85 c9 00 00 00    	jne    401d90 <notify_server+0xf2>
  401cc7:	89 fb                	mov    %edi,%ebx
  401cc9:	8b 05 55 44 20 00    	mov    0x204455(%rip),%eax        # 606124 <gets_cnt>
  401ccf:	83 c0 64             	add    $0x64,%eax
  401cd2:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401cd7:	0f 8f d4 00 00 00    	jg     401db1 <notify_server+0x113>
  401cdd:	0f be 05 44 44 20 00 	movsbl 0x204444(%rip),%eax        # 606128 <target_prefix>
  401ce4:	83 3d 9d 37 20 00 00 	cmpl   $0x0,0x20379d(%rip)        # 605488 <notify>
  401ceb:	0f 84 de 00 00 00    	je     401dcf <notify_server+0x131>
  401cf1:	8b 15 09 38 20 00    	mov    0x203809(%rip),%edx        # 605500 <authkey>
  401cf7:	85 db                	test   %ebx,%ebx
  401cf9:	0f 84 da 00 00 00    	je     401dd9 <notify_server+0x13b>
  401cff:	bd 19 34 40 00       	mov    $0x403419,%ebp
  401d04:	68 20 55 60 00       	pushq  $0x605520
  401d09:	56                   	push   %rsi
  401d0a:	50                   	push   %rax
  401d0b:	52                   	push   %rdx
  401d0c:	49 89 e9             	mov    %rbp,%r9
  401d0f:	44 8b 05 32 34 20 00 	mov    0x203432(%rip),%r8d        # 605148 <target_id>
  401d16:	b9 23 34 40 00       	mov    $0x403423,%ecx
  401d1b:	ba 00 20 00 00       	mov    $0x2000,%edx
  401d20:	be 01 00 00 00       	mov    $0x1,%esi
  401d25:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401d2a:	b8 00 00 00 00       	mov    $0x0,%eax
  401d2f:	e8 2c f1 ff ff       	callq  400e60 <__sprintf_chk@plt>
  401d34:	48 83 c4 20          	add    $0x20,%rsp
  401d38:	83 3d 49 37 20 00 00 	cmpl   $0x0,0x203749(%rip)        # 605488 <notify>
  401d3f:	0f 84 d3 00 00 00    	je     401e18 <notify_server+0x17a>
  401d45:	85 db                	test   %ebx,%ebx
  401d47:	0f 84 bc 00 00 00    	je     401e09 <notify_server+0x16b>
  401d4d:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401d54:	00 
  401d55:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401d5b:	48 89 e1             	mov    %rsp,%rcx
  401d5e:	48 8b 15 eb 33 20 00 	mov    0x2033eb(%rip),%rdx        # 605150 <lab>
  401d65:	48 8b 35 ec 33 20 00 	mov    0x2033ec(%rip),%rsi        # 605158 <course>
  401d6c:	48 8b 3d cd 33 20 00 	mov    0x2033cd(%rip),%rdi        # 605140 <user_id>
  401d73:	e8 31 11 00 00       	callq  402ea9 <driver_post>
  401d78:	85 c0                	test   %eax,%eax
  401d7a:	78 67                	js     401de3 <notify_server+0x145>
  401d7c:	bf 68 35 40 00       	mov    $0x403568,%edi
  401d81:	e8 3a ef ff ff       	callq  400cc0 <puts@plt>
  401d86:	bf 4b 34 40 00       	mov    $0x40344b,%edi
  401d8b:	e8 30 ef ff ff       	callq  400cc0 <puts@plt>
  401d90:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401d97:	00 
  401d98:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401d9f:	00 00 
  401da1:	0f 85 f5 00 00 00    	jne    401e9c <notify_server+0x1fe>
  401da7:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  401dae:	5b                   	pop    %rbx
  401daf:	5d                   	pop    %rbp
  401db0:	c3                   	retq   
  401db1:	be 38 35 40 00       	mov    $0x403538,%esi
  401db6:	bf 01 00 00 00       	mov    $0x1,%edi
  401dbb:	b8 00 00 00 00       	mov    $0x0,%eax
  401dc0:	e8 1b f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401dc5:	bf 01 00 00 00       	mov    $0x1,%edi
  401dca:	e8 61 f0 ff ff       	callq  400e30 <exit@plt>
  401dcf:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401dd4:	e9 1e ff ff ff       	jmpq   401cf7 <notify_server+0x59>
  401dd9:	bd 1e 34 40 00       	mov    $0x40341e,%ebp
  401dde:	e9 21 ff ff ff       	jmpq   401d04 <notify_server+0x66>
  401de3:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401dea:	00 
  401deb:	be 3f 34 40 00       	mov    $0x40343f,%esi
  401df0:	bf 01 00 00 00       	mov    $0x1,%edi
  401df5:	b8 00 00 00 00       	mov    $0x0,%eax
  401dfa:	e8 e1 ef ff ff       	callq  400de0 <__printf_chk@plt>
  401dff:	bf 01 00 00 00       	mov    $0x1,%edi
  401e04:	e8 27 f0 ff ff       	callq  400e30 <exit@plt>
  401e09:	bf 55 34 40 00       	mov    $0x403455,%edi
  401e0e:	e8 ad ee ff ff       	callq  400cc0 <puts@plt>
  401e13:	e9 78 ff ff ff       	jmpq   401d90 <notify_server+0xf2>
  401e18:	48 89 ea             	mov    %rbp,%rdx
  401e1b:	be a0 35 40 00       	mov    $0x4035a0,%esi
  401e20:	bf 01 00 00 00       	mov    $0x1,%edi
  401e25:	b8 00 00 00 00       	mov    $0x0,%eax
  401e2a:	e8 b1 ef ff ff       	callq  400de0 <__printf_chk@plt>
  401e2f:	48 8b 15 0a 33 20 00 	mov    0x20330a(%rip),%rdx        # 605140 <user_id>
  401e36:	be 5c 34 40 00       	mov    $0x40345c,%esi
  401e3b:	bf 01 00 00 00       	mov    $0x1,%edi
  401e40:	b8 00 00 00 00       	mov    $0x0,%eax
  401e45:	e8 96 ef ff ff       	callq  400de0 <__printf_chk@plt>
  401e4a:	48 8b 15 07 33 20 00 	mov    0x203307(%rip),%rdx        # 605158 <course>
  401e51:	be 69 34 40 00       	mov    $0x403469,%esi
  401e56:	bf 01 00 00 00       	mov    $0x1,%edi
  401e5b:	b8 00 00 00 00       	mov    $0x0,%eax
  401e60:	e8 7b ef ff ff       	callq  400de0 <__printf_chk@plt>
  401e65:	48 8b 15 e4 32 20 00 	mov    0x2032e4(%rip),%rdx        # 605150 <lab>
  401e6c:	be 75 34 40 00       	mov    $0x403475,%esi
  401e71:	bf 01 00 00 00       	mov    $0x1,%edi
  401e76:	b8 00 00 00 00       	mov    $0x0,%eax
  401e7b:	e8 60 ef ff ff       	callq  400de0 <__printf_chk@plt>
  401e80:	48 89 e2             	mov    %rsp,%rdx
  401e83:	be 7e 34 40 00       	mov    $0x40347e,%esi
  401e88:	bf 01 00 00 00       	mov    $0x1,%edi
  401e8d:	b8 00 00 00 00       	mov    $0x0,%eax
  401e92:	e8 49 ef ff ff       	callq  400de0 <__printf_chk@plt>
  401e97:	e9 f4 fe ff ff       	jmpq   401d90 <notify_server+0xf2>
  401e9c:	e8 3f ee ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000401ea1 <validate>:
  401ea1:	53                   	push   %rbx
  401ea2:	89 fb                	mov    %edi,%ebx
  401ea4:	83 3d 5d 36 20 00 00 	cmpl   $0x0,0x20365d(%rip)        # 605508 <is_checker>
  401eab:	74 6b                	je     401f18 <validate+0x77>
  401ead:	39 3d 49 36 20 00    	cmp    %edi,0x203649(%rip)        # 6054fc <vlevel>
  401eb3:	75 2f                	jne    401ee4 <validate+0x43>
  401eb5:	8b 15 3d 36 20 00    	mov    0x20363d(%rip),%edx        # 6054f8 <check_level>
  401ebb:	39 fa                	cmp    %edi,%edx
  401ebd:	75 39                	jne    401ef8 <validate+0x57>
  401ebf:	0f be 15 62 42 20 00 	movsbl 0x204262(%rip),%edx        # 606128 <target_prefix>
  401ec6:	41 b8 20 55 60 00    	mov    $0x605520,%r8d
  401ecc:	89 f9                	mov    %edi,%ecx
  401ece:	be a8 34 40 00       	mov    $0x4034a8,%esi
  401ed3:	bf 01 00 00 00       	mov    $0x1,%edi
  401ed8:	b8 00 00 00 00       	mov    $0x0,%eax
  401edd:	e8 fe ee ff ff       	callq  400de0 <__printf_chk@plt>
  401ee2:	5b                   	pop    %rbx
  401ee3:	c3                   	retq   
  401ee4:	bf 8a 34 40 00       	mov    $0x40348a,%edi
  401ee9:	e8 d2 ed ff ff       	callq  400cc0 <puts@plt>
  401eee:	b8 00 00 00 00       	mov    $0x0,%eax
  401ef3:	e8 1f fd ff ff       	callq  401c17 <check_fail>
  401ef8:	89 f9                	mov    %edi,%ecx
  401efa:	be c8 35 40 00       	mov    $0x4035c8,%esi
  401eff:	bf 01 00 00 00       	mov    $0x1,%edi
  401f04:	b8 00 00 00 00       	mov    $0x0,%eax
  401f09:	e8 d2 ee ff ff       	callq  400de0 <__printf_chk@plt>
  401f0e:	b8 00 00 00 00       	mov    $0x0,%eax
  401f13:	e8 ff fc ff ff       	callq  401c17 <check_fail>
  401f18:	39 3d de 35 20 00    	cmp    %edi,0x2035de(%rip)        # 6054fc <vlevel>
  401f1e:	74 18                	je     401f38 <validate+0x97>
  401f20:	bf 8a 34 40 00       	mov    $0x40348a,%edi
  401f25:	e8 96 ed ff ff       	callq  400cc0 <puts@plt>
  401f2a:	89 de                	mov    %ebx,%esi
  401f2c:	bf 00 00 00 00       	mov    $0x0,%edi
  401f31:	e8 68 fd ff ff       	callq  401c9e <notify_server>
  401f36:	eb aa                	jmp    401ee2 <validate+0x41>
  401f38:	0f be 0d e9 41 20 00 	movsbl 0x2041e9(%rip),%ecx        # 606128 <target_prefix>
  401f3f:	89 fa                	mov    %edi,%edx
  401f41:	be f0 35 40 00       	mov    $0x4035f0,%esi
  401f46:	bf 01 00 00 00       	mov    $0x1,%edi
  401f4b:	b8 00 00 00 00       	mov    $0x0,%eax
  401f50:	e8 8b ee ff ff       	callq  400de0 <__printf_chk@plt>
  401f55:	89 de                	mov    %ebx,%esi
  401f57:	bf 01 00 00 00       	mov    $0x1,%edi
  401f5c:	e8 3d fd ff ff       	callq  401c9e <notify_server>
  401f61:	e9 7c ff ff ff       	jmpq   401ee2 <validate+0x41>

0000000000401f66 <fail>:
  401f66:	48 83 ec 08          	sub    $0x8,%rsp
  401f6a:	83 3d 97 35 20 00 00 	cmpl   $0x0,0x203597(%rip)        # 605508 <is_checker>
  401f71:	75 11                	jne    401f84 <fail+0x1e>
  401f73:	89 fe                	mov    %edi,%esi
  401f75:	bf 00 00 00 00       	mov    $0x0,%edi
  401f7a:	e8 1f fd ff ff       	callq  401c9e <notify_server>
  401f7f:	48 83 c4 08          	add    $0x8,%rsp
  401f83:	c3                   	retq   
  401f84:	b8 00 00 00 00       	mov    $0x0,%eax
  401f89:	e8 89 fc ff ff       	callq  401c17 <check_fail>

0000000000401f8e <bushandler>:
  401f8e:	48 83 ec 08          	sub    $0x8,%rsp
  401f92:	83 3d 6f 35 20 00 00 	cmpl   $0x0,0x20356f(%rip)        # 605508 <is_checker>
  401f99:	74 14                	je     401faf <bushandler+0x21>
  401f9b:	bf bd 34 40 00       	mov    $0x4034bd,%edi
  401fa0:	e8 1b ed ff ff       	callq  400cc0 <puts@plt>
  401fa5:	b8 00 00 00 00       	mov    $0x0,%eax
  401faa:	e8 68 fc ff ff       	callq  401c17 <check_fail>
  401faf:	bf 28 36 40 00       	mov    $0x403628,%edi
  401fb4:	e8 07 ed ff ff       	callq  400cc0 <puts@plt>
  401fb9:	bf c7 34 40 00       	mov    $0x4034c7,%edi
  401fbe:	e8 fd ec ff ff       	callq  400cc0 <puts@plt>
  401fc3:	be 00 00 00 00       	mov    $0x0,%esi
  401fc8:	bf 00 00 00 00       	mov    $0x0,%edi
  401fcd:	e8 cc fc ff ff       	callq  401c9e <notify_server>
  401fd2:	bf 01 00 00 00       	mov    $0x1,%edi
  401fd7:	e8 54 ee ff ff       	callq  400e30 <exit@plt>

0000000000401fdc <seghandler>:
  401fdc:	48 83 ec 08          	sub    $0x8,%rsp
  401fe0:	83 3d 21 35 20 00 00 	cmpl   $0x0,0x203521(%rip)        # 605508 <is_checker>
  401fe7:	74 14                	je     401ffd <seghandler+0x21>
  401fe9:	bf dd 34 40 00       	mov    $0x4034dd,%edi
  401fee:	e8 cd ec ff ff       	callq  400cc0 <puts@plt>
  401ff3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ff8:	e8 1a fc ff ff       	callq  401c17 <check_fail>
  401ffd:	bf 48 36 40 00       	mov    $0x403648,%edi
  402002:	e8 b9 ec ff ff       	callq  400cc0 <puts@plt>
  402007:	bf c7 34 40 00       	mov    $0x4034c7,%edi
  40200c:	e8 af ec ff ff       	callq  400cc0 <puts@plt>
  402011:	be 00 00 00 00       	mov    $0x0,%esi
  402016:	bf 00 00 00 00       	mov    $0x0,%edi
  40201b:	e8 7e fc ff ff       	callq  401c9e <notify_server>
  402020:	bf 01 00 00 00       	mov    $0x1,%edi
  402025:	e8 06 ee ff ff       	callq  400e30 <exit@plt>

000000000040202a <illegalhandler>:
  40202a:	48 83 ec 08          	sub    $0x8,%rsp
  40202e:	83 3d d3 34 20 00 00 	cmpl   $0x0,0x2034d3(%rip)        # 605508 <is_checker>
  402035:	74 14                	je     40204b <illegalhandler+0x21>
  402037:	bf f0 34 40 00       	mov    $0x4034f0,%edi
  40203c:	e8 7f ec ff ff       	callq  400cc0 <puts@plt>
  402041:	b8 00 00 00 00       	mov    $0x0,%eax
  402046:	e8 cc fb ff ff       	callq  401c17 <check_fail>
  40204b:	bf 70 36 40 00       	mov    $0x403670,%edi
  402050:	e8 6b ec ff ff       	callq  400cc0 <puts@plt>
  402055:	bf c7 34 40 00       	mov    $0x4034c7,%edi
  40205a:	e8 61 ec ff ff       	callq  400cc0 <puts@plt>
  40205f:	be 00 00 00 00       	mov    $0x0,%esi
  402064:	bf 00 00 00 00       	mov    $0x0,%edi
  402069:	e8 30 fc ff ff       	callq  401c9e <notify_server>
  40206e:	bf 01 00 00 00       	mov    $0x1,%edi
  402073:	e8 b8 ed ff ff       	callq  400e30 <exit@plt>

0000000000402078 <sigalrmhandler>:
  402078:	48 83 ec 08          	sub    $0x8,%rsp
  40207c:	83 3d 85 34 20 00 00 	cmpl   $0x0,0x203485(%rip)        # 605508 <is_checker>
  402083:	74 14                	je     402099 <sigalrmhandler+0x21>
  402085:	bf 04 35 40 00       	mov    $0x403504,%edi
  40208a:	e8 31 ec ff ff       	callq  400cc0 <puts@plt>
  40208f:	b8 00 00 00 00       	mov    $0x0,%eax
  402094:	e8 7e fb ff ff       	callq  401c17 <check_fail>
  402099:	ba 05 00 00 00       	mov    $0x5,%edx
  40209e:	be a0 36 40 00       	mov    $0x4036a0,%esi
  4020a3:	bf 01 00 00 00       	mov    $0x1,%edi
  4020a8:	b8 00 00 00 00       	mov    $0x0,%eax
  4020ad:	e8 2e ed ff ff       	callq  400de0 <__printf_chk@plt>
  4020b2:	be 00 00 00 00       	mov    $0x0,%esi
  4020b7:	bf 00 00 00 00       	mov    $0x0,%edi
  4020bc:	e8 dd fb ff ff       	callq  401c9e <notify_server>
  4020c1:	bf 01 00 00 00       	mov    $0x1,%edi
  4020c6:	e8 65 ed ff ff       	callq  400e30 <exit@plt>

00000000004020cb <launch>:
  4020cb:	55                   	push   %rbp
  4020cc:	48 89 e5             	mov    %rsp,%rbp
  4020cf:	48 83 ec 10          	sub    $0x10,%rsp
  4020d3:	48 89 fa             	mov    %rdi,%rdx
  4020d6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4020dd:	00 00 
  4020df:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4020e3:	31 c0                	xor    %eax,%eax
  4020e5:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  4020e9:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  4020ed:	48 29 c4             	sub    %rax,%rsp
  4020f0:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4020f5:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4020f9:	be f4 00 00 00       	mov    $0xf4,%esi
  4020fe:	e8 fd eb ff ff       	callq  400d00 <memset@plt>
  402103:	48 8b 05 96 33 20 00 	mov    0x203396(%rip),%rax        # 6054a0 <stdin@@GLIBC_2.2.5>
  40210a:	48 39 05 df 33 20 00 	cmp    %rax,0x2033df(%rip)        # 6054f0 <infile>
  402111:	74 38                	je     40214b <launch+0x80>
  402113:	c7 05 df 33 20 00 00 	movl   $0x0,0x2033df(%rip)        # 6054fc <vlevel>
  40211a:	00 00 00 
  40211d:	b8 00 00 00 00       	mov    $0x0,%eax
  402122:	e8 3b f9 ff ff       	callq  401a62 <test>
  402127:	83 3d da 33 20 00 00 	cmpl   $0x0,0x2033da(%rip)        # 605508 <is_checker>
  40212e:	75 31                	jne    402161 <launch+0x96>
  402130:	bf 24 35 40 00       	mov    $0x403524,%edi
  402135:	e8 86 eb ff ff       	callq  400cc0 <puts@plt>
  40213a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40213e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402145:	00 00 
  402147:	75 2c                	jne    402175 <launch+0xaa>
  402149:	c9                   	leaveq 
  40214a:	c3                   	retq   
  40214b:	be 0c 35 40 00       	mov    $0x40350c,%esi
  402150:	bf 01 00 00 00       	mov    $0x1,%edi
  402155:	b8 00 00 00 00       	mov    $0x0,%eax
  40215a:	e8 81 ec ff ff       	callq  400de0 <__printf_chk@plt>
  40215f:	eb b2                	jmp    402113 <launch+0x48>
  402161:	bf 19 35 40 00       	mov    $0x403519,%edi
  402166:	e8 55 eb ff ff       	callq  400cc0 <puts@plt>
  40216b:	b8 00 00 00 00       	mov    $0x0,%eax
  402170:	e8 a2 fa ff ff       	callq  401c17 <check_fail>
  402175:	e8 66 eb ff ff       	callq  400ce0 <__stack_chk_fail@plt>

000000000040217a <stable_launch>:
  40217a:	53                   	push   %rbx
  40217b:	48 89 3d 66 33 20 00 	mov    %rdi,0x203366(%rip)        # 6054e8 <global_offset>
  402182:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402188:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40218e:	b9 32 01 00 00       	mov    $0x132,%ecx
  402193:	ba 07 00 00 00       	mov    $0x7,%edx
  402198:	be 00 00 10 00       	mov    $0x100000,%esi
  40219d:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4021a2:	e8 49 eb ff ff       	callq  400cf0 <mmap@plt>
  4021a7:	48 89 c3             	mov    %rax,%rbx
  4021aa:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4021b0:	75 43                	jne    4021f5 <stable_launch+0x7b>
  4021b2:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4021b9:	48 89 15 70 3f 20 00 	mov    %rdx,0x203f70(%rip)        # 606130 <stack_top>
  4021c0:	48 89 e0             	mov    %rsp,%rax
  4021c3:	48 89 d4             	mov    %rdx,%rsp
  4021c6:	48 89 c2             	mov    %rax,%rdx
  4021c9:	48 89 15 10 33 20 00 	mov    %rdx,0x203310(%rip)        # 6054e0 <global_save_stack>
  4021d0:	48 8b 3d 11 33 20 00 	mov    0x203311(%rip),%rdi        # 6054e8 <global_offset>
  4021d7:	e8 ef fe ff ff       	callq  4020cb <launch>
  4021dc:	48 8b 05 fd 32 20 00 	mov    0x2032fd(%rip),%rax        # 6054e0 <global_save_stack>
  4021e3:	48 89 c4             	mov    %rax,%rsp
  4021e6:	be 00 00 10 00       	mov    $0x100000,%esi
  4021eb:	48 89 df             	mov    %rbx,%rdi
  4021ee:	e8 dd eb ff ff       	callq  400dd0 <munmap@plt>
  4021f3:	5b                   	pop    %rbx
  4021f4:	c3                   	retq   
  4021f5:	be 00 00 10 00       	mov    $0x100000,%esi
  4021fa:	48 89 c7             	mov    %rax,%rdi
  4021fd:	e8 ce eb ff ff       	callq  400dd0 <munmap@plt>
  402202:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402207:	ba d8 36 40 00       	mov    $0x4036d8,%edx
  40220c:	be 01 00 00 00       	mov    $0x1,%esi
  402211:	48 8b 3d a8 32 20 00 	mov    0x2032a8(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  402218:	b8 00 00 00 00       	mov    $0x0,%eax
  40221d:	e8 2e ec ff ff       	callq  400e50 <__fprintf_chk@plt>
  402222:	bf 01 00 00 00       	mov    $0x1,%edi
  402227:	e8 04 ec ff ff       	callq  400e30 <exit@plt>

000000000040222c <rio_readinitb>:
  40222c:	89 37                	mov    %esi,(%rdi)
  40222e:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402235:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402239:	48 89 47 08          	mov    %rax,0x8(%rdi)
  40223d:	c3                   	retq   

000000000040223e <sigalrm_handler>:
  40223e:	48 83 ec 08          	sub    $0x8,%rsp
  402242:	b9 00 00 00 00       	mov    $0x0,%ecx
  402247:	ba 10 37 40 00       	mov    $0x403710,%edx
  40224c:	be 01 00 00 00       	mov    $0x1,%esi
  402251:	48 8b 3d 68 32 20 00 	mov    0x203268(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  402258:	b8 00 00 00 00       	mov    $0x0,%eax
  40225d:	e8 ee eb ff ff       	callq  400e50 <__fprintf_chk@plt>
  402262:	bf 01 00 00 00       	mov    $0x1,%edi
  402267:	e8 c4 eb ff ff       	callq  400e30 <exit@plt>

000000000040226c <rio_writen>:
  40226c:	41 55                	push   %r13
  40226e:	41 54                	push   %r12
  402270:	55                   	push   %rbp
  402271:	53                   	push   %rbx
  402272:	48 83 ec 08          	sub    $0x8,%rsp
  402276:	41 89 fc             	mov    %edi,%r12d
  402279:	48 89 f5             	mov    %rsi,%rbp
  40227c:	49 89 d5             	mov    %rdx,%r13
  40227f:	48 89 d3             	mov    %rdx,%rbx
  402282:	eb 06                	jmp    40228a <rio_writen+0x1e>
  402284:	48 29 c3             	sub    %rax,%rbx
  402287:	48 01 c5             	add    %rax,%rbp
  40228a:	48 85 db             	test   %rbx,%rbx
  40228d:	74 24                	je     4022b3 <rio_writen+0x47>
  40228f:	48 89 da             	mov    %rbx,%rdx
  402292:	48 89 ee             	mov    %rbp,%rsi
  402295:	44 89 e7             	mov    %r12d,%edi
  402298:	e8 33 ea ff ff       	callq  400cd0 <write@plt>
  40229d:	48 85 c0             	test   %rax,%rax
  4022a0:	7f e2                	jg     402284 <rio_writen+0x18>
  4022a2:	e8 d9 e9 ff ff       	callq  400c80 <__errno_location@plt>
  4022a7:	83 38 04             	cmpl   $0x4,(%rax)
  4022aa:	75 15                	jne    4022c1 <rio_writen+0x55>
  4022ac:	b8 00 00 00 00       	mov    $0x0,%eax
  4022b1:	eb d1                	jmp    402284 <rio_writen+0x18>
  4022b3:	4c 89 e8             	mov    %r13,%rax
  4022b6:	48 83 c4 08          	add    $0x8,%rsp
  4022ba:	5b                   	pop    %rbx
  4022bb:	5d                   	pop    %rbp
  4022bc:	41 5c                	pop    %r12
  4022be:	41 5d                	pop    %r13
  4022c0:	c3                   	retq   
  4022c1:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4022c8:	eb ec                	jmp    4022b6 <rio_writen+0x4a>

00000000004022ca <rio_read>:
  4022ca:	41 55                	push   %r13
  4022cc:	41 54                	push   %r12
  4022ce:	55                   	push   %rbp
  4022cf:	53                   	push   %rbx
  4022d0:	48 83 ec 08          	sub    $0x8,%rsp
  4022d4:	48 89 fb             	mov    %rdi,%rbx
  4022d7:	49 89 f5             	mov    %rsi,%r13
  4022da:	49 89 d4             	mov    %rdx,%r12
  4022dd:	eb 0a                	jmp    4022e9 <rio_read+0x1f>
  4022df:	e8 9c e9 ff ff       	callq  400c80 <__errno_location@plt>
  4022e4:	83 38 04             	cmpl   $0x4,(%rax)
  4022e7:	75 5c                	jne    402345 <rio_read+0x7b>
  4022e9:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4022ec:	85 ed                	test   %ebp,%ebp
  4022ee:	7f 24                	jg     402314 <rio_read+0x4a>
  4022f0:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4022f4:	8b 3b                	mov    (%rbx),%edi
  4022f6:	ba 00 20 00 00       	mov    $0x2000,%edx
  4022fb:	48 89 ee             	mov    %rbp,%rsi
  4022fe:	e8 2d ea ff ff       	callq  400d30 <read@plt>
  402303:	89 43 04             	mov    %eax,0x4(%rbx)
  402306:	85 c0                	test   %eax,%eax
  402308:	78 d5                	js     4022df <rio_read+0x15>
  40230a:	85 c0                	test   %eax,%eax
  40230c:	74 40                	je     40234e <rio_read+0x84>
  40230e:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402312:	eb d5                	jmp    4022e9 <rio_read+0x1f>
  402314:	89 e8                	mov    %ebp,%eax
  402316:	4c 39 e0             	cmp    %r12,%rax
  402319:	72 03                	jb     40231e <rio_read+0x54>
  40231b:	44 89 e5             	mov    %r12d,%ebp
  40231e:	4c 63 e5             	movslq %ebp,%r12
  402321:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402325:	4c 89 e2             	mov    %r12,%rdx
  402328:	4c 89 ef             	mov    %r13,%rdi
  40232b:	e8 50 ea ff ff       	callq  400d80 <memcpy@plt>
  402330:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402334:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402337:	4c 89 e0             	mov    %r12,%rax
  40233a:	48 83 c4 08          	add    $0x8,%rsp
  40233e:	5b                   	pop    %rbx
  40233f:	5d                   	pop    %rbp
  402340:	41 5c                	pop    %r12
  402342:	41 5d                	pop    %r13
  402344:	c3                   	retq   
  402345:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40234c:	eb ec                	jmp    40233a <rio_read+0x70>
  40234e:	b8 00 00 00 00       	mov    $0x0,%eax
  402353:	eb e5                	jmp    40233a <rio_read+0x70>

0000000000402355 <rio_readlineb>:
  402355:	41 55                	push   %r13
  402357:	41 54                	push   %r12
  402359:	55                   	push   %rbp
  40235a:	53                   	push   %rbx
  40235b:	48 83 ec 18          	sub    $0x18,%rsp
  40235f:	49 89 fd             	mov    %rdi,%r13
  402362:	48 89 f5             	mov    %rsi,%rbp
  402365:	49 89 d4             	mov    %rdx,%r12
  402368:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40236f:	00 00 
  402371:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402376:	31 c0                	xor    %eax,%eax
  402378:	bb 01 00 00 00       	mov    $0x1,%ebx
  40237d:	4c 39 e3             	cmp    %r12,%rbx
  402380:	73 47                	jae    4023c9 <rio_readlineb+0x74>
  402382:	ba 01 00 00 00       	mov    $0x1,%edx
  402387:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  40238c:	4c 89 ef             	mov    %r13,%rdi
  40238f:	e8 36 ff ff ff       	callq  4022ca <rio_read>
  402394:	83 f8 01             	cmp    $0x1,%eax
  402397:	75 1c                	jne    4023b5 <rio_readlineb+0x60>
  402399:	48 8d 45 01          	lea    0x1(%rbp),%rax
  40239d:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  4023a2:	88 55 00             	mov    %dl,0x0(%rbp)
  4023a5:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  4023aa:	74 1a                	je     4023c6 <rio_readlineb+0x71>
  4023ac:	48 83 c3 01          	add    $0x1,%rbx
  4023b0:	48 89 c5             	mov    %rax,%rbp
  4023b3:	eb c8                	jmp    40237d <rio_readlineb+0x28>
  4023b5:	85 c0                	test   %eax,%eax
  4023b7:	75 32                	jne    4023eb <rio_readlineb+0x96>
  4023b9:	48 83 fb 01          	cmp    $0x1,%rbx
  4023bd:	75 0a                	jne    4023c9 <rio_readlineb+0x74>
  4023bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4023c4:	eb 0a                	jmp    4023d0 <rio_readlineb+0x7b>
  4023c6:	48 89 c5             	mov    %rax,%rbp
  4023c9:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4023cd:	48 89 d8             	mov    %rbx,%rax
  4023d0:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  4023d5:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4023dc:	00 00 
  4023de:	75 14                	jne    4023f4 <rio_readlineb+0x9f>
  4023e0:	48 83 c4 18          	add    $0x18,%rsp
  4023e4:	5b                   	pop    %rbx
  4023e5:	5d                   	pop    %rbp
  4023e6:	41 5c                	pop    %r12
  4023e8:	41 5d                	pop    %r13
  4023ea:	c3                   	retq   
  4023eb:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4023f2:	eb dc                	jmp    4023d0 <rio_readlineb+0x7b>
  4023f4:	e8 e7 e8 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

00000000004023f9 <urlencode>:
  4023f9:	41 54                	push   %r12
  4023fb:	55                   	push   %rbp
  4023fc:	53                   	push   %rbx
  4023fd:	48 83 ec 10          	sub    $0x10,%rsp
  402401:	48 89 fb             	mov    %rdi,%rbx
  402404:	48 89 f5             	mov    %rsi,%rbp
  402407:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40240e:	00 00 
  402410:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402415:	31 c0                	xor    %eax,%eax
  402417:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40241e:	f2 ae                	repnz scas %es:(%rdi),%al
  402420:	48 89 ce             	mov    %rcx,%rsi
  402423:	48 f7 d6             	not    %rsi
  402426:	8d 46 ff             	lea    -0x1(%rsi),%eax
  402429:	eb 0f                	jmp    40243a <urlencode+0x41>
  40242b:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  40242f:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402433:	48 83 c3 01          	add    $0x1,%rbx
  402437:	44 89 e0             	mov    %r12d,%eax
  40243a:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  40243e:	85 c0                	test   %eax,%eax
  402440:	0f 84 a6 00 00 00    	je     4024ec <urlencode+0xf3>
  402446:	44 0f b6 03          	movzbl (%rbx),%r8d
  40244a:	41 80 f8 2a          	cmp    $0x2a,%r8b
  40244e:	0f 94 c2             	sete   %dl
  402451:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402455:	0f 94 c0             	sete   %al
  402458:	08 c2                	or     %al,%dl
  40245a:	75 cf                	jne    40242b <urlencode+0x32>
  40245c:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402460:	74 c9                	je     40242b <urlencode+0x32>
  402462:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402466:	74 c3                	je     40242b <urlencode+0x32>
  402468:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  40246c:	3c 09                	cmp    $0x9,%al
  40246e:	76 bb                	jbe    40242b <urlencode+0x32>
  402470:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402474:	3c 19                	cmp    $0x19,%al
  402476:	76 b3                	jbe    40242b <urlencode+0x32>
  402478:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  40247c:	3c 19                	cmp    $0x19,%al
  40247e:	76 ab                	jbe    40242b <urlencode+0x32>
  402480:	41 80 f8 20          	cmp    $0x20,%r8b
  402484:	74 54                	je     4024da <urlencode+0xe1>
  402486:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  40248a:	3c 5f                	cmp    $0x5f,%al
  40248c:	0f 96 c2             	setbe  %dl
  40248f:	41 80 f8 09          	cmp    $0x9,%r8b
  402493:	0f 94 c0             	sete   %al
  402496:	08 c2                	or     %al,%dl
  402498:	74 4d                	je     4024e7 <urlencode+0xee>
  40249a:	45 0f b6 c0          	movzbl %r8b,%r8d
  40249e:	b9 a8 37 40 00       	mov    $0x4037a8,%ecx
  4024a3:	ba 08 00 00 00       	mov    $0x8,%edx
  4024a8:	be 01 00 00 00       	mov    $0x1,%esi
  4024ad:	48 89 e7             	mov    %rsp,%rdi
  4024b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4024b5:	e8 a6 e9 ff ff       	callq  400e60 <__sprintf_chk@plt>
  4024ba:	0f b6 04 24          	movzbl (%rsp),%eax
  4024be:	88 45 00             	mov    %al,0x0(%rbp)
  4024c1:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  4024c6:	88 45 01             	mov    %al,0x1(%rbp)
  4024c9:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  4024ce:	88 45 02             	mov    %al,0x2(%rbp)
  4024d1:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  4024d5:	e9 59 ff ff ff       	jmpq   402433 <urlencode+0x3a>
  4024da:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4024de:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4024e2:	e9 4c ff ff ff       	jmpq   402433 <urlencode+0x3a>
  4024e7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024ec:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  4024f1:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  4024f8:	00 00 
  4024fa:	75 09                	jne    402505 <urlencode+0x10c>
  4024fc:	48 83 c4 10          	add    $0x10,%rsp
  402500:	5b                   	pop    %rbx
  402501:	5d                   	pop    %rbp
  402502:	41 5c                	pop    %r12
  402504:	c3                   	retq   
  402505:	e8 d6 e7 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

000000000040250a <submitr>:
  40250a:	41 57                	push   %r15
  40250c:	41 56                	push   %r14
  40250e:	41 55                	push   %r13
  402510:	41 54                	push   %r12
  402512:	55                   	push   %rbp
  402513:	53                   	push   %rbx
  402514:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  40251b:	49 89 fc             	mov    %rdi,%r12
  40251e:	89 74 24 04          	mov    %esi,0x4(%rsp)
  402522:	49 89 d7             	mov    %rdx,%r15
  402525:	49 89 ce             	mov    %rcx,%r14
  402528:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  40252d:	4d 89 cd             	mov    %r9,%r13
  402530:	48 8b ac 24 90 a0 00 	mov    0xa090(%rsp),%rbp
  402537:	00 
  402538:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40253f:	00 00 
  402541:	48 89 84 24 48 a0 00 	mov    %rax,0xa048(%rsp)
  402548:	00 
  402549:	31 c0                	xor    %eax,%eax
  40254b:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  402552:	00 
  402553:	ba 00 00 00 00       	mov    $0x0,%edx
  402558:	be 01 00 00 00       	mov    $0x1,%esi
  40255d:	bf 02 00 00 00       	mov    $0x2,%edi
  402562:	e8 09 e9 ff ff       	callq  400e70 <socket@plt>
  402567:	85 c0                	test   %eax,%eax
  402569:	0f 88 9b 02 00 00    	js     40280a <submitr+0x300>
  40256f:	89 c3                	mov    %eax,%ebx
  402571:	4c 89 e7             	mov    %r12,%rdi
  402574:	e8 d7 e7 ff ff       	callq  400d50 <gethostbyname@plt>
  402579:	48 85 c0             	test   %rax,%rax
  40257c:	0f 84 d4 02 00 00    	je     402856 <submitr+0x34c>
  402582:	48 c7 44 24 22 00 00 	movq   $0x0,0x22(%rsp)
  402589:	00 00 
  40258b:	c7 44 24 2a 00 00 00 	movl   $0x0,0x2a(%rsp)
  402592:	00 
  402593:	66 c7 44 24 2e 00 00 	movw   $0x0,0x2e(%rsp)
  40259a:	66 c7 44 24 20 02 00 	movw   $0x2,0x20(%rsp)
  4025a1:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4025a5:	48 8b 40 18          	mov    0x18(%rax),%rax
  4025a9:	48 8b 30             	mov    (%rax),%rsi
  4025ac:	48 8d 7c 24 24       	lea    0x24(%rsp),%rdi
  4025b1:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4025b6:	e8 a5 e7 ff ff       	callq  400d60 <__memmove_chk@plt>
  4025bb:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  4025c0:	66 c1 c8 08          	ror    $0x8,%ax
  4025c4:	66 89 44 24 22       	mov    %ax,0x22(%rsp)
  4025c9:	ba 10 00 00 00       	mov    $0x10,%edx
  4025ce:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  4025d3:	89 df                	mov    %ebx,%edi
  4025d5:	e8 66 e8 ff ff       	callq  400e40 <connect@plt>
  4025da:	85 c0                	test   %eax,%eax
  4025dc:	0f 88 dc 02 00 00    	js     4028be <submitr+0x3b4>
  4025e2:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  4025e9:	b8 00 00 00 00       	mov    $0x0,%eax
  4025ee:	48 89 f1             	mov    %rsi,%rcx
  4025f1:	4c 89 ef             	mov    %r13,%rdi
  4025f4:	f2 ae                	repnz scas %es:(%rdi),%al
  4025f6:	48 89 ca             	mov    %rcx,%rdx
  4025f9:	48 f7 d2             	not    %rdx
  4025fc:	48 89 f1             	mov    %rsi,%rcx
  4025ff:	4c 89 ff             	mov    %r15,%rdi
  402602:	f2 ae                	repnz scas %es:(%rdi),%al
  402604:	48 f7 d1             	not    %rcx
  402607:	49 89 c8             	mov    %rcx,%r8
  40260a:	48 89 f1             	mov    %rsi,%rcx
  40260d:	4c 89 f7             	mov    %r14,%rdi
  402610:	f2 ae                	repnz scas %es:(%rdi),%al
  402612:	48 f7 d1             	not    %rcx
  402615:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  40261a:	48 89 f1             	mov    %rsi,%rcx
  40261d:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402622:	f2 ae                	repnz scas %es:(%rdi),%al
  402624:	48 89 c8             	mov    %rcx,%rax
  402627:	48 f7 d0             	not    %rax
  40262a:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  40262f:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402634:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  40263b:	00 
  40263c:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402642:	0f 87 d0 02 00 00    	ja     402918 <submitr+0x40e>
  402648:	48 8d b4 24 40 40 00 	lea    0x4040(%rsp),%rsi
  40264f:	00 
  402650:	b9 00 04 00 00       	mov    $0x400,%ecx
  402655:	b8 00 00 00 00       	mov    $0x0,%eax
  40265a:	48 89 f7             	mov    %rsi,%rdi
  40265d:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402660:	4c 89 ef             	mov    %r13,%rdi
  402663:	e8 91 fd ff ff       	callq  4023f9 <urlencode>
  402668:	85 c0                	test   %eax,%eax
  40266a:	0f 88 1b 03 00 00    	js     40298b <submitr+0x481>
  402670:	4c 8d ac 24 40 20 00 	lea    0x2040(%rsp),%r13
  402677:	00 
  402678:	41 54                	push   %r12
  40267a:	48 8d 84 24 48 40 00 	lea    0x4048(%rsp),%rax
  402681:	00 
  402682:	50                   	push   %rax
  402683:	4d 89 f9             	mov    %r15,%r9
  402686:	4d 89 f0             	mov    %r14,%r8
  402689:	b9 38 37 40 00       	mov    $0x403738,%ecx
  40268e:	ba 00 20 00 00       	mov    $0x2000,%edx
  402693:	be 01 00 00 00       	mov    $0x1,%esi
  402698:	4c 89 ef             	mov    %r13,%rdi
  40269b:	b8 00 00 00 00       	mov    $0x0,%eax
  4026a0:	e8 bb e7 ff ff       	callq  400e60 <__sprintf_chk@plt>
  4026a5:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4026ac:	b8 00 00 00 00       	mov    $0x0,%eax
  4026b1:	4c 89 ef             	mov    %r13,%rdi
  4026b4:	f2 ae                	repnz scas %es:(%rdi),%al
  4026b6:	48 89 ca             	mov    %rcx,%rdx
  4026b9:	48 f7 d2             	not    %rdx
  4026bc:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  4026c0:	4c 89 ee             	mov    %r13,%rsi
  4026c3:	89 df                	mov    %ebx,%edi
  4026c5:	e8 a2 fb ff ff       	callq  40226c <rio_writen>
  4026ca:	48 83 c4 10          	add    $0x10,%rsp
  4026ce:	48 85 c0             	test   %rax,%rax
  4026d1:	0f 88 3f 03 00 00    	js     402a16 <submitr+0x50c>
  4026d7:	89 de                	mov    %ebx,%esi
  4026d9:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4026de:	e8 49 fb ff ff       	callq  40222c <rio_readinitb>
  4026e3:	ba 00 20 00 00       	mov    $0x2000,%edx
  4026e8:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4026ef:	00 
  4026f0:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4026f5:	e8 5b fc ff ff       	callq  402355 <rio_readlineb>
  4026fa:	48 85 c0             	test   %rax,%rax
  4026fd:	0f 8e 82 03 00 00    	jle    402a85 <submitr+0x57b>
  402703:	4c 8d 84 24 40 80 00 	lea    0x8040(%rsp),%r8
  40270a:	00 
  40270b:	48 8d 4c 24 1c       	lea    0x1c(%rsp),%rcx
  402710:	48 8d 94 24 40 60 00 	lea    0x6040(%rsp),%rdx
  402717:	00 
  402718:	be af 37 40 00       	mov    $0x4037af,%esi
  40271d:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
  402724:	00 
  402725:	b8 00 00 00 00       	mov    $0x0,%eax
  40272a:	e8 91 e6 ff ff       	callq  400dc0 <__isoc99_sscanf@plt>
  40272f:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402736:	00 
  402737:	bf c6 37 40 00       	mov    $0x4037c6,%edi
  40273c:	b9 03 00 00 00       	mov    $0x3,%ecx
  402741:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402743:	0f 97 c0             	seta   %al
  402746:	1c 00                	sbb    $0x0,%al
  402748:	84 c0                	test   %al,%al
  40274a:	0f 84 b3 03 00 00    	je     402b03 <submitr+0x5f9>
  402750:	ba 00 20 00 00       	mov    $0x2000,%edx
  402755:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  40275c:	00 
  40275d:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402762:	e8 ee fb ff ff       	callq  402355 <rio_readlineb>
  402767:	48 85 c0             	test   %rax,%rax
  40276a:	7f c3                	jg     40272f <submitr+0x225>
  40276c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402773:	3a 20 43 
  402776:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40277d:	20 75 6e 
  402780:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402784:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402788:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40278f:	74 6f 20 
  402792:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402799:	68 65 61 
  40279c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4027a0:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4027a4:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4027ab:	66 72 6f 
  4027ae:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  4027b5:	20 72 65 
  4027b8:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4027bc:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4027c0:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  4027c7:	73 65 72 
  4027ca:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4027ce:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  4027d5:	89 df                	mov    %ebx,%edi
  4027d7:	e8 44 e5 ff ff       	callq  400d20 <close@plt>
  4027dc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027e1:	48 8b 9c 24 48 a0 00 	mov    0xa048(%rsp),%rbx
  4027e8:	00 
  4027e9:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  4027f0:	00 00 
  4027f2:	0f 85 76 04 00 00    	jne    402c6e <submitr+0x764>
  4027f8:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  4027ff:	5b                   	pop    %rbx
  402800:	5d                   	pop    %rbp
  402801:	41 5c                	pop    %r12
  402803:	41 5d                	pop    %r13
  402805:	41 5e                	pop    %r14
  402807:	41 5f                	pop    %r15
  402809:	c3                   	retq   
  40280a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402811:	3a 20 43 
  402814:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40281b:	20 75 6e 
  40281e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402822:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402826:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40282d:	74 6f 20 
  402830:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402837:	65 20 73 
  40283a:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40283e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402842:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402849:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  40284f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402854:	eb 8b                	jmp    4027e1 <submitr+0x2d7>
  402856:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40285d:	3a 20 44 
  402860:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402867:	20 75 6e 
  40286a:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40286e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402872:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402879:	74 6f 20 
  40287c:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402883:	76 65 20 
  402886:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40288a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40288e:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402895:	72 20 61 
  402898:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40289c:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4028a3:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  4028a9:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4028ad:	89 df                	mov    %ebx,%edi
  4028af:	e8 6c e4 ff ff       	callq  400d20 <close@plt>
  4028b4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028b9:	e9 23 ff ff ff       	jmpq   4027e1 <submitr+0x2d7>
  4028be:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4028c5:	3a 20 55 
  4028c8:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4028cf:	20 74 6f 
  4028d2:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4028d6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4028da:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4028e1:	65 63 74 
  4028e4:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  4028eb:	68 65 20 
  4028ee:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4028f2:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4028f6:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  4028fd:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  402903:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  402907:	89 df                	mov    %ebx,%edi
  402909:	e8 12 e4 ff ff       	callq  400d20 <close@plt>
  40290e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402913:	e9 c9 fe ff ff       	jmpq   4027e1 <submitr+0x2d7>
  402918:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40291f:	3a 20 52 
  402922:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402929:	20 73 74 
  40292c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402930:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402934:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  40293b:	74 6f 6f 
  40293e:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402945:	65 2e 20 
  402948:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40294c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402950:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402957:	61 73 65 
  40295a:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402961:	49 54 52 
  402964:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402968:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40296c:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402973:	55 46 00 
  402976:	48 89 45 30          	mov    %rax,0x30(%rbp)
  40297a:	89 df                	mov    %ebx,%edi
  40297c:	e8 9f e3 ff ff       	callq  400d20 <close@plt>
  402981:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402986:	e9 56 fe ff ff       	jmpq   4027e1 <submitr+0x2d7>
  40298b:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402992:	3a 20 52 
  402995:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  40299c:	20 73 74 
  40299f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029a3:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4029a7:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4029ae:	63 6f 6e 
  4029b1:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  4029b8:	20 61 6e 
  4029bb:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029bf:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4029c3:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4029ca:	67 61 6c 
  4029cd:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  4029d4:	6e 70 72 
  4029d7:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4029db:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4029df:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4029e6:	6c 65 20 
  4029e9:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  4029f0:	63 74 65 
  4029f3:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4029f7:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  4029fb:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  402a01:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  402a05:	89 df                	mov    %ebx,%edi
  402a07:	e8 14 e3 ff ff       	callq  400d20 <close@plt>
  402a0c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a11:	e9 cb fd ff ff       	jmpq   4027e1 <submitr+0x2d7>
  402a16:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a1d:	3a 20 43 
  402a20:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402a27:	20 75 6e 
  402a2a:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a2e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a32:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a39:	74 6f 20 
  402a3c:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402a43:	20 74 6f 
  402a46:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a4a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a4e:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402a55:	72 65 73 
  402a58:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  402a5f:	65 72 76 
  402a62:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a66:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a6a:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  402a70:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  402a74:	89 df                	mov    %ebx,%edi
  402a76:	e8 a5 e2 ff ff       	callq  400d20 <close@plt>
  402a7b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a80:	e9 5c fd ff ff       	jmpq   4027e1 <submitr+0x2d7>
  402a85:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a8c:	3a 20 43 
  402a8f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402a96:	20 75 6e 
  402a99:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a9d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402aa1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402aa8:	74 6f 20 
  402aab:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402ab2:	66 69 72 
  402ab5:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ab9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402abd:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402ac4:	61 64 65 
  402ac7:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  402ace:	6d 20 72 
  402ad1:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402ad5:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402ad9:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402ae0:	20 73 65 
  402ae3:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402ae7:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  402aee:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  402af2:	89 df                	mov    %ebx,%edi
  402af4:	e8 27 e2 ff ff       	callq  400d20 <close@plt>
  402af9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402afe:	e9 de fc ff ff       	jmpq   4027e1 <submitr+0x2d7>
  402b03:	ba 00 20 00 00       	mov    $0x2000,%edx
  402b08:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402b0f:	00 
  402b10:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402b15:	e8 3b f8 ff ff       	callq  402355 <rio_readlineb>
  402b1a:	48 85 c0             	test   %rax,%rax
  402b1d:	0f 8e 90 00 00 00    	jle    402bb3 <submitr+0x6a9>
  402b23:	44 8b 44 24 1c       	mov    0x1c(%rsp),%r8d
  402b28:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402b2f:	0f 85 02 01 00 00    	jne    402c37 <submitr+0x72d>
  402b35:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402b3c:	00 
  402b3d:	48 89 ef             	mov    %rbp,%rdi
  402b40:	e8 6b e1 ff ff       	callq  400cb0 <strcpy@plt>
  402b45:	89 df                	mov    %ebx,%edi
  402b47:	e8 d4 e1 ff ff       	callq  400d20 <close@plt>
  402b4c:	bf c0 37 40 00       	mov    $0x4037c0,%edi
  402b51:	b9 04 00 00 00       	mov    $0x4,%ecx
  402b56:	48 89 ee             	mov    %rbp,%rsi
  402b59:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402b5b:	0f 97 c0             	seta   %al
  402b5e:	1c 00                	sbb    $0x0,%al
  402b60:	0f be c0             	movsbl %al,%eax
  402b63:	85 c0                	test   %eax,%eax
  402b65:	0f 84 76 fc ff ff    	je     4027e1 <submitr+0x2d7>
  402b6b:	bf c4 37 40 00       	mov    $0x4037c4,%edi
  402b70:	b9 05 00 00 00       	mov    $0x5,%ecx
  402b75:	48 89 ee             	mov    %rbp,%rsi
  402b78:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402b7a:	0f 97 c0             	seta   %al
  402b7d:	1c 00                	sbb    $0x0,%al
  402b7f:	0f be c0             	movsbl %al,%eax
  402b82:	85 c0                	test   %eax,%eax
  402b84:	0f 84 57 fc ff ff    	je     4027e1 <submitr+0x2d7>
  402b8a:	bf c9 37 40 00       	mov    $0x4037c9,%edi
  402b8f:	b9 03 00 00 00       	mov    $0x3,%ecx
  402b94:	48 89 ee             	mov    %rbp,%rsi
  402b97:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402b99:	0f 97 c0             	seta   %al
  402b9c:	1c 00                	sbb    $0x0,%al
  402b9e:	0f be c0             	movsbl %al,%eax
  402ba1:	85 c0                	test   %eax,%eax
  402ba3:	0f 84 38 fc ff ff    	je     4027e1 <submitr+0x2d7>
  402ba9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bae:	e9 2e fc ff ff       	jmpq   4027e1 <submitr+0x2d7>
  402bb3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402bba:	3a 20 43 
  402bbd:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402bc4:	20 75 6e 
  402bc7:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402bcb:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402bcf:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402bd6:	74 6f 20 
  402bd9:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402be0:	73 74 61 
  402be3:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402be7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402beb:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402bf2:	65 73 73 
  402bf5:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402bfc:	72 6f 6d 
  402bff:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402c03:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402c07:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402c0e:	6c 74 20 
  402c11:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402c15:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  402c1c:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  402c22:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  402c26:	89 df                	mov    %ebx,%edi
  402c28:	e8 f3 e0 ff ff       	callq  400d20 <close@plt>
  402c2d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c32:	e9 aa fb ff ff       	jmpq   4027e1 <submitr+0x2d7>
  402c37:	4c 8d 8c 24 40 80 00 	lea    0x8040(%rsp),%r9
  402c3e:	00 
  402c3f:	b9 78 37 40 00       	mov    $0x403778,%ecx
  402c44:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402c4b:	be 01 00 00 00       	mov    $0x1,%esi
  402c50:	48 89 ef             	mov    %rbp,%rdi
  402c53:	b8 00 00 00 00       	mov    $0x0,%eax
  402c58:	e8 03 e2 ff ff       	callq  400e60 <__sprintf_chk@plt>
  402c5d:	89 df                	mov    %ebx,%edi
  402c5f:	e8 bc e0 ff ff       	callq  400d20 <close@plt>
  402c64:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c69:	e9 73 fb ff ff       	jmpq   4027e1 <submitr+0x2d7>
  402c6e:	e8 6d e0 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402c73 <init_timeout>:
  402c73:	85 ff                	test   %edi,%edi
  402c75:	74 26                	je     402c9d <init_timeout+0x2a>
  402c77:	53                   	push   %rbx
  402c78:	89 fb                	mov    %edi,%ebx
  402c7a:	85 ff                	test   %edi,%edi
  402c7c:	78 18                	js     402c96 <init_timeout+0x23>
  402c7e:	be 3e 22 40 00       	mov    $0x40223e,%esi
  402c83:	bf 0e 00 00 00       	mov    $0xe,%edi
  402c88:	e8 b3 e0 ff ff       	callq  400d40 <signal@plt>
  402c8d:	89 df                	mov    %ebx,%edi
  402c8f:	e8 7c e0 ff ff       	callq  400d10 <alarm@plt>
  402c94:	5b                   	pop    %rbx
  402c95:	c3                   	retq   
  402c96:	bb 00 00 00 00       	mov    $0x0,%ebx
  402c9b:	eb e1                	jmp    402c7e <init_timeout+0xb>
  402c9d:	f3 c3                	repz retq 

0000000000402c9f <init_driver>:
  402c9f:	55                   	push   %rbp
  402ca0:	53                   	push   %rbx
  402ca1:	48 83 ec 28          	sub    $0x28,%rsp
  402ca5:	48 89 fd             	mov    %rdi,%rbp
  402ca8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402caf:	00 00 
  402cb1:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402cb6:	31 c0                	xor    %eax,%eax
  402cb8:	be 01 00 00 00       	mov    $0x1,%esi
  402cbd:	bf 0d 00 00 00       	mov    $0xd,%edi
  402cc2:	e8 79 e0 ff ff       	callq  400d40 <signal@plt>
  402cc7:	be 01 00 00 00       	mov    $0x1,%esi
  402ccc:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402cd1:	e8 6a e0 ff ff       	callq  400d40 <signal@plt>
  402cd6:	be 01 00 00 00       	mov    $0x1,%esi
  402cdb:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402ce0:	e8 5b e0 ff ff       	callq  400d40 <signal@plt>
  402ce5:	ba 00 00 00 00       	mov    $0x0,%edx
  402cea:	be 01 00 00 00       	mov    $0x1,%esi
  402cef:	bf 02 00 00 00       	mov    $0x2,%edi
  402cf4:	e8 77 e1 ff ff       	callq  400e70 <socket@plt>
  402cf9:	85 c0                	test   %eax,%eax
  402cfb:	0f 88 9c 00 00 00    	js     402d9d <init_driver+0xfe>
  402d01:	89 c3                	mov    %eax,%ebx
  402d03:	bf 0c 33 40 00       	mov    $0x40330c,%edi
  402d08:	e8 43 e0 ff ff       	callq  400d50 <gethostbyname@plt>
  402d0d:	48 85 c0             	test   %rax,%rax
  402d10:	0f 84 d3 00 00 00    	je     402de9 <init_driver+0x14a>
  402d16:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402d1d:	00 00 
  402d1f:	c7 44 24 0a 00 00 00 	movl   $0x0,0xa(%rsp)
  402d26:	00 
  402d27:	66 c7 44 24 0e 00 00 	movw   $0x0,0xe(%rsp)
  402d2e:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402d34:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402d38:	48 8b 40 18          	mov    0x18(%rax),%rax
  402d3c:	48 8b 30             	mov    (%rax),%rsi
  402d3f:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402d44:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402d49:	e8 12 e0 ff ff       	callq  400d60 <__memmove_chk@plt>
  402d4e:	66 c7 44 24 02 3b 70 	movw   $0x703b,0x2(%rsp)
  402d55:	ba 10 00 00 00       	mov    $0x10,%edx
  402d5a:	48 89 e6             	mov    %rsp,%rsi
  402d5d:	89 df                	mov    %ebx,%edi
  402d5f:	e8 dc e0 ff ff       	callq  400e40 <connect@plt>
  402d64:	85 c0                	test   %eax,%eax
  402d66:	0f 88 e5 00 00 00    	js     402e51 <init_driver+0x1b2>
  402d6c:	89 df                	mov    %ebx,%edi
  402d6e:	e8 ad df ff ff       	callq  400d20 <close@plt>
  402d73:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402d79:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402d7d:	b8 00 00 00 00       	mov    $0x0,%eax
  402d82:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402d87:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402d8e:	00 00 
  402d90:	0f 85 0e 01 00 00    	jne    402ea4 <init_driver+0x205>
  402d96:	48 83 c4 28          	add    $0x28,%rsp
  402d9a:	5b                   	pop    %rbx
  402d9b:	5d                   	pop    %rbp
  402d9c:	c3                   	retq   
  402d9d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402da4:	3a 20 43 
  402da7:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402dae:	20 75 6e 
  402db1:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402db5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402db9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402dc0:	74 6f 20 
  402dc3:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402dca:	65 20 73 
  402dcd:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402dd1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402dd5:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402ddc:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402de2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402de7:	eb 99                	jmp    402d82 <init_driver+0xe3>
  402de9:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402df0:	3a 20 44 
  402df3:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402dfa:	20 75 6e 
  402dfd:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402e01:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402e05:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402e0c:	74 6f 20 
  402e0f:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402e16:	76 65 20 
  402e19:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402e1d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402e21:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402e28:	72 20 61 
  402e2b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402e2f:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402e36:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402e3c:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402e40:	89 df                	mov    %ebx,%edi
  402e42:	e8 d9 de ff ff       	callq  400d20 <close@plt>
  402e47:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e4c:	e9 31 ff ff ff       	jmpq   402d82 <init_driver+0xe3>
  402e51:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402e58:	3a 20 55 
  402e5b:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402e62:	20 74 6f 
  402e65:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402e69:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402e6d:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402e74:	65 63 74 
  402e77:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  402e7e:	65 72 76 
  402e81:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402e85:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402e89:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402e8f:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402e93:	89 df                	mov    %ebx,%edi
  402e95:	e8 86 de ff ff       	callq  400d20 <close@plt>
  402e9a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e9f:	e9 de fe ff ff       	jmpq   402d82 <init_driver+0xe3>
  402ea4:	e8 37 de ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402ea9 <driver_post>:
  402ea9:	53                   	push   %rbx
  402eaa:	4c 89 cb             	mov    %r9,%rbx
  402ead:	45 85 c0             	test   %r8d,%r8d
  402eb0:	75 18                	jne    402eca <driver_post+0x21>
  402eb2:	48 85 ff             	test   %rdi,%rdi
  402eb5:	74 05                	je     402ebc <driver_post+0x13>
  402eb7:	80 3f 00             	cmpb   $0x0,(%rdi)
  402eba:	75 35                	jne    402ef1 <driver_post+0x48>
  402ebc:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402ec1:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402ec5:	44 89 c0             	mov    %r8d,%eax
  402ec8:	5b                   	pop    %rbx
  402ec9:	c3                   	retq   
  402eca:	48 89 ca             	mov    %rcx,%rdx
  402ecd:	be cc 37 40 00       	mov    $0x4037cc,%esi
  402ed2:	bf 01 00 00 00       	mov    $0x1,%edi
  402ed7:	b8 00 00 00 00       	mov    $0x0,%eax
  402edc:	e8 ff de ff ff       	callq  400de0 <__printf_chk@plt>
  402ee1:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402ee6:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402eea:	b8 00 00 00 00       	mov    $0x0,%eax
  402eef:	eb d7                	jmp    402ec8 <driver_post+0x1f>
  402ef1:	48 83 ec 08          	sub    $0x8,%rsp
  402ef5:	41 51                	push   %r9
  402ef7:	49 89 c9             	mov    %rcx,%r9
  402efa:	49 89 d0             	mov    %rdx,%r8
  402efd:	48 89 f9             	mov    %rdi,%rcx
  402f00:	48 89 f2             	mov    %rsi,%rdx
  402f03:	be 70 3b 00 00       	mov    $0x3b70,%esi
  402f08:	bf 0c 33 40 00       	mov    $0x40330c,%edi
  402f0d:	e8 f8 f5 ff ff       	callq  40250a <submitr>
  402f12:	48 83 c4 10          	add    $0x10,%rsp
  402f16:	eb b0                	jmp    402ec8 <driver_post+0x1f>

0000000000402f18 <check>:
  402f18:	89 f8                	mov    %edi,%eax
  402f1a:	c1 e8 1c             	shr    $0x1c,%eax
  402f1d:	85 c0                	test   %eax,%eax
  402f1f:	74 1d                	je     402f3e <check+0x26>
  402f21:	b9 00 00 00 00       	mov    $0x0,%ecx
  402f26:	83 f9 1f             	cmp    $0x1f,%ecx
  402f29:	7f 0d                	jg     402f38 <check+0x20>
  402f2b:	89 f8                	mov    %edi,%eax
  402f2d:	d3 e8                	shr    %cl,%eax
  402f2f:	3c 0a                	cmp    $0xa,%al
  402f31:	74 11                	je     402f44 <check+0x2c>
  402f33:	83 c1 08             	add    $0x8,%ecx
  402f36:	eb ee                	jmp    402f26 <check+0xe>
  402f38:	b8 01 00 00 00       	mov    $0x1,%eax
  402f3d:	c3                   	retq   
  402f3e:	b8 00 00 00 00       	mov    $0x0,%eax
  402f43:	c3                   	retq   
  402f44:	b8 00 00 00 00       	mov    $0x0,%eax
  402f49:	c3                   	retq   

0000000000402f4a <gencookie>:
  402f4a:	53                   	push   %rbx
  402f4b:	83 c7 01             	add    $0x1,%edi
  402f4e:	e8 3d dd ff ff       	callq  400c90 <srandom@plt>
  402f53:	e8 48 de ff ff       	callq  400da0 <random@plt>
  402f58:	89 c3                	mov    %eax,%ebx
  402f5a:	89 c7                	mov    %eax,%edi
  402f5c:	e8 b7 ff ff ff       	callq  402f18 <check>
  402f61:	85 c0                	test   %eax,%eax
  402f63:	74 ee                	je     402f53 <gencookie+0x9>
  402f65:	89 d8                	mov    %ebx,%eax
  402f67:	5b                   	pop    %rbx
  402f68:	c3                   	retq   
  402f69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402f70 <__libc_csu_init>:
  402f70:	41 57                	push   %r15
  402f72:	41 56                	push   %r14
  402f74:	49 89 d7             	mov    %rdx,%r15
  402f77:	41 55                	push   %r13
  402f79:	41 54                	push   %r12
  402f7b:	4c 8d 25 8e 1e 20 00 	lea    0x201e8e(%rip),%r12        # 604e10 <__frame_dummy_init_array_entry>
  402f82:	55                   	push   %rbp
  402f83:	48 8d 2d 8e 1e 20 00 	lea    0x201e8e(%rip),%rbp        # 604e18 <__init_array_end>
  402f8a:	53                   	push   %rbx
  402f8b:	41 89 fd             	mov    %edi,%r13d
  402f8e:	49 89 f6             	mov    %rsi,%r14
  402f91:	4c 29 e5             	sub    %r12,%rbp
  402f94:	48 83 ec 08          	sub    $0x8,%rsp
  402f98:	48 c1 fd 03          	sar    $0x3,%rbp
  402f9c:	e8 a7 dc ff ff       	callq  400c48 <_init>
  402fa1:	48 85 ed             	test   %rbp,%rbp
  402fa4:	74 20                	je     402fc6 <__libc_csu_init+0x56>
  402fa6:	31 db                	xor    %ebx,%ebx
  402fa8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402faf:	00 
  402fb0:	4c 89 fa             	mov    %r15,%rdx
  402fb3:	4c 89 f6             	mov    %r14,%rsi
  402fb6:	44 89 ef             	mov    %r13d,%edi
  402fb9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402fbd:	48 83 c3 01          	add    $0x1,%rbx
  402fc1:	48 39 dd             	cmp    %rbx,%rbp
  402fc4:	75 ea                	jne    402fb0 <__libc_csu_init+0x40>
  402fc6:	48 83 c4 08          	add    $0x8,%rsp
  402fca:	5b                   	pop    %rbx
  402fcb:	5d                   	pop    %rbp
  402fcc:	41 5c                	pop    %r12
  402fce:	41 5d                	pop    %r13
  402fd0:	41 5e                	pop    %r14
  402fd2:	41 5f                	pop    %r15
  402fd4:	c3                   	retq   
  402fd5:	90                   	nop
  402fd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402fdd:	00 00 00 

0000000000402fe0 <__libc_csu_fini>:
  402fe0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402fe4 <_fini>:
  402fe4:	48 83 ec 08          	sub    $0x8,%rsp
  402fe8:	48 83 c4 08          	add    $0x8,%rsp
  402fec:	c3                   	retq   
