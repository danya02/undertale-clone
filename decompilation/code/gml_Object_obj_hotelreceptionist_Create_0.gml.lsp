0x000000:
    self.dsprite = 1219s
    self.usprite = 1219s
    self.lsprite = 1219s
    self.rsprite = 1219s
    self.dtsprite = 1219s
    self.utsprite = 1219s
    self.ltsprite = 1219s
    self.rtsprite = 1219s
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 0s
    self.talkedto = 0s
    self.con = 0s
    self.image_speed = 0s
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x0000C8
0x0000BC:
    call (instance_destroy[]:int32 )
0x0000C8:
    exit
