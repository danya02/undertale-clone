0x000000:
    self.i = 0s
    if !(< self.i 3s) goto 0x00013C
0x000020:
    push -1s
    if !(< (int32 self.i):c 10s) goto 0x000060
0x000044:
    stog.u[(int32 self.i)] = 1s
0x000060:
    push -1s
    if !(> (int32 self.i):c 250s) goto 0x0000A0
0x000084:
    stog.u[(int32 self.i)] = 0s
0x0000A0:
    push -1s
    if !(== (int32 self.i):u 1s) goto 0x0000F4
0x0000C4:
    push -1s
    stog.c[(+ (int32 self.i):c 2s)] = (int32 self.i)
    goto 0x000120
0x0000F4:
    push -1s
    stog.c[(- (int32 self.i):c 3s)] = (int32 self.i)
0x000120:
    self.i = (+ self.i 1s)
    goto 0x00000C
0x00013C:
    push -1s
    push 2s:c
    push -1s
    self.color = (make_color_rgb[]:int32 1s:c -1s 0s:c)
0x00017C:
    exit
