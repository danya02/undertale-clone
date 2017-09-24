0x000000:
    push -5s
    if !(== 67s:flag 1s) goto 0x00002C
0x00001C:
    call (instance_destroy[]:int32 )
    exit
0x00002C:
    self.dsprite = 1313s
    self.usprite = 1325s
    self.lsprite = 1330s
    self.rsprite = 1328s
    self.dtsprite = 1316s
    self.utsprite = 1327s
    self.ltsprite = 1334s
    self.rtsprite = 1335s
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 270s
    self.talkedto = 0s
    self.image_speed = 0s
    self.fun = 0s
    self.intro = 0s
    push -5s
    if !(>= 88s:flag 4s) goto 0x00010C
0x0000FC:
    call (instance_destroy[]:int32 )
    exit
0x00010C:
    exit
