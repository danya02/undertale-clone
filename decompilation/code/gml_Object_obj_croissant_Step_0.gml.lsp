0x000000:
    if !(bool (instance_exists[]:int32 (var 363s))) goto 0x000198
0x000018:
    self.op = 363s
    if !(== self.side 0s) goto 0x000070
0x000038:
    self.hspeed = (- self.hspeed 0.25d)
    self.image_angle = (+ self.image_angle 8s)
0x000070:
    if !(== self.side 1s) goto 0x0000BC
0x000084:
    self.hspeed = (+ self.hspeed 0.25d)
    self.image_angle = (- self.image_angle 8s)
0x0000BC:
    if !(> self.hspeed 0s) goto 0x000114
0x0000D0:
    push (> self.x (+ (int32 self.op):xmid (* (int32 self.op):xlen 5s)))
    goto 0x000118
0x000114:
    push 0s
0x000118:
    if !pop goto 0x000128
0x00011C:
    call (instance_destroy[]:int32 )
0x000128:
    if !(< self.hspeed 0s) goto 0x000180
0x00013C:
    push (< self.x (- (int32 self.op):xmid (* (int32 self.op):xlen 5s)))
    goto 0x000184
0x000180:
    push 0s
0x000184:
    if !pop goto 0x000194
0x000188:
    call (instance_destroy[]:int32 )
0x000194:
    goto 0x0001A4
0x000198:
    call (instance_destroy[]:int32 )
0x0001A4:
    exit
