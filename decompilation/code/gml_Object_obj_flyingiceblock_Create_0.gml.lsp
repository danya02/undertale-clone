0x000000:
    self.hspeed = 6s
    self.friction = 0.1d
    self.vspeed = -2s
    self.gravity = 0.3d
    self.gravity_direction = 270s
    self.stage = 0s
    self.image_xscale = -1s
    self.x = (- self.x self.sprite_width)
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x0000A0
0x000094:
    call (instance_destroy[]:int32 )
0x0000A0:
    push -5s
    if !(== 7s:flag 1s) goto 0x0000C8
0x0000BC:
    call (instance_destroy[]:int32 )
0x0000C8:
    self.kid = 43948
    self.stagetimer = 0s
0x0000E4:
    exit
