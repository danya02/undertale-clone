0x000000:
    stog.alarm[0s] = 1s
    self.type = 1s
    self.fade = 0s
    if !(== self.type 0s) goto 0x00007C
0x000040:
    self.curang = 0s
    self.ang = 45s
    self.num = 4s
    self.rate = 20s
    self.rr = 150s
0x00007C:
    if !(== self.type 1s) goto 0x0000D8
0x000090:
    self.curang = 0s
    self.ang = 10s
    self.num = 6s
    self.rate = 20s
    self.rr = 180s
    self.fade = 1s
0x0000D8:
    if !(== self.type 2s) goto 0x000134
0x0000EC:
    self.curang = 0s
    self.ang = 12s
    self.num = 1s
    self.rate = 2s
    self.rr = 140s
    self.siner = 0s
0x000134:
    if !(== self.type 3s) goto 0x00018C
0x000148:
    self.curang = 0s
    self.ang = 22.5d
    self.num = 8s
    self.rate = 20s
    self.rr = 150s
0x00018C:
    exit
