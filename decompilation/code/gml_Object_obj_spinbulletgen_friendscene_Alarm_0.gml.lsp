0x000000:
    self.radius = 30s
    self.ang = 0s
    self.i = 0s
    if !(< self.i 20s) goto 0x000140
0x000038:
    self.ang = (* self.i 18s)
    self.xx = (lengthdir_x[]:int32 self.ang self.radius)
    self.yy = (lengthdir_y[]:int32 self.ang self.radius)
    self.fp = (instance_create[]:int32 (var 1664s) (+ self.yy self.y) (+ self.xx self.x))
    push self.ang
    stog.direction* = (int32 self.fp)
    push 0.01d
    stog.speed* = (int32 self.fp)
    push 1s
    stog.go* = (int32 self.fp)
    self.i = (+ self.i 1s)
    goto 0x000024
0x000140:
    self.spec = 2s
0x00014C:
    exit
