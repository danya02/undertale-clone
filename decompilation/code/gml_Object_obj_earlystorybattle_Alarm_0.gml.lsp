0x000000:
    push -5s
    push 455s:flag
    if !(== (+ -5s 456s:flag) 1s) goto 0x000044
0x000030:
    stog.flag[450s] = 1s
0x000044:
    push -5s
    push 455s:flag
    if !(== (+ -5s 456s:flag) 2s) goto 0x000088
0x000074:
    stog.flag[450s] = 2s
0x000088:
    exit
