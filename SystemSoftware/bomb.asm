0000000000000e00 <_init>:
 e00:   48 83 ec 08             sub    $0x8,%rsp
 e04:   48 8b 05 dd 31 20 00    mov    0x2031dd(%rip),%rax        # 203fe8 <__gmon_start__>
 e0b:   48 85 c0                test   %rax,%rax
 e0e:   74 02                   je     e12 <_init+0x12>
 e10:   ff d0                   callq  *%rax
 e12:   48 83 c4 08             add    $0x8,%rsp
 e16:   c3                      retq

Disassembly of section .plt:

0000000000000e20 <.plt>:
 e20:   ff 35 ca 30 20 00       pushq  0x2030ca(%rip)        # 203ef0 <_GLOBAL_OFFSET_TABLE_+0x8>
 e26:   ff 25 cc 30 20 00       jmpq   *0x2030cc(%rip)        # 203ef8 <_GLOBAL_OFFSET_TABLE_+0x10>
 e2c:   0f 1f 40 00             nopl   0x0(%rax)

0000000000000e30 <getenv@plt>:
 e30:   ff 25 ca 30 20 00       jmpq   *0x2030ca(%rip)        # 203f00 <getenv@GLIBC_2.2.5>
 e36:   68 00 00 00 00          pushq  $0x0
 e3b:   e9 e0 ff ff ff          jmpq   e20 <.plt>

0000000000000e40 <strcasecmp@plt>:
 e40:   ff 25 c2 30 20 00       jmpq   *0x2030c2(%rip)        # 203f08 <strcasecmp@GLIBC_2.2.5>
 e46:   68 01 00 00 00          pushq  $0x1
 e4b:   e9 d0 ff ff ff          jmpq   e20 <.plt>

0000000000000e50 <__errno_location@plt>:
 e50:   ff 25 ba 30 20 00       jmpq   *0x2030ba(%rip)        # 203f10 <__errno_location@GLIBC_2.2.5>
 e56:   68 02 00 00 00          pushq  $0x2
 e5b:   e9 c0 ff ff ff          jmpq   e20 <.plt>

0000000000000e60 <strcpy@plt>:
 e60:   ff 25 b2 30 20 00       jmpq   *0x2030b2(%rip)        # 203f18 <strcpy@GLIBC_2.2.5>
 e66:   68 03 00 00 00          pushq  $0x3
 e6b:   e9 b0 ff ff ff          jmpq   e20 <.plt>

0000000000000e70 <puts@plt>:
 e70:   ff 25 aa 30 20 00       jmpq   *0x2030aa(%rip)        # 203f20 <puts@GLIBC_2.2.5>
 e76:   68 04 00 00 00          pushq  $0x4
 e7b:   e9 a0 ff ff ff          jmpq   e20 <.plt>

0000000000000e80 <write@plt>:
 e80:   ff 25 a2 30 20 00       jmpq   *0x2030a2(%rip)        # 203f28 <write@GLIBC_2.2.5>
 e86:   68 05 00 00 00          pushq  $0x5
 e8b:   e9 90 ff ff ff          jmpq   e20 <.plt>

0000000000000e90 <__stack_chk_fail@plt>:
 e90:   ff 25 9a 30 20 00       jmpq   *0x20309a(%rip)        # 203f30 <__stack_chk_fail@GLIBC_2.4>
 e96:   68 06 00 00 00          pushq  $0x6
 e9b:   e9 80 ff ff ff          jmpq   e20 <.plt>

0000000000000ea0 <alarm@plt>:
 ea0:   ff 25 92 30 20 00       jmpq   *0x203092(%rip)        # 203f38 <alarm@GLIBC_2.2.5>
 ea6:   68 07 00 00 00          pushq  $0x7
 eab:   e9 70 ff ff ff          jmpq   e20 <.plt>

0000000000000eb0 <close@plt>:
 eb0:   ff 25 8a 30 20 00       jmpq   *0x20308a(%rip)        # 203f40 <close@GLIBC_2.2.5>
 eb6:   68 08 00 00 00          pushq  $0x8
 ebb:   e9 60 ff ff ff          jmpq   e20 <.plt>

0000000000000ec0 <read@plt>:
 ec0:   ff 25 82 30 20 00       jmpq   *0x203082(%rip)        # 203f48 <read@GLIBC_2.2.5>
 ec6:   68 09 00 00 00          pushq  $0x9
 ecb:   e9 50 ff ff ff          jmpq   e20 <.plt>

0000000000000ed0 <fgets@plt>:
 ed0:   ff 25 7a 30 20 00       jmpq   *0x20307a(%rip)        # 203f50 <fgets@GLIBC_2.2.5>
 ed6:   68 0a 00 00 00          pushq  $0xa
 edb:   e9 40 ff ff ff          jmpq   e20 <.plt>

0000000000000ee0 <signal@plt>:
 ee0:   ff 25 72 30 20 00       jmpq   *0x203072(%rip)        # 203f58 <signal@GLIBC_2.2.5>
 ee6:   68 0b 00 00 00          pushq  $0xb
 eeb:   e9 30 ff ff ff          jmpq   e20 <.plt>

0000000000000ef0 <gethostbyname@plt>:
 ef0:   ff 25 6a 30 20 00       jmpq   *0x20306a(%rip)        # 203f60 <gethostbyname@GLIBC_2.2.5>
 ef6:   68 0c 00 00 00          pushq  $0xc
 efb:   e9 20 ff ff ff          jmpq   e20 <.plt>

0000000000000f00 <__memmove_chk@plt>:
 f00:   ff 25 62 30 20 00       jmpq   *0x203062(%rip)        # 203f68 <__memmove_chk@GLIBC_2.3.4>
 f06:   68 0d 00 00 00          pushq  $0xd
 f0b:   e9 10 ff ff ff          jmpq   e20 <.plt>

0000000000000f10 <strtol@plt>:
 f10:   ff 25 5a 30 20 00       jmpq   *0x20305a(%rip)        # 203f70 <strtol@GLIBC_2.2.5>
 f16:   68 0e 00 00 00          pushq  $0xe
 f1b:   e9 00 ff ff ff          jmpq   e20 <.plt>

0000000000000f20 <fflush@plt>:
 f20:   ff 25 52 30 20 00       jmpq   *0x203052(%rip)        # 203f78 <fflush@GLIBC_2.2.5>
 f26:   68 0f 00 00 00          pushq  $0xf
 f2b:   e9 f0 fe ff ff          jmpq   e20 <.plt>

0000000000000f30 <__isoc99_sscanf@plt>:
 f30:   ff 25 4a 30 20 00       jmpq   *0x20304a(%rip)        # 203f80 <__isoc99_sscanf@GLIBC_2.7>
 f36:   68 10 00 00 00          pushq  $0x10
 f3b:   e9 e0 fe ff ff          jmpq   e20 <.plt>

0000000000000f40 <__printf_chk@plt>:
 f40:   ff 25 42 30 20 00       jmpq   *0x203042(%rip)        # 203f88 <__printf_chk@GLIBC_2.3.4>
 f46:   68 11 00 00 00          pushq  $0x11
 f4b:   e9 d0 fe ff ff          jmpq   e20 <.plt>

0000000000000f50 <fopen@plt>:
 f50:   ff 25 3a 30 20 00       jmpq   *0x20303a(%rip)        # 203f90 <fopen@GLIBC_2.2.5>
 f56:   68 12 00 00 00          pushq  $0x12
 f5b:   e9 c0 fe ff ff          jmpq   e20 <.plt>

0000000000000f60 <gethostname@plt>:
 f60:   ff 25 32 30 20 00       jmpq   *0x203032(%rip)        # 203f98 <gethostname@GLIBC_2.2.5>
 f66:   68 13 00 00 00          pushq  $0x13
 f6b:   e9 b0 fe ff ff          jmpq   e20 <.plt>

0000000000000f70 <exit@plt>:
 f70:   ff 25 2a 30 20 00       jmpq   *0x20302a(%rip)        # 203fa0 <exit@GLIBC_2.2.5>
 f76:   68 14 00 00 00          pushq  $0x14
 f7b:   e9 a0 fe ff ff          jmpq   e20 <.plt>

0000000000000f80 <connect@plt>:
 f80:   ff 25 22 30 20 00       jmpq   *0x203022(%rip)        # 203fa8 <connect@GLIBC_2.2.5>
 f86:   68 15 00 00 00          pushq  $0x15
 f8b:   e9 90 fe ff ff          jmpq   e20 <.plt>

0000000000000f90 <__fprintf_chk@plt>:
 f90:   ff 25 1a 30 20 00       jmpq   *0x20301a(%rip)        # 203fb0 <__fprintf_chk@GLIBC_2.3.4>
 f96:   68 16 00 00 00          pushq  $0x16
 f9b:   e9 80 fe ff ff          jmpq   e20 <.plt>

0000000000000fa0 <sleep@plt>:
 fa0:   ff 25 12 30 20 00       jmpq   *0x203012(%rip)        # 203fb8 <sleep@GLIBC_2.2.5>
 fa6:   68 17 00 00 00          pushq  $0x17
 fab:   e9 70 fe ff ff          jmpq   e20 <.plt>

0000000000000fb0 <__ctype_b_loc@plt>:
 fb0:   ff 25 0a 30 20 00       jmpq   *0x20300a(%rip)        # 203fc0 <__ctype_b_loc@GLIBC_2.3>
 fb6:   68 18 00 00 00          pushq  $0x18
 fbb:   e9 60 fe ff ff          jmpq   e20 <.plt>

0000000000000fc0 <__sprintf_chk@plt>:
 fc0:   ff 25 02 30 20 00       jmpq   *0x203002(%rip)        # 203fc8 <__sprintf_chk@GLIBC_2.3.4>
 fc6:   68 19 00 00 00          pushq  $0x19
 fcb:   e9 50 fe ff ff          jmpq   e20 <.plt>

0000000000000fd0 <socket@plt>:
 fd0:   ff 25 fa 2f 20 00       jmpq   *0x202ffa(%rip)        # 203fd0 <socket@GLIBC_2.2.5>
 fd6:   68 1a 00 00 00          pushq  $0x1a
 fdb:   e9 40 fe ff ff          jmpq   e20 <.plt>

Disassembly of section .plt.got:

0000000000000fe0 <__cxa_finalize@plt>:
 fe0:   ff 25 12 30 20 00       jmpq   *0x203012(%rip)        # 203ff8 <__cxa_finalize@GLIBC_2.2.5>
 fe6:   66 90                   xchg   %ax,%ax

Disassembly of section .text:

0000000000000ff0 <_start>:
     ff0:       31 ed                   xor    %ebp,%ebp
     ff2:       49 89 d1                mov    %rdx,%r9
     ff5:       5e                      pop    %rsi
     ff6:       48 89 e2                mov    %rsp,%rdx
     ff9:       48 83 e4 f0             and    $0xfffffffffffffff0,%rsp
     ffd:       50                      push   %rax
     ffe:       54                      push   %rsp
     fff:       4c 8d 05 ea 19 00 00    lea    0x19ea(%rip),%r8        # 29f0 <__libc_csu_fini>
    1006:       48 8d 0d 73 19 00 00    lea    0x1973(%rip),%rcx        # 2980 <__libc_csu_init>
    100d:       48 8d 3d e6 00 00 00    lea    0xe6(%rip),%rdi        # 10fa <main>
    1014:       ff 15 c6 2f 20 00       callq  *0x202fc6(%rip)        # 203fe0 <__libc_start_main@GLIBC_2.2.5>
    101a:       f4                      hlt
    101b:       0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)

0000000000001020 <deregister_tm_clones>:
    1020:       48 8d 3d 59 36 20 00    lea    0x203659(%rip),%rdi        # 204680 <stdout@@GLIBC_2.2.5>
    1027:       55                      push   %rbp
    1028:       48 8d 05 51 36 20 00    lea    0x203651(%rip),%rax        # 204680 <stdout@@GLIBC_2.2.5>
    102f:       48 39 f8                cmp    %rdi,%rax
    1032:       48 89 e5                mov    %rsp,%rbp
    1035:       74 19                   je     1050 <deregister_tm_clones+0x30>
    1037:       48 8b 05 9a 2f 20 00    mov    0x202f9a(%rip),%rax        # 203fd8 <_ITM_deregisterTMCloneTable>
    103e:       48 85 c0                test   %rax,%rax
    1041:       74 0d                   je     1050 <deregister_tm_clones+0x30>
    1043:       5d                      pop    %rbp
    1044:       ff e0                   jmpq   *%rax
    1046:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
    104d:       00 00 00
    1050:       5d                      pop    %rbp
    1051:       c3                      retq
    1052:       0f 1f 40 00             nopl   0x0(%rax)
    1056:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
    105d:       00 00 00

0000000000001060 <register_tm_clones>:
    1060:       48 8d 3d 19 36 20 00    lea    0x203619(%rip),%rdi        # 204680 <stdout@@GLIBC_2.2.5>
    1067:       48 8d 35 12 36 20 00    lea    0x203612(%rip),%rsi        # 204680 <stdout@@GLIBC_2.2.5>
    106e:       55                      push   %rbp
    106f:       48 29 fe                sub    %rdi,%rsi
    1072:       48 89 e5                mov    %rsp,%rbp
    1075:       48 c1 fe 03             sar    $0x3,%rsi
    1079:       48 89 f0                mov    %rsi,%rax
    107c:       48 c1 e8 3f             shr    $0x3f,%rax
    1080:       48 01 c6                add    %rax,%rsi
    1083:       48 d1 fe                sar    %rsi
    1086:       74 18                   je     10a0 <register_tm_clones+0x40>
    1088:       48 8b 05 61 2f 20 00    mov    0x202f61(%rip),%rax        # 203ff0 <_ITM_registerTMCloneTable>
    108f:       48 85 c0                test   %rax,%rax
    1092:       74 0c                   je     10a0 <register_tm_clones+0x40>
    1094:       5d                      pop    %rbp
    1095:       ff e0                   jmpq   *%rax
    1097:       66 0f 1f 84 00 00 00    nopw   0x0(%rax,%rax,1)
    109e:       00 00
    10a0:       5d                      pop    %rbp
    10a1:       c3                      retq
    10a2:       0f 1f 40 00             nopl   0x0(%rax)
    10a6:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
    10ad:       00 00 00

00000000000010b0 <__do_global_dtors_aux>:
    10b0:       80 3d f1 35 20 00 00    cmpb   $0x0,0x2035f1(%rip)        # 2046a8 <completed.7697>
    10b7:       75 2f                   jne    10e8 <__do_global_dtors_aux+0x38>
    10b9:       48 83 3d 37 2f 20 00    cmpq   $0x0,0x202f37(%rip)        # 203ff8 <__cxa_finalize@GLIBC_2.2.5>
    10c0:       00
    10c1:       55                      push   %rbp
    10c2:       48 89 e5                mov    %rsp,%rbp
    10c5:       74 0c                   je     10d3 <__do_global_dtors_aux+0x23>
    10c7:       48 8b 3d 3a 2f 20 00    mov    0x202f3a(%rip),%rdi        # 204008 <__dso_handle>
    10ce:       e8 0d ff ff ff          callq  fe0 <__cxa_finalize@plt>
    10d3:       e8 48 ff ff ff          callq  1020 <deregister_tm_clones>
    10d8:       c6 05 c9 35 20 00 01    movb   $0x1,0x2035c9(%rip)        # 2046a8 <completed.7697>
    10df:       5d                      pop    %rbp
    10e0:       c3                      retq
    10e1:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)
    10e8:       f3 c3                   repz retq
    10ea:       66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)

00000000000010f0 <frame_dummy>:
    10f0:       55                      push   %rbp
    10f1:       48 89 e5                mov    %rsp,%rbp
    10f4:       5d                      pop    %rbp
    10f5:       e9 66 ff ff ff          jmpq   1060 <register_tm_clones>

