0x000000:
    push -5s
    if !(== 433s:flag 0s) goto 0x000070
0x00001C:
    self.interacter = (instance_create[]:int32 (var 1344s) (var 116s) (var 172s))
    self.solider = (instance_create[]:int32 (var 2s) (var 116s) (var 172s))
    goto 0x000098
0x000070:
    self.doorer = (instance_create[]:int32 (var 809s) (var 112s) (var 172s))
0x000098:
    self.con = 0s
    call (scr_depth[]:int32 )
0x0000B0:
    exit
