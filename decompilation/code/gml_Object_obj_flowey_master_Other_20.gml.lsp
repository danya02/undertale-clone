0x000000:
    if !(== (instance_exists[]:int32 (var 1584s)) 0s) goto 0x00004C
0x00001C:
    call (instance_create[]:int32 (var 1584s) (var 0s) (var 0s))
    self.drawhp = 1s
0x00004C:
    exit
