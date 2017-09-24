0x000000:
    if !(bool (instance_exists[]:int32 (var 363s))) goto 0x000164
0x000018:
    self.op = 363s
    if !(== (int32 self.op):type 0s) goto 0x00008C
0x000044:
    self.y = (+ (int32 self.op):yzero (* (- self.choice 1s) (int32 self.op):yspace))
0x00008C:
    if !(== self.side 0s) goto 0x0000F4
0x0000A0:
    self.x = (- (- (int32 self.op):xmid (* (int32 self.op):xlen 2s)) 40s)
    self.hspeed = self.speedfactor
0x0000F4:
    if !(== self.side 1s) goto 0x000160
0x000108:
    self.x = (+ (+ (int32 self.op):xmid (* (int32 self.op):xlen 2s)) 40s)
    self.hspeed = (- self.speedfactor)
0x000160:
    goto 0x000170
0x000164:
    call (instance_destroy[]:int32 )
0x000170:
    self.visible = 1s
0x00017C:
    exit
