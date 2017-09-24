0x000000:
    if !(== self.speed 0s) goto 0x000020
0x000014:
    self.image_index = 0s
0x000020:
    if !(> self.speed 0s) goto 0x000048
0x000034:
    self.image_speed = 0.25d
0x000048:
    if !(> self.hspeed 0s) goto 0x000068
0x00005C:
    self.sprite_index = 1842s
0x000068:
    if !(< self.hspeed 0s) goto 0x000088
0x00007C:
    self.sprite_index = 1841s
0x000088:
    if !(!= self.vspeed 0s) goto 0x0000A8
0x00009C:
    self.sprite_index = 1843s
0x0000A8:
    if !(== self.mov 1s) goto 0x0000D4
0x0000BC:
    self.vspeed = -2s
    self.mov = 2s
0x0000D4:
    if !(== self.mov 2s) goto 0x00011C
0x0000E8:
    push self.y
    if !(< -1s (- 0s:view_yview 50s)) goto 0x00011C
0x000110:
    call (instance_destroy[]:int32 )
0x00011C:
    exit
