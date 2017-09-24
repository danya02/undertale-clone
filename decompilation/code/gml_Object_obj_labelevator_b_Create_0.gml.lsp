0x000000:
    self.image_xscale = 4s
    self.image_yscale = 3s
    self.rect = 0s
    self.rectaur = 0s
    self.active = 0s
    push -5s
    if !(< 493s:flag 12s) goto 0x00006C
0x000058:
    call (instance_destroy[]:int32 )
    exit
    goto 0x000078
0x00006C:
    self.active = 1s
0x000078:
    self.con = 0s
0x000084:
    exit
