0x000000:
    self.dsprite = 1952s
    self.usprite = 1951s
    self.lsprite = 1952s
    self.rsprite = 1951s
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
    push -5s
    if !(== 269s:flag 1s) goto 0x0000E4
0x0000D8:
    self.sprite_index = 1949s
0x0000E4:
    self.con = 0s
0x0000F0:
    exit
