0x000000:
    self.fun = 0s
    self.dsprite = self.sprite_index
    self.usprite = self.sprite_index
    self.lsprite = self.sprite_index
    self.rsprite = self.sprite_index
    self.dtsprite = 1353s
    self.utsprite = 1362s
    self.ltsprite = 1367s
    self.rtsprite = 1363s
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 0s
    self.talkedto = 0s
    self.image_speed = 0s
    push -5s
    if !(== 53s:flag 1s) goto 0x0000E0
0x0000D4:
    call (instance_destroy[]:int32 )
0x0000E0:
    push -5s
    if !(== 7s:flag 1s) goto 0x000110
0x0000FC:
    push (== self.room 73s)
    goto 0x000114
0x000110:
    push 0s
0x000114:
    if !pop goto 0x000124
0x000118:
    call (instance_destroy[]:int32 )
0x000124:
    push -5s
    if !(== 7s:flag 0s) goto 0x000154
0x000140:
    push (== self.room 68s)
    goto 0x000158
0x000154:
    push 0s
0x000158:
    if !pop goto 0x000168
0x00015C:
    call (instance_destroy[]:int32 )
0x000168:
    self.sansmode = 0s
0x000174:
    exit
