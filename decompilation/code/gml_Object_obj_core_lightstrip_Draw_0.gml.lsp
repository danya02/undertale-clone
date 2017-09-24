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
    if !(== self.image_xscale 1s) goto 0x0000BC
0x000080:
    call (draw_sprite[]:int32 self.y self.x (/ self.siner (double 6s)) (var 926s))
    goto 0x0000FC
0x0000BC:
    call (draw_sprite[]:int32 self.y (- self.x 20s) (/ self.siner (double 6s)) (var 928s))
0x0000FC:
    exit
