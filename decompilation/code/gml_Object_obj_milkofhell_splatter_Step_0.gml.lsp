0x000000:
    if !(>= self.image_index 4s) goto 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    exit
