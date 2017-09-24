0x000000:
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
    if !(== 52s:flag 1s) goto 0x0000D4
0x0000C8:
    call (instance_destroy[]:int32 )
0x0000D4:
    push -5s
    if !(== 7s:flag 1s) goto 0x000104
0x0000F0:
    push (== self.room 73s)
    goto 0x000108
0x000104:
    push 0s
0x000108:
    if !pop goto 0x000118
0x00010C:
    call (instance_destroy[]:int32 )
0x000118:
    push -5s
    if !(== 7s:flag 0s) goto 0x000148
0x000134:
    push (== self.room 68s)
    goto 0x00014C
0x000148:
    push 0s
0x00014C:
    if !pop goto 0x00015C
0x000150:
    call (instance_destroy[]:int32 )
0x00015C:
    self.sansmode = 0s
0x000168:
    exit
