00000000000012e3 <phase_3>: # conditionals/switches
    1312:       83 f8 02                cmp    $0x2,%eax # eax는 2 이상
    1315:       7e 1f                   jle    1336 <phase_3+0x53>
    1317:       83 7c 24 10 07          cmpl   $0x7,0x10(%rsp) # rdx는 7미만
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






    1438:       38 44 24 0f             cmp    %al,0xf(%rsp)
########################################################################
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
    