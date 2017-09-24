0x000000:
    if !(== global.phasing 0s) goto 0x000028
0x000014:
    push (== global.interact 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x00005C
0x000030:
    global.interact = 4s
    global.phasing = 1s
    stog.alarm[0s] = 10s
0x00005C:
    exit
