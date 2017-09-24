0x000000:
    pushenv 287s 0x000030
0x000008:
    call (event_user[]:int32 (var 3s))
    call (event_user[]:int32 (var 7s))
0x000030:
    popenv 0x000008
0x000034:
    push 288s
    if !(< 5s:alarm 2s) goto 0x000070
0x000050:
    pushenv 288s 0x00006C
0x000058:
    call (event_user[]:int32 (var 2s))
0x00006C:
    popenv 0x000058
0x000070:
    call (instance_destroy[]:int32 )
0x00007C:
    exit
