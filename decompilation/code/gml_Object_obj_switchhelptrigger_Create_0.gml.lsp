0x000000:
    self.image_yscale = 1s
    self.image_xscale = 100s
    self.conversation = 0s
    push -5s
    if !(!= 51s:flag 2s) goto 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    exit
