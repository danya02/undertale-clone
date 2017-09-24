0x000000:
    self.con = 0s
    if !(> global.plot 167s) goto 0x000030
0x000020:
    call (instance_destroy[]:int32 )
    goto 0x00003C
0x000030:
    self.con = 1s
0x00003C:
    exit
