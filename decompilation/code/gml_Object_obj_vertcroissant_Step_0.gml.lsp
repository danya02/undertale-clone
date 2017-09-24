0x000000:
    if !(bool (instance_exists[]:int32 (var 363s))) goto 0x00009C
0x000018:
    self.op = 363s
    if !(> self.vspeed 0s) goto 0x00004C
0x000038:
    push (> self.y 400s)
    goto 0x000050
0x00004C:
    push 0s
0x000050:
    if !pop goto 0x000060
0x000054:
    call (instance_destroy[]:int32 )
0x000060:
    self.image_angle = (+ self.image_angle 8s)
    self.vspeed = (+ self.vspeed 0.3d)
    goto 0x0000A8
0x00009C:
    call (instance_destroy[]:int32 )
0x0000A8:
    exit
