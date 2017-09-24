0x000000:
    if !(== self.big 1s) goto 0x000050
0x000014:
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.aa = 2s
    self.speed = 8s
    self.counter = -28s
0x000050:
    exit
