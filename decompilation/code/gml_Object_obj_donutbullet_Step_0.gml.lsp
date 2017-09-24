0x000000:
    if !(bool (instance_exists[]:int32 (var 363s))) goto 0x000284
0x000018:
    self.op = 363s
    if !(> self.hspeed 0s) goto 0x00007C
0x000038:
    push (> self.x (+ (int32 self.op):xmid (* (int32 self.op):xlen 2s)))
    goto 0x000080
0x00007C:
    push 0s
0x000080:
    if !pop goto 0x000090
0x000084:
    call (instance_destroy[]:int32 )
0x000090:
    if !(< self.hspeed 0s) goto 0x0000E8
0x0000A4:
    push (< self.x (- (int32 self.op):xmid (* (int32 self.op):xlen 2s)))
    goto 0x0000EC
0x0000E8:
    push 0s
0x0000EC:
    if !pop goto 0x0000FC
0x0000F0:
    call (instance_destroy[]:int32 )
0x0000FC:
    if !(< self.image_yscale 1s) goto 0x000130
0x000110:
    self.image_yscale = (+ self.image_yscale 0.1d)
0x000130:
    if !(> self.vspeed 0s) goto 0x0001A8
0x000144:
    push (> self.y (+ (+ (int32 self.op):yzero (* (- (int32 self.op):yamt 1s) (int32 self.op):yspace)) 10s))
    goto 0x0001AC
0x0001A8:
    push 0s
0x0001AC:
    if !pop goto 0x0001F4
0x0001B0:
    self.y = (- self.y self.vspeed)
    self.vspeed = (- self.vspeed)
    self.image_yscale = 0.6d
0x0001F4:
    if !(< self.vspeed 0s) goto 0x000234
0x000208:
    push (< self.y (- (int32 self.op):yzero 10s))
    goto 0x000238
0x000234:
    push 0s
0x000238:
    if !pop goto 0x000280
0x00023C:
    self.y = (- self.y self.vspeed)
    self.vspeed = (- self.vspeed)
    self.image_yscale = 0.6d
0x000280:
    goto 0x000290
0x000284:
    call (instance_destroy[]:int32 )
0x000290:
    exit
