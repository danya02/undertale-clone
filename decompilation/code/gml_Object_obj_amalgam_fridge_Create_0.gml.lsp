0x000000:
    self.con = 0s
    self.alpha = 0s
    self.amalgam = 0s
    self.anim = 0s
    self.myinteract = 0s
    call (scr_depth[]:int32 )
    self.talkedto = 0s
    push -5s
    if !(== 482s:flag 1s) goto 0x0000B8
0x000070:
    self.x = 170s
    self.y = 138s
    self.sprite_index = 2110s
    self.image_speed = 0.2d
    self.image_blend = 16711680
0x0000B8:
    push -5s
    if !(> 482s:flag 1s) goto 0x0000E0
0x0000D4:
    call (instance_destroy[]:int32 )
0x0000E0:
    exit
