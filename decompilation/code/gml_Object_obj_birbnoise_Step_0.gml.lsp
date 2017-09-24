0x000000:
    if !(< 1570.y (- self.room_height 80s)) goto 0x000034
0x000020:
    push (> 1570.y 130s)
    goto 0x000038
0x000034:
    push 0s
0x000038:
    if !pop goto 0x00007C
0x00003C:
    if !(< self.birbvol 0.8d) goto 0x000078
0x000058:
    self.birbvol = (+ self.birbvol 0.02d)
0x000078:
    goto 0x0000B8
0x00007C:
    if !(> self.birbvol 0.05d) goto 0x0000B8
0x000098:
    self.birbvol = (- self.birbvol 0.05d)
0x0000B8:
    call (caster_set_volume[]:int32 self.birbvol self.birb)
0x0000D4:
    exit
