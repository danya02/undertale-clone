0x000000:
    self.dsprite = 1302s
    self.usprite = 1302s
    self.lsprite = 1302s
    self.rsprite = 1302s
    self.dtsprite = 1302s
    self.utsprite = 1302s
    self.ltsprite = 1302s
    self.rtsprite = 1302s
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 0s
    self.talkedto = 0s
    self.image_speed = 0s
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x0000BC
0x0000B0:
    call (instance_destroy[]:int32 )
0x0000BC:
    push -5s
    if !(== 7s:flag 0s) goto 0x0000E4
0x0000D8:
    call (instance_destroy[]:int32 )
0x0000E4:
    exit