00000000000010fa <main>:
    10fa:       53                      push   %rbx
    10fb:       83 ff 01                cmp    $0x1,%edi
    10fe:       0f 84 f8 00 00 00       je     11fc <main+0x102>
    1104:       48 89 f3                mov    %rsi,%rbx
    1107:       83 ff 02                cmp    $0x2,%edi
    110a:       0f 85 21 01 00 00       jne    1231 <main+0x137>
    1110:       48 8b 7e 08             mov    0x8(%rsi),%rdi
    1114:       48 8d 35 e9 18 00 00    lea    0x18e9(%rip),%rsi        # 2a04 <_IO_stdin_used+0x4>
    111b:       e8 30 fe ff ff          callq  f50 <fopen@plt>
    1120:       48 89 05 89 35 20 00    mov    %rax,0x203589(%rip)        # 2046b0 <infile>
    1127:       48 85 c0                test   %rax,%rax
    112a:       0f 84 df 00 00 00       je     120f <main+0x115>
    1130:       e8 46 07 00 00          callq  187b <initialize_bomb>
    1135:       48 8d 3d 4c 19 00 00    lea    0x194c(%rip),%rdi        # 2a88 <_IO_stdin_used+0x88>
    113c:       e8 2f fd ff ff          callq  e70 <puts@plt>
    1141:       48 8d 3d 80 19 00 00    lea    0x1980(%rip),%rdi        # 2ac8 <_IO_stdin_used+0xc8>
    1148:       e8 23 fd ff ff          callq  e70 <puts@plt>
    114d:       e8 43 0a 00 00          callq  1b95 <read_line>
    1152:       48 89 c7                mov    %rax,%rdi
    1155:       e8 fa 00 00 00          callq  1254 <phase_1>
    115a:       e8 7a 0b 00 00          callq  1cd9 <phase_defused>
    115f:       48 8d 3d 92 19 00 00    lea    0x1992(%rip),%rdi        # 2af8 <_IO_stdin_used+0xf8>
    1166:       e8 05 fd ff ff          callq  e70 <puts@plt>
    116b:       e8 25 0a 00 00          callq  1b95 <read_line>
    1170:       48 89 c7                mov    %rax,%rdi
    1173:       e8 fc 00 00 00          callq  1274 <phase_2>
    1178:       e8 5c 0b 00 00          callq  1cd9 <phase_defused>
    117d:       48 8d 3d b9 18 00 00    lea    0x18b9(%rip),%rdi        # 2a3d <_IO_stdin_used+0x3d>
    1184:       e8 e7 fc ff ff          callq  e70 <puts@plt>
    1189:       e8 07 0a 00 00          callq  1b95 <read_line>
    118e:       48 89 c7                mov    %rax,%rdi
    1191:       e8 4d 01 00 00          callq  12e3 <phase_3>
    1196:       e8 3e 0b 00 00          callq  1cd9 <phase_defused>
    119b:       48 8d 3d b9 18 00 00    lea    0x18b9(%rip),%rdi        # 2a5b <_IO_stdin_used+0x5b>
    11a2:       e8 c9 fc ff ff          callq  e70 <puts@plt>
    11a7:       e8 e9 09 00 00          callq  1b95 <read_line>
    11ac:       48 89 c7                mov    %rax,%rdi
    11af:       e8 e2 02 00 00          callq  1496 <phase_4>
    11b4:       e8 20 0b 00 00          callq  1cd9 <phase_defused>
    11b9:       48 8d 3d 68 19 00 00    lea    0x1968(%rip),%rdi        # 2b28 <_IO_stdin_used+0x128>
    11c0:       e8 ab fc ff ff          callq  e70 <puts@plt>
    11c5:       e8 cb 09 00 00          callq  1b95 <read_line>
    11ca:       48 89 c7                mov    %rax,%rdi
    11cd:       e8 33 03 00 00          callq  1505 <phase_5>
    11d2:       e8 02 0b 00 00          callq  1cd9 <phase_defused>
    11d7:       48 8d 3d 8c 18 00 00    lea    0x188c(%rip),%rdi        # 2a6a <_IO_stdin_used+0x6a>
    11de:       e8 8d fc ff ff          callq  e70 <puts@plt>
    11e3:       e8 ad 09 00 00          callq  1b95 <read_line>
    11e8:       48 89 c7                mov    %rax,%rdi
    11eb:       e8 a8 03 00 00          callq  1598 <phase_6>
    11f0:       e8 e4 0a 00 00          callq  1cd9 <phase_defused>
    11f5:       b8 00 00 00 00          mov    $0x0,%eax
    11fa:       5b                      pop    %rbx
    11fb:       c3                      retq
    11fc:       48 8b 05 8d 34 20 00    mov    0x20348d(%rip),%rax        # 204690 <stdin@@GLIBC_2.2.5>
    1203:       48 89 05 a6 34 20 00    mov    %rax,0x2034a6(%rip)        # 2046b0 <infile>
    120a:       e9 21 ff ff ff          jmpq   1130 <main+0x36>
    120f:       48 8b 4b 08             mov    0x8(%rbx),%rcx
    1213:       48 8b 13                mov    (%rbx),%rdx
    1216:       48 8d 35 e9 17 00 00    lea    0x17e9(%rip),%rsi        # 2a06 <_IO_stdin_used+0x6>
    121d:       bf 01 00 00 00          mov    $0x1,%edi
    1222:       e8 19 fd ff ff          callq  f40 <__printf_chk@plt>
    1227:       bf 08 00 00 00          mov    $0x8,%edi
    122c:       e8 3f fd ff ff          callq  f70 <exit@plt>
    1231:       48 8b 16                mov    (%rsi),%rdx
    1234:       48 8d 35 e8 17 00 00    lea    0x17e8(%rip),%rsi        # 2a23 <_IO_stdin_used+0x23>
    123b:       bf 01 00 00 00          mov    $0x1,%edi
    1240:       b8 00 00 00 00          mov    $0x0,%eax
    1245:       e8 f6 fc ff ff          callq  f40 <__printf_chk@plt>
    124a:       bf 08 00 00 00          mov    $0x8,%edi
    124f:       e8 1c fd ff ff          callq  f70 <exit@plt>

0000000000001254 <phase_1>:
    1254:       48 83 ec 08             sub    $0x8,%rsp
    1258:       48 8d 35 f1 18 00 00    lea    0x18f1(%rip),%rsi        # 2b50 <_IO_stdin_used+0x150>
    125f:       e8 b0 05 00 00          callq  1814 <strings_not_equal>
    1264:       85 c0                   test   %eax,%eax
    1266:       75 05                   jne    126d <phase_1+0x19>
    1268:       48 83 c4 08             add    $0x8,%rsp
    126c:       c3                      retq
    126d:       e8 a6 08 00 00          callq  1b18 <explode_bomb>
    1272:       eb f4                   jmp    1268 <phase_1+0x14>
    
0000000000001274 <phase_2>:
    1274:       55                      push   %rbp
    1275:       53                      push   %rbx
    1276:       48 83 ec 28             sub    $0x28,%rsp
    127a:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    1281:       00 00
    1283:       48 89 44 24 18          mov    %rax,0x18(%rsp)
    1288:       31 c0                   xor    %eax,%eax
    128a:       48 89 e6                mov    %rsp,%rsi
    128d:       e8 c2 08 00 00          callq  1b54 <read_six_numbers>
    1292:       83 3c 24 00             cmpl   $0x0,(%rsp)
    1296:       75 07                   jne    129f <phase_2+0x2b>
    1298:       83 7c 24 04 01          cmpl   $0x1,0x4(%rsp)
    129d:       74 05                   je     12a4 <phase_2+0x30>
    129f:       e8 74 08 00 00          callq  1b18 <explode_bomb>
    12a4:       48 89 e3                mov    %rsp,%rbx
    12a7:       48 8d 6b 10             lea    0x10(%rbx),%rbp
    12ab:       eb 09                   jmp    12b6 <phase_2+0x42>
    12ad:       48 83 c3 04             add    $0x4,%rbx
    12b1:       48 39 eb                cmp    %rbp,%rbx
    12b4:       74 11                   je     12c7 <phase_2+0x53>
    12b6:       8b 43 04                mov    0x4(%rbx),%eax
    12b9:       03 03                   add    (%rbx),%eax
    12bb:       39 43 08                cmp    %eax,0x8(%rbx)
    12be:       74 ed                   je     12ad <phase_2+0x39>
    12c0:       e8 53 08 00 00          callq  1b18 <explode_bomb>
    12c5:       eb e6                   jmp    12ad <phase_2+0x39>
    12c7:       48 8b 44 24 18          mov    0x18(%rsp),%rax
    12cc:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    12d3:       00 00
    12d5:       75 07                   jne    12de <phase_2+0x6a>
    12d7:       48 83 c4 28             add    $0x28,%rsp
    12db:       5b                      pop    %rbx
    12dc:       5d                      pop    %rbp
    12dd:       c3                      retq
    12de:       e8 ad fb ff ff          callq  e90 <__stack_chk_fail@plt>

00000000000012e3 <phase_3>:
    12e3:       48 83 ec 28             sub    $0x28,%rsp
    12e7:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    12ee:       00 00
    12f0:       48 89 44 24 18          mov    %rax,0x18(%rsp)
    12f5:       31 c0                   xor    %eax,%eax
    12f7:       48 8d 4c 24 0f          lea    0xf(%rsp),%rcx
    12fc:       48 8d 54 24 10          lea    0x10(%rsp),%rdx
    1301:       4c 8d 44 24 14          lea    0x14(%rsp),%r8
    1306:       48 8d 35 99 18 00 00    lea    0x1899(%rip),%rsi        # 2ba6 <_IO_stdin_used+0x1a6>
    130d:       e8 1e fc ff ff          callq  f30 <__isoc99_sscanf@plt>
    1312:       83 f8 02                cmp    $0x2,%eax
    1315:       7e 1f                   jle    1336 <phase_3+0x53>
    1317:       83 7c 24 10 07          cmpl   $0x7,0x10(%rsp)
    131c:       0f 87 0c 01 00 00       ja     142e <phase_3+0x14b>
    1322:       8b 44 24 10             mov    0x10(%rsp),%eax
    1326:       48 8d 15 93 18 00 00    lea    0x1893(%rip),%rdx        # 2bc0 <_IO_stdin_used+0x1c0>
    132d:       48 63 04 82             movslq (%rdx,%rax,4),%rax
    1331:       48 01 d0                add    %rdx,%rax
    1334:       ff e0                   jmpq   *%rax
    1336:       e8 dd 07 00 00          callq  1b18 <explode_bomb>
    133b:       eb da                   jmp    1317 <phase_3+0x34>
    133d:       b8 79 00 00 00          mov    $0x79,%eax
    1342:       81 7c 24 14 c2 00 00    cmpl   $0xc2,0x14(%rsp)
    1349:       00
    134a:       0f 84 e8 00 00 00       je     1438 <phase_3+0x155>
    1350:       e8 c3 07 00 00          callq  1b18 <explode_bomb>
    1355:       b8 79 00 00 00          mov    $0x79,%eax
    135a:       e9 d9 00 00 00          jmpq   1438 <phase_3+0x155>
    135f:       b8 6e 00 00 00          mov    $0x6e,%eax
    1364:       81 7c 24 14 94 03 00    cmpl   $0x394,0x14(%rsp)
    136b:       00
    136c:       0f 84 c6 00 00 00       je     1438 <phase_3+0x155>
    1372:       e8 a1 07 00 00          callq  1b18 <explode_bomb>
    1377:       b8 6e 00 00 00          mov    $0x6e,%eax
    137c:       e9 b7 00 00 00          jmpq   1438 <phase_3+0x155>
    1381:       b8 68 00 00 00          mov    $0x68,%eax
    1386:       81 7c 24 14 8f 02 00    cmpl   $0x28f,0x14(%rsp)
    138d:       00
    138e:       0f 84 a4 00 00 00       je     1438 <phase_3+0x155>
    1394:       e8 7f 07 00 00          callq  1b18 <explode_bomb>
    1399:       b8 68 00 00 00          mov    $0x68,%eax
    139e:       e9 95 00 00 00          jmpq   1438 <phase_3+0x155>
    13a3:       b8 71 00 00 00          mov    $0x71,%eax
    13a8:       81 7c 24 14 c1 00 00    cmpl   $0xc1,0x14(%rsp)
    13af:       00
    13b0:       0f 84 82 00 00 00       je     1438 <phase_3+0x155>
    13b6:       e8 5d 07 00 00          callq  1b18 <explode_bomb>
    13bb:       b8 71 00 00 00          mov    $0x71,%eax
    13c0:       eb 76                   jmp    1438 <phase_3+0x155>
    13c2:       b8 6e 00 00 00          mov    $0x6e,%eax
    13c7:       81 7c 24 14 f7 00 00    cmpl   $0xf7,0x14(%rsp)
    13ce:       00
    13cf:       74 67                   je     1438 <phase_3+0x155>
    13d1:       e8 42 07 00 00          callq  1b18 <explode_bomb>
    13d6:       b8 6e 00 00 00          mov    $0x6e,%eax
    13db:       eb 5b                   jmp    1438 <phase_3+0x155>
    13dd:       b8 78 00 00 00          mov    $0x78,%eax
    13e2:       81 7c 24 14 c5 01 00    cmpl   $0x1c5,0x14(%rsp)
    13e9:       00
    13ea:       74 4c                   je     1438 <phase_3+0x155>
    13ec:       e8 27 07 00 00          callq  1b18 <explode_bomb>
    13f1:       b8 78 00 00 00          mov    $0x78,%eax
    13f6:       eb 40                   jmp    1438 <phase_3+0x155>
    13f8:       b8 63 00 00 00          mov    $0x63,%eax
    13fd:       81 7c 24 14 8b 03 00    cmpl   $0x38b,0x14(%rsp)
    1404:       00
    1405:       74 31                   je     1438 <phase_3+0x155>
    1407:       e8 0c 07 00 00          callq  1b18 <explode_bomb>
    140c:       b8 63 00 00 00          mov    $0x63,%eax
    1411:       eb 25                   jmp    1438 <phase_3+0x155>
    1413:       b8 69 00 00 00          mov    $0x69,%eax
    1418:       81 7c 24 14 0c 01 00    cmpl   $0x10c,0x14(%rsp)
    141f:       00
    1420:       74 16                   je     1438 <phase_3+0x155>
    1422:       e8 f1 06 00 00          callq  1b18 <explode_bomb>
    1427:       b8 69 00 00 00          mov    $0x69,%eax
    142c:       eb 0a                   jmp    1438 <phase_3+0x155>
    142e:       e8 e5 06 00 00          callq  1b18 <explode_bomb>
    1433:       b8 63 00 00 00          mov    $0x63,%eax
    1438:       38 44 24 0f             cmp    %al,0xf(%rsp)
    143c:       74 05                   je     1443 <phase_3+0x160>
    143e:       e8 d5 06 00 00          callq  1b18 <explode_bomb>
    1443:       48 8b 44 24 18          mov    0x18(%rsp),%rax
    1448:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    144f:       00 00
    1451:       75 05                   jne    1458 <phase_3+0x175>
    1453:       48 83 c4 28             add    $0x28,%rsp
    1457:       c3                      retq
    1458:       e8 33 fa ff ff          callq  e90 <__stack_chk_fail@plt>

000000000000145d <func4>:
    145d:       b8 00 00 00 00          mov    $0x0,%eax
    1462:       85 ff                   test   %edi,%edi
    1464:       7e 07                   jle    146d <func4+0x10>
    1466:       89 f0                   mov    %esi,%eax
    1468:       83 ff 01                cmp    $0x1,%edi
    146b:       75 02                   jne    146f <func4+0x12>
    146d:       f3 c3                   repz retq
    146f:       41 54                   push   %r12
    1471:       55                      push   %rbp
    1472:       53                      push   %rbx
    1473:       41 89 f4                mov    %esi,%r12d
    1476:       89 fb                   mov    %edi,%ebx
    1478:       8d 7f ff                lea    -0x1(%rdi),%edi
    147b:       e8 dd ff ff ff          callq  145d <func4>
    1480:       42 8d 2c 20             lea    (%rax,%r12,1),%ebp
    1484:       8d 7b fe                lea    -0x2(%rbx),%edi
    1487:       44 89 e6                mov    %r12d,%esi
    148a:       e8 ce ff ff ff          callq  145d <func4>
    148f:       01 e8                   add    %ebp,%eax
    1491:       5b                      pop    %rbx
    1492:       5d                      pop    %rbp
    1493:       41 5c                   pop    %r12
    1495:       c3                      retq

