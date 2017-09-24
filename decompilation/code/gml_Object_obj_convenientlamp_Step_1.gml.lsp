0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(<= global.plot 35s) goto 0x000058
0x000048:
    self.solid = 0s
    goto 0x000064
0x000058:
    self.solid = 1s
0x000064:
    if !(bool (instance_exists[]:int32 (var 1355s))) goto 0x000094
0x00007C:
    self.depth = (- 1355.depth 1s)
0x000094:
    exit
