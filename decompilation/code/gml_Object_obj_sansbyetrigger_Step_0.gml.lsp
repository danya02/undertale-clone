0x000000:
    if !(== self.conversation 2s) goto 0x000030
0x000014:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x0000B4
0x000038:
    if !(> 1570.x 1021.x) goto 0x00005C
0x000050:
    [obj_sans_interactable1].hspeed = -3s
0x00005C:
    if !(< 1570.x 1021.x) goto 0x000080
0x000074:
    [obj_sans_interactable1].hspeed = 4s
0x000080:
    [obj_sans_interactable1].image_speed = 0.25d
    stog.alarm[2s] = 20s
    self.conversation = 3s
0x0000B4:
    if !(== global.plot 37s) goto 0x0000D4
0x0000C8:
    call (instance_destroy[]:int32 )
0x0000D4:
    exit