0000000000001496 <phase_4>:
    1496:       48 83 ec 18             sub    $0x18,%rsp
    149a:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    14a1:       00 00
    14a3:       48 89 44 24 08          mov    %rax,0x8(%rsp)
    14a8:       31 c0                   xor    %eax,%eax
    14aa:       48 89 e1                mov    %rsp,%rcx
    14ad:       48 8d 54 24 04          lea    0x4(%rsp),%rdx
    14b2:       48 8d 35 b4 19 00 00    lea    0x19b4(%rip),%rsi        # 2e6d <array.3416+0x28d>
    14b9:       e8 72 fa ff ff          callq  f30 <__isoc99_sscanf@plt>
    14be:       83 f8 02                cmp    $0x2,%eax
    14c1:       75 0b                   jne    14ce <phase_4+0x38>
    14c3:       8b 04 24                mov    (%rsp),%eax
    14c6:       83 e8 02                sub    $0x2,%eax
    14c9:       83 f8 02                cmp    $0x2,%eax
    14cc:       76 05                   jbe    14d3 <phase_4+0x3d>
    14ce:       e8 45 06 00 00          callq  1b18 <explode_bomb>
    14d3:       8b 34 24                mov    (%rsp),%esi
    14d6:       bf 07 00 00 00          mov    $0x7,%edi
    14db:       e8 7d ff ff ff          callq  145d <func4>
    14e0:       39 44 24 04             cmp    %eax,0x4(%rsp)
    14e4:       74 05                   je     14eb <phase_4+0x55>
    14e6:       e8 2d 06 00 00          callq  1b18 <explode_bomb>
    14eb:       48 8b 44 24 08          mov    0x8(%rsp),%rax
    14f0:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    14f7:       00 00
    14f9:       75 05                   jne    1500 <phase_4+0x6a>
    14fb:       48 83 c4 18             add    $0x18,%rsp
    14ff:       c3                      retq
    1500:       e8 8b f9 ff ff          callq  e90 <__stack_chk_fail@plt>

0000000000001505 <phase_5>:
    1505:       48 83 ec 18             sub    $0x18,%rsp
    1509:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    1510:       00 00
    1512:       48 89 44 24 08          mov    %rax,0x8(%rsp)
    1517:       31 c0                   xor    %eax,%eax
    1519:       48 8d 4c 24 04          lea    0x4(%rsp),%rcx
    151e:       48 89 e2                mov    %rsp,%rdx
    1521:       48 8d 35 45 19 00 00    lea    0x1945(%rip),%rsi        # 2e6d <array.3416+0x28d>
    1528:       e8 03 fa ff ff          callq  f30 <__isoc99_sscanf@plt>
    152d:       83 f8 01                cmp    $0x1,%eax
    1530:       7e 5a                   jle    158c <phase_5+0x87>
    1532:       8b 04 24                mov    (%rsp),%eax
    1535:       83 e0 0f                and    $0xf,%eax
    1538:       89 04 24                mov    %eax,(%rsp)
    153b:       83 f8 0f                cmp    $0xf,%eax
    153e:       74 32                   je     1572 <phase_5+0x6d>
    1540:       b9 00 00 00 00          mov    $0x0,%ecx
    1545:       ba 00 00 00 00          mov    $0x0,%edx
    154a:       48 8d 35 8f 16 00 00    lea    0x168f(%rip),%rsi        # 2be0 <array.3416>
    1551:       83 c2 01                add    $0x1,%edx
    1554:       48 98                   cltq
    1556:       8b 04 86                mov    (%rsi,%rax,4),%eax
    1559:       01 c1                   add    %eax,%ecx
    155b:       83 f8 0f                cmp    $0xf,%eax
    155e:       75 f1                   jne    1551 <phase_5+0x4c>
    1560:       c7 04 24 0f 00 00 00    movl   $0xf,(%rsp)
    1567:       83 fa 0f                cmp    $0xf,%edx
    156a:       75 06                   jne    1572 <phase_5+0x6d>
    156c:       39 4c 24 04             cmp    %ecx,0x4(%rsp)
    1570:       74 05                   je     1577 <phase_5+0x72>
    1572:       e8 a1 05 00 00          callq  1b18 <explode_bomb>
    1577:       48 8b 44 24 08          mov    0x8(%rsp),%rax
    157c:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    1583:       00 00
    1585:       75 0c                   jne    1593 <phase_5+0x8e>
    1587:       48 83 c4 18             add    $0x18,%rsp
    158b:       c3                      retq
    158c:       e8 87 05 00 00          callq  1b18 <explode_bomb>
    1591:       eb 9f                   jmp    1532 <phase_5+0x2d>
    1593:       e8 f8 f8 ff ff          callq  e90 <__stack_chk_fail@plt>

0000000000001598 <phase_6>:
    1598:       41 56                   push   %r14
    159a:       41 55                   push   %r13
    159c:       41 54                   push   %r12
    159e:       55                      push   %rbp
    159f:       53                      push   %rbx
    15a0:       48 83 ec 60             sub    $0x60,%rsp
    15a4:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    15ab:       00 00
    15ad:       48 89 44 24 58          mov    %rax,0x58(%rsp)
    15b2:       31 c0                   xor    %eax,%eax
    15b4:       49 89 e5                mov    %rsp,%r13
    15b7:       4c 89 ee                mov    %r13,%rsi
    15ba:       e8 95 05 00 00          callq  1b54 <read_six_numbers>
    15bf:       4d 89 ec                mov    %r13,%r12
    15c2:       41 be 00 00 00 00       mov    $0x0,%r14d
    15c8:       eb 25                   jmp    15ef <phase_6+0x57>
    15ca:       e8 49 05 00 00          callq  1b18 <explode_bomb>
    15cf:       eb 2d                   jmp    15fe <phase_6+0x66>
    15d1:       83 c3 01                add    $0x1,%ebx
    15d4:       83 fb 05                cmp    $0x5,%ebx
    15d7:       7f 12                   jg     15eb <phase_6+0x53>
    15d9:       48 63 c3                movslq %ebx,%rax
    15dc:       8b 04 84                mov    (%rsp,%rax,4),%eax
    15df:       39 45 00                cmp    %eax,0x0(%rbp)
    15e2:       75 ed                   jne    15d1 <phase_6+0x39>
    15e4:       e8 2f 05 00 00          callq  1b18 <explode_bomb>
    15e9:       eb e6                   jmp    15d1 <phase_6+0x39>
    15eb:       49 83 c5 04             add    $0x4,%r13
    15ef:       4c 89 ed                mov    %r13,%rbp
    15f2:       41 8b 45 00             mov    0x0(%r13),%eax
    15f6:       83 e8 01                sub    $0x1,%eax
    15f9:       83 f8 05                cmp    $0x5,%eax
    15fc:       77 cc                   ja     15ca <phase_6+0x32>
    15fe:       41 83 c6 01             add    $0x1,%r14d
    1602:       41 83 fe 06             cmp    $0x6,%r14d
    1606:       74 05                   je     160d <phase_6+0x75>
    1608:       44 89 f3                mov    %r14d,%ebx
    160b:       eb cc                   jmp    15d9 <phase_6+0x41>
    160d:       49 8d 4c 24 18          lea    0x18(%r12),%rcx
    1612:       ba 07 00 00 00          mov    $0x7,%edx
    1617:       89 d0                   mov    %edx,%eax
    1619:       41 2b 04 24             sub    (%r12),%eax
    161d:       41 89 04 24             mov    %eax,(%r12)
    1621:       49 83 c4 04             add    $0x4,%r12
    1625:       4c 39 e1                cmp    %r12,%rcx
    1628:       75 ed                   jne    1617 <phase_6+0x7f>
    162a:       be 00 00 00 00          mov    $0x0,%esi
    162f:       eb 1a                   jmp    164b <phase_6+0xb3>
    1631:       48 8b 52 08             mov    0x8(%rdx),%rdx
    1635:       83 c0 01                add    $0x1,%eax
    1638:       39 c8                   cmp    %ecx,%eax
    163a:       75 f5                   jne    1631 <phase_6+0x99>
    163c:       48 89 54 f4 20          mov    %rdx,0x20(%rsp,%rsi,8)
    1641:       48 83 c6 01             add    $0x1,%rsi
    1645:       48 83 fe 06             cmp    $0x6,%rsi
    1649:       74 16                   je     1661 <phase_6+0xc9>
    164b:       8b 0c b4                mov    (%rsp,%rsi,4),%ecx
    164e:       b8 01 00 00 00          mov    $0x1,%eax
    1653:       48 8d 15 d6 2b 20 00    lea    0x202bd6(%rip),%rdx        # 204230 <node1>
    165a:       83 f9 01                cmp    $0x1,%ecx
    165d:       7f d2                   jg     1631 <phase_6+0x99>
    165f:       eb db                   jmp    163c <phase_6+0xa4>
    1661:       48 8b 5c 24 20          mov    0x20(%rsp),%rbx
    1666:       48 8b 44 24 28          mov    0x28(%rsp),%rax
    166b:       48 89 43 08             mov    %rax,0x8(%rbx)
    166f:       48 8b 54 24 30          mov    0x30(%rsp),%rdx
    1674:       48 89 50 08             mov    %rdx,0x8(%rax)
    1678:       48 8b 44 24 38          mov    0x38(%rsp),%rax
    167d:       48 89 42 08             mov    %rax,0x8(%rdx)
    1681:       48 8b 54 24 40          mov    0x40(%rsp),%rdx
    1686:       48 89 50 08             mov    %rdx,0x8(%rax)
    168a:       48 8b 44 24 48          mov    0x48(%rsp),%rax
    168f:       48 89 42 08             mov    %rax,0x8(%rdx)
    1693:       48 c7 40 08 00 00 00    movq   $0x0,0x8(%rax)
    169a:       00
    169b:       bd 05 00 00 00          mov    $0x5,%ebp
    16a0:       eb 09                   jmp    16ab <phase_6+0x113>
    16a2:       48 8b 5b 08             mov    0x8(%rbx),%rbx
    16a6:       83 ed 01                sub    $0x1,%ebp
    16a9:       74 11                   je     16bc <phase_6+0x124>
    16ab:       48 8b 43 08             mov    0x8(%rbx),%rax
    16af:       8b 00                   mov    (%rax),%eax
    16b1:       39 03                   cmp    %eax,(%rbx)
    16b3:       7d ed                   jge    16a2 <phase_6+0x10a>
    16b5:       e8 5e 04 00 00          callq  1b18 <explode_bomb>
    16ba:       eb e6                   jmp    16a2 <phase_6+0x10a>
    16bc:       48 8b 44 24 58          mov    0x58(%rsp),%rax
    16c1:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    16c8:       00 00
    16ca:       75 0d                   jne    16d9 <phase_6+0x141>
    16cc:       48 83 c4 60             add    $0x60,%rsp
    16d0:       5b                      pop    %rbx
    16d1:       5d                      pop    %rbp
    16d2:       41 5c                   pop    %r12
    16d4:       41 5d                   pop    %r13
    16d6:       41 5e                   pop    %r14
    16d8:       c3                      retq
    16d9:       e8 b2 f7 ff ff          callq  e90 <__stack_chk_fail@plt>

00000000000016de <fun7>:
    16de:       48 85 ff                test   %rdi,%rdi
    16e1:       74 34                   je     1717 <fun7+0x39>
    16e3:       48 83 ec 08             sub    $0x8,%rsp
    16e7:       8b 17                   mov    (%rdi),%edx
    16e9:       39 f2                   cmp    %esi,%edx
    16eb:       7f 0e                   jg     16fb <fun7+0x1d>
    16ed:       b8 00 00 00 00          mov    $0x0,%eax
    16f2:       39 f2                   cmp    %esi,%edx
    16f4:       75 12                   jne    1708 <fun7+0x2a>
    16f6:       48 83 c4 08             add    $0x8,%rsp
    16fa:       c3                      retq
    16fb:       48 8b 7f 08             mov    0x8(%rdi),%rdi
    16ff:       e8 da ff ff ff          callq  16de <fun7>
    1704:       01 c0                   add    %eax,%eax
    1706:       eb ee                   jmp    16f6 <fun7+0x18>
    1708:       48 8b 7f 10             mov    0x10(%rdi),%rdi
    170c:       e8 cd ff ff ff          callq  16de <fun7>
    1711:       8d 44 00 01             lea    0x1(%rax,%rax,1),%eax
    1715:       eb df                   jmp    16f6 <fun7+0x18>
    1717:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    171c:       c3                      retq

000000000000171d <secret_phase>:
    171d:       53                      push   %rbx
    171e:       e8 72 04 00 00          callq  1b95 <read_line>
    1723:       ba 0a 00 00 00          mov    $0xa,%edx
    1728:       be 00 00 00 00          mov    $0x0,%esi
    172d:       48 89 c7                mov    %rax,%rdi
    1730:       e8 db f7 ff ff          callq  f10 <strtol@plt>
    1735:       48 89 c3                mov    %rax,%rbx
    1738:       8d 40 ff                lea    -0x1(%rax),%eax
    173b:       3d e8 03 00 00          cmp    $0x3e8,%eax
    1740:       77 2b                   ja     176d <secret_phase+0x50>
    1742:       89 de                   mov    %ebx,%esi
    1744:       48 8d 3d 05 2a 20 00    lea    0x202a05(%rip),%rdi        # 204150 <n1>
    174b:       e8 8e ff ff ff          callq  16de <fun7>
    1750:       83 f8 01                cmp    $0x1,%eax
    1753:       74 05                   je     175a <secret_phase+0x3d>
    1755:       e8 be 03 00 00          callq  1b18 <explode_bomb>
    175a:       48 8d 3d 1f 14 00 00    lea    0x141f(%rip),%rdi        # 2b80 <_IO_stdin_used+0x180>
    1761:       e8 0a f7 ff ff          callq  e70 <puts@plt>
    1766:       e8 6e 05 00 00          callq  1cd9 <phase_defused>
    176b:       5b                      pop    %rbx
    176c:       c3                      retq
    176d:       e8 a6 03 00 00          callq  1b18 <explode_bomb>
    1772:       eb ce                   jmp    1742 <secret_phase+0x25>

0000000000001774 <sig_handler>:
    1774:       48 83 ec 08             sub    $0x8,%rsp
    1778:       48 8d 3d a1 14 00 00    lea    0x14a1(%rip),%rdi        # 2c20 <array.3416+0x40>
    177f:       e8 ec f6 ff ff          callq  e70 <puts@plt>
    1784:       bf 03 00 00 00          mov    $0x3,%edi
    1789:       e8 12 f8 ff ff          callq  fa0 <sleep@plt>
    178e:       48 8d 35 54 16 00 00    lea    0x1654(%rip),%rsi        # 2de9 <array.3416+0x209>
    1795:       bf 01 00 00 00          mov    $0x1,%edi
    179a:       b8 00 00 00 00          mov    $0x0,%eax
    179f:       e8 9c f7 ff ff          callq  f40 <__printf_chk@plt>
    17a4:       48 8b 3d d5 2e 20 00    mov    0x202ed5(%rip),%rdi        # 204680 <stdout@@GLIBC_2.2.5>
    17ab:       e8 70 f7 ff ff          callq  f20 <fflush@plt>
    17b0:       bf 01 00 00 00          mov    $0x1,%edi
    17b5:       e8 e6 f7 ff ff          callq  fa0 <sleep@plt>
    17ba:       48 8d 3d 30 16 00 00    lea    0x1630(%rip),%rdi        # 2df1 <array.3416+0x211>
    17c1:       e8 aa f6 ff ff          callq  e70 <puts@plt>
    17c6:       bf 10 00 00 00          mov    $0x10,%edi
    17cb:       e8 a0 f7 ff ff          callq  f70 <exit@plt>

