0x000000:
    self.s = 0s
    self.sf = 40s
    self.sp = 15s
    self.s2 = 0s
    self.sf2 = 40s
    self.s3 = 88s
    self.image_speed = 0s
    self.lightning_timer = 20s
    self.shake = 0s
    self.memx = self.x
    self.memy = self.y
    self.life = 700s
    self.movetype = 0s
    self.i = 0s
    self.num = 2s
    if (<= (int32 self.num) 0) goto 0x000218
0x0000DC:
    push (int32 self.num)
    stog.kid[(int32 self.i)] = (instance_create[]:int32 (var 419s) self.y self.x)
    self.greg = (degtorad[]:int32 (/ (* self.i 360s) self.num))
    push (- (+ self.x (* (sin[]:int32 self.greg) self.sf2)) 14s)
    push -1s
    stog.x* = (int32 (int32 self.i):kid)
    push (- (+ self.y (* (cos[]:int32 self.greg) self.sf2)) 15s)
    push -1s
    stog.y* = (int32 (int32 self.i):kid)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0000DC
0x000218:
    push (- pop 1)
    pop
0x00021C:
    exit
