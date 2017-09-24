0x000000:
    self.image_yscale = 100s
    self.con = 0s
    if (> global.plot 121s) goto 0x000048
0x00002C:
    push -5s
    push (!= 350s:flag 0s)
    goto 0x00004C
0x000048:
    push 1s
0x00004C:
    if !pop goto 0x00005C
0x000050:
    call (instance_destroy[]:int32 )
0x00005C:
    self.walked = 0s
0x000068:
    exit
