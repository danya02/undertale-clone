0x000000:
    self.truetype = self.type
    self.active = 1s
    if !(== self.truetype 0s) goto 0x00016C
0x000030:
    self.i = 0s
    if !(< self.i 5s) goto 0x00016C
0x000050:
    call (event_user[]:int32 (var 0s))
    stog.cb_a[(int32 self.i)] = self.cb
    push (+ 760s (* 40s self.i))
    push -1s
    stog.x* = (int32 (int32 self.i):cb_a)
    push (+ self.y (* 40s self.i))
    push -1s
    stog.y* = (int32 (int32 self.i):cb_a)
    push -10s
    push -1s
    stog.hspeed* = (int32 (int32 self.i):cb_a)
    push 1s
    push -1s
    stog.action* = (int32 (int32 self.i):cb_a)
    self.i = (+ self.i 1s)
    goto 0x00003C
0x00016C:
    if !(== self.truetype 1s) goto 0x0002BC
0x000180:
    self.i = 0s
    if !(< self.i 5s) goto 0x0002BC
0x0001A0:
    call (event_user[]:int32 (var 0s))
    stog.cb_a[(int32 self.i)] = self.cb
    push (- -120s (* 40s self.i))
    push -1s
    stog.x* = (int32 (int32 self.i):cb_a)
    push (+ self.y (* 40s self.i))
    push -1s
    stog.y* = (int32 (int32 self.i):cb_a)
    push 10s
    push -1s
    stog.hspeed* = (int32 (int32 self.i):cb_a)
    push 1s
    push -1s
    stog.action* = (int32 (int32 self.i):cb_a)
    self.i = (+ self.i 1s)
    goto 0x00018C
0x0002BC:
    if !(== self.truetype 2s) goto 0x0004BC
0x0002D0:
    call (event_user[]:int32 (var 0s))
    self.cb_a = self.cb
    pushenv (int32 self.cb_a) 0x00031C
0x000304:
    self.width = (string_width[]:int32 self.text)
0x00031C:
    popenv 0x000304
0x000320:
    push (- (- self.x (int32 self.cb_a):width) 30s)
    stog.x* = (int32 self.cb_a)
    push -200s
    stog.y* = (int32 self.cb_a)
    push 12s
    stog.vspeed* = (int32 self.cb_a)
    push 2s
    stog.action* = (int32 self.cb_a)
    push 1s
    stog.stretch* = (int32 self.cb_a)
    call (event_user[]:int32 (var 0s))
    self.cb_b = self.cb
    pushenv (int32 self.cb_b) 0x000408
0x0003F0:
    self.width = (string_width[]:int32 self.text)
0x000408:
    popenv 0x0003F0
0x00040C:
    push (+ (+ self.x (int32 self.cb_b):width) 30s)
    stog.x* = (int32 self.cb_b)
    push -200s
    stog.y* = (int32 self.cb_b)
    push 12s
    stog.vspeed* = (int32 self.cb_b)
    push 2s
    stog.action* = (int32 self.cb_b)
    push 1s
    stog.stretch* = (int32 self.cb_b)
    stog.alarm[0s] = 4s
0x0004BC:
    if !(== self.truetype 3s) goto 0x000724
0x0004D0:
    if !(> self.y 240s) goto 0x0004F4
0x0004E4:
    self.myaa = 3s
    goto 0x000500
0x0004F4:
    self.myaa = -3s
0x000500:
    self.angrand = (random[]:int32 (var 360s))
    self.i = 0s
    if !(< self.i 10s) goto 0x000724
0x000538:
    call (event_user[]:int32 (var 0s))
    stog.cb_a[(int32 self.i)] = self.cb
    push self.myaa
    push -1s
    stog.aa* = (int32 (int32 self.i):cb_a)
    push 2s
    push -1s
    stog.stretch* = (int32 (int32 self.i):cb_a)
    push 55s
    push -1s
    stog.stretchfactor* = (int32 (int32 self.i):cb_a)
    push (+ (* (/ self.i (double 10s)) 360s) self.angrand)
    push -1s
    stog.image_angle* = (int32 (int32 self.i):cb_a)
    push self.x
    push -1s
    stog.x* = (int32 (int32 self.i):cb_a)
    push self.y
    push -1s
    stog.y* = (int32 (int32 self.i):cb_a)
    push -1s
    pushenv (int32 (int32 self.i):cb_a) 0x000704
0x0006AC:
    self.x = (+ self.x (lengthdir_x[]:int32 self.image_angle (var 55s)))
    self.y = (+ self.y (lengthdir_y[]:int32 self.image_angle (var 60s)))
0x000704:
    popenv 0x0006AC
0x000708:
    self.i = (+ self.i 1s)
    goto 0x000524
0x000724:
    exit
