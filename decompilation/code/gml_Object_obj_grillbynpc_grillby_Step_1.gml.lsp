0x000000:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x00002C
0x000018:
    push (== self.myinteract 3s)
    goto 0x000030
0x00002C:
    push 0s
0x000030:
    if !pop goto 0x000060
0x000034:
    if !(== 782.stringno 1s) goto 0x00005C
0x000048:
    [obj_grillbynpc_hot2].image_speed = 0.2d
0x00005C:
    goto 0x0000A4
0x000060:
    if !(bool (instance_exists[]:int32 (var 1463s))) goto 0x0000A4
0x000078:
    if !(!= 1463.myinteract 3s) goto 0x0000A4
0x00008C:
    [obj_grillbynpc_hot2].image_speed = 0s
    [obj_grillbynpc_hot2].image_index = 0s
0x0000A4:
    exit
