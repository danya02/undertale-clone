0x000000:
    if !(== self.ender 1s) goto 0x000048
0x000014:
    if !(> self.image_alpha 0s) goto 0x000048
0x000028:
    self.image_alpha = (- self.image_alpha 0.02d)
0x000048:
    exit
