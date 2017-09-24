0x000000:
    if !(> global.healno 0s) goto 0x000028
0x000014:
    push (< global.testhp 20s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000054
0x000030:
    global.testhp = 20s
    global.healno = (- global.healno 1s)
0x000054:
    exit
