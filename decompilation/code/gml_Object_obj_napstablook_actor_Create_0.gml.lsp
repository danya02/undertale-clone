0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.dsprite = 1129s
    self.usprite = 1131s
    self.lsprite = 1126s
    self.rsprite = 1127s
    self.dtsprite = 1129s
    self.utsprite = 1131s
    self.ltsprite = 1126s
    self.rtsprite = 1127s
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 90s
    self.talkedto = 0s
    self.image_speed = 0s
    self.fun = 0s
    push -5s
    if !(== 7s:flag 1s) goto 0x000128
0x0000F8:
    self.direction = 270s
    call (instance_create[]:int32 (var 1358s) (var 122s) (var 216s))
0x000128:
    push -5s
    if !(== 7s:flag 0s) goto 0x000158
0x000144:
    push (== self.room 119s)
    goto 0x00015C
0x000158:
    push 0s
0x00015C:
    if !pop goto 0x00016C
0x000160:
    call (instance_destroy[]:int32 )
0x00016C:
    if !(>= (scr_murderlv[]:int32 ) 10s) goto 0x00018C
0x000180:
    call (instance_destroy[]:int32 )
0x00018C:
    exit
