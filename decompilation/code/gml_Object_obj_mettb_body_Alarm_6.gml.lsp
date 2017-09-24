0x000000:
    if !(== self.noarm 1s) goto 0x0001B0
0x000014:
    self.xhau1 = (instance_create[]:int32 (var 328s) (+ (+ (- self.y self.legh) 80s) (* (cos[]:int32 (/ self.siner 3.5d)) 2s)) (+ (+ self.x 36s) (sin[]:int32 (/ self.siner 3.5d))))
    self.xhau2 = (instance_create[]:int32 (var 328s) (+ (+ (- self.y self.legh) 80s) (* (cos[]:int32 (/ self.siner 3.5d)) 2s)) (+ (+ self.x 110s) (sin[]:int32 (/ self.siner 3.5d))))
    push (- (int32 self.xhau2):hspeed)
    stog.hspeed* = (int32 self.xhau2)
    push (+ self.depth 2s)
    stog.depth* = (int32 self.xhau1)
    push (+ self.depth 2s)
    stog.depth* = (int32 self.xhau2)
0x0001B0:
    stog.alarm[6s] = 10s
0x0001C4:
    exit
