0x000000:
    self.dsprite = 1950s
    self.usprite = 1953s
    self.lsprite = 1950s
    self.rsprite = 1953s
    self.dtsprite = 1950s
    self.utsprite = 1953s
    self.ltsprite = 1950s
    self.rtsprite = 1953s
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 180s
    self.talkedto = 0s
    self.image_speed = 0s
    if !(>= (scr_murderlv[]:int32 ) 10s) goto 0x0000BC
0x0000B0:
    call (instance_destroy[]:int32 )
0x0000BC:
    if (== self.x 145s) goto 0x0000F8
0x0000D0:
    if (== self.x 205s) goto 0x0000F8
0x0000E4:
    push (== self.x 450s)
    goto 0x0000FC
0x0000F8:
    push 1s
0x0000FC:
    if !pop goto 0x00010C
0x000100:
    self.direction = 0s
0x00010C:
    exit
