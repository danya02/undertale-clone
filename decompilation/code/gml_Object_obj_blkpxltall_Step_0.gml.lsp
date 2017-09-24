0x000000:
    if !(== (instance_exists[]:int32 self.dt) 0s) goto 0x000028
0x00001C:
    call (instance_destroy[]:int32 )
0x000028:
    exit
