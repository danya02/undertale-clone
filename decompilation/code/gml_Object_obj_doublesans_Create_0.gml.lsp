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
    if !(> global.plot 64s) goto 0x0000BC
0x0000B0:
    call (instance_destroy[]:int32 )
0x0000BC:
    self.gone = 0s
    push -5s
    if !(> 413s:flag 0s) goto 0x0000F0
0x0000E4:
    self.gone = 1s
0x0000F0:
    push -5s
    if !(== 67s:flag 1s) goto 0x000118
0x00010C:
    self.gone = 1s
0x000118:
    if !(== self.gone 1s) goto 0x000138
0x00012C:
    call (instance_destroy[]:int32 )
0x000138:
    exit
