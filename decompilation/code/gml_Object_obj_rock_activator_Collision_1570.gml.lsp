0x000000:
    if !(> 914.conversation 7s) goto 0x000030
0x000014:
    push (< 914.conversation 10.5d)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x000060
0x000038:
    [obj_goofyrock].conversation = 10.5d
    stog.alarm[0s] = 3s
0x000060:
    exit
