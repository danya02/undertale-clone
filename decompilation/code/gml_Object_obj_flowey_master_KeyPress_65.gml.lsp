0x000000:
    if !(== global.debug 1s) goto 0x000088
0x000014:
    if !(== (instance_exists[]:int32 (var 1640s)) 0s) goto 0x00007C
0x000030:
    call (instance_create[]:int32 (var 1640s) (var 140s) (var 110s))
    call (instance_create[]:int32 (var 1640s) (var 140s) (var 530s))
    goto 0x000088
0x00007C:
    [obj_floweyx_flamethrower].con = 3s
0x000088:
    exit
