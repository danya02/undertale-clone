0x000000:
    global.interact = 3s
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    if !(== self.touched 0s) goto 0x000088
0x000068:
    stog.alarm[2s] = 13s
    self.touched = 1s
0x000088:
    push -5s
    if !(< 413s:flag 1s) goto 0x0000B8
0x0000A4:
    stog.flag[413s] = 1s
0x0000B8:
    exit
