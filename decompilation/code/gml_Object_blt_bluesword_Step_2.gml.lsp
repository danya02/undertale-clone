0x000000:
    if !(< global.turntimer 1s) goto 0x000038
0x000014:
    global.turntimer = -1s
    global.mnfight = 3s
    call (instance_destroy[]:int32 )
0x000038:
    if !(bool (instance_exists[]:int32 (var 743s))) goto 0x000164
0x000050:
    if !(< (abs[]:int32 (- 743.x self.x)) 12s) goto 0x0000A8
0x000078:
    self.g = 1s
    self.friction = 0.1d
    self.hspeed = -2s
    goto 0x0000D0
0x0000A8:
    if !(== self.g 1s) goto 0x0000D0
0x0000BC:
    self.friction = -0.3d
0x0000D0:
    if !(> (- 743.y self.y) (/ self.sprite_height (double 2s))) goto 0x00011C
0x000100:
    self.y = (+ self.y 4s)
    goto 0x000164
0x00011C:
    if !(< (- 743.y self.y) (/ self.sprite_height (double 4s))) goto 0x000164
0x00014C:
    self.y = (- self.y 4s)
0x000164:
    exit
