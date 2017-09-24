0x000000:
    if !(== self.visible 0s) goto 0x000024
0x000014:
    self.visible = 1s
    goto 0x000030
0x000024:
    self.visible = 0s
0x000030:
    exit
