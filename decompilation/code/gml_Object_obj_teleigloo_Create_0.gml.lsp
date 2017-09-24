0x000000:
    call (scr_depth[]:int32 )
    self.con = 0s
    self.xx = 1s
    self.top = (scr_marker[]:int32 (var 1241s) self.y self.x)
    push 10000s
    stog.depth* = (int32 self.top)
0x000064:
    exit
