0x000000:
    global.interact = 3s
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    if !(== self.touched 0s) goto 0x000064
0x000044:
    stog.alarm[2s] = 14s
    self.touched = 1s
0x000064:
    if !(== self.room 76s) goto 0x0000B8
0x000078:
    push -5s
    if !(== 497s:flag 1s) goto 0x0000B8
0x000094:
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
0x0000B8:
    exit
