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
    self.spot = 2s
    self.myscore = 0s
    self.workout = 0s
    self.intro = 0s
    if !(== global.entrance 2s) goto 0x000180
0x000118:
    self.spot = 5s
    self.x = 26s
    self.y = (- self.y 80s)
    self.solid = 0s
    self.vspeed = 6s
    self.sprite_index = 1313s
    self.image_speed = 0.25d
0x000180:
    push -5s
    if !(>= 88s:flag 4s) goto 0x0001A8
0x00019C:
    call (instance_destroy[]:int32 )
0x0001A8:
    exit
