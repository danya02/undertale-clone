0x000000:
    self.anim = 0s
    self.animspeed = 0.1664d
    self.drawkey = 0s
    self.con = 0s
    self.myinteract = 0s
    self.mode = 0s
    push -5s
    if !(== 483s:flag 1s) goto 0x000098
0x00006C:
    self.mode = 2s
    self.drawkey = 1s
    self.size = 0.3d
0x000098:
    push -5s
    if !(>= 483s:flag 2s) goto 0x0000EC
0x0000B4:
    self.mode = 2s
    self.drawkey = 0s
    self.size = 0.3d
    self.con = 10s
0x0000EC:
    self.size = 1s
    self.remy = 1570.y
    self.onoff = 0s
0x000114:
    exit
