0x000000:
    if !(< global.turntimer 3s) goto 0x000038
0x000014:
    pushenv 280s 0x000028
0x00001C:
    self.deactivate = 1s
0x000028:
    popenv 0x00001C
0x00002C:
    call (instance_destroy[]:int32 )
0x000038:
    exit
