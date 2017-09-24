0x000000:
    if !(bool (instance_exists[]:int32 (var 1183s))) goto 0x000030
0x000018:
    self.depth = (+ 1183.depth 1s)
0x000030:
    if !(== self.powered 1s) goto 0x000060
0x000044:
    self.siner = (+ self.siner 1s)
    goto 0x00006C
0x000060:
    self.siner = 0s
0x00006C:
    if !(>= self.image_xscale 0s) goto 0x00010C
0x000080:
    self.i = 0s
    if !(< self.i self.image_xscale) goto 0x00010C
0x0000A4:
    call (draw_sprite[]:int32 self.y (+ self.x (* self.i 20s)) (/ self.siner (double 6s)) (var 927s))
    self.i = (+ self.i 1s)
    goto 0x00008C
0x00010C:
    exit
