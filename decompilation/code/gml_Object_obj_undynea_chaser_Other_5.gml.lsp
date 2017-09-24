0x000000:
    if (== global.entrance 1s) goto 0x000028
0x000014:
    push (== global.entrance 2s)
    goto 0x00002C
0x000028:
    push 1s
0x00002C:
    if !pop goto 0x000044
0x000030:
    stog.flag[17s] = 0s
0x000044:
    exit
