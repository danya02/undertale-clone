0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(bool (instance_exists[]:int32 (var 765s))) goto 0x000060
0x00004C:
    self.image_index = 765.image_index
    goto 0x00006C
0x000060:
    self.image_index = 0s
0x00006C:
    call (script_execute[]:int32 (var 2s) (var 106s))
0x000088:
    exit