00000000000017d0 <invalid_phase>:
    17d0:       48 83 ec 08             sub    $0x8,%rsp
    17d4:       48 89 fa                mov    %rdi,%rdx
    17d7:       48 8d 35 1b 16 00 00    lea    0x161b(%rip),%rsi        # 2df9 <array.3416+0x219>
    17de:       bf 01 00 00 00          mov    $0x1,%edi
    17e3:       b8 00 00 00 00          mov    $0x0,%eax
    17e8:       e8 53 f7 ff ff          callq  f40 <__printf_chk@plt>
    17ed:       bf 08 00 00 00          mov    $0x8,%edi
    17f2:       e8 79 f7 ff ff          callq  f70 <exit@plt>

00000000000017f7 <string_length>:
    17f7:       80 3f 00                cmpb   $0x0,(%rdi)
    17fa:       74 12                   je     180e <string_length+0x17>
    17fc:       48 89 fa                mov    %rdi,%rdx
    17ff:       48 83 c2 01             add    $0x1,%rdx
    1803:       89 d0                   mov    %edx,%eax
    1805:       29 f8                   sub    %edi,%eax
    1807:       80 3a 00                cmpb   $0x0,(%rdx)
    180a:       75 f3                   jne    17ff <string_length+0x8>
    180c:       f3 c3                   repz retq
    180e:       b8 00 00 00 00          mov    $0x0,%eax
    1813:       c3                      retq

0000000000001814 <strings_not_equal>:
    1814:       41 54                   push   %r12
    1816:       55                      push   %rbp
    1817:       53                      push   %rbx
    1818:       48 89 fb                mov    %rdi,%rbx
    181b:       48 89 f5                mov    %rsi,%rbp
    181e:       e8 d4 ff ff ff          callq  17f7 <string_length>
    1823:       41 89 c4                mov    %eax,%r12d
    1826:       48 89 ef                mov    %rbp,%rdi
    1829:       e8 c9 ff ff ff          callq  17f7 <string_length>
    182e:       ba 01 00 00 00          mov    $0x1,%edx
    1833:       41 39 c4                cmp    %eax,%r12d
    1836:       74 07                   je     183f <strings_not_equal+0x2b>
    1838:       89 d0                   mov    %edx,%eax
    183a:       5b                      pop    %rbx
    183b:       5d                      pop    %rbp
    183c:       41 5c                   pop    %r12
    183e:       c3                      retq
    183f:       0f b6 03                movzbl (%rbx),%eax
    1842:       84 c0                   test   %al,%al
    1844:       74 27                   je     186d <strings_not_equal+0x59>
    1846:       3a 45 00                cmp    0x0(%rbp),%al
    1849:       75 29                   jne    1874 <strings_not_equal+0x60>
    184b:       48 83 c3 01             add    $0x1,%rbx
    184f:       48 83 c5 01             add    $0x1,%rbp
    1853:       0f b6 03                movzbl (%rbx),%eax
    1856:       84 c0                   test   %al,%al
    1858:       74 0c                   je     1866 <strings_not_equal+0x52>
    185a:       38 45 00                cmp    %al,0x0(%rbp)
    185d:       74 ec                   je     184b <strings_not_equal+0x37>
    185f:       ba 01 00 00 00          mov    $0x1,%edx
    1864:       eb d2                   jmp    1838 <strings_not_equal+0x24>
    1866:       ba 00 00 00 00          mov    $0x0,%edx
    186b:       eb cb                   jmp    1838 <strings_not_equal+0x24>
    186d:       ba 00 00 00 00          mov    $0x0,%edx
    1872:       eb c4                   jmp    1838 <strings_not_equal+0x24>
    1874:       ba 01 00 00 00          mov    $0x1,%edx
    1879:       eb bd                   jmp    1838 <strings_not_equal+0x24>

000000000000187b <initialize_bomb>:
    187b:       55                      push   %rbp
    187c:       53                      push   %rbx
    187d:       48 81 ec 58 20 00 00    sub    $0x2058,%rsp
    1884:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    188b:       00 00
    188d:       48 89 84 24 48 20 00    mov    %rax,0x2048(%rsp)
    1894:       00
    1895:       31 c0                   xor    %eax,%eax
    1897:       48 8d 35 d6 fe ff ff    lea    -0x12a(%rip),%rsi        # 1774 <sig_handler>
    189e:       bf 02 00 00 00          mov    $0x2,%edi
    18a3:       e8 38 f6 ff ff          callq  ee0 <signal@plt>
    18a8:       48 89 e7                mov    %rsp,%rdi
    18ab:       be 40 00 00 00          mov    $0x40,%esi
    18b0:       e8 ab f6 ff ff          callq  f60 <gethostname@plt>
    18b5:       85 c0                   test   %eax,%eax
    18b7:       75 45                   jne    18fe <initialize_bomb+0x83>
    18b9:       48 8b 3d c0 29 20 00    mov    0x2029c0(%rip),%rdi        # 204280 <host_table>
    18c0:       48 8d 1d c1 29 20 00    lea    0x2029c1(%rip),%rbx        # 204288 <host_table+0x8>
    18c7:       48 89 e5                mov    %rsp,%rbp
    18ca:       48 85 ff                test   %rdi,%rdi
    18cd:       74 19                   je     18e8 <initialize_bomb+0x6d>
    18cf:       48 89 ee                mov    %rbp,%rsi
    18d2:       e8 69 f5 ff ff          callq  e40 <strcasecmp@plt>
    18d7:       85 c0                   test   %eax,%eax
    18d9:       74 5e                   je     1939 <initialize_bomb+0xbe>
    18db:       48 83 c3 08             add    $0x8,%rbx
    18df:       48 8b 7b f8             mov    -0x8(%rbx),%rdi
    18e3:       48 85 ff                test   %rdi,%rdi
    18e6:       75 e7                   jne    18cf <initialize_bomb+0x54>
    18e8:       48 8d 3d a1 13 00 00    lea    0x13a1(%rip),%rdi        # 2c90 <array.3416+0xb0>
    18ef:       e8 7c f5 ff ff          callq  e70 <puts@plt>
    18f4:       bf 08 00 00 00          mov    $0x8,%edi
    18f9:       e8 72 f6 ff ff          callq  f70 <exit@plt>
    18fe:       48 8d 3d 53 13 00 00    lea    0x1353(%rip),%rdi        # 2c58 <array.3416+0x78>
    1905:       e8 66 f5 ff ff          callq  e70 <puts@plt>
    190a:       bf 08 00 00 00          mov    $0x8,%edi
    190f:       e8 5c f6 ff ff          callq  f70 <exit@plt>
    1914:       48 8d 54 24 40          lea    0x40(%rsp),%rdx
    1919:       48 8d 35 ea 14 00 00    lea    0x14ea(%rip),%rsi        # 2e0a <array.3416+0x22a>
    1920:       bf 01 00 00 00          mov    $0x1,%edi
    1925:       b8 00 00 00 00          mov    $0x0,%eax
    192a:       e8 11 f6 ff ff          callq  f40 <__printf_chk@plt>
    192f:       bf 08 00 00 00          mov    $0x8,%edi
    1934:       e8 37 f6 ff ff          callq  f70 <exit@plt>
    1939:       48 8d 7c 24 40          lea    0x40(%rsp),%rdi
    193e:       e8 b2 0d 00 00          callq  26f5 <init_driver>
    1943:       85 c0                   test   %eax,%eax
    1945:       78 cd                   js     1914 <initialize_bomb+0x99>
    1947:       48 8b 84 24 48 20 00    mov    0x2048(%rsp),%rax
    194e:       00
    194f:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    1956:       00 00
    1958:       75 0a                   jne    1964 <initialize_bomb+0xe9>
    195a:       48 81 c4 58 20 00 00    add    $0x2058,%rsp
    1961:       5b                      pop    %rbx
    1962:       5d                      pop    %rbp
    1963:       c3                      retq
    1964:       e8 27 f5 ff ff          callq  e90 <__stack_chk_fail@plt>

0000000000001969 <initialize_bomb_solve>:
    1969:       f3 c3                   repz retq

000000000000196b <blank_line>:
    196b:       55                      push   %rbp
    196c:       53                      push   %rbx
    196d:       48 83 ec 08             sub    $0x8,%rsp
    1971:       48 89 fd                mov    %rdi,%rbp
    1974:       0f b6 5d 00             movzbl 0x0(%rbp),%ebx
    1978:       84 db                   test   %bl,%bl
    197a:       74 1e                   je     199a <blank_line+0x2f>
    197c:       e8 2f f6 ff ff          callq  fb0 <__ctype_b_loc@plt>
    1981:       48 83 c5 01             add    $0x1,%rbp
    1985:       48 0f be db             movsbq %bl,%rbx
    1989:       48 8b 00                mov    (%rax),%rax
    198c:       f6 44 58 01 20          testb  $0x20,0x1(%rax,%rbx,2)
    1991:       75 e1                   jne    1974 <blank_line+0x9>
    1993:       b8 00 00 00 00          mov    $0x0,%eax
    1998:       eb 05                   jmp    199f <blank_line+0x34>
    199a:       b8 01 00 00 00          mov    $0x1,%eax
    199f:       48 83 c4 08             add    $0x8,%rsp
    19a3:       5b                      pop    %rbx
    19a4:       5d                      pop    %rbp
    19a5:       c3                      retq

00000000000019a6 <skip>:
    19a6:       55                      push   %rbp
    19a7:       53                      push   %rbx
    19a8:       48 83 ec 08             sub    $0x8,%rsp
    19ac:       48 8d 2d 0d 2d 20 00    lea    0x202d0d(%rip),%rbp        # 2046c0 <input_strings>
    19b3:       48 63 05 f2 2c 20 00    movslq 0x202cf2(%rip),%rax        # 2046ac <num_input_strings>
    19ba:       48 8d 3c 80             lea    (%rax,%rax,4),%rdi
    19be:       48 c1 e7 04             shl    $0x4,%rdi
    19c2:       48 01 ef                add    %rbp,%rdi
    19c5:       48 8b 15 e4 2c 20 00    mov    0x202ce4(%rip),%rdx        # 2046b0 <infile>
    19cc:       be 50 00 00 00          mov    $0x50,%esi
    19d1:       e8 fa f4 ff ff          callq  ed0 <fgets@plt>
    19d6:       48 89 c3                mov    %rax,%rbx
    19d9:       48 85 c0                test   %rax,%rax
    19dc:       74 0c                   je     19ea <skip+0x44>
    19de:       48 89 c7                mov    %rax,%rdi
    19e1:       e8 85 ff ff ff          callq  196b <blank_line>
    19e6:       85 c0                   test   %eax,%eax
    19e8:       75 c9                   jne    19b3 <skip+0xd>
    19ea:       48 89 d8                mov    %rbx,%rax
    19ed:       48 83 c4 08             add    $0x8,%rsp
    19f1:       5b                      pop    %rbx
    19f2:       5d                      pop    %rbp
    19f3:       c3                      retq

00000000000019f4 <send_msg>:
    19f4:       53                      push   %rbx
    19f5:       48 81 ec 10 40 00 00    sub    $0x4010,%rsp
    19fc:       41 89 f8                mov    %edi,%r8d
    19ff:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    1a06:       00 00
    1a08:       48 89 84 24 08 40 00    mov    %rax,0x4008(%rsp)
    1a0f:       00
    1a10:       31 c0                   xor    %eax,%eax
    1a12:       8b 35 94 2c 20 00       mov    0x202c94(%rip),%esi        # 2046ac <num_input_strings>
    1a18:       8d 46 ff                lea    -0x1(%rsi),%eax
    1a1b:       48 98                   cltq
    1a1d:       48 8d 14 80             lea    (%rax,%rax,4),%rdx
    1a21:       48 c1 e2 04             shl    $0x4,%rdx
    1a25:       48 8d 05 94 2c 20 00    lea    0x202c94(%rip),%rax        # 2046c0 <input_strings>
    1a2c:       48 01 c2                add    %rax,%rdx
    1a2f:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
    1a36:       b8 00 00 00 00          mov    $0x0,%eax
    1a3b:       48 89 d7                mov    %rdx,%rdi
    1a3e:       f2 ae                   repnz scas %es:(%rdi),%al
    1a40:       48 89 c8                mov    %rcx,%rax
    1a43:       48 f7 d0                not    %rax
    1a46:       48 83 c0 63             add    $0x63,%rax
    1a4a:       48 3d 00 20 00 00       cmp    $0x2000,%rax
    1a50:       0f 87 86 00 00 00       ja     1adc <send_msg+0xe8>
    1a56:       45 85 c0                test   %r8d,%r8d
    1a59:       4c 8d 0d c4 13 00 00    lea    0x13c4(%rip),%r9        # 2e24 <array.3416+0x244>
    1a60:       48 8d 05 c5 13 00 00    lea    0x13c5(%rip),%rax        # 2e2c <array.3416+0x24c>
    1a67:       4c 0f 44 c8             cmove  %rax,%r9
    1a6b:       48 89 e3                mov    %rsp,%rbx
    1a6e:       52                      push   %rdx
    1a6f:       56                      push   %rsi
    1a70:       44 8b 05 cd 26 20 00    mov    0x2026cd(%rip),%r8d        # 204144 <bomb_id>
    1a77:       48 8d 0d b7 13 00 00    lea    0x13b7(%rip),%rcx        # 2e35 <array.3416+0x255>
    1a7e:       ba 00 20 00 00          mov    $0x2000,%edx
    1a83:       be 01 00 00 00          mov    $0x1,%esi
    1a88:       48 89 df                mov    %rbx,%rdi
    1a8b:       b8 00 00 00 00          mov    $0x0,%eax
    1a90:       e8 2b f5 ff ff          callq  fc0 <__sprintf_chk@plt>
    1a95:       4c 8d 84 24 10 20 00    lea    0x2010(%rsp),%r8
    1a9c:       00
    1a9d:       b9 00 00 00 00          mov    $0x0,%ecx
    1aa2:       48 89 da                mov    %rbx,%rdx
    1aa5:       48 8d 35 74 26 20 00    lea    0x202674(%rip),%rsi        # 204120 <user_password>
    1aac:       48 8d 3d 85 26 20 00    lea    0x202685(%rip),%rdi        # 204138 <userid>
    1ab3:       e8 46 0e 00 00          callq  28fe <driver_post>
    1ab8:       48 83 c4 10             add    $0x10,%rsp
    1abc:       85 c0                   test   %eax,%eax
    1abe:       78 3c                   js     1afc <send_msg+0x108>
    1ac0:       48 8b 84 24 08 40 00    mov    0x4008(%rsp),%rax
    1ac7:       00
    1ac8:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    1acf:       00 00
    1ad1:       75 40                   jne    1b13 <send_msg+0x11f>
    1ad3:       48 81 c4 10 40 00 00    add    $0x4010,%rsp
    1ada:       5b                      pop    %rbx
    1adb:       c3                      retq
    1adc:       48 8d 35 e5 11 00 00    lea    0x11e5(%rip),%rsi        # 2cc8 <array.3416+0xe8>
    1ae3:       bf 01 00 00 00          mov    $0x1,%edi
    1ae8:       b8 00 00 00 00          mov    $0x0,%eax
    1aed:       e8 4e f4 ff ff          callq  f40 <__printf_chk@plt>
    1af2:       bf 08 00 00 00          mov    $0x8,%edi
    1af7:       e8 74 f4 ff ff          callq  f70 <exit@plt>
    1afc:       48 8d bc 24 00 20 00    lea    0x2000(%rsp),%rdi
    1b03:       00
    1b04:       e8 67 f3 ff ff          callq  e70 <puts@plt>
    1b09:       bf 00 00 00 00          mov    $0x0,%edi
    1b0e:       e8 5d f4 ff ff          callq  f70 <exit@plt>
    1b13:       e8 78 f3 ff ff          callq  e90 <__stack_chk_fail@plt>

