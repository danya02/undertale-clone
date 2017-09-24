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
    self.image_speed = 0.125d
    push -5s
    if !(== 7s:flag 1s) goto 0x0000D4
0x0000C0:
    self.image_speed = 0.5d
0x0000D4:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x0000F4
0x0000E8:
    call (instance_destroy[]:int32 )
0x0000F4:
    push -5s
    if !(== 425s:flag 1s) goto 0x00011C
0x000110:
    self.image_speed = 0s
0x00011C:
    exit
