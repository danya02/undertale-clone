0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(bool (instance_exists[]:int32 (var 763s))) goto 0x00009C
0x00004C:
    self.myinteract = 1s
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x000098
0x000070:
    if !(!= 782.halt 0s) goto 0x000098
0x000084:
    self.image_speed = 0.2d
0x000098:
    goto 0x0000FC
0x00009C:
    self.myinteract = 0s
    if !(== self.speed 0s) goto 0x0000D4
0x0000BC:
    self.image_index = 0s
    self.image_speed = 0s
0x0000D4:
    if !(> self.speed 0s) goto 0x0000FC
0x0000E8:
    self.image_speed = 0.2d
0x0000FC:
    call (scr_npcdir[]:int32 (var 0s))
    if !(== self.room 5s) goto 0x000138
0x000124:
    push (< self.y 140s)
    goto 0x00013C
0x000138:
    push 0s
0x00013C:
    if !pop goto 0x00014C
0x000140:
    self.fader = 1s
0x00014C:
    if !(== self.fader 1s) goto 0x0001A8
0x000160:
    self.image_alpha = (- self.image_alpha 0.2d)
    if !(<= self.image_alpha 0.2d) goto 0x0001A8
0x00019C:
    call (instance_destroy[]:int32 )
0x0001A8:
    exit