0000000000001b18 <explode_bomb>:
    1b18:       48 83 ec 08             sub    $0x8,%rsp
    1b1c:       48 8d 3d 1e 13 00 00    lea    0x131e(%rip),%rdi        # 2e41 <array.3416+0x261>
    1b23:       e8 48 f3 ff ff          callq  e70 <puts@plt>
    1b28:       48 8d 3d 1b 13 00 00    lea    0x131b(%rip),%rdi        # 2e4a <array.3416+0x26a>
    1b2f:       e8 3c f3 ff ff          callq  e70 <puts@plt>
    1b34:       bf 00 00 00 00          mov    $0x0,%edi
    1b39:       e8 b6 fe ff ff          callq  19f4 <send_msg>
    1b3e:       48 8d 3d ab 11 00 00    lea    0x11ab(%rip),%rdi        # 2cf0 <array.3416+0x110>
    1b45:       e8 26 f3 ff ff          callq  e70 <puts@plt>
    1b4a:       bf 08 00 00 00          mov    $0x8,%edi
    1b4f:       e8 1c f4 ff ff          callq  f70 <exit@plt>

0000000000001b54 <read_six_numbers>:
    1b54:       48 83 ec 08             sub    $0x8,%rsp
    1b58:       48 89 f2                mov    %rsi,%rdx
    1b5b:       48 8d 4e 04             lea    0x4(%rsi),%rcx
    1b5f:       48 8d 46 14             lea    0x14(%rsi),%rax
    1b63:       50                      push   %rax
    1b64:       48 8d 46 10             lea    0x10(%rsi),%rax
    1b68:       50                      push   %rax
    1b69:       4c 8d 4e 0c             lea    0xc(%rsi),%r9
    1b6d:       4c 8d 46 08             lea    0x8(%rsi),%r8
    1b71:       48 8d 35 e9 12 00 00    lea    0x12e9(%rip),%rsi        # 2e61 <array.3416+0x281>
    1b78:       b8 00 00 00 00          mov    $0x0,%eax
    1b7d:       e8 ae f3 ff ff          callq  f30 <__isoc99_sscanf@plt>
    1b82:       48 83 c4 10             add    $0x10,%rsp
    1b86:       83 f8 05                cmp    $0x5,%eax 
    1b89:       7e 05                   jle    1b90 <read_six_numbers+0x3c>
    1b8b:       48 83 c4 08             add    $0x8,%rsp
    1b8f:       c3                      retq
    1b90:       e8 83 ff ff ff          callq  1b18 <explode_bomb>

0000000000001b95 <read_line>:
    1b95:       48 83 ec 08             sub    $0x8,%rsp
    1b99:       b8 00 00 00 00          mov    $0x0,%eax
    1b9e:       e8 03 fe ff ff          callq  19a6 <skip>
    1ba3:       48 85 c0                test   %rax,%rax
    1ba6:       74 6f                   je     1c17 <read_line+0x82>
    1ba8:       8b 35 fe 2a 20 00       mov    0x202afe(%rip),%esi        # 2046ac <num_input_strings>
    1bae:       48 63 c6                movslq %esi,%rax
    1bb1:       48 8d 14 80             lea    (%rax,%rax,4),%rdx
    1bb5:       48 c1 e2 04             shl    $0x4,%rdx
    1bb9:       48 8d 05 00 2b 20 00    lea    0x202b00(%rip),%rax        # 2046c0 <input_strings>
    1bc0:       48 01 c2                add    %rax,%rdx
    1bc3:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
    1bca:       b8 00 00 00 00          mov    $0x0,%eax
    1bcf:       48 89 d7                mov    %rdx,%rdi
    1bd2:       f2 ae                   repnz scas %es:(%rdi),%al
    1bd4:       48 f7 d1                not    %rcx
    1bd7:       48 83 e9 01             sub    $0x1,%rcx
    1bdb:       83 f9 4e                cmp    $0x4e,%ecx
    1bde:       0f 8f ab 00 00 00       jg     1c8f <read_line+0xfa>
    1be4:       83 e9 01                sub    $0x1,%ecx
    1be7:       48 63 c9                movslq %ecx,%rcx
    1bea:       48 63 c6                movslq %esi,%rax
    1bed:       48 8d 04 80             lea    (%rax,%rax,4),%rax
    1bf1:       48 c1 e0 04             shl    $0x4,%rax
    1bf5:       48 89 c7                mov    %rax,%rdi
    1bf8:       48 8d 05 c1 2a 20 00    lea    0x202ac1(%rip),%rax        # 2046c0 <input_strings>
    1bff:       48 01 f8                add    %rdi,%rax
    1c02:       c6 04 08 00             movb   $0x0,(%rax,%rcx,1)
    1c06:       83 c6 01                add    $0x1,%esi
    1c09:       89 35 9d 2a 20 00       mov    %esi,0x202a9d(%rip)        # 2046ac <num_input_strings>
    1c0f:       48 89 d0                mov    %rdx,%rax
    1c12:       48 83 c4 08             add    $0x8,%rsp
    1c16:       c3                      retq
    1c17:       48 8b 05 72 2a 20 00    mov    0x202a72(%rip),%rax        # 204690 <stdin@@GLIBC_2.2.5>
    1c1e:       48 39 05 8b 2a 20 00    cmp    %rax,0x202a8b(%rip)        # 2046b0 <infile>
    1c25:       74 1b                   je     1c42 <read_line+0xad>
    1c27:       48 8d 3d 63 12 00 00    lea    0x1263(%rip),%rdi        # 2e91 <array.3416+0x2b1>
    1c2e:       e8 fd f1 ff ff          callq  e30 <getenv@plt>
    1c33:       48 85 c0                test   %rax,%rax
    1c36:       74 20                   je     1c58 <read_line+0xc3>
    1c38:       bf 00 00 00 00          mov    $0x0,%edi
    1c3d:       e8 2e f3 ff ff          callq  f70 <exit@plt>
    1c42:       48 8d 3d 2a 12 00 00    lea    0x122a(%rip),%rdi        # 2e73 <array.3416+0x293>
    1c49:       e8 22 f2 ff ff          callq  e70 <puts@plt>
    1c4e:       bf 08 00 00 00          mov    $0x8,%edi
    1c53:       e8 18 f3 ff ff          callq  f70 <exit@plt>
    1c58:       48 8b 05 31 2a 20 00    mov    0x202a31(%rip),%rax        # 204690 <stdin@@GLIBC_2.2.5>
    1c5f:       48 89 05 4a 2a 20 00    mov    %rax,0x202a4a(%rip)        # 2046b0 <infile>
    1c66:       b8 00 00 00 00          mov    $0x0,%eax
    1c6b:       e8 36 fd ff ff          callq  19a6 <skip>
    1c70:       48 85 c0                test   %rax,%rax
    1c73:       0f 85 2f ff ff ff       jne    1ba8 <read_line+0x13>
    1c79:       48 8d 3d f3 11 00 00    lea    0x11f3(%rip),%rdi        # 2e73 <array.3416+0x293>
    1c80:       e8 eb f1 ff ff          callq  e70 <puts@plt>
    1c85:       bf 00 00 00 00          mov    $0x0,%edi
    1c8a:       e8 e1 f2 ff ff          callq  f70 <exit@plt>
    1c8f:       48 8d 3d 06 12 00 00    lea    0x1206(%rip),%rdi        # 2e9c <array.3416+0x2bc>
    1c96:       e8 d5 f1 ff ff          callq  e70 <puts@plt>
    1c9b:       8b 05 0b 2a 20 00       mov    0x202a0b(%rip),%eax        # 2046ac <num_input_strings>
    1ca1:       8d 50 01                lea    0x1(%rax),%edx
    1ca4:       89 15 02 2a 20 00       mov    %edx,0x202a02(%rip)        # 2046ac <num_input_strings>
    1caa:       48 98                   cltq
    1cac:       48 6b c0 50             imul   $0x50,%rax,%rax
    1cb0:       48 8d 15 09 2a 20 00    lea    0x202a09(%rip),%rdx        # 2046c0 <input_strings>
    1cb7:       48 be 2a 2a 2a 74 72    movabs $0x636e7572742a2a2a,%rsi
    1cbe:       75 6e 63
    1cc1:       48 bf 61 74 65 64 2a    movabs $0x2a2a2a64657461,%rdi
    1cc8:       2a 2a 00
    1ccb:       48 89 34 02             mov    %rsi,(%rdx,%rax,1)
    1ccf:       48 89 7c 02 08          mov    %rdi,0x8(%rdx,%rax,1)
    1cd4:       e8 3f fe ff ff          callq  1b18 <explode_bomb>

0000000000001cd9 <phase_defused>:
    1cd9:       48 83 ec 78             sub    $0x78,%rsp
    1cdd:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    1ce4:       00 00
    1ce6:       48 89 44 24 68          mov    %rax,0x68(%rsp)
    1ceb:       31 c0                   xor    %eax,%eax
    1ced:       bf 01 00 00 00          mov    $0x1,%edi
    1cf2:       e8 fd fc ff ff          callq  19f4 <send_msg>
    1cf7:       83 3d ae 29 20 00 06    cmpl   $0x6,0x2029ae(%rip)        # 2046ac <num_input_strings>
    1cfe:       74 19                   je     1d19 <phase_defused+0x40>
    1d00:       48 8b 44 24 68          mov    0x68(%rsp),%rax
    1d05:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    1d0c:       00 00
    1d0e:       0f 85 84 00 00 00       jne    1d98 <phase_defused+0xbf>
    1d14:       48 83 c4 78             add    $0x78,%rsp
    1d18:       c3                      retq
    1d19:       48 8d 4c 24 0c          lea    0xc(%rsp),%rcx
    1d1e:       48 8d 54 24 08          lea    0x8(%rsp),%rdx
    1d23:       4c 8d 44 24 10          lea    0x10(%rsp),%r8
    1d28:       48 8d 35 88 11 00 00    lea    0x1188(%rip),%rsi        # 2eb7 <array.3416+0x2d7>
    1d2f:       48 8d 3d 7a 2a 20 00    lea    0x202a7a(%rip),%rdi        # 2047b0 <input_strings+0xf0>
    1d36:       b8 00 00 00 00          mov    $0x0,%eax
    1d3b:       e8 f0 f1 ff ff          callq  f30 <__isoc99_sscanf@plt>
    1d40:       83 f8 03                cmp    $0x3,%eax
    1d43:       74 1a                   je     1d5f <phase_defused+0x86>
    1d45:       48 8d 3d 2c 10 00 00    lea    0x102c(%rip),%rdi        # 2d78 <array.3416+0x198>
    1d4c:       e8 1f f1 ff ff          callq  e70 <puts@plt>
    1d51:       48 8d 3d 50 10 00 00    lea    0x1050(%rip),%rdi        # 2da8 <array.3416+0x1c8>
    1d58:       e8 13 f1 ff ff          callq  e70 <puts@plt>
    1d5d:       eb a1                   jmp    1d00 <phase_defused+0x27>
    1d5f:       48 8d 7c 24 10          lea    0x10(%rsp),%rdi
    1d64:       48 8d 35 55 11 00 00    lea    0x1155(%rip),%rsi        # 2ec0 <array.3416+0x2e0>
    1d6b:       e8 a4 fa ff ff          callq  1814 <strings_not_equal>
    1d70:       85 c0                   test   %eax,%eax
    1d72:       75 d1                   jne    1d45 <phase_defused+0x6c>
    1d74:       48 8d 3d 9d 0f 00 00    lea    0xf9d(%rip),%rdi        # 2d18 <array.3416+0x138>
    1d7b:       e8 f0 f0 ff ff          callq  e70 <puts@plt>
    1d80:       48 8d 3d b9 0f 00 00    lea    0xfb9(%rip),%rdi        # 2d40 <array.3416+0x160>
    1d87:       e8 e4 f0 ff ff          callq  e70 <puts@plt>
    1d8c:       b8 00 00 00 00          mov    $0x0,%eax
    1d91:       e8 87 f9 ff ff          callq  171d <secret_phase>
    1d96:       eb ad                   jmp    1d45 <phase_defused+0x6c>
    1d98:       e8 f3 f0 ff ff          callq  e90 <__stack_chk_fail@plt>

0000000000001d9d <sigalrm_handler>:
    1d9d:       48 83 ec 08             sub    $0x8,%rsp
    1da1:       b9 00 00 00 00          mov    $0x0,%ecx
    1da6:       48 8d 15 23 11 00 00    lea    0x1123(%rip),%rdx        # 2ed0 <array.3416+0x2f0>
    1dad:       be 01 00 00 00          mov    $0x1,%esi
    1db2:       48 8b 3d e7 28 20 00    mov    0x2028e7(%rip),%rdi        # 2046a0 <stderr@@GLIBC_2.2.5>
    1db9:       b8 00 00 00 00          mov    $0x0,%eax
    1dbe:       e8 cd f1 ff ff          callq  f90 <__fprintf_chk@plt>
    1dc3:       bf 01 00 00 00          mov    $0x1,%edi
    1dc8:       e8 a3 f1 ff ff          callq  f70 <exit@plt>

0000000000001dcd <rio_readlineb>:
    1dcd:       41 56                   push   %r14
    1dcf:       41 55                   push   %r13
    1dd1:       41 54                   push   %r12
    1dd3:       55                      push   %rbp
    1dd4:       53                      push   %rbx
    1dd5:       48 89 fb                mov    %rdi,%rbx
    1dd8:       49 89 f4                mov    %rsi,%r12
    1ddb:       49 89 d6                mov    %rdx,%r14
    1dde:       41 bd 01 00 00 00       mov    $0x1,%r13d
    1de4:       48 8d 6f 10             lea    0x10(%rdi),%rbp
    1de8:       48 83 fa 01             cmp    $0x1,%rdx
    1dec:       77 0c                   ja     1dfa <rio_readlineb+0x2d>
    1dee:       eb 60                   jmp    1e50 <rio_readlineb+0x83>
    1df0:       e8 5b f0 ff ff          callq  e50 <__errno_location@plt>
    1df5:       83 38 04                cmpl   $0x4,(%rax)
    1df8:       75 67                   jne    1e61 <rio_readlineb+0x94>
    1dfa:       8b 43 04                mov    0x4(%rbx),%eax
    1dfd:       85 c0                   test   %eax,%eax
    1dff:       7f 20                   jg     1e21 <rio_readlineb+0x54>
    1e01:       ba 00 20 00 00          mov    $0x2000,%edx
    1e06:       48 89 ee                mov    %rbp,%rsi
    1e09:       8b 3b                   mov    (%rbx),%edi
    1e0b:       e8 b0 f0 ff ff          callq  ec0 <read@plt>
    1e10:       89 43 04                mov    %eax,0x4(%rbx)
    1e13:       85 c0                   test   %eax,%eax
    1e15:       78 d9                   js     1df0 <rio_readlineb+0x23>
    1e17:       85 c0                   test   %eax,%eax
    1e19:       74 4f                   je     1e6a <rio_readlineb+0x9d>
    1e1b:       48 89 6b 08             mov    %rbp,0x8(%rbx)
    1e1f:       eb d9                   jmp    1dfa <rio_readlineb+0x2d>
    1e21:       48 8b 53 08             mov    0x8(%rbx),%rdx
    1e25:       0f b6 0a                movzbl (%rdx),%ecx
    1e28:       48 83 c2 01             add    $0x1,%rdx
    1e2c:       48 89 53 08             mov    %rdx,0x8(%rbx)
    1e30:       83 e8 01                sub    $0x1,%eax
    1e33:       89 43 04                mov    %eax,0x4(%rbx)
    1e36:       49 83 c4 01             add    $0x1,%r12
    1e3a:       41 88 4c 24 ff          mov    %cl,-0x1(%r12)
    1e3f:       80 f9 0a                cmp    $0xa,%cl
    1e42:       74 0c                   je     1e50 <rio_readlineb+0x83>
    1e44:       41 83 c5 01             add    $0x1,%r13d
    1e48:       49 63 c5                movslq %r13d,%rax
    1e4b:       4c 39 f0                cmp    %r14,%rax
    1e4e:       72 aa                   jb     1dfa <rio_readlineb+0x2d>
    1e50:       41 c6 04 24 00          movb   $0x0,(%r12)
    1e55:       49 63 c5                movslq %r13d,%rax
    1e58:       5b                      pop    %rbx
    1e59:       5d                      pop    %rbp
    1e5a:       41 5c                   pop    %r12
    1e5c:       41 5d                   pop    %r13
    1e5e:       41 5e                   pop    %r14
    1e60:       c3                      retq
    1e61:       48 c7 c0 ff ff ff ff    mov    $0xffffffffffffffff,%rax
    1e68:       eb 05                   jmp    1e6f <rio_readlineb+0xa2>
    1e6a:       b8 00 00 00 00          mov    $0x0,%eax
    1e6f:       85 c0                   test   %eax,%eax
    1e71:       75 0d                   jne    1e80 <rio_readlineb+0xb3>
    1e73:       b8 00 00 00 00          mov    $0x0,%eax
    1e78:       41 83 fd 01             cmp    $0x1,%r13d
    1e7c:       75 d2                   jne    1e50 <rio_readlineb+0x83>
    1e7e:       eb d8                   jmp    1e58 <rio_readlineb+0x8b>
    1e80:       48 c7 c0 ff ff ff ff    mov    $0xffffffffffffffff,%rax
    1e87:       eb cf                   jmp    1e58 <rio_readlineb+0x8b>

