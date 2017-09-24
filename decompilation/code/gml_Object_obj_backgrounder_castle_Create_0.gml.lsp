0x000000:
    self.scrollspeed = 0.08d
    if (<= 10s 0) goto 0x0000EC
0x00002C:
    push 10s
    self.rr = (round[]:int32 (random[]:int32 (/ self.room_width (double 6s))))
    self.rr = (* self.rr 6s)
    self.star = (instance_create[]:int32 (var 122s) (var 2s) self.rr)
    push (+ 0.9d (random[]:int32 (var 0.3d)))
    stog.size* = (int32 self.star)
    if (bool (- pop 1)) goto 0x00002C
0x0000EC:
    push (- pop 1)
    pop
    if (<= 20s 0) goto 0x0001C8
0x000108:
    push 20s
    self.rr = (round[]:int32 (random[]:int32 (/ self.room_width (double 6s))))
    self.rr = (* self.rr 6s)
    self.star = (instance_create[]:int32 (var 122s) (var 2s) self.rr)
    push (+ 0.5d (random[]:int32 (var 0.4d)))
    stog.size* = (int32 self.star)
    if (bool (- pop 1)) goto 0x000108
0x0001C8:
    push (- pop 1)
    pop
    if (<= 40s 0) goto 0x0002A4
0x0001E4:
    push 40s
    self.rr = (round[]:int32 (random[]:int32 (/ self.room_width (double 6s))))
    self.rr = (* self.rr 6s)
    self.star = (instance_create[]:int32 (var 122s) (var 2s) self.rr)
    push (+ 0.4d (random[]:int32 (var 0.3d)))
    stog.size* = (int32 self.star)
    if (bool (- pop 1)) goto 0x0001E4
0x0002A4:
    push (- pop 1)
    pop
    stog.background_x[4s] = 200s
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000324
0x0002D4:
    pushenv 1570s 0x000320
0x0002DC:
    if !(== self.rsprite 1045s) goto 0x000320
0x0002F0:
    self.rsprite = 1028s
    self.lsprite = 1029s
    self.dsprite = 1031s
    self.usprite = 1030s
0x000320:
    popenv 0x0002DC
0x000324:
    exit
