0x000000:
    if !(> global.plot 103s) goto 0x00003C
0x000014:
    pushenv 1481s 0x000028
0x00001C:
    call (instance_destroy[]:int32 )
0x000028:
    popenv 0x00001C
0x00002C:
    call (instance_destroy[]:int32 )
    goto 0x000054
0x00003C:
    self.conversation = 0s
    self.image_yscale = 999s
0x000054:
    exit
