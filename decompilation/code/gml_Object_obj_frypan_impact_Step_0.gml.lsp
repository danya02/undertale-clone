0x000000:
    self.image_angle = (+ self.image_angle self.ang)
    if !(== self.form 0s) goto 0x000050
0x000030:
    self.size = (+ self.size 0.3d)
0x000050:
    if !(> self.size 2.8d) goto 0x0000B8
0x00006C:
    if !(== (instance_exists[]:int32 (var 184s)) 0s) goto 0x0000AC
0x000088:
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
0x0000AC:
    self.form = 1s
0x0000B8:
    if !(== self.form 1s) goto 0x00010C
0x0000CC:
    self.size = (- self.size 0.6d)
    self.image_alpha = (- self.image_alpha 0.2d)
0x00010C:
    self.image_xscale = self.size
    self.image_yscale = self.size
    self.siner = (+ self.siner 1s)
0x000144:
    exit
