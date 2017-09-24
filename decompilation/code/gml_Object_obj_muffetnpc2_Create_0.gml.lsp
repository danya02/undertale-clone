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
    self.image_speed = 0s
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x0000BC
0x0000B0:
    call (instance_destroy[]:int32 )
0x0000BC:
    self.kk = 0s
    push -5s
    if !(!= 397s:flag 0s) goto 0x0000F0
0x0000E4:
    self.kk = 1s
0x0000F0:
    if !(< global.plot 165s) goto 0x000110
0x000104:
    self.kk = 1s
0x000110:
    if !(== self.kk 1s) goto 0x000130
0x000124:
    call (instance_destroy[]:int32 )
0x000130:
    exit
