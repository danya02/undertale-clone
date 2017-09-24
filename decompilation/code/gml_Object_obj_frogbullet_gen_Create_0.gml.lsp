0x000000:
    self.dmg = 1s
    self.sum = (scr_monstersum[]:int32 )
    stog.alarm[0s] = 1s
    push (var 383s)
    push -5s
    self.fr1 = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 0s:idealborder (/ (c_borderwidth[]:int32 (var 0s)) (double 2s))))
    push 0s
    stog.side* = (int32 self.fr1)
    push 0s
    stog.image_angle* = (int32 self.fr1)
    push 0s
    stog.lazy* = (int32 self.fr1)
    if !(== self.sum 4s) goto 0x000544
0x0000EC:
    self.no2 = (choose[]:int32 (var 3s) (var 2s) (var 1s))
    push (var 383s)
    push -5s
    self.fr2 = (instance_create[]:int32 (+ 2s:idealborder 20s) -5s (+ 0s:idealborder (/ (c_borderwidth[]:int32 (var 0s)) (double 2s))))
    push self.no2
    stog.side* = (int32 self.fr2)
    push (* self.no2 -90s)
    stog.image_angle* = (int32 self.fr2)
    if !(== self.no2 2s) goto 0x000238
0x0001C8:
    push -5s
    push (+ 0s:idealborder (/ (c_borderwidth[]:int32 (var 0s)) (double 2s)))
    stog.x* = (int32 self.fr2)
    push -5s
    push (+ 2s:idealborder 20s)
    stog.y* = (int32 self.fr2)
0x000238:
    if !(== self.no2 1s) goto 0x0002BC
0x00024C:
    push -5s
    push (+ 0s:idealborder 20s)
    stog.x* = (int32 self.fr2)
    push -5s
    push (+ 2s:idealborder (/ (c_borderheight[]:int32 (var 0s)) (double 2s)))
    stog.y* = (int32 self.fr2)
0x0002BC:
    if !(== self.no2 3s) goto 0x000340
0x0002D0:
    push -5s
    push (- 1s:idealborder 20s)
    stog.x* = (int32 self.fr2)
    push -5s
    push (+ 2s:idealborder (/ (c_borderheight[]:int32 (var 0s)) (double 2s)))
    stog.y* = (int32 self.fr2)
0x000340:
    if !(== self.no2 3s) goto 0x000374
0x000354:
    self.no3 = (choose[]:int32 (var 2s) (var 1s))
0x000374:
    if !(== self.no2 1s) goto 0x0003A8
0x000388:
    self.no3 = (choose[]:int32 (var 3s) (var 2s))
0x0003A8:
    if !(== self.no2 2s) goto 0x0003DC
0x0003BC:
    self.no3 = (choose[]:int32 (var 3s) (var 1s))
0x0003DC:
    if !(== self.no2 99s) goto 0x000544
0x0003F0:
    if !(!= self.no2 1s) goto 0x000410
0x000404:
    self.no3 = 1s
0x000410:
    self.fr3 = (instance_create[]:int32 (var 383s) (var 270s) (var 320s))
    push self.no3
    stog.side* = (int32 self.fr3)
    push (* self.no3 -90s)
    stog.image_angle* = (int32 self.fr3)
    if !(== self.no3 2s) goto 0x0004BC
0x00048C:
    push 300s
    stog.x* = (int32 self.fr3)
    push 270s
    stog.y* = (int32 self.fr3)
0x0004BC:
    if !(== self.no3 1s) goto 0x000500
0x0004D0:
    push 270s
    stog.x* = (int32 self.fr3)
    push 320s
    stog.y* = (int32 self.fr3)
0x000500:
    if !(== self.no3 3s) goto 0x000544
0x000514:
    push 380s
    stog.x* = (int32 self.fr3)
    push 320s
    stog.y* = (int32 self.fr3)
0x000544:
    exit
