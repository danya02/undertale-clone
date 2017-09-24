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
    if !(!= (scr_enemynpc2[]:int32 ) 1s) goto 0x0000BC
0x0000B0:
    call (instance_destroy[]:int32 )
0x0000BC:
    if !(== self.room 113s) goto 0x000108
0x0000D0:
    push -5s
    if !(>= 493s:flag 9s) goto 0x000108
0x0000EC:
    push -5s
    push (== 7s:flag 0s)
    goto 0x00010C
0x000108:
    push 0s
0x00010C:
    if !pop goto 0x00011C
0x000110:
    call (instance_destroy[]:int32 )
0x00011C:
    exit
