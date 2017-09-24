0x000000:
    self.maxnum = 7s
    self.angspeed = 3s
    self.ourang = 0s
    self.radius = 90s
    self.radiusspeed = 0s
    self.siner = 0s
    self.slower = 0s
    self.spec = 0s
    self.i = 0s
    if !(< self.i self.maxnum) goto 0x000258
0x000084:
    stog.glove[(int32 self.i)] = (instance_create[]:int32 (var 1615s) self.y self.x)
    stog.gloveang[(int32 self.i)] = (/ (* self.i 360s) self.maxnum)
    push -1s
    push (int32 self.i):gloveang
    push -1s
    stog.ang* = (int32 (int32 self.i):glove)
    push self.x
    push (+ -1s (lengthdir_x[]:int32 (+ (int32 self.i):gloveang self.ourang) self.radius))
    push -1s
    stog.x* = (int32 (int32 self.i):glove)
    push self.y
    push (+ -1s (lengthdir_y[]:int32 (+ (int32 self.i):gloveang self.ourang) self.radius))
    push -1s
    stog.y* = (int32 (int32 self.i):glove)
    push -1s
    push (+ (int32 self.i):gloveang self.ourang)
    push -1s
    stog.image_angle* = (int32 (int32 self.i):glove)
    self.i = (+ self.i 1s)
    goto 0x00006C
0x000258:
    self.vspeed = 2.5d
0x00026C:
    exit
