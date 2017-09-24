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
    push -5s
    if !(== 7s:flag 1s) goto 0x0000CC
0x0000B8:
    push (== self.room 184s)
    goto 0x0000D0
0x0000CC:
    push 0s
0x0000D0:
    if !pop goto 0x0000E0
0x0000D4:
    call (instance_destroy[]:int32 )
0x0000E0:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x000100
0x0000F4:
    call (instance_destroy[]:int32 )
0x000100:
    exit
