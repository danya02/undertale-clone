0x000000:
    if (== self.spec 3s) goto 0x000028
0x000014:
    push (== self.spec 5s)
    goto 0x00002C
0x000028:
    push 1s
0x00002C:
    if !pop goto 0x000044
0x000030:
    call (event_user[]:int32 (var 1s))
0x000044:
    if (== self.spec 4s) goto 0x00006C
0x000058:
    push (== self.spec 6s)
    goto 0x000070
0x00006C:
    push 1s
0x000070:
    if !pop goto 0x000088
0x000074:
    call (event_user[]:int32 (var 2s))
0x000088:
    exit
