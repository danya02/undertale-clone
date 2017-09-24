0x000000:
    if !(< self.vspeed -1.5d) goto 0x00003C
0x00001C:
    self.vspeed = (+ self.vspeed 0.15d)
0x00003C:
    self.image_speed = (/ self.vspeed (double 8s))
    push self.y
    if !(< -5s (- 2s:idealborder 20s)) goto 0x00008C
0x000080:
    self.off = 1s
0x00008C:
    if !(== self.off 1s) goto 0x0000E8
0x0000A0:
    self.image_alpha = (- self.image_alpha 0.05d)
    if !(< self.image_alpha 0.1d) goto 0x0000E8
0x0000DC:
    call (instance_destroy[]:int32 )
0x0000E8:
    exit
