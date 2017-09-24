0x000000:
    push -5s
    if !(== 45s:flag 1s) goto 0x000030
0x00001C:
    stog.alarm[1s] = 2s
0x000030:
    exit
