0x000000:
    self.dsprite = 1217s
    self.usprite = 1217s
    self.lsprite = 1217s
    self.rsprite = 1217s
    self.dtsprite = 1217s
    self.utsprite = 1217s
    self.ltsprite = 1217s
    self.rtsprite = 1217s
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 0s
    self.talkedto = 0s
    self.image_speed = 0s
    push -5s
    if (== 67s:flag 1s) goto 0x0000CC
0x0000B8:
    push (== (scr_deaddog[]:int32 ) 1s)
    goto 0x0000D0
0x0000CC:
    push 1s
0x0000D0:
    if !pop goto 0x0000E0
0x0000D4:
    call (instance_destroy[]:int32 )
0x0000E0:
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x000100
0x0000F4:
    call (instance_destroy[]:int32 )
0x000100:
    exit
