0x000000:
    self.image_angle = self.direction
    if !(== self.type 0s) goto 0x00006C
0x000024:
    if !(< self.hspeed 0s) goto 0x000058
0x000038:
    push self.x
    push (<= -5s 0s:idealborder)
    goto 0x00005C
0x000058:
    push 0s
0x00005C:
    if !pop goto 0x00006C
0x000060:
    self.off = 1s
0x00006C:
    if !(== self.type 1s) goto 0x0000C8
0x000080:
    if !(> self.hspeed 0s) goto 0x0000B4
0x000094:
    push self.x
    push (>= -5s 1s:idealborder)
    goto 0x0000B8
0x0000B4:
    push 0s
0x0000B8:
    if !pop goto 0x0000C8
0x0000BC:
    self.off = 1s
0x0000C8:
    if !(== self.off 1s) goto 0x000124
0x0000DC:
    self.image_alpha = (- self.image_alpha 0.12d)
    if !(< self.image_alpha 0.05d) goto 0x000124
0x000118:
    call (instance_destroy[]:int32 )
0x000124:
    exit
