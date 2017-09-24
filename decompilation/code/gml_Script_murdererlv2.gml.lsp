0x000000:
    push -5s
    if !(>= 202s:flag 20s) goto 0x000038
0x00001C:
    push -5s
    push (== 45s:flag 4s)
    goto 0x00003C
0x000038:
    push 0s
0x00003C:
    if !pop goto 0x000050
0x000040:
    ret var (var 1s)
    goto 0x00005C
0x000050:
    ret var (var 0s)
0x00005C:
    exit
