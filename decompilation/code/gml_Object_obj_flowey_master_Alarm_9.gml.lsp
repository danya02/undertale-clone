0x000000:
    call (snd_play[]:int32 (var 156s))
    global.my_hp = 0s
    global.my_inv = 40s
    call (instance_create[]:int32 (var 1582s) (var 0s) (var 0s))
    [obj_vsflowey_heart].move = 0s
    push 5s
    push 1581s
    stog.alarm[] = 5s
    if !(== self.destroyer 1s) goto 0x000098
0x000084:
    push 20s
    push 1581s
    stog.alarm[] = 5s
0x000098:
    if !(> self.destroyer 30s) goto 0x0000D8
0x0000AC:
    global.my_hp = 1s
    [obj_vsflowey_heart].move = 0s
    stog.alarm[1581s] = 5s
0x0000D8:
    exit
