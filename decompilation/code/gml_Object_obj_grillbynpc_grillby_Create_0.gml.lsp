0x000000:
    self.dsprite = 1353s
    self.usprite = 1362s
    self.lsprite = 1367s
    self.rsprite = 1363s
    self.dtsprite = 1353s
    self.utsprite = 1362s
    self.ltsprite = 1367s
    self.rtsprite = 1363s
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 0s
    self.talkedto = 0s
    self.image_speed = 0.25d
    call (scr_depth[]:int32 )
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x0000D0
0x0000C4:
    call (instance_destroy[]:int32 )
0x0000D0:
    self.sansmode = 0s
0x0000DC:
    exit
