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
    self.dis = 0s
    if !(> global.plot 163s) goto 0x0000C8
0x0000BC:
    self.dis = 1s
0x0000C8:
    push -5s
    if !(== 397s:flag 1s) goto 0x0000F0
0x0000E4:
    self.dis = 1s
0x0000F0:
    if !(== self.dis 1s) goto 0x000110
0x000104:
    call (instance_destroy[]:int32 )
0x000110:
    exit
