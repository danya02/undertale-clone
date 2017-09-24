0x000000:
    if !(bool (instance_exists[]:int32 (var 363s))) goto 0x0001C8
0x000018:
    self.op = 363s
    if !(== (int32 self.op):type 0s) goto 0x00008C
0x000044:
    self.y = (+ (int32 self.op):yzero (* (- self.choice 1s) (int32 self.op):yspace))
0x00008C:
    if !(== self.side 0s) goto 0x0000EC
0x0000A0:
    self.x = (- (int32 self.op):xmid (* (int32 self.op):xlen 2s))
    self.hspeed = self.speedfactor
0x0000EC:
    if !(== self.side 1s) goto 0x000150
0x000100:
    self.x = (+ (int32 self.op):xmid (* (int32 self.op):xlen 2s))
    self.hspeed = (- self.speedfactor)
0x000150:
    if !(== self.choice 1s) goto 0x000188
0x000164:
    self.vspeed = (/ (abs[]:int32 self.hspeed) (double 2s))
0x000188:
    if !(== self.choice 3s) goto 0x0001C4
0x00019C:
    self.vspeed = (/ (- (abs[]:int32 self.hspeed)) (double 2s))
0x0001C4:
    goto 0x0001D4
0x0001C8:
    call (instance_destroy[]:int32 )
0x0001D4:
    self.visible = 1s
0x0001E0:
    exit
