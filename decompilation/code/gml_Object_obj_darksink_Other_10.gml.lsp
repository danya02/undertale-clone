0x000000:
    push -5s
    if !(> 487s:flag 0s) goto 0x0000FC
0x00001C:
    push -5s
    if !(== 487s:flag 1s) goto 0x00004C
0x000038:
    push (< self.x 81s)
    goto 0x000050
0x00004C:
    push 0s
0x000050:
    if !pop goto 0x000060
0x000054:
    self.how_bad_me_key = 1s
0x000060:
    push -5s
    if !(== 487s:flag 2s) goto 0x0000A4
0x00007C:
    if !(> self.x 81s) goto 0x0000A4
0x000090:
    push (< self.x 101s)
    goto 0x0000A8
0x0000A4:
    push 0s
0x0000A8:
    if !pop goto 0x0000B8
0x0000AC:
    self.how_bad_me_key = 1s
0x0000B8:
    push -5s
    if !(== 487s:flag 3s) goto 0x0000E8
0x0000D4:
    push (> self.x 110s)
    goto 0x0000EC
0x0000E8:
    push 0s
0x0000EC:
    if !pop goto 0x0000FC
0x0000F0:
    self.how_bad_me_key = 1s
0x0000FC:
    exit
