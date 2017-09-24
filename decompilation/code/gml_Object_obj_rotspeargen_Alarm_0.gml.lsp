0x000000:
    if !(== self.type 0s) goto 0x00005C
0x000014:
    self.curang = 0s
    self.rotspeed = 8s
    self.rotmin = 2s
    self.num = 7s
    self.rate = 20s
    self.rr = 220s
0x00005C:
    if !(== self.type 1s) goto 0x0000B8
0x000070:
    self.curang = 0s
    self.rotspeed = -8s
    self.rotmin = -2s
    self.num = 7s
    self.rate = 20s
    self.rr = 220s
0x0000B8:
    if !(== self.type 2s) goto 0x000120
0x0000CC:
    self.curang = (random[]:int32 (var 360s))
    self.rotspeed = 8s
    self.rotmin = 2s
    self.num = 8s
    self.rate = 20s
    self.rr = 230s
0x000120:
    if !(== self.type 3s) goto 0x000188
0x000134:
    self.curang = (random[]:int32 (var 360s))
    self.rotspeed = -8s
    self.rotmin = -2s
    self.num = 8s
    self.rate = 20s
    self.rr = 230s
0x000188:
    self.i = 0s
    if !(< self.i self.num) goto 0x000340
0x0001AC:
    self.hx = (+ (+ self.x 8s) (lengthdir_x[]:int32 (+ self.curang (* (/ self.i self.num) 360s)) self.rr))
    self.hy = (+ (+ self.y 8s) (lengthdir_y[]:int32 (+ self.curang (* (/ self.i self.num) 360s)) self.rr))
    stog.spear[(int32 self.i)] = (instance_create[]:int32 (var 278s) self.hy self.hx)
    push self.id
    push -1s
    stog.parent* = (int32 (int32 self.i):spear)
    push -1s
    pushenv (int32 (int32 self.i):spear) 0x000320
0x0002D8:
    self.image_angle = (point_direction[]:int32 (int32 self.parent):y (int32 self.parent):x self.y self.x)
0x000320:
    popenv 0x0002D8
0x000324:
    self.i = (+ self.i 1s)
    goto 0x000194
0x000340:
    self.active = 1s
0x00034C:
    exit
