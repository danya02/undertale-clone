0x000000:
    if !(bool (instance_exists[]:int32 (var 1195s))) goto 0x000050
0x000018:
    if !(< 1195.con 4s) goto 0x000040
0x00002C:
    self.depth = 1000000
    goto 0x00004C
0x000040:
    call (scr_depth[]:int32 )
0x00004C:
    goto 0x00005C
0x000050:
    call (scr_depth[]:int32 )
0x00005C:
    exit
