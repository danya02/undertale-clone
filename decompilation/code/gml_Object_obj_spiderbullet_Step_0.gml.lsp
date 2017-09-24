0x000000:
    if !(bool (instance_exists[]:int32 (var 363s))) goto 0x000100
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
    goto 0x00010C
0x000100:
    call (instance_destroy[]:int32 )
0x00010C:
    exit
