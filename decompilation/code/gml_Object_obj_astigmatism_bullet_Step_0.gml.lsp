0x000000:
    self.siner = (+ self.siner 1s)
    self.y = (+ self.y (* (cos[]:int32 (/ self.siner (double 3s))) 0.6d))
    self.asiner = (+ self.asiner self.av)
    if !(bool (instance_exists[]:int32 self.kid)) goto 0x000124
0x00008C:
    push (+ (+ -2s self.x) (* (sin[]:int32 (/ self.asiner (double 16s))) self.factor1))
    stog.x* = (int32 self.kid)
    push (+ self.y (* (cos[]:int32 (/ self.asiner (double 16s))) self.factor1))
    stog.y* = (int32 self.kid)
0x000124:
    if !(bool (instance_exists[]:int32 self.kid2)) goto 0x0001CC
0x00013C:
    push (+ self.x (* (sin[]:int32 (/ self.asiner (double 16s))) self.factor2))
    stog.x* = (int32 self.kid2)
    push (+ self.y (* (cos[]:int32 (/ self.asiner (double 16s))) self.factor2))
    stog.y* = (int32 self.kid2)
0x0001CC:
    if !(< self.x 0s) goto 0x0001EC
0x0001E0:
    call (instance_destroy[]:int32 )
0x0001EC:
    if !(< self.image_alpha 1s) goto 0x000214
0x000200:
    push (== self.off 0s)
    goto 0x000218
0x000214:
    push 0s
0x000218:
    if !pop goto 0x00023C
0x00021C:
    self.image_alpha = (+ self.image_alpha 0.1d)
0x00023C:
    push self.x
    if !(< -5s (- 0s:idealborder 30s)) goto 0x000270
0x000264:
    self.off = 1s
0x000270:
    if !(== self.off 1s) goto 0x0002A4
0x000284:
    self.image_alpha = (- self.image_alpha 0.05d)
0x0002A4:
    if !(< self.image_alpha 0.1d) goto 0x0002D4
0x0002C0:
    push (== self.off 1s)
    goto 0x0002D8
0x0002D4:
    push 0s
0x0002D8:
    if !pop goto 0x0002E8
0x0002DC:
    call (instance_destroy[]:int32 )
0x0002E8:
    exit
