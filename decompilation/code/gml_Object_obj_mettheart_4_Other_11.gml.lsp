0x000000:
    self.movetype = 1s
    self.lightning_timer = 400s
    self.visible = 0s
    if !(== self.lastcon 0s) goto 0x000044
0x000038:
    self.lastcon = 1s
0x000044:
    global.turntimer = 900s
0x000050:
    exit
