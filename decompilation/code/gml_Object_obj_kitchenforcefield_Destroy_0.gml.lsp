0x000000:
    if !(== self.sold 1s) goto 0x00004C
0x000014:
    if !(bool (instance_exists[]:int32 self.solid1)) goto 0x00004C
0x00002C:
    pushenv (int32 self.solid1) 0x000048
0x00003C:
    call (instance_destroy[]:int32 )
0x000048:
    popenv 0x00003C
0x00004C:
    exit
