0x000000:
    self.edge = 1s
    self.image = 2361s
    self.w0 = 800s
    self.h0 = 800s
    self.rotspeed = -2s
    self.part = 40s
    self.col = 0s
    self.vk = 1s
    self.image_alpha = 0s
    self.flashtime = 660s
    self.ftimer = 0s
    self.falpha = 0s
    push -5s
    if !(> 502s:flag 0s) goto 0x0000CC
0x0000AC:
    self.ftimer = 9999s
    self.image_alpha = 0.5d
0x0000CC:
    exit
