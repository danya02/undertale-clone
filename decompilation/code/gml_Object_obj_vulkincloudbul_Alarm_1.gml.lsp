0x000000:
    self.speed = 0s
    self.towarddir = (point_direction[]:int32 (+ 743.y 10s) (+ 743.x 10s) (+ self.y 30s) (+ self.x 30s))
    self.initdir = (floor[]:int32 (random[]:int32 (var 30s)))
    self.i = 0s
    if !(< self.i 7s) goto 0x00014C
0x00009C:
    self.blt = (instance_create[]:int32 (var 330s) (+ self.y 30s) (+ self.x 30s))
    if !(bool (instance_exists[]:int32 self.blt)) goto 0x000130
0x0000EC:
    push (+ (+ (- self.towarddir 110s) self.initdir) (* self.i 30s))
    stog.direction* = (int32 self.blt)
0x000130:
    self.i = (+ self.i 1s)
    goto 0x000088
0x00014C:
    self.firetime = (+ self.firetime 1s)
    if !(< self.firetime 5s) goto 0x000194
0x000178:
    stog.alarm[1s] = self.rate
    goto 0x0001CC
0x000194:
    self.direction = (- (- self.towarddir 110s) (random[]:int32 (var 50s)))
    self.speed = 2s
0x0001CC:
    exit
