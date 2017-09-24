0x000000:
    global.entrance = 24s
    global.interact = 3s
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    push -5s
    if !(== 7s:flag 0s) goto 0x00007C
0x000058:
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
0x00007C:
    if !(== self.touched 0s) goto 0x0000B0
0x000090:
    stog.alarm[2s] = 13s
    self.touched = 1s
0x0000B0:
    exit
