0x000000:
    if !(> self.stage 0s) goto 0x000034
0x000014:
    self.valuindex = (+ self.valuindex 0.1667d)
0x000034:
    if !(> self.valuindex 9.2d) goto 0x000064
0x000050:
    push (== self.stage 1s)
    goto 0x000068
0x000064:
    push 0s
0x000068:
    if !pop goto 0x00009C
0x00006C:
    self.stage = 2s
    call (instance_create[]:int32 (var 1437s) self.y self.x)
0x00009C:
    if !(>= self.valuindex 11s) goto 0x0000E0
0x0000B0:
    self.image_index = 0s
    self.image_speed = 0s
    self.stage = 0s
    self.valuindex = 0s
0x0000E0:
    exit
