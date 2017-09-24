0x000000:
    self.i = (+ self.i 1s)
    push -5s
    stog.cx[(int32 self.i)] = (+ (+ 0s:idealborder 20s) (random[]:int32 (var 116s)))
    push -5s
    stog.cy[(int32 self.i)] = (+ (+ 2s:idealborder 20s) (random[]:int32 (var 117s)))
    push -5s
    push 0s:idealborder
    push (abs[]:int32 (- -1s (int32 self.i):cx))
    push -5s
    self.hdist = (- 1s:idealborder (abs[]:int32 (- -1s (int32 self.i):cx)))
    push -5s
    push 2s:idealborder
    push (abs[]:int32 (- -1s (int32 self.i):cy))
    push -5s
    self.vdist = (- 3s:idealborder (abs[]:int32 (- -1s (int32 self.i):cy)))
    if !(> (abs[]:int32 self.vdist) (abs[]:int32 self.hdist)) goto 0x000234
0x0001B0:
    if !(>= self.vdist 0s) goto 0x0001FC
0x0001C4:
    push -1s
    push (int32 self.i):cy
    self.hd2 = (- -5s 2s:idealborder)
    goto 0x000230
0x0001FC:
    push -5s
    push 3s:idealborder
    self.hd2 = (- -1s (int32 self.i):cy)
0x000230:
    goto 0x0002B4
0x000234:
    if !(>= self.hdist 0s) goto 0x000280
0x000248:
    push -1s
    push (int32 self.i):cx
    self.hd2 = (- -5s 0s:idealborder)
    goto 0x0002B4
0x000280:
    push -5s
    push 1s:idealborder
    self.hd2 = (- -1s (int32 self.i):cx)
0x0002B4:
    self.sum = (scr_monstersum[]:int32 )
    self.hd2 = (* self.hd2 1.5d)
    self.hd1 = (/ (* self.hd2 2s) (double 3s))
    self.cs = (+ 2.4d (random[]:int32 (var 0.2d)))
    if !(> self.sum 1s) goto 0x0003AC
0x00034C:
    self.hd2 = (* self.hd2 1.6d)
    self.hd1 = (* self.hd1 1.6d)
    self.cs = (* self.cs 1.6d)
0x0003AC:
    if !(== self.sum 1s) goto 0x000420
0x0003C0:
    self.hd1 = (* self.hd1 1.8d)
    self.hd2 = (* self.hd2 1.8d)
    self.cs = (* self.cs 2.2d)
0x000420:
    push (var 623s)
    push -1s
    self.b = (instance_create[]:int32 (int32 self.i):cy -1s (- (int32 self.i):cx self.hd2))
    push 0s
    stog.direction* = (int32 self.b)
    push self.i
    stog.iteration* = (int32 self.b)
    push (var 623s)
    push -1s
    self.b = (instance_create[]:int32 (- (int32 self.i):cy self.hd1) -1s (- (int32 self.i):cx self.hd1))
    push 315s
    stog.direction* = (int32 self.b)
    push self.i
    stog.iteration* = (int32 self.b)
    push (var 623s)
    push -1s
    self.b = (instance_create[]:int32 (- (int32 self.i):cy self.hd2) -1s (int32 self.i):cx)
    push 270s
    stog.direction* = (int32 self.b)
    push self.i
    stog.iteration* = (int32 self.b)
    push (var 623s)
    push -1s
    self.b = (instance_create[]:int32 (- (int32 self.i):cy self.hd1) -1s (+ (int32 self.i):cx self.hd1))
    push 225s
    stog.direction* = (int32 self.b)
    push self.i
    stog.iteration* = (int32 self.b)
    push (var 623s)
    push -1s
    self.b = (instance_create[]:int32 (int32 self.i):cy -1s (+ (int32 self.i):cx self.hd2))
    push 180s
    stog.direction* = (int32 self.b)
    push self.i
    stog.iteration* = (int32 self.b)
    push (var 623s)
    push -1s
    self.b = (instance_create[]:int32 (+ (int32 self.i):cy self.hd1) -1s (+ (int32 self.i):cx self.hd1))
    push 135s
    stog.direction* = (int32 self.b)
    push self.i
    stog.iteration* = (int32 self.b)
    push (var 623s)
    push -1s
    self.b = (instance_create[]:int32 (+ (int32 self.i):cy self.hd2) -1s (int32 self.i):cx)
    push 90s
    stog.direction* = (int32 self.b)
    push self.i
    stog.iteration* = (int32 self.b)
    push (var 623s)
    push -1s
    self.b = (instance_create[]:int32 (+ (int32 self.i):cy self.hd1) -1s (- (int32 self.i):cx self.hd1))
    push 45s
    stog.direction* = (int32 self.b)
    push self.i
    stog.iteration* = (int32 self.b)
    [blt_splinter].dmg = 8s
    [blt_splinter].speed = self.cs
    if !(> self.sum 1s) goto 0x0008CC
0x0008C0:
    [blt_splinter].sprite_index = 63s
0x0008CC:
    if !(== self.sum 1s) goto 0x0008F8
0x0008E0:
    [blt_splinter].image_xscale = 2s
    [blt_splinter].image_yscale = 2s
0x0008F8:
    push -1s
    if !(< 2s:alarm 1s) goto 0x00094C
0x000914:
    self.a2i = self.i
    stog.alarm[2s] = (/ self.hd2 self.cs)
    goto 0x0009F0
0x00094C:
    push -1s
    if !(< 3s:alarm 1s) goto 0x0009A0
0x000968:
    self.a3i = self.i
    stog.alarm[3s] = (/ self.hd2 self.cs)
    goto 0x0009F0
0x0009A0:
    push -1s
    if !(< 4s:alarm 1s) goto 0x0009F0
0x0009BC:
    self.a4i = self.i
    stog.alarm[4s] = (/ self.hd2 self.cs)
0x0009F0:
    if !(< self.i 3s) goto 0x000A1C
0x000A04:
    stog.alarm[0s] = self.rate
0x000A1C:
    if !(== self.sum 1s) goto 0x000A5C
0x000A30:
    if !(< self.i 4s) goto 0x000A5C
0x000A44:
    stog.alarm[0s] = self.rate
0x000A5C:
    exit
