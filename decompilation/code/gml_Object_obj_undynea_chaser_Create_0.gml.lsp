0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.STOPPER = 0s
    self.image_speed = 0.334d
    self.dsprite = 1427s
    self.usprite = 1432s
    self.lsprite = 1426s
    self.rsprite = 1425s
    self.dtsprite = 1427s
    self.utsprite = 1432s
    self.ltsprite = 1426s
    self.rtsprite = 1425s
    self.myinteract = 0s
    self.facing = 0s
    self.fun = 0s
    self.npcdir = 0s
    self.d = 0s
    self.con = 0s
    self.active = 1s
    self.new = 1s
    self.sans = 0s
    push -5s
    if !(== 67s:flag 1s) goto 0x000148
0x00013C:
    self.sans = 1s
0x000148:
    if !(== self.room 134s) goto 0x000168
0x00015C:
    self.new = 0s
0x000168:
    self.i = 0s
    if !(< self.i 60s) goto 0x0001E4
0x000188:
    stog.rememberx[(int32 self.i)] = self.x
    stog.remembery[(int32 self.i)] = self.y
    self.i = (+ self.i 1s)
    goto 0x000174
0x0001E4:
    stog.flag[17s] = 1s
    if !(> global.plot 121s) goto 0x000218
0x00020C:
    call (instance_destroy[]:int32 )
0x000218:
    if !(== self.room 135s) goto 0x000284
0x00022C:
    if !(== global.entrance 1s) goto 0x000258
0x000240:
    self.y = (+ 1570.y 100s)
0x000258:
    if !(== global.entrance 2s) goto 0x000284
0x00026C:
    self.y = (- 1570.y 100s)
0x000284:
    if !(== self.room 136s) goto 0x0002F0
0x000298:
    if !(== global.entrance 1s) goto 0x0002C4
0x0002AC:
    self.x = (- 1570.x 100s)
0x0002C4:
    if !(== global.entrance 2s) goto 0x0002F0
0x0002D8:
    self.x = (+ 1570.x 100s)
0x0002F0:
    if !(== self.room 137s) goto 0x00035C
0x000304:
    if !(== global.entrance 1s) goto 0x000330
0x000318:
    self.x = (- 1570.x 60s)
0x000330:
    if !(== global.entrance 2s) goto 0x00035C
0x000344:
    self.x = (+ 1570.x 60s)
0x00035C:
    exit
