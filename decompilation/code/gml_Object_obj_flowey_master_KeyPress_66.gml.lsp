0x000000:
    if !(== global.debug 1s) goto 0x000038
0x000014:
    if !(bool (instance_exists[]:int32 (var 1644s))) goto 0x000038
0x00002C:
    [obj_chaosbomb].con = 1s
0x000038:
    exit
