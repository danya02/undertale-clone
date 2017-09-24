0x000000:
    self.myinteract = 0s
    self.read = 0s
    self.image_xscale = 1s
    self.jump = 0s
    self.image_yscale = 1.5d
    self.volume = 1s
    if !(== global.plot 0s) goto 0x000070
0x000064:
    call (instance_destroy[]:int32 )
0x000070:
    exit
