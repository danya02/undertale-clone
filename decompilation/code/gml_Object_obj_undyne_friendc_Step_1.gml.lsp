0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== self.fun 0s) goto 0x00009C
0x000048:
    if !(bool (instance_exists[]:int32 (var 777s))) goto 0x000074
0x000060:
    self.image_index = 777.image_index
    goto 0x000080
0x000074:
    self.image_index = 0s
0x000080:
    call (script_execute[]:int32 (var 2s) (var 106s))
0x00009C:
    exit
