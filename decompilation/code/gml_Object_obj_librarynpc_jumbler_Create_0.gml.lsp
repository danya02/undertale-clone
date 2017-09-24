0x000000:
    self.dsprite = self.sprite_index
    self.usprite = self.sprite_index
    self.lsprite = self.sprite_index
    self.rsprite = self.sprite_index
    self.dtsprite = 1353s
    self.utsprite = 1362s
    self.ltsprite = 1367s
    self.rtsprite = 1363s
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 0s
    self.talkedto = 0s
    self.image_speed = 0s
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x0000CC
0x0000C0:
    call (instance_destroy[]:int32 )
0x0000CC:
    exit
