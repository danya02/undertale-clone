0x000000:
    global.interact = 3s
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    push -5s
    if !(== 7s:flag 0s) goto 0x000070
0x00004C:
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
0x000070:
    if !(== self.touched 0s) goto 0x0000A4
0x000084:
    stog.alarm[2s] = 13s
    self.touched = 1s
0x0000A4:
    exit
