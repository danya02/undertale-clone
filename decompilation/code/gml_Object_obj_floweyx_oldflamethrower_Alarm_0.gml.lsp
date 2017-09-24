0x000000:
    if !(< self.num 6s) goto 0x0000E0
0x000014:
    self.xx = (lengthdir_x[]:int32 self.image_angle (var 165s))
    self.yy = (lengthdir_y[]:int32 self.image_angle (var 165s))
    self.fl = (instance_create[]:int32 (var 1643s) (+ self.y self.yy) (+ self.x self.xx))
    push self.image_angle
    stog.direction* = (int32 self.fl)
    stog.alarm[0s] = 3s
    self.num = (+ self.num 1s)
    goto 0x000100
0x0000E0:
    stog.alarm[0s] = 50s
    self.num = 0s
0x000100:
    exit
