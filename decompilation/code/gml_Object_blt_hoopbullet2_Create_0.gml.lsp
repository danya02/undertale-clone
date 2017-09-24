0x000000:
    self.dmg = 0s
    self.r = (round[]:int32 (random[]:int32 (var 1s)))
    self.b = (round[]:int32 (random[]:int32 (var 1s)))
    if !(== self.r 0s) goto 0x000070
0x000060:
    self.hspeed = 1s
    goto 0x00007C
0x000070:
    self.hspeed = -1s
0x00007C:
    if !(== self.b 1s) goto 0x0000A0
0x000090:
    self.vspeed = 1s
    goto 0x0000AC
0x0000A0:
    self.vspeed = -1s
0x0000AC:
    self.x = (+ self.x 5s)
    self.friction = -0.042d
    self.intangible = 1s
    self.image_alpha = 0s
    if !(> (instance_number[]:int32 (var 620s)) 5s) goto 0x000118
0x00010C:
    call (instance_destroy[]:int32 )
0x000118:
    exit
