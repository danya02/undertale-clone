0x000000:
    if !(== self.lv 1s) goto 0x000194
0x000014:
    self.hspeed = 5s
    self.amount = (+ self.amount 1s)
    self.amt = 20s
    self.i = 0s
    if !(< self.i self.amt) goto 0x000154
0x000068:
    self.fr = (instance_create[]:int32 (var 472s) self.y self.x)
    push (+ (* self.i (/ (double 360s) self.amt)) self.baseang)
    stog.direction* = (int32 self.fr)
    push 3s
    stog.speed* = (int32 self.fr)
    push -0.15d
    stog.friction* = (int32 self.fr)
    push 2s
    stog.image_xscale* = (int32 self.fr)
    push 2s
    stog.image_yscale* = (int32 self.fr)
    self.i = (+ self.i 1s)
    goto 0x000050
0x000154:
    stog.alarm[0s] = 8s
    if !(> self.amount self.maxamount) goto 0x000194
0x000180:
    stog.alarm[0s] = -1s
0x000194:
    if !(== self.lv 2s) goto 0x000358
0x0001A8:
    self.hspeed = 6s
    self.amount = (+ self.amount 1.2d)
    self.amt = 22s
    self.baseang = (+ self.baseang 1.5d)
    self.i = 0s
    if !(< self.i self.amt) goto 0x000318
0x000224:
    self.fr = (instance_create[]:int32 (var 472s) self.y self.x)
    push (+ (* self.i (/ (double 360s) self.amt)) self.baseang)
    stog.direction* = (int32 self.fr)
    push 3.5d
    stog.speed* = (int32 self.fr)
    push -0.17d
    stog.friction* = (int32 self.fr)
    push 2s
    stog.image_xscale* = (int32 self.fr)
    push 2s
    stog.image_yscale* = (int32 self.fr)
    self.i = (+ self.i 1s)
    goto 0x00020C
0x000318:
    stog.alarm[0s] = 7s
    if !(> self.amount self.maxamount) goto 0x000358
0x000344:
    stog.alarm[0s] = -1s
0x000358:
    if !(== self.lv 3s) goto 0x00050C
0x00036C:
    self.hspeed = 8s
    self.amount = (+ self.amount 1.2d)
    self.amt = 22s
    self.baseang = (+ self.baseang 2s)
    self.i = 0s
    if !(< self.i self.amt) goto 0x0004CC
0x0003E0:
    self.fr = (instance_create[]:int32 (var 472s) self.y self.x)
    push (+ (* self.i (/ (double 360s) self.amt)) self.baseang)
    stog.direction* = (int32 self.fr)
    push 12s
    stog.speed* = (int32 self.fr)
    push 0.06d
    stog.friction* = (int32 self.fr)
    push 2s
    stog.image_xscale* = (int32 self.fr)
    push 2s
    stog.image_yscale* = (int32 self.fr)
    self.i = (+ self.i 1s)
    goto 0x0003C8
0x0004CC:
    stog.alarm[0s] = 6s
    if !(> self.amount self.maxamount) goto 0x00050C
0x0004F8:
    stog.alarm[0s] = -1s
0x00050C:
    exit
