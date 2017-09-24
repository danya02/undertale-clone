0x000000:
    if !(bool (instance_exists[]:int32 (var 1478s))) goto 0x0000A4
0x000018:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x000044
0x000030:
    push (== self.myinteract 3s)
    goto 0x000048
0x000044:
    push 0s
0x000048:
    if !pop goto 0x000078
0x00004C:
    if !(== 782.stringno 3s) goto 0x000074
0x000060:
    [obj_librarynpc_lizard2].image_speed = 0.2d
0x000074:
    goto 0x0000A4
0x000078:
    if !(!= 1478.myinteract 3s) goto 0x0000A4
0x00008C:
    [obj_librarynpc_lizard2].image_speed = 0s
    [obj_librarynpc_lizard2].image_index = 0s
0x0000A4:
    exit
