0x000000:
    push -5s
    if !(>= 202s:flag 20s) goto 0x00002C
0x00001C:
    ret var (var 1s)
    goto 0x000038
0x00002C:
    ret var (var 0s)
0x000038:
    exit
