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
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x0000BC
0x0000B0:
    call (instance_destroy[]:int32 )
0x0000BC:
    push -5s
    if (< 5s:flag 80s) goto 0x0000F4
0x0000D8:
    push -5s
    push (> 5s:flag 89s)
    goto 0x0000F8
0x0000F4:
    push 1s
0x0000F8:
    if !pop goto 0x000108
0x0000FC:
    call (instance_destroy[]:int32 )
0x000108:
    exit
