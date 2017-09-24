0x000000:
    push -5s
    if !(== 52s:flag 1s) goto 0x000054
0x00001C:
    push -5s
    if !(== 53s:flag 1s) goto 0x000054
0x000038:
    push -5s
    push (== 54s:flag 1s)
    goto 0x000058
0x000054:
    push 0s
0x000058:
    if !pop goto 0x00006C
0x00005C:
    ret var (var 1s)
    goto 0x000078
0x00006C:
    ret var (var 0s)
0x000078:
    exit
