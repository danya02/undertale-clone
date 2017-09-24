0x000000:
    self.visible = 1s
    if !(== self.flip 1s) goto 0x000030
0x000020:
    self.image_xscale = -2s
    goto 0x00003C
0x000030:
    self.image_xscale = 2s
0x00003C:
    exit
