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
    self.image_speed = 0s
    self.fun = 0s
    self.sansmode = 0s
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x0000D4
0x0000C8:
    call (instance_destroy[]:int32 )
0x0000D4:
    exit
