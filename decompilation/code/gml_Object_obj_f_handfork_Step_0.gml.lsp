0x000000:
    if !(< self.size 1s) goto 0x000034
0x000014:
    self.size = (+ self.size 0.025d)
0x000034:
    if !(> self.hspeed 0s) goto 0x000058
0x000048:
    self.image_xscale = self.size
0x000058:
    if !(< self.hspeed 0s) goto 0x000080
0x00006C:
    self.image_xscale = (- self.size)
0x000080:
    self.image_yscale = self.size
0x000090:
    exit
