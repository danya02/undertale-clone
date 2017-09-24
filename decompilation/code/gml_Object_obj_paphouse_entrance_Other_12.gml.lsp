0x000000:
    global.interact = 3s
    push -5s
    if !(== 7s:flag 0s) goto 0x00004C
0x000028:
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
0x00004C:
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    if !(== self.touched 0s) goto 0x0000A4
0x000084:
    stog.alarm[2s] = 13s
    self.touched = 1s
0x0000A4:
    push -5s
    if !(== 88s:flag 1s) goto 0x0000D4
0x0000C0:
    stog.flag[88s] = 2s
0x0000D4:
    exit
