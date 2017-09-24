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
    self.con = 0s
    self.rid = 0s
    push -5s
    if !(>= 88s:flag 4s) goto 0x000124
0x000108:
    push -5s
    push (== 7s:flag 0s)
    goto 0x000128
0x000124:
    push 0s
0x000128:
    if !pop goto 0x00015C
0x00012C:
    call (instance_create[]:int32 (var 1026s) self.y self.x)
    call (instance_destroy[]:int32 )
0x00015C:
    push -5s
    if !(!= 88s:flag 1s) goto 0x000184
0x000178:
    call (instance_destroy[]:int32 )
0x000184:
    exit
