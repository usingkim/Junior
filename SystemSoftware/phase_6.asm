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
    15fc:       77 cc                   ja     15ca <phase_6+0x32> # bomb
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