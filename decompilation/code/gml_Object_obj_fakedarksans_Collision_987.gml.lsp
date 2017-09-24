0x000000:
    if !(== self.broken 0s) goto 0x000070
0x000014:
    self.broken = 1s
    self.image_index = 1s
    call (instance_destroy[]:int32 )
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x000070
0x000050:
    pushenv (int32 self.iii) 0x00006C
0x000060:
    call (instance_destroy[]:int32 )
0x00006C:
    popenv 0x000060
0x000070:
    exit
