0x000000:
    self.cogno = 6s
    self.siner = 0s
    self.ck = 0s
    self.active = 0s
    self.offx = 0s
    self.offy = 0s
    if !(!= global.osflavor 1s) goto 0x000074
0x00005C:
    self.offx = -1s
    self.offy = -1s
0x000074:
    exit
