0x000000:
    self.outside = (+ self.outside 1s)
    if !(> self.outside 450s) goto 0x000038
0x00002C:
    call (instance_destroy[]:int32 )
0x000038:
    exit
