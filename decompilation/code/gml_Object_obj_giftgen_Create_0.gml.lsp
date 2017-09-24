0x000000:
    self.i = 0s
    if (<= 3s 0) goto 0x000280
0x000024:
    push 3s
    push (var 640s)
    push -5s
    stog.blt[(int32 self.i)] = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ (+ 0s:idealborder 10s) (* self.i 55s)))
    push 7s
    push -1s
    stog.dmg* = (int32 (int32 self.i):blt)
    push 70s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):blt)
    push 0s
    push -1s
    stog.image_speed* = (int32 (int32 self.i):blt)
    push (+ -50s (* self.i 50s))
    push -1s
    stog.sinex* = (int32 (int32 self.i):blt)
    push -1s
    push (sin[]:int32 (* (/ (int32 (int32 self.i):blt):sinex (double 100s)) 3.14159265358979d))
    push -5s
    push (/ (* 1s:idealborder (- (- -5s 0s:idealborder) 45s)) (double 2s))
    push (+ (+ -5s 0s:idealborder) 67s)
    push -1s
    stog.x* = (int32 (int32 self.i):blt)
    push -1s
    push (int32 (int32 self.i):blt):x
    push -1s
    stog.xstar* = (int32 (int32 self.i):blt)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000024
0x000280:
    push (- pop 1)
    pop
    self.bltx = (floor[]:int32 (random[]:int32 (var 3s)))
    stog.alarm[0s] = 5s
    self.siner = 0s
0x0002C4:
    exit
