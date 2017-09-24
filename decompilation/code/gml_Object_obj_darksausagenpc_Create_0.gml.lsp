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
    self.direction = 270s
    self.talkedto = 0s
    self.image_speed = 0s
    if !(!= (scr_enemynpc3[]:int32 ) 1s) goto 0x0000BC
0x0000B0:
    call (instance_destroy[]:int32 )
0x0000BC:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x0000DC
0x0000D0:
    call (instance_destroy[]:int32 )
0x0000DC:
    exit
