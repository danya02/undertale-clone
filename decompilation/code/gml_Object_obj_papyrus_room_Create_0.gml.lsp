0x000000:
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
    self.dir = 0s
    self.rid = 0s
    push -5s
    if !(== 67s:flag 1s) goto 0x0000EC
0x0000DC:
    call (instance_destroy[]:int32 )
    exit
0x0000EC:
    if !(== self.room 68s) goto 0x000220
0x000100:
    self.dir = 1s
    push -5s
    if !(>= 88s:flag 4s) goto 0x00013C
0x000128:
    push (<= global.plot 105s)
    goto 0x000140
0x00013C:
    push 0s
0x000140:
    if !pop goto 0x000154
0x000144:
    call (instance_destroy[]:int32 )
    exit
0x000154:
    push -5s
    if !(== 354s:flag 2s) goto 0x00018C
0x000170:
    push -5s
    push (== 389s:flag 0s)
    goto 0x000190
0x00018C:
    push 0s
0x000190:
    if !pop goto 0x0001A4
0x000194:
    call (instance_destroy[]:int32 )
    exit
0x0001A4:
    push -5s
    if !(== 7s:flag 1s) goto 0x0001D0
0x0001C0:
    call (instance_destroy[]:int32 )
    exit
0x0001D0:
    push -5s
    if !(>= 389s:flag 3s) goto 0x000220
0x0001EC:
    call (instance_create[]:int32 (var 1313s) (- self.y 14s) (- self.x 34s))
0x000220:
    if !(== self.room 117s) goto 0x0002DC
0x000234:
    self.d = 0s
    push -5s
    if !(< 354s:flag 2s) goto 0x000268
0x00025C:
    self.d = 1s
0x000268:
    push -5s
    if !(< 88s:flag 4s) goto 0x000290
0x000284:
    self.d = 1s
0x000290:
    push -5s
    if !(> 389s:flag 0s) goto 0x0002B8
0x0002AC:
    self.d = 1s
0x0002B8:
    if !(== self.d 1s) goto 0x0002DC
0x0002CC:
    call (instance_destroy[]:int32 )
    exit
0x0002DC:
    exit
