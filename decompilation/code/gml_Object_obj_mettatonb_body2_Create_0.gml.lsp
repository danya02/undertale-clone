0x000000:
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.i = 0s
    if !(< self.i 5s) goto 0x000070
0x000038:
    stog.pspeed[(int32 self.i)] = 0s
    self.i = (+ self.i 1s)
    goto 0x000024
0x000070:
    self.siner = 0s
    self.arms = 319s
    self.sineron = 1s
    self.shaker = 0s
    self.hit = 0s
    self.shudderon = 0s
    self.sha = 0s
    self.behind = 0s
    self.trueanim = 0s
    self.tang = 1s
    self.hitted = 0s
0x0000F4:
    exit
