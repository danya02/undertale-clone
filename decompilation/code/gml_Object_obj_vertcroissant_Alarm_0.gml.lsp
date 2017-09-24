0x000000:
    if !(bool (instance_exists[]:int32 (var 363s))) goto 0x000090
0x000018:
    self.op = 363s
    self.y = (+ (int32 self.op):yzero (* (+ (int32 self.op):yamt 1s) (int32 self.op):yspace))
    self.vspeed = (- self.speedfactor)
    goto 0x00009C
0x000090:
    call (instance_destroy[]:int32 )
0x00009C:
    self.visible = 1s
0x0000A8:
    exit
