0x000000:
    self.angspeed = (+ 1.1d (* (sin[]:int32 (/ self.siner (double 6s))) 0.5d))
    self.radius = (+ self.radius (* (sin[]:int32 (/ self.siner (double 12s))) 3s))
    self.siner = (+ self.siner 1s)
    self.i = 0s
    if !(< self.i self.maxnum) goto 0x00023C
0x0000B8:
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.i):glove)) goto 0x000220
0x0000E0:
    push -1s
    stog.gloveang[(+ (int32 self.i):gloveang self.angspeed)] = (int32 self.i)
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
0x000220:
    self.i = (+ self.i 1s)
    goto 0x0000A0
0x00023C:
    if !(< self.x 0s) goto 0x000264
0x000250:
    self.hspeed = (- self.hspeed)
0x000264:
    if !(> self.x self.room_width) goto 0x000290
0x00027C:
    self.hspeed = (- self.hspeed)
0x000290:
    if !(== self.slower 1s) goto 0x0002E8
0x0002A4:
    if !(> self.speed 0s) goto 0x0002DC
0x0002B8:
    self.speed = (- self.speed 0.05d)
    goto 0x0002E8
0x0002DC:
    self.speed = 0s
0x0002E8:
    if !(> self.y 1000s) goto 0x00031C
0x0002FC:
    if !(== self.spec 0s) goto 0x00031C
0x000310:
    call (instance_destroy[]:int32 )
0x00031C:
    if !(> self.y self.room_height) goto 0x000380
0x000334:
    if !(== self.spec 1s) goto 0x00035C
0x000348:
    push (> self.vspeed 0s)
    goto 0x000360
0x00035C:
    push 0s
0x000360:
    if !pop goto 0x000380
0x000364:
    [obj_6glove_boss].vspeed = (- (abs[]:int32 self.vspeed))
0x000380:
    if !(< self.y 0s) goto 0x0003DC
0x000394:
    if !(== self.spec 1s) goto 0x0003BC
0x0003A8:
    push (< self.vspeed 0s)
    goto 0x0003C0
0x0003BC:
    push 0s
0x0003C0:
    if !pop goto 0x0003DC
0x0003C4:
    [obj_6glove_boss].vspeed = (abs[]:int32 self.vspeed)
0x0003DC:
    exit
