0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    push -5s
    if !(== 7s:flag 0s) goto 0x000088
0x000050:
    if !(bool (instance_exists[]:int32 (var 765s))) goto 0x00007C
0x000068:
    self.image_index = 765.image_index
    goto 0x000088
0x00007C:
    self.image_index = 0s
0x000088:
    push -5s
    if !(== 7s:flag 1s) goto 0x0000DC
0x0000A4:
    if !(bool (instance_exists[]:int32 (var 772s))) goto 0x0000D0
0x0000BC:
    self.image_index = 772.image_index
    goto 0x0000DC
0x0000D0:
    self.image_index = 0s
0x0000DC:
    call (script_execute[]:int32 (var 2s) (var 106s))
0x0000F8:
    exit
