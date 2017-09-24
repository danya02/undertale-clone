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
    push -5s
    if !(> 434s:flag 0s) goto 0x0000C4
0x0000B8:
    self.sprite_index = 1975s
0x0000C4:
    if !(== self.room 157s) goto 0x0000EC
0x0000D8:
    push (>= global.plot 166s)
    goto 0x0000F0
0x0000EC:
    push 0s
0x0000F0:
    if !pop goto 0x000100
0x0000F4:
    call (instance_destroy[]:int32 )
0x000100:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x000120
0x000114:
    call (instance_destroy[]:int32 )
0x000120:
    push -5s
    if !(== 425s:flag 1s) goto 0x000148
0x00013C:
    call (instance_destroy[]:int32 )
0x000148:
    exit
