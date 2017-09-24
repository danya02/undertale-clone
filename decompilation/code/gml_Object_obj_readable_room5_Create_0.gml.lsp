0x000000:
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.read = 0s
    if !(== self.room 154s) goto 0x000064
0x000044:
    if !(< global.plot 135s) goto 0x000064
0x000058:
    call (instance_destroy[]:int32 )
0x000064:
    exit
