0x000000:
    if !(== self.form 0s) goto 0x000034
0x000014:
    self.size = (+ self.size 0.5d)
0x000034:
    if !(> self.size 3.5d) goto 0x00005C
0x000050:
    self.form = 1s
0x00005C:
    if !(== self.form 1s) goto 0x0000D8
0x000070:
    self.image_alpha = (- self.image_alpha 0.2d)
    self.size = (- self.size 0.3d)
    if !(< self.image_alpha 0.1d) goto 0x0000D8
0x0000CC:
    call (instance_destroy[]:int32 )
0x0000D8:
    self.image_xscale = self.size
    self.image_yscale = self.size
0x0000F8:
    exit
