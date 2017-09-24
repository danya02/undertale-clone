0x000000:
    self.ar = 3s
    if !(< self.image_alpha 1s) goto 0x000040
0x000020:
    self.image_alpha = (+ self.image_alpha 0.2d)
0x000040:
    exit
