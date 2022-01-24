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

# stack 값 -8
# rsi의 주소를 0x18f1 + rip에 

# 리턴 값은 rax에 저장되어있다. eax의 경우, rax의 하위 32비트
# test 명령어는 ZF 설정해주기위함.
# stack을 주소 가리키는 레지스터 원상복구.
