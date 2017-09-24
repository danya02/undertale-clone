0x000000:
    if !(== self.d 0s) goto 0x000020
0x000014:
    call (scr_depth[]:int32 )
0x000020:
    if !(== self.fun 0s) goto 0x00005C
0x000034:
    if !(bool (instance_exists[]:int32 (var 771s))) goto 0x00005C
0x00004C:
    self.image_index = 771.image_index
0x00005C:
    exit
