0x000000:
    self.hnum = (- (ceil[]:int32 (/ (- 760.x 758.x) (double 22s))) 1s)
    if !(== self.odd 1s) goto 0x0000A4
0x00004C:
    self.a = (instance_create[]:int32 (var 371s) (var 0s) (- 743.x 12s))
    push 0s
    stog.side* = (int32 self.a)
    self.odd = 0s
    goto 0x00012C
0x0000A4:
    self.gg = (* (floor[]:int32 (random[]:int32 self.hnum)) 22s)
    push (var 371s)
    self.a = (instance_create[]:int32 (var 0s) -5s (+ 0s:idealborder self.gg))
    push 0s
    stog.side* = (int32 self.a)
    self.odd = 1s
0x00012C:
    self.gg = (* (floor[]:int32 (random[]:int32 self.hnum)) 22s)
    push (var 371s)
    self.b = (instance_create[]:int32 (var 0s) -5s (+ 0s:idealborder self.gg))
    push 1s
    stog.side* = (int32 self.b)
    self.gg = (* (floor[]:int32 (random[]:int32 self.hnum)) 22s)
    push (var 371s)
    self.c = (instance_create[]:int32 (var 0s) -5s (+ 0s:idealborder self.gg))
    push 1s
    stog.side* = (int32 self.c)
    if !(== (int32 self.c):x (int32 self.b):x) goto 0x00027C
0x000254:
    stog.x* = (+ (int32 self.b):x 22s)
0x00027C:
    push (int32 self.b)
    self.gg = (* (floor[]:int32 (random[]:int32 self.hnum)) 22s)
    push (var 371s)
    self.d = (instance_create[]:int32 (var 0s) -5s (+ 0s:idealborder self.gg))
    if (== (int32 self.d):x (int32 self.b):x) goto 0x000340
0x000310:
    push (== (int32 self.d):x (int32 self.c):x)
    goto 0x000344
0x000340:
    push 1s
0x000344:
    if !pop goto 0x000370
0x000348:
    stog.x* = (+ (int32 self.d):x 22s)
0x000370:
    push (int32 self.d)
    push 0s
    stog.side* = (int32 self.d)
    self.gg = (* (floor[]:int32 (random[]:int32 self.hnum)) 22s)
    push (var 371s)
    self.e = (instance_create[]:int32 (var 0s) -5s (+ 0s:idealborder self.gg))
    if (== (int32 self.e):x (int32 self.b):x) goto 0x00047C
0x00041C:
    if (== (int32 self.e):x (int32 self.c):x) goto 0x00047C
0x00044C:
    push (== (int32 self.e):x (int32 self.d):x)
    goto 0x000480
0x00047C:
    push 1s
0x000480:
    if !pop goto 0x0004AC
0x000484:
    stog.x* = (+ (int32 self.e):x 22s)
0x0004AC:
    push (int32 self.e)
    push 1s
    stog.side* = (int32 self.e)
    stog.alarm[0s] = 33s
0x0004D8:
    exit
