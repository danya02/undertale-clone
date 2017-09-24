0x000000:
    push -1s
    self.direction = (- (int32 self.temno):temdir 180s)
    self.speed = 12s
    if !(== self.direction 0s) goto 0x0000EC
0x000048:
    push self.x
    if !(>= -1s (- (int32 self.temno):temx1 6s)) goto 0x0000EC
0x000078:
    stog.temx1[(int32 self.temno)] = 0s
    self.temno = (- self.temno 1s)
    push -1s
    self.x = (- (int32 self.temno):temx2 22s)
    self.y = (+ self.y 4s)
0x0000EC:
    if !(== self.direction 180s) goto 0x00018C
0x000100:
    push self.x
    if !(<= -1s (+ (int32 self.temno):temx1 6s)) goto 0x00018C
0x000130:
    stog.temx1[(int32 self.temno)] = 0s
    self.temno = (- self.temno 1s)
    push -1s
    self.x = (+ (int32 self.temno):temx2 2s)
0x00018C:
    if !(== self.direction 270s) goto 0x00022C
0x0001A0:
    push self.y
    if !(>= -1s (- (int32 self.temno):temy1 6s)) goto 0x00022C
0x0001D0:
    stog.temx1[(int32 self.temno)] = 0s
    self.temno = (- self.temno 1s)
    push -1s
    self.y = (- (int32 self.temno):temy2 22s)
0x00022C:
    if !(== self.direction 90s) goto 0x0002E4
0x000240:
    push self.y
    if !(<= -1s (+ (int32 self.temno):temy1 6s)) goto 0x0002E4
0x000270:
    stog.temx1[(int32 self.temno)] = 0s
    self.temno = (- self.temno 1s)
    self.x = (+ self.x 4s)
    push -1s
    self.y = (+ (int32 self.temno):temy2 2s)
0x0002E4:
    stog.alarm[1s] = 1s
    if !(< self.temno 4s) goto 0x000334
0x00030C:
    if !(< global.turntimer 2s) goto 0x000334
0x000320:
    push (== self.turned 0s)
    goto 0x000338
0x000334:
    push 0s
0x000338:
    if !pop goto 0x000360
0x00033C:
    self.turned = 1s
    global.turntimer = -1s
    global.mnfight = 3s
0x000360:
    if !(> (instance_number[]:int32 self.object_index) 1s) goto 0x000388
0x00037C:
    call (instance_destroy[]:int32 )
0x000388:
    if !(== self.temno 0s) goto 0x0003BC
0x00039C:
    push (< self.y (+ self.ystart 25s))
    goto 0x0003C0
0x0003BC:
    push 0s
0x0003C0:
    if !pop goto 0x000400
0x0003C4:
    self.temno = 0s
    if !(bool (instance_exists[]:int32 (var 294s))) goto 0x0003F4
0x0003E8:
    [obj_tembody].atk = 0s
0x0003F4:
    call (instance_destroy[]:int32 )
0x000400:
    exit
