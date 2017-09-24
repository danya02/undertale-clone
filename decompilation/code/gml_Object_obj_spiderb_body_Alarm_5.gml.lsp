0x000000:
    if !(== self.mode 1s) goto 0x000128
0x000014:
    call (instance_create[]:int32 (var 361s) (+ (+ self.y 130s) (* (cos[]:int32 (/ self.sinert (double 5s))) 2s)) (- self.x 50s))
    self.g = (instance_create[]:int32 (var 361s) (+ (+ self.y 130s) (* (cos[]:int32 (/ self.sinert (double 5s))) 2s)) (+ self.x 140s))
    push (- (int32 self.g):hspeed)
    stog.hspeed* = (int32 self.g)
    push 220s
    stog.gravity_direction* = (int32 self.g)
    stog.alarm[5s] = 4s
0x000128:
    exit
