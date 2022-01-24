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
    14be:       83 f8 02                cmp    $0x2,%eax # (%eax) = $0x2여야함. -> 입력되는 변수 2개여야함
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