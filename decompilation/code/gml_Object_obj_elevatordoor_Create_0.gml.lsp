0x000000:
    if !(== self.room 216s) goto 0x000070
0x000014:
    if !(< self.x (/ self.room_width (double 2s))) goto 0x000070
0x000038:
    push -5s
    if !(>= 493s:flag 12s) goto 0x000070
0x000054:
    push -5s
    push (== 7s:flag 0s)
    goto 0x000074
0x000070:
    push 0s
0x000074:
    if !pop goto 0x0001B4
0x000078:
    call (instance_create[]:int32 (var 2s) (+ self.y 30s) self.x)
    call (instance_create[]:int32 (var 2s) (+ self.y 30s) (+ self.x 20s))
    pushenv 789s 0x0000EC
0x0000E0:
    call (instance_destroy[]:int32 )
0x0000EC:
    popenv 0x0000E0
0x0000F0:
    self.myvine = (scr_marker[]:int32 (var 1851s) self.y self.x)
    push self.depth
    stog.depth* = (int32 self.myvine)
    call (instance_create[]:int32 (var 1344s) (var 120s) (var 90s))
    if !(== global.entrance 24s) goto 0x000184
0x00016C:
    push (bool (instance_exists[]:int32 (var 1570s)))
    goto 0x000188
0x000184:
    push 0s
0x000188:
    if !pop goto 0x0001A4
0x00018C:
    [obj_mainchara].x = 90s
    [obj_mainchara].y = 130s
0x0001A4:
    call (instance_destroy[]:int32 )
    exit
0x0001B4:
    self.s1 = (instance_create[]:int32 (var 2s) (+ self.y 30s) self.x)
    self.s2 = (instance_create[]:int32 (var 2s) (+ self.y 30s) (+ self.x 20s))
    self.myinteract = 0s
    self.con = 0s
    self.side = 0s
    if !(== global.entrance 19s) goto 0x000268
0x000254:
    stog.alarm[0s] = 1s
0x000268:
    if !(== self.room 189s) goto 0x000380
0x00027C:
    stog.flag[200s] = 205s
    self.con = 40s
    self.ok = 0s
    push -5s
    if !(== 414s:flag 1s) goto 0x0002D0
0x0002C4:
    self.ok = 1s
0x0002D0:
    push -5s
    if !(> 367s:flag 0s) goto 0x0002F8
0x0002EC:
    self.ok = 1s
0x0002F8:
    if !(== self.ok 1s) goto 0x000318
0x00030C:
    self.con = 43s
0x000318:
    push -5s
    if (== 418s:flag 1s) goto 0x00036C
0x000334:
    push -5s
    if (== 419s:flag 1s) goto 0x00036C
0x000350:
    push -5s
    push (== 420s:flag 1s)
    goto 0x000370
0x00036C:
    push 1s
0x000370:
    if !pop goto 0x000380
0x000374:
    self.con = 0s
0x000380:
    if !(== self.room 210s) goto 0x0003A8
0x000394:
    stog.flag[200s] = 205s
0x0003A8:
    if !(== self.room 217s) goto 0x00041C
0x0003BC:
    self.con = 50s
    self.ok = 0s
    push -5s
    if !(>= 450s:flag 17s) goto 0x0003FC
0x0003F0:
    self.ok = 1s
0x0003FC:
    if !(== self.ok 1s) goto 0x00041C
0x000410:
    self.con = 0s
0x00041C:
    if !(== self.room 183s) goto 0x000448
0x000430:
    self.con = 50s
    self.ok = 0s
0x000448:
    if !(== self.room 168s) goto 0x0004B0
0x00045C:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x0004B0
0x000470:
    self.ff = (instance_create[]:int32 (var 1183s) (var 140s) (var 200s))
    push 3s
    stog.image_yscale* = (int32 self.ff)
0x0004B0:
    if !(== self.room 187s) goto 0x000520
0x0004C4:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x000520
0x0004D8:
    self.ff = (instance_create[]:int32 (var 1183s) (var 100s) (var 80s))
    pushenv (int32 self.ff) 0x00051C
0x000510:
    self.image_yscale = 3s
0x00051C:
    popenv 0x000510
0x000520:
    if !(== self.room 157s) goto 0x000590
0x000534:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x000590
0x000548:
    self.ff = (instance_create[]:int32 (var 1183s) (var 100s) (var 80s))
    pushenv (int32 self.ff) 0x00058C
0x000580:
    self.image_yscale = 3s
0x00058C:
    popenv 0x000580
0x000590:
    if !(== self.room 212s) goto 0x0005BC
0x0005A4:
    global.border = 0s
    call (SCR_BORDERSETUP[]:int32 )
0x0005BC:
    self.buffer = 0s
0x0005C8:
    exit
