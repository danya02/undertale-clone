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
    self.touched = 0s
    self.gone = 0s
    push -5s
    if !(> 413s:flag 0s) goto 0x0000E8
0x0000DC:
    self.gone = 1s
0x0000E8:
    push -5s
    if !(== 67s:flag 1s) goto 0x000110
0x000104:
    self.gone = 1s
0x000110:
    if !(>= global.plot 200s) goto 0x000130
0x000124:
    self.gone = 1s
0x000130:
    if !(== self.gone 1s) goto 0x000150
0x000144:
    call (instance_destroy[]:int32 )
0x000150:
    exit
