0x000000:
    if !(== global.debug 999s) goto 0x000064
0x000014:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000044
0x000030:
    push (== global.kills 0s)
    goto 0x000048
0x000044:
    push 0s
0x000048:
    if !pop goto 0x000064
0x00004C:
    self.rot = (- self.rot 1s)
0x000064:
    exit
