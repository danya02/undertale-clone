0x000000:
    if !(< self.image_alpha 1s) goto 0x000034
0x000014:
    self.image_alpha = (+ self.image_alpha 0.02d)
0x000034:
    exit
