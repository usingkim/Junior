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

    