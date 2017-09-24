0x000000:
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.image_speed = 0.1d
    if !(== self.room 21s) goto 0x000074
0x00004C:
    if !(> self.x 300s) goto 0x000074
0x000060:
    push (< self.x 400s)
    goto 0x000078
0x000074:
    push 0s
0x000078:
    if !pop goto 0x00007C
0x00007C:
    exit