0000000000001e89 <submitr>:
    1e89:       41 57                   push   %r15
    1e8b:       41 56                   push   %r14
    1e8d:       41 55                   push   %r13
    1e8f:       41 54                   push   %r12
    1e91:       55                      push   %rbp
    1e92:       53                      push   %rbx
    1e93:       48 81 ec 78 a0 00 00    sub    $0xa078,%rsp
    1e9a:       49 89 fd                mov    %rdi,%r13
    1e9d:       89 f5                   mov    %esi,%ebp
    1e9f:       48 89 54 24 08          mov    %rdx,0x8(%rsp)
    1ea4:       48 89 4c 24 10          mov    %rcx,0x10(%rsp)
    1ea9:       4c 89 44 24 20          mov    %r8,0x20(%rsp)
    1eae:       4c 89 4c 24 18          mov    %r9,0x18(%rsp)
    1eb3:       48 8b 9c 24 b0 a0 00    mov    0xa0b0(%rsp),%rbx
    1eba:       00
    1ebb:       4c 8b bc 24 b8 a0 00    mov    0xa0b8(%rsp),%r15
    1ec2:       00
    1ec3:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    1eca:       00 00
    1ecc:       48 89 84 24 68 a0 00    mov    %rax,0xa068(%rsp)
    1ed3:       00
    1ed4:       31 c0                   xor    %eax,%eax
    1ed6:       c7 44 24 3c 00 00 00    movl   $0x0,0x3c(%rsp)
    1edd:       00
    1ede:       ba 00 00 00 00          mov    $0x0,%edx
    1ee3:       be 01 00 00 00          mov    $0x1,%esi
    1ee8:       bf 02 00 00 00          mov    $0x2,%edi
    1eed:       e8 de f0 ff ff          callq  fd0 <socket@plt>
    1ef2:       85 c0                   test   %eax,%eax
    1ef4:       0f 88 35 01 00 00       js     202f <submitr+0x1a6>
    1efa:       41 89 c4                mov    %eax,%r12d
    1efd:       4c 89 ef                mov    %r13,%rdi
    1f00:       e8 eb ef ff ff          callq  ef0 <gethostbyname@plt>
    1f05:       48 85 c0                test   %rax,%rax
    1f08:       0f 84 71 01 00 00       je     207f <submitr+0x1f6>
    1f0e:       4c 8d 6c 24 40          lea    0x40(%rsp),%r13
    1f13:       48 c7 44 24 42 00 00    movq   $0x0,0x42(%rsp)
    1f1a:       00 00
    1f1c:       c7 44 24 4a 00 00 00    movl   $0x0,0x4a(%rsp)
    1f23:       00
    1f24:       66 c7 44 24 4e 00 00    movw   $0x0,0x4e(%rsp)
    1f2b:       66 c7 44 24 40 02 00    movw   $0x2,0x40(%rsp)
    1f32:       48 63 50 14             movslq 0x14(%rax),%rdx
    1f36:       48 8b 40 18             mov    0x18(%rax),%rax
    1f3a:       48 8d 7c 24 44          lea    0x44(%rsp),%rdi
    1f3f:       b9 0c 00 00 00          mov    $0xc,%ecx
    1f44:       48 8b 30                mov    (%rax),%rsi
    1f47:       e8 b4 ef ff ff          callq  f00 <__memmove_chk@plt>
    1f4c:       66 c1 cd 08             ror    $0x8,%bp
    1f50:       66 89 6c 24 42          mov    %bp,0x42(%rsp)
    1f55:       ba 10 00 00 00          mov    $0x10,%edx
    1f5a:       4c 89 ee                mov    %r13,%rsi
    1f5d:       44 89 e7                mov    %r12d,%edi
    1f60:       e8 1b f0 ff ff          callq  f80 <connect@plt>
    1f65:       85 c0                   test   %eax,%eax
    1f67:       0f 88 7d 01 00 00       js     20ea <submitr+0x261>
    1f6d:       49 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%r9
    1f74:       b8 00 00 00 00          mov    $0x0,%eax
    1f79:       4c 89 c9                mov    %r9,%rcx
    1f7c:       48 89 df                mov    %rbx,%rdi
    1f7f:       f2 ae                   repnz scas %es:(%rdi),%al
    1f81:       48 89 ce                mov    %rcx,%rsi
    1f84:       48 f7 d6                not    %rsi
    1f87:       4c 89 c9                mov    %r9,%rcx
    1f8a:       48 8b 7c 24 08          mov    0x8(%rsp),%rdi
    1f8f:       f2 ae                   repnz scas %es:(%rdi),%al
    1f91:       49 89 c8                mov    %rcx,%r8
    1f94:       4c 89 c9                mov    %r9,%rcx
    1f97:       48 8b 7c 24 10          mov    0x10(%rsp),%rdi
    1f9c:       f2 ae                   repnz scas %es:(%rdi),%al
    1f9e:       48 89 ca                mov    %rcx,%rdx
    1fa1:       48 f7 d2                not    %rdx
    1fa4:       4c 89 c9                mov    %r9,%rcx
    1fa7:       48 8b 7c 24 18          mov    0x18(%rsp),%rdi
    1fac:       f2 ae                   repnz scas %es:(%rdi),%al
    1fae:       4c 29 c2                sub    %r8,%rdx
    1fb1:       48 29 ca                sub    %rcx,%rdx
    1fb4:       48 8d 44 76 fd          lea    -0x3(%rsi,%rsi,2),%rax
    1fb9:       48 8d 44 02 7b          lea    0x7b(%rdx,%rax,1),%rax
    1fbe:       48 3d 00 20 00 00       cmp    $0x2000,%rax
    1fc4:       0f 87 7d 01 00 00       ja     2147 <submitr+0x2be>
    1fca:       48 8d 94 24 60 40 00    lea    0x4060(%rsp),%rdx
    1fd1:       00
    1fd2:       b9 00 04 00 00          mov    $0x400,%ecx
    1fd7:       b8 00 00 00 00          mov    $0x0,%eax
    1fdc:       48 89 d7                mov    %rdx,%rdi
    1fdf:       f3 48 ab                rep stos %rax,%es:(%rdi)
    1fe2:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
    1fe9:       48 89 df                mov    %rbx,%rdi
    1fec:       f2 ae                   repnz scas %es:(%rdi),%al
    1fee:       48 89 ca                mov    %rcx,%rdx
    1ff1:       48 f7 d2                not    %rdx
    1ff4:       48 89 d1                mov    %rdx,%rcx
    1ff7:       48 83 e9 01             sub    $0x1,%rcx
    1ffb:       85 c9                   test   %ecx,%ecx
    1ffd:       0f 84 3f 06 00 00       je     2642 <submitr+0x7b9>
    2003:       8d 41 ff                lea    -0x1(%rcx),%eax
    2006:       4c 8d 74 03 01          lea    0x1(%rbx,%rax,1),%r14
    200b:       48 8d ac 24 60 40 00    lea    0x4060(%rsp),%rbp
    2012:       00
    2013:       48 8d 84 24 60 80 00    lea    0x8060(%rsp),%rax
    201a:       00
    201b:       48 89 44 24 28          mov    %rax,0x28(%rsp)
    2020:       49 bd d9 ff 00 00 00    movabs $0x2000000000ffd9,%r13
    2027:       00 20 00
    202a:       e9 a6 01 00 00          jmpq   21d5 <submitr+0x34c>
    202f:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    2036:       3a 20 43
    2039:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    2040:       20 75 6e
    2043:       49 89 07                mov    %rax,(%r15)
    2046:       49 89 57 08             mov    %rdx,0x8(%r15)
    204a:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2051:       74 6f 20
    2054:       48 ba 63 72 65 61 74    movabs $0x7320657461657263,%rdx
    205b:       65 20 73
    205e:       49 89 47 10             mov    %rax,0x10(%r15)
    2062:       49 89 57 18             mov    %rdx,0x18(%r15)
    2066:       41 c7 47 20 6f 63 6b    movl   $0x656b636f,0x20(%r15)
    206d:       65
    206e:       66 41 c7 47 24 74 00    movw   $0x74,0x24(%r15)
    2075:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    207a:       e9 9a 04 00 00          jmpq   2519 <submitr+0x690>
    207f:       48 b8 45 72 72 6f 72    movabs $0x44203a726f727245,%rax
    2086:       3a 20 44
    2089:       48 ba 4e 53 20 69 73    movabs $0x6e7520736920534e,%rdx
    2090:       20 75 6e
    2093:       49 89 07                mov    %rax,(%r15)
    2096:       49 89 57 08             mov    %rdx,0x8(%r15)
    209a:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    20a1:       74 6f 20
    20a4:       48 ba 72 65 73 6f 6c    movabs $0x2065766c6f736572,%rdx
    20ab:       76 65 20
    20ae:       49 89 47 10             mov    %rax,0x10(%r15)
    20b2:       49 89 57 18             mov    %rdx,0x18(%r15)
    20b6:       48 b8 73 65 72 76 65    movabs $0x6120726576726573,%rax
    20bd:       72 20 61
    20c0:       49 89 47 20             mov    %rax,0x20(%r15)
    20c4:       41 c7 47 28 64 64 72    movl   $0x65726464,0x28(%r15)
    20cb:       65
    20cc:       66 41 c7 47 2c 73 73    movw   $0x7373,0x2c(%r15)
    20d3:       41 c6 47 2e 00          movb   $0x0,0x2e(%r15)
    20d8:       44 89 e7                mov    %r12d,%edi
    20db:       e8 d0 ed ff ff          callq  eb0 <close@plt>
    20e0:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    20e5:       e9 2f 04 00 00          jmpq   2519 <submitr+0x690>
    20ea:       48 b8 45 72 72 6f 72    movabs $0x55203a726f727245,%rax
    20f1:       3a 20 55
    20f4:       48 ba 6e 61 62 6c 65    movabs $0x6f7420656c62616e,%rdx
    20fb:       20 74 6f
    20fe:       49 89 07                mov    %rax,(%r15)
    2101:       49 89 57 08             mov    %rdx,0x8(%r15)
    2105:       48 b8 20 63 6f 6e 6e    movabs $0x7463656e6e6f6320,%rax
    210c:       65 63 74
    210f:       48 ba 20 74 6f 20 74    movabs $0x20656874206f7420,%rdx
    2116:       68 65 20
    2119:       49 89 47 10             mov    %rax,0x10(%r15)
    211d:       49 89 57 18             mov    %rdx,0x18(%r15)
    2121:       41 c7 47 20 73 65 72    movl   $0x76726573,0x20(%r15)
    2128:       76
    2129:       66 41 c7 47 24 65 72    movw   $0x7265,0x24(%r15)
    2130:       41 c6 47 26 00          movb   $0x0,0x26(%r15)
    2135:       44 89 e7                mov    %r12d,%edi
    2138:       e8 73 ed ff ff          callq  eb0 <close@plt>
    213d:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2142:       e9 d2 03 00 00          jmpq   2519 <submitr+0x690>
    2147:       48 b8 45 72 72 6f 72    movabs $0x52203a726f727245,%rax
    214e:       3a 20 52
    2151:       48 ba 65 73 75 6c 74    movabs $0x747320746c757365,%rdx
    2158:       20 73 74
    215b:       49 89 07                mov    %rax,(%r15)
    215e:       49 89 57 08             mov    %rdx,0x8(%r15)
    2162:       48 b8 72 69 6e 67 20    movabs $0x6f6f7420676e6972,%rax
    2169:       74 6f 6f
    216c:       48 ba 20 6c 61 72 67    movabs $0x202e656772616c20,%rdx
    2173:       65 2e 20
    2176:       49 89 47 10             mov    %rax,0x10(%r15)
    217a:       49 89 57 18             mov    %rdx,0x18(%r15)
    217e:       48 b8 49 6e 63 72 65    movabs $0x6573616572636e49,%rax
    2185:       61 73 65
    2188:       48 ba 20 53 55 42 4d    movabs $0x5254494d42555320,%rdx
    218f:       49 54 52
    2192:       49 89 47 20             mov    %rax,0x20(%r15)
    2196:       49 89 57 28             mov    %rdx,0x28(%r15)
    219a:       48 b8 5f 4d 41 58 42    movabs $0x46554258414d5f,%rax
    21a1:       55 46 00
    21a4:       49 89 47 30             mov    %rax,0x30(%r15)
    21a8:       44 89 e7                mov    %r12d,%edi
    21ab:       e8 00 ed ff ff          callq  eb0 <close@plt>
    21b0:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    21b5:       e9 5f 03 00 00          jmpq   2519 <submitr+0x690>
    21ba:       49 0f a3 c5             bt     %rax,%r13
    21be:       73 21                   jae    21e1 <submitr+0x358>
    21c0:       44 88 45 00             mov    %r8b,0x0(%rbp)
    21c4:       48 8d 6d 01             lea    0x1(%rbp),%rbp
    21c8:       48 83 c3 01             add    $0x1,%rbx
    21cc:       4c 39 f3                cmp    %r14,%rbx
    21cf:       0f 84 6d 04 00 00       je     2642 <submitr+0x7b9>
    21d5:       44 0f b6 03             movzbl (%rbx),%r8d
    21d9:       41 8d 40 d6             lea    -0x2a(%r8),%eax
    21dd:       3c 35                   cmp    $0x35,%al
    21df:       76 d9                   jbe    21ba <submitr+0x331>
    21e1:       44 89 c0                mov    %r8d,%eax
    21e4:       83 e0 df                and    $0xffffffdf,%eax
    21e7:       83 e8 41                sub    $0x41,%eax
    21ea:       3c 19                   cmp    $0x19,%al
    21ec:       76 d2                   jbe    21c0 <submitr+0x337>
    21ee:       41 80 f8 20             cmp    $0x20,%r8b
    21f2:       74 60                   je     2254 <submitr+0x3cb>
    21f4:       41 8d 40 e0             lea    -0x20(%r8),%eax
    21f8:       3c 5f                   cmp    $0x5f,%al
    21fa:       76 0a                   jbe    2206 <submitr+0x37d>
    21fc:       41 80 f8 09             cmp    $0x9,%r8b
    2200:       0f 85 af 03 00 00       jne    25b5 <submitr+0x72c>
    2206:       45 0f b6 c0             movzbl %r8b,%r8d
    220a:       48 8d 0d 97 0d 00 00    lea    0xd97(%rip),%rcx        # 2fa8 <array.3416+0x3c8>
    2211:       ba 08 00 00 00          mov    $0x8,%edx
    2216:       be 01 00 00 00          mov    $0x1,%esi
    221b:       48 8b 7c 24 28          mov    0x28(%rsp),%rdi
    2220:       b8 00 00 00 00          mov    $0x0,%eax
    2225:       e8 96 ed ff ff          callq  fc0 <__sprintf_chk@plt>
    222a:       0f b6 84 24 60 80 00    movzbl 0x8060(%rsp),%eax
    2231:       00
    2232:       88 45 00                mov    %al,0x0(%rbp)
    2235:       0f b6 84 24 61 80 00    movzbl 0x8061(%rsp),%eax
    223c:       00
    223d:       88 45 01                mov    %al,0x1(%rbp)
    2240:       0f b6 84 24 62 80 00    movzbl 0x8062(%rsp),%eax
    2247:       00
    2248:       88 45 02                mov    %al,0x2(%rbp)
    224b:       48 8d 6d 03             lea    0x3(%rbp),%rbp
    224f:       e9 74 ff ff ff          jmpq   21c8 <submitr+0x33f>
    2254:       c6 45 00 2b             movb   $0x2b,0x0(%rbp)
    2258:       48 8d 6d 01             lea    0x1(%rbp),%rbp
    225c:       e9 67 ff ff ff          jmpq   21c8 <submitr+0x33f>
    2261:       49 01 c5                add    %rax,%r13
    2264:       48 29 c5                sub    %rax,%rbp
    2267:       74 26                   je     228f <submitr+0x406>
    2269:       48 89 ea                mov    %rbp,%rdx
    226c:       4c 89 ee                mov    %r13,%rsi
    226f:       44 89 e7                mov    %r12d,%edi
    2272:       e8 09 ec ff ff          callq  e80 <write@plt>
    2277:       48 85 c0                test   %rax,%rax
    227a:       7f e5                   jg     2261 <submitr+0x3d8>
    227c:       e8 cf eb ff ff          callq  e50 <__errno_location@plt>
    2281:       83 38 04                cmpl   $0x4,(%rax)
    2284:       0f 85 31 01 00 00       jne    23bb <submitr+0x532>
    228a:       4c 89 f0                mov    %r14,%rax
    228d:       eb d2                   jmp    2261 <submitr+0x3d8>
    228f:       48 85 db                test   %rbx,%rbx
    2292:       0f 88 23 01 00 00       js     23bb <submitr+0x532>
    2298:       44 89 64 24 50          mov    %r12d,0x50(%rsp)
    229d:       c7 44 24 54 00 00 00    movl   $0x0,0x54(%rsp)
    22a4:       00
    22a5:       48 8d 7c 24 50          lea    0x50(%rsp),%rdi
    22aa:       48 8d 47 10             lea    0x10(%rdi),%rax
    22ae:       48 89 44 24 58          mov    %rax,0x58(%rsp)
    22b3:       48 8d b4 24 60 20 00    lea    0x2060(%rsp),%rsi
    22ba:       00
    22bb:       ba 00 20 00 00          mov    $0x2000,%edx
    22c0:       e8 08 fb ff ff          callq  1dcd <rio_readlineb>
    22c5:       48 85 c0                test   %rax,%rax
    22c8:       0f 8e 4c 01 00 00       jle    241a <submitr+0x591>
    22ce:       48 8d 4c 24 3c          lea    0x3c(%rsp),%rcx
    22d3:       48 8d 94 24 60 60 00    lea    0x6060(%rsp),%rdx
    22da:       00
    22db:       48 8d bc 24 60 20 00    lea    0x2060(%rsp),%rdi
    22e2:       00
    22e3:       4c 8d 84 24 60 80 00    lea    0x8060(%rsp),%r8
    22ea:       00
    22eb:       48 8d 35 bd 0c 00 00    lea    0xcbd(%rip),%rsi        # 2faf <array.3416+0x3cf>
    22f2:       b8 00 00 00 00          mov    $0x0,%eax
    22f7:       e8 34 ec ff ff          callq  f30 <__isoc99_sscanf@plt>
    22fc:       44 8b 44 24 3c          mov    0x3c(%rsp),%r8d
    2301:       41 81 f8 c8 00 00 00    cmp    $0xc8,%r8d
    2308:       0f 85 80 01 00 00       jne    248e <submitr+0x605>
    230e:       48 8d 9c 24 60 20 00    lea    0x2060(%rsp),%rbx
    2315:       00
    2316:       48 8d 2d a3 0c 00 00    lea    0xca3(%rip),%rbp        # 2fc0 <array.3416+0x3e0>
    231d:       4c 8d 6c 24 50          lea    0x50(%rsp),%r13
    2322:       b9 03 00 00 00          mov    $0x3,%ecx
    2327:       48 89 de                mov    %rbx,%rsi
    232a:       48 89 ef                mov    %rbp,%rdi
    232d:       f3 a6                   repz cmpsb %es:(%rdi),%ds:(%rsi)
    232f:       0f 97 c0                seta   %al
    2332:       1c 00                   sbb    $0x0,%al
    2334:       84 c0                   test   %al,%al
    2336:       0f 84 89 01 00 00       je     24c5 <submitr+0x63c>
    233c:       ba 00 20 00 00          mov    $0x2000,%edx
    2341:       48 89 de                mov    %rbx,%rsi
    2344:       4c 89 ef                mov    %r13,%rdi
    2347:       e8 81 fa ff ff          callq  1dcd <rio_readlineb>
    234c:       48 85 c0                test   %rax,%rax
    234f:       7f d1                   jg     2322 <submitr+0x499>
    2351:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    2358:       3a 20 43
    235b:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    2362:       20 75 6e
    2365:       49 89 07                mov    %rax,(%r15)
    2368:       49 89 57 08             mov    %rdx,0x8(%r15)
    236c:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2373:       74 6f 20
    2376:       48 ba 72 65 61 64 20    movabs $0x6165682064616572,%rdx
    237d:       68 65 61
    2380:       49 89 47 10             mov    %rax,0x10(%r15)
    2384:       49 89 57 18             mov    %rdx,0x18(%r15)
    2388:       48 b8 64 65 72 73 20    movabs $0x6f72662073726564,%rax
    238f:       66 72 6f
    2392:       48 ba 6d 20 73 65 72    movabs $0x726576726573206d,%rdx
    2399:       76 65 72
    239c:       49 89 47 20             mov    %rax,0x20(%r15)
    23a0:       49 89 57 28             mov    %rdx,0x28(%r15)
    23a4:       41 c6 47 30 00          movb   $0x0,0x30(%r15)
    23a9:       44 89 e7                mov    %r12d,%edi
    23ac:       e8 ff ea ff ff          callq  eb0 <close@plt>
    23b1:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    23b6:       e9 5e 01 00 00          jmpq   2519 <submitr+0x690>
    23bb:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    23c2:       3a 20 43
    23c5:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    23cc:       20 75 6e
    23cf:       49 89 07                mov    %rax,(%r15)
    23d2:       49 89 57 08             mov    %rdx,0x8(%r15)
    23d6:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    23dd:       74 6f 20
    23e0:       48 ba 77 72 69 74 65    movabs $0x6f74206574697277,%rdx
    23e7:       20 74 6f
    23ea:       49 89 47 10             mov    %rax,0x10(%r15)
    23ee:       49 89 57 18             mov    %rdx,0x18(%r15)
    23f2:       48 b8 20 74 68 65 20    movabs $0x7265732065687420,%rax
    23f9:       73 65 72
    23fc:       49 89 47 20             mov    %rax,0x20(%r15)
    2400:       41 c7 47 28 76 65 72    movl   $0x726576,0x28(%r15)
    2407:       00
    2408:       44 89 e7                mov    %r12d,%edi
    240b:       e8 a0 ea ff ff          callq  eb0 <close@plt>
    2410:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2415:       e9 ff 00 00 00          jmpq   2519 <submitr+0x690>
    241a:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    2421:       3a 20 43
    2424:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    242b:       20 75 6e
    242e:       49 89 07                mov    %rax,(%r15)
    2431:       49 89 57 08             mov    %rdx,0x8(%r15)
    2435:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    243c:       74 6f 20
    243f:       48 ba 72 65 61 64 20    movabs $0x7269662064616572,%rdx
    2446:       66 69 72
    2449:       49 89 47 10             mov    %rax,0x10(%r15)
    244d:       49 89 57 18             mov    %rdx,0x18(%r15)
    2451:       48 b8 73 74 20 68 65    movabs $0x6564616568207473,%rax
    2458:       61 64 65
    245b:       48 ba 72 20 66 72 6f    movabs $0x73206d6f72662072,%rdx
    2462:       6d 20 73
    2465:       49 89 47 20             mov    %rax,0x20(%r15)
    2469:       49 89 57 28             mov    %rdx,0x28(%r15)
    246d:       41 c7 47 30 65 72 76    movl   $0x65767265,0x30(%r15)
    2474:       65
    2475:       66 41 c7 47 34 72 00    movw   $0x72,0x34(%r15)
    247c:       44 89 e7                mov    %r12d,%edi
    247f:       e8 2c ea ff ff          callq  eb0 <close@plt>
    2484:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2489:       e9 8b 00 00 00          jmpq   2519 <submitr+0x690>
    248e:       4c 8d 8c 24 60 80 00    lea    0x8060(%rsp),%r9
    2495:       00
    2496:       48 8d 0d 5b 0a 00 00    lea    0xa5b(%rip),%rcx        # 2ef8 <array.3416+0x318>
    249d:       48 c7 c2 ff ff ff ff    mov    $0xffffffffffffffff,%rdx
    24a4:       be 01 00 00 00          mov    $0x1,%esi
    24a9:       4c 89 ff                mov    %r15,%rdi
    24ac:       b8 00 00 00 00          mov    $0x0,%eax
    24b1:       e8 0a eb ff ff          callq  fc0 <__sprintf_chk@plt>
    24b6:       44 89 e7                mov    %r12d,%edi
    24b9:       e8 f2 e9 ff ff          callq  eb0 <close@plt>
    24be:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    24c3:       eb 54                   jmp    2519 <submitr+0x690>
    24c5:       48 8d b4 24 60 20 00    lea    0x2060(%rsp),%rsi
    24cc:       00
    24cd:       48 8d 7c 24 50          lea    0x50(%rsp),%rdi
    24d2:       ba 00 20 00 00          mov    $0x2000,%edx
    24d7:       e8 f1 f8 ff ff          callq  1dcd <rio_readlineb>
    24dc:       48 85 c0                test   %rax,%rax
    24df:       7e 61                   jle    2542 <submitr+0x6b9>
    24e1:       48 8d b4 24 60 20 00    lea    0x2060(%rsp),%rsi
    24e8:       00
    24e9:       4c 89 ff                mov    %r15,%rdi
    24ec:       e8 6f e9 ff ff          callq  e60 <strcpy@plt>
    24f1:       44 89 e7                mov    %r12d,%edi
    24f4:       e8 b7 e9 ff ff          callq  eb0 <close@plt>
    24f9:       b9 03 00 00 00          mov    $0x3,%ecx
    24fe:       48 8d 3d be 0a 00 00    lea    0xabe(%rip),%rdi        # 2fc3 <array.3416+0x3e3>
    2505:       4c 89 fe                mov    %r15,%rsi
    2508:       f3 a6                   repz cmpsb %es:(%rdi),%ds:(%rsi)
    250a:       0f 97 c0                seta   %al
    250d:       1c 00                   sbb    $0x0,%al
    250f:       84 c0                   test   %al,%al
    2511:       0f 95 c0                setne  %al
    2514:       0f b6 c0                movzbl %al,%eax
    2517:       f7 d8                   neg    %eax
    2519:       48 8b 94 24 68 a0 00    mov    0xa068(%rsp),%rdx
    2520:       00
    2521:       64 48 33 14 25 28 00    xor    %fs:0x28,%rdx
    2528:       00 00
    252a:       0f 85 95 01 00 00       jne    26c5 <submitr+0x83c>
    2530:       48 81 c4 78 a0 00 00    add    $0xa078,%rsp
    2537:       5b                      pop    %rbx
    2538:       5d                      pop    %rbp
    2539:       41 5c                   pop    %r12
    253b:       41 5d                   pop    %r13
    253d:       41 5e                   pop    %r14
    253f:       41 5f                   pop    %r15
    2541:       c3                      retq
    2542:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    2549:       3a 20 43
    254c:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    2553:       20 75 6e
    2556:       49 89 07                mov    %rax,(%r15)
    2559:       49 89 57 08             mov    %rdx,0x8(%r15)
    255d:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2564:       74 6f 20
    2567:       48 ba 72 65 61 64 20    movabs $0x6174732064616572,%rdx
    256e:       73 74 61
    2571:       49 89 47 10             mov    %rax,0x10(%r15)
    2575:       49 89 57 18             mov    %rdx,0x18(%r15)
    2579:       48 b8 74 75 73 20 6d    movabs $0x7373656d20737574,%rax
    2580:       65 73 73
    2583:       48 ba 61 67 65 20 66    movabs $0x6d6f726620656761,%rdx
    258a:       72 6f 6d
    258d:       49 89 47 20             mov    %rax,0x20(%r15)
    2591:       49 89 57 28             mov    %rdx,0x28(%r15)
    2595:       48 b8 20 73 65 72 76    movabs $0x72657672657320,%rax
    259c:       65 72 00
    259f:       49 89 47 30             mov    %rax,0x30(%r15)
    25a3:       44 89 e7                mov    %r12d,%edi
    25a6:       e8 05 e9 ff ff          callq  eb0 <close@plt>
    25ab:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    25b0:       e9 64 ff ff ff          jmpq   2519 <submitr+0x690>
    25b5:       48 b8 45 72 72 6f 72    movabs $0x52203a726f727245,%rax
    25bc:       3a 20 52
    25bf:       48 ba 65 73 75 6c 74    movabs $0x747320746c757365,%rdx
    25c6:       20 73 74
    25c9:       49 89 07                mov    %rax,(%r15)
    25cc:       49 89 57 08             mov    %rdx,0x8(%r15)
    25d0:       48 b8 72 69 6e 67 20    movabs $0x6e6f6320676e6972,%rax
    25d7:       63 6f 6e
    25da:       48 ba 74 61 69 6e 73    movabs $0x6e6120736e696174,%rdx
    25e1:       20 61 6e
    25e4:       49 89 47 10             mov    %rax,0x10(%r15)
    25e8:       49 89 57 18             mov    %rdx,0x18(%r15)
    25ec:       48 b8 20 69 6c 6c 65    movabs $0x6c6167656c6c6920,%rax
    25f3:       67 61 6c
    25f6:       48 ba 20 6f 72 20 75    movabs $0x72706e7520726f20,%rdx
    25fd:       6e 70 72
    2600:       49 89 47 20             mov    %rax,0x20(%r15)
    2604:       49 89 57 28             mov    %rdx,0x28(%r15)
    2608:       48 b8 69 6e 74 61 62    movabs $0x20656c6261746e69,%rax
    260f:       6c 65 20
    2612:       48 ba 63 68 61 72 61    movabs $0x6574636172616863,%rdx
    2619:       63 74 65
    261c:       49 89 47 30             mov    %rax,0x30(%r15)
    2620:       49 89 57 38             mov    %rdx,0x38(%r15)
    2624:       66 41 c7 47 40 72 2e    movw   $0x2e72,0x40(%r15)
    262b:       41 c6 47 42 00          movb   $0x0,0x42(%r15)
    2630:       44 89 e7                mov    %r12d,%edi
    2633:       e8 78 e8 ff ff          callq  eb0 <close@plt>
    2638:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    263d:       e9 d7 fe ff ff          jmpq   2519 <submitr+0x690>
    2642:       48 8d 9c 24 60 20 00    lea    0x2060(%rsp),%rbx
    2649:       00
    264a:       48 83 ec 08             sub    $0x8,%rsp
    264e:       48 8d 84 24 68 40 00    lea    0x4068(%rsp),%rax
    2655:       00
    2656:       50                      push   %rax
    2657:       ff 74 24 28             pushq  0x28(%rsp)
    265b:       ff 74 24 38             pushq  0x38(%rsp)
    265f:       4c 8b 4c 24 30          mov    0x30(%rsp),%r9
    2664:       4c 8b 44 24 28          mov    0x28(%rsp),%r8
    2669:       48 8d 0d b8 08 00 00    lea    0x8b8(%rip),%rcx        # 2f28 <array.3416+0x348>
    2670:       ba 00 20 00 00          mov    $0x2000,%edx
    2675:       be 01 00 00 00          mov    $0x1,%esi
    267a:       48 89 df                mov    %rbx,%rdi
    267d:       b8 00 00 00 00          mov    $0x0,%eax
    2682:       e8 39 e9 ff ff          callq  fc0 <__sprintf_chk@plt>
    2687:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
    268e:       b8 00 00 00 00          mov    $0x0,%eax
    2693:       48 89 df                mov    %rbx,%rdi
    2696:       f2 ae                   repnz scas %es:(%rdi),%al
    2698:       48 f7 d1                not    %rcx
    269b:       48 89 cb                mov    %rcx,%rbx
    269e:       48 83 eb 01             sub    $0x1,%rbx
    26a2:       48 83 c4 20             add    $0x20,%rsp
    26a6:       48 89 dd                mov    %rbx,%rbp
    26a9:       4c 8d ac 24 60 20 00    lea    0x2060(%rsp),%r13
    26b0:       00
    26b1:       41 be 00 00 00 00       mov    $0x0,%r14d
    26b7:       48 85 db                test   %rbx,%rbx
    26ba:       0f 85 a9 fb ff ff       jne    2269 <submitr+0x3e0>
    26c0:       e9 d3 fb ff ff          jmpq   2298 <submitr+0x40f>
    26c5:       e8 c6 e7 ff ff          callq  e90 <__stack_chk_fail@plt>

