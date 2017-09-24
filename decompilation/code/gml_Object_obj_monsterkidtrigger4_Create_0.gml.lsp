0x000000:
    if !(> global.plot 113s) goto 0x000024
0x000014:
    call (instance_destroy[]:int32 )
    exit
0x000024:
    self.con = 0s
    push -5s
    if !(> 91s:flag 0s) goto 0x000058
0x00004C:
    call (instance_destroy[]:int32 )
0x000058:
    self.image_yscale = 20s
0x000064:
    exit
