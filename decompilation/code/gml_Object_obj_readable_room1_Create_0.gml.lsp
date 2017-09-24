0x000000:
    self.myinteract = 0s
    self.read = 0s
    self.specialread = 0s
    self.cantalk = 1s
    self.mydialoguer = 438274832
    self.image_xscale = 1s
    self.image_yscale = 1s
    if !(< self.room 40s) goto 0x00008C
0x00006C:
    if !(== global.plot 0s) goto 0x00008C
0x000080:
    call (instance_destroy[]:int32 )
0x00008C:
    exit
