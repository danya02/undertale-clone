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
    self.con = 0s
    if !(> self.y 420s) goto 0x0000C8
0x0000BC:
    self.sprite_index = 1619s
0x0000C8:
    if !(> self.y 500s) goto 0x0000E8
0x0000DC:
    self.sprite_index = 1475s
0x0000E8:
    self.con = 0s
    call (scr_depth[]:int32 )
0x000100:
    exit
