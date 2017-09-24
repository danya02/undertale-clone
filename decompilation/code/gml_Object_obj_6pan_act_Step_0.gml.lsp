0x000000:
    if !(> self.vspeed 0s) goto 0x000028
0x000014:
    push (== self.con 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x00003C
0x000030:
    self.depth = -31s
0x00003C:
    if !(> self.y 340s) goto 0x000064
0x000050:
    push (== self.con 0s)
    goto 0x000068
0x000064:
    push 0s
0x000068:
    if !pop goto 0x0000C8
0x00006C:
    if !(> self.vspeed 0s) goto 0x0000B0
0x000080:
    self.depth = -14s
    self.gravity = 0s
    self.friction = 0.9d
    goto 0x0000C8
0x0000B0:
    self.depth = -14s
    self.vspeed = 0s
0x0000C8:
    self.image_angle = self.direction
    self.visible = 1s
0x0000E4:
    exit
