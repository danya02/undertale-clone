0x000000:
    if !(> self.image_xscale 0s) goto 0x00002C
0x000014:
    push (bool (instance_exists[]:int32 (var 1583s)))
    goto 0x000030
0x00002C:
    push 0s
0x000030:
    if !pop goto 0x000044
0x000034:
    [obj_fx_bgen].rightarm = self.id
0x000044:
    if !(< self.image_xscale 0s) goto 0x000070
0x000058:
    push (bool (instance_exists[]:int32 (var 1583s)))
    goto 0x000074
0x000070:
    push 0s
0x000074:
    if !pop goto 0x000088
0x000078:
    [obj_fx_bgen].leftarm = self.id
0x000088:
    exit
