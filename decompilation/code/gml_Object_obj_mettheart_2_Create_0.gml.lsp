0x000000:
    self.s = 0s
    self.sf = 30s
    self.sp = 20s
    self.s2 = 0s
    self.sf2 = 30s
    self.image_speed = 0s
    self.lightning_timer = 20s
    self.shake = 0s
    self.memx = self.x
    self.memy = self.y
    self.life = 800s
    self.movetype = 0s
    self.i = 0s
    self.num = 8s
    if (<= (int32 self.num) 0) goto 0x000234
0x0000D0:
    push (int32 self.num)
    stog.kid[(int32 self.i)] = (instance_create[]:int32 (var 418s) self.y self.x)
    self.greg = (degtorad[]:int32 (/ (* self.i 360s) self.num))
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.i):kid)) goto 0x000204
0x00015C:
    push (- (+ self.x (* (sin[]:int32 self.greg) self.sf2)) 10s)
    push -1s
    stog.x* = (int32 (int32 self.i):kid)
    push (- (+ self.y (* (cos[]:int32 self.greg) self.sf2)) 10s)
    push -1s
    stog.y* = (int32 (int32 self.i):kid)
0x000204:
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0000D0
0x000234:
    push (- pop 1)
    pop
0x000238:
    exit
