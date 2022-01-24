0000000000001274 <phase_2>:
    1274:       55                      push   %rbp
    1275:       53                      push   %rbx
    1276:       48 83 ec 28             sub    $0x28,%rsp
    127a:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    1281:       00 00
    1283:       48 89 44 24 18          mov    %rax,0x18 b(%rsp)
    1288:       31 c0                   xor    %eax,%eax
    128a:       48 89 e6                mov    %rsp,%rsi
    128d:       e8 c2 08 00 00          callq  1b54 <read_six_numbers>
    1292:       83 3c 24 00             cmpl   $0x0,(%rsp)
    1296:       75 07                   jne    129f <phase_2+0x2b>
    1298:       83 7c 24 04 01          cmpl   $0x1,0x4(%rsp)
    129d:       74 05                   je     12a4 <phase_2+0x30>
    129f:       e8 74 08 00 00          callq  1b18 <explode_bomb> # bomb
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
    12c0:       e8 53 08 00 00          callq  1b18 <explode_bomb> # bomb
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

