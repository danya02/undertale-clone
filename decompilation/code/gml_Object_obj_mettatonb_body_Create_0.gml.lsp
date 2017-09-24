0x000000:
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.lefter = -1s
    self.i = 0s
    if !(< self.i 5s) goto 0x00007C
0x000044:
    stog.pspeed[(int32 self.i)] = 0s
    self.i = (+ self.i 1s)
    goto 0x000030
0x00007C:
    self.siner = 0s
    self.arms = 319s
    self.sineron = 1s
    self.shaker = 0s
    self.remx = self.x
0x0000BC:
    exit
