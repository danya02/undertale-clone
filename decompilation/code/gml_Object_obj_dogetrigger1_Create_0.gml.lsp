0x000000:
    if !(>= global.plot 42s) goto 0x000024
0x000014:
    call (instance_destroy[]:int32 )
    goto 0x000054
0x000024:
    self.image_yscale = 9999s
    self.conversation = 0s
    self.x = (- self.x 2s)
0x000054:
    exit
