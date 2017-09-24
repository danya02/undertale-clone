0x000000:
    self.dsprite = 1218s
    self.usprite = 1218s
    self.lsprite = 1218s
    self.rsprite = 1218s
    self.dtsprite = 1218s
    self.utsprite = 1218s
    self.ltsprite = 1218s
    self.rtsprite = 1218s
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
    push -5s
    if (== 67s:flag 1s) goto 0x000110
0x0000FC:
    push (== (scr_deaddog[]:int32 ) 1s)
    goto 0x000114
0x000110:
    push 1s
0x000114:
    if !pop goto 0x000124
0x000118:
    call (instance_destroy[]:int32 )
0x000124:
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x000144
0x000138:
    call (instance_destroy[]:int32 )
0x000144:
    exit
