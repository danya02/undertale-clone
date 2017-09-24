0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== self.fun 0s) goto 0x000070
0x000048:
    self.image_index = 0s
    call (script_execute[]:int32 (var 2s) (var 106s))
0x000070:
    exit
