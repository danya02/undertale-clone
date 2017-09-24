0x000000:
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
    self.direction = 270s
    self.talkedto = 0s
    self.image_speed = 0s
    self.fun = 0s
    push -5s
    if !(== 7s:flag 1s) goto 0x0000D0
0x0000C4:
    call (instance_destroy[]:int32 )
0x0000D0:
    if !(>= (scr_murderlv[]:int32 ) 10s) goto 0x0000F0
0x0000E4:
    call (instance_destroy[]:int32 )
0x0000F0:
    exit
