0x000000:
    self.chair = 0s
    if (> global.plot 20s) goto 0x000034
0x000020:
    push (< global.plot 19s)
    goto 0x000038
0x000034:
    push 1s
0x000038:
    if !pop goto 0x000048
0x00003C:
    self.chair = 1s
0x000048:
    if !(== self.chair 0s) goto 0x0000C0
0x00005C:
    self.dsprite = 1118s
    self.usprite = 1118s
    self.lsprite = 1118s
    self.rsprite = 1118s
    self.dtsprite = 1118s
    self.utsprite = 1118s
    self.ltsprite = 1118s
    self.rtsprite = 1118s
    goto 0x00012C
0x0000C0:
    self.dsprite = 1121s
    self.usprite = 1121s
    self.lsprite = 1121s
    self.rsprite = 1121s
    self.dtsprite = 1121s
    self.utsprite = 1121s
    self.ltsprite = 1121s
    self.rtsprite = 1121s
    self.sprite_index = 1121s
0x00012C:
    self.myinteract = 0s
    self.facing = 1s
    self.direction = 180s
    self.talkedto = 0s
    if !(== self.room 221s) goto 0x0001E8
0x000170:
    self.dsprite = 1895s
    self.usprite = 1895s
    self.lsprite = 1895s
    self.rsprite = 1895s
    self.dtsprite = 1895s
    self.utsprite = 1895s
    self.ltsprite = 1895s
    self.rtsprite = 1895s
    self.sprite_index = 1895s
    self.chair = 9s
0x0001E8:
    exit