00000000000026ca <init_timeout>:
    26ca:       85 ff                   test   %edi,%edi
    26cc:       74 25                   je     26f3 <init_timeout+0x29>
    26ce:       53                      push   %rbx
    26cf:       89 fb                   mov    %edi,%ebx
    26d1:       48 8d 35 c5 f6 ff ff    lea    -0x93b(%rip),%rsi        # 1d9d <sigalrm_handler>
    26d8:       bf 0e 00 00 00          mov    $0xe,%edi
    26dd:       e8 fe e7 ff ff          callq  ee0 <signal@plt>
    26e2:       85 db                   test   %ebx,%ebx
    26e4:       bf 00 00 00 00          mov    $0x0,%edi
    26e9:       0f 49 fb                cmovns %ebx,%edi
    26ec:       e8 af e7 ff ff          callq  ea0 <alarm@plt>
    26f1:       5b                      pop    %rbx
    26f2:       c3                      retq
    26f3:       f3 c3                   repz retq

00000000000026f5 <init_driver>:
    26f5:       41 54                   push   %r12
    26f7:       55                      push   %rbp
    26f8:       53                      push   %rbx
    26f9:       48 83 ec 20             sub    $0x20,%rsp
    26fd:       49 89 fc                mov    %rdi,%r12
    2700:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    2707:       00 00
    2709:       48 89 44 24 18          mov    %rax,0x18(%rsp)
    270e:       31 c0                   xor    %eax,%eax
    2710:       be 01 00 00 00          mov    $0x1,%esi
    2715:       bf 0d 00 00 00          mov    $0xd,%edi
    271a:       e8 c1 e7 ff ff          callq  ee0 <signal@plt>
    271f:       be 01 00 00 00          mov    $0x1,%esi
    2724:       bf 1d 00 00 00          mov    $0x1d,%edi
    2729:       e8 b2 e7 ff ff          callq  ee0 <signal@plt>
    272e:       be 01 00 00 00          mov    $0x1,%esi
    2733:       bf 1d 00 00 00          mov    $0x1d,%edi
    2738:       e8 a3 e7 ff ff          callq  ee0 <signal@plt>
    273d:       ba 00 00 00 00          mov    $0x0,%edx
    2742:       be 01 00 00 00          mov    $0x1,%esi
    2747:       bf 02 00 00 00          mov    $0x2,%edi
    274c:       e8 7f e8 ff ff          callq  fd0 <socket@plt>
    2751:       85 c0                   test   %eax,%eax
    2753:       0f 88 a3 00 00 00       js     27fc <init_driver+0x107>
    2759:       89 c3                   mov    %eax,%ebx
    275b:       48 8d 3d 64 08 00 00    lea    0x864(%rip),%rdi        # 2fc6 <array.3416+0x3e6>
    2762:       e8 89 e7 ff ff          callq  ef0 <gethostbyname@plt>
    2767:       48 85 c0                test   %rax,%rax
    276a:       0f 84 df 00 00 00       je     284f <init_driver+0x15a>
    2770:       48 89 e5                mov    %rsp,%rbp
    2773:       48 c7 44 24 02 00 00    movq   $0x0,0x2(%rsp)
    277a:       00 00
    277c:       c7 45 0a 00 00 00 00    movl   $0x0,0xa(%rbp)
    2783:       66 c7 45 0e 00 00       movw   $0x0,0xe(%rbp)
    2789:       66 c7 04 24 02 00       movw   $0x2,(%rsp)
    278f:       48 63 50 14             movslq 0x14(%rax),%rdx
    2793:       48 8b 40 18             mov    0x18(%rax),%rax
    2797:       48 8d 7d 04             lea    0x4(%rbp),%rdi
    279b:       b9 0c 00 00 00          mov    $0xc,%ecx
    27a0:       48 8b 30                mov    (%rax),%rsi
    27a3:       e8 58 e7 ff ff          callq  f00 <__memmove_chk@plt>
    27a8:       66 c7 44 24 02 3b 70    movw   $0x703b,0x2(%rsp)
    27af:       ba 10 00 00 00          mov    $0x10,%edx
    27b4:       48 89 ee                mov    %rbp,%rsi
    27b7:       89 df                   mov    %ebx,%edi
    27b9:       e8 c2 e7 ff ff          callq  f80 <connect@plt>
    27be:       85 c0                   test   %eax,%eax
    27c0:       0f 88 fb 00 00 00       js     28c1 <init_driver+0x1cc>
    27c6:       89 df                   mov    %ebx,%edi
    27c8:       e8 e3 e6 ff ff          callq  eb0 <close@plt>
    27cd:       66 41 c7 04 24 4f 4b    movw   $0x4b4f,(%r12)
    27d4:       41 c6 44 24 02 00       movb   $0x0,0x2(%r12)
    27da:       b8 00 00 00 00          mov    $0x0,%eax
    27df:       48 8b 4c 24 18          mov    0x18(%rsp),%rcx
    27e4:       64 48 33 0c 25 28 00    xor    %fs:0x28,%rcx
    27eb:       00 00
    27ed:       0f 85 06 01 00 00       jne    28f9 <init_driver+0x204>
    27f3:       48 83 c4 20             add    $0x20,%rsp
    27f7:       5b                      pop    %rbx
    27f8:       5d                      pop    %rbp
    27f9:       41 5c                   pop    %r12
    27fb:       c3                      retq
    27fc:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    2803:       3a 20 43
    2806:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    280d:       20 75 6e
    2810:       49 89 04 24             mov    %rax,(%r12)
    2814:       49 89 54 24 08          mov    %rdx,0x8(%r12)
    2819:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2820:       74 6f 20
    2823:       48 ba 63 72 65 61 74    movabs $0x7320657461657263,%rdx
    282a:       65 20 73
    282d:       49 89 44 24 10          mov    %rax,0x10(%r12)
    2832:       49 89 54 24 18          mov    %rdx,0x18(%r12)
    2837:       41 c7 44 24 20 6f 63    movl   $0x656b636f,0x20(%r12)
    283e:       6b 65
    2840:       66 41 c7 44 24 24 74    movw   $0x74,0x24(%r12)
    2847:       00
    2848:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    284d:       eb 90                   jmp    27df <init_driver+0xea>
    284f:       48 b8 45 72 72 6f 72    movabs $0x44203a726f727245,%rax
    2856:       3a 20 44
    2859:       48 ba 4e 53 20 69 73    movabs $0x6e7520736920534e,%rdx
    2860:       20 75 6e
    2863:       49 89 04 24             mov    %rax,(%r12)
    2867:       49 89 54 24 08          mov    %rdx,0x8(%r12)
    286c:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2873:       74 6f 20
    2876:       48 ba 72 65 73 6f 6c    movabs $0x2065766c6f736572,%rdx
    287d:       76 65 20
    2880:       49 89 44 24 10          mov    %rax,0x10(%r12)
    2885:       49 89 54 24 18          mov    %rdx,0x18(%r12)
    288a:       48 b8 73 65 72 76 65    movabs $0x6120726576726573,%rax
    2891:       72 20 61
    2894:       49 89 44 24 20          mov    %rax,0x20(%r12)
    2899:       41 c7 44 24 28 64 64    movl   $0x65726464,0x28(%r12)
    28a0:       72 65
    28a2:       66 41 c7 44 24 2c 73    movw   $0x7373,0x2c(%r12)
    28a9:       73
    28aa:       41 c6 44 24 2e 00       movb   $0x0,0x2e(%r12)
    28b0:       89 df                   mov    %ebx,%edi
    28b2:       e8 f9 e5 ff ff          callq  eb0 <close@plt>
    28b7:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    28bc:       e9 1e ff ff ff          jmpq   27df <init_driver+0xea>
    28c1:       4c 8d 05 fe 06 00 00    lea    0x6fe(%rip),%r8        # 2fc6 <array.3416+0x3e6>
    28c8:       48 8d 0d b1 06 00 00    lea    0x6b1(%rip),%rcx        # 2f80 <array.3416+0x3a0>
    28cf:       48 c7 c2 ff ff ff ff    mov    $0xffffffffffffffff,%rdx
    28d6:       be 01 00 00 00          mov    $0x1,%esi
    28db:       4c 89 e7                mov    %r12,%rdi
    28de:       b8 00 00 00 00          mov    $0x0,%eax
    28e3:       e8 d8 e6 ff ff          callq  fc0 <__sprintf_chk@plt>
    28e8:       89 df                   mov    %ebx,%edi
    28ea:       e8 c1 e5 ff ff          callq  eb0 <close@plt>
    28ef:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    28f4:       e9 e6 fe ff ff          jmpq   27df <init_driver+0xea>
    28f9:       e8 92 e5 ff ff          callq  e90 <__stack_chk_fail@plt>

