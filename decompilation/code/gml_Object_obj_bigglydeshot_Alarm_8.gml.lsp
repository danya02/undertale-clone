0x000000:
    call (move_towards_point[]:int32 (var 9s) (+ 743.y 8s) (+ 743.x 8s))
    self.i = 0s
    if !(< self.i 5s) goto 0x0000E8
0x000054:
    self.gl = (instance_create[]:int32 (var 225s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.gl)) goto 0x0000CC
0x000094:
    push (+ (- self.direction 28s) (* self.i 14s))
    stog.direction* = (int32 self.gl)
0x0000CC:
    self.i = (+ self.i 1s)
    goto 0x000040
0x0000E8:
    self.i = 0s
    if !(< self.i 5s) goto 0x0001CC
0x000108:
    self.gl = (instance_create[]:int32 (var 225s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.gl)) goto 0x0001B0
0x000148:
    push (+ (- self.direction 28s) (* self.i 14s))
    stog.direction* = (int32 self.gl)
    stog.speed* = (- (int32 self.gl):speed 1.5d)
0x0001B0:
    push (int32 self.gl)
    self.i = (+ self.i 1s)
    goto 0x0000F4
0x0001CC:
    self.i = 0s
    if !(< self.i 5s) goto 0x0002A8
0x0001EC:
    self.gl = (instance_create[]:int32 (var 225s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.gl)) goto 0x00028C
0x00022C:
    push (+ (- self.direction 28s) (* self.i 14s))
    stog.direction* = (int32 self.gl)
    stog.speed* = (- (int32 self.gl):speed 3s)
0x00028C:
    push (int32 self.gl)
    self.i = (+ self.i 1s)
    goto 0x0001D8
0x0002A8:
    pushenv 225s 0x0002BC
0x0002B0:
    self.friction = 0s
0x0002BC:
    popenv 0x0002B0
0x0002C0:
    exit