00000000000028fe <driver_post>:
    28fe:       53                      push   %rbx
    28ff:       4c 89 c3                mov    %r8,%rbx
    2902:       85 c9                   test   %ecx,%ecx
    2904:       75 17                   jne    291d <driver_post+0x1f>
    2906:       48 85 ff                test   %rdi,%rdi
    2909:       74 05                   je     2910 <driver_post+0x12>
    290b:       80 3f 00                cmpb   $0x0,(%rdi)
    290e:       75 33                   jne    2943 <driver_post+0x45>
    2910:       66 c7 03 4f 4b          movw   $0x4b4f,(%rbx)
    2915:       c6 43 02 00             movb   $0x0,0x2(%rbx)
    2919:       89 c8                   mov    %ecx,%eax
    291b:       5b                      pop    %rbx
    291c:       c3                      retq
    291d:       48 8d 35 b1 06 00 00    lea    0x6b1(%rip),%rsi        # 2fd5 <array.3416+0x3f5>
    2924:       bf 01 00 00 00          mov    $0x1,%edi
    2929:       b8 00 00 00 00          mov    $0x0,%eax
    292e:       e8 0d e6 ff ff          callq  f40 <__printf_chk@plt>
    2933:       66 c7 03 4f 4b          movw   $0x4b4f,(%rbx)
    2938:       c6 43 02 00             movb   $0x0,0x2(%rbx)
    293c:       b8 00 00 00 00          mov    $0x0,%eax
    2941:       eb d8                   jmp    291b <driver_post+0x1d>
    2943:       41 50                   push   %r8
    2945:       52                      push   %rdx
    2946:       4c 8d 0d 9f 06 00 00    lea    0x69f(%rip),%r9        # 2fec <array.3416+0x40c>
    294d:       49 89 f0                mov    %rsi,%r8
    2950:       48 89 f9                mov    %rdi,%rcx
    2953:       48 8d 15 9a 06 00 00    lea    0x69a(%rip),%rdx        # 2ff4 <array.3416+0x414>
    295a:       be 70 3b 00 00          mov    $0x3b70,%esi
    295f:       48 8d 3d 60 06 00 00    lea    0x660(%rip),%rdi        # 2fc6 <array.3416+0x3e6>
    2966:       e8 1e f5 ff ff          callq  1e89 <submitr>
    296b:       48 83 c4 10             add    $0x10,%rsp
    296f:       eb aa                   jmp    291b <driver_post+0x1d>
    2971:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
    2978:       00 00 00
    297b:       0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)

0000000000002980 <__libc_csu_init>:
    2980:       41 57                   push   %r15
    2982:       41 56                   push   %r14
    2984:       49 89 d7                mov    %rdx,%r15
    2987:       41 55                   push   %r13
    2989:       41 54                   push   %r12
    298b:       4c 8d 25 56 13 20 00    lea    0x201356(%rip),%r12        # 203ce8 <__frame_dummy_init_array_entry>
    2992:       55                      push   %rbp
    2993:       48 8d 2d 56 13 20 00    lea    0x201356(%rip),%rbp        # 203cf0 <__init_array_end>
    299a:       53                      push   %rbx
    299b:       41 89 fd                mov    %edi,%r13d
    299e:       49 89 f6                mov    %rsi,%r14
    29a1:       4c 29 e5                sub    %r12,%rbp
    29a4:       48 83 ec 08             sub    $0x8,%rsp
    29a8:       48 c1 fd 03             sar    $0x3,%rbp
    29ac:       e8 4f e4 ff ff          callq  e00 <_init>
    29b1:       48 85 ed                test   %rbp,%rbp
    29b4:       74 20                   je     29d6 <__libc_csu_init+0x56>
    29b6:       31 db                   xor    %ebx,%ebx
    29b8:       0f 1f 84 00 00 00 00    nopl   0x0(%rax,%rax,1)
    29bf:       00
    29c0:       4c 89 fa                mov    %r15,%rdx
    29c3:       4c 89 f6                mov    %r14,%rsi
    29c6:       44 89 ef                mov    %r13d,%edi
    29c9:       41 ff 14 dc             callq  *(%r12,%rbx,8)
    29cd:       48 83 c3 01             add    $0x1,%rbx
    29d1:       48 39 dd                cmp    %rbx,%rbp
    29d4:       75 ea                   jne    29c0 <__libc_csu_init+0x40>
    29d6:       48 83 c4 08             add    $0x8,%rsp
    29da:       5b                      pop    %rbx
    29db:       5d                      pop    %rbp
    29dc:       41 5c                   pop    %r12
    29de:       41 5d                   pop    %r13
    29e0:       41 5e                   pop    %r14
    29e2:       41 5f                   pop    %r15
    29e4:       c3                      retq
    29e5:       90                      nop
    29e6:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
    29ed:       00 00 00

00000000000029f0 <__libc_csu_fini>:
    29f0:       f3 c3                   repz retq

Disassembly of section .fini:

00000000000029f4 <_fini>:
    29f4:       48 83 ec 08             sub    $0x8,%rsp
    29f8:       48 83 c4 08             add    $0x8,%rsp
    29fc:       c3                      retq