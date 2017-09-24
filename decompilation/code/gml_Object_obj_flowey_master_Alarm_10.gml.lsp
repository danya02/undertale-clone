0x000000:
    call (event_user[]:int32 (var 9s))
    stog.alarm[10s] = 80s
    if !(> self.destroyer 1s) goto 0x000064
0x00003C:
    stog.alarm[10s] = (- 30s (* self.destroyer 2s))
0x000064:
    push -1s
    if !(<= 10s:alarm 3s) goto 0x0000B4
0x000080:
    global.my_hp = 0s
    stog.alarm[10s] = (choose[]:int32 (var 3s) (var 2s))
0x0000B4:
    if !(> self.destroyer 31s) goto 0x00012C
0x0000C8:
    global.my_hp = 1s
    [obj_vsflowey_heart].move = 0s
    stog.alarm[1581s] = 5s
    global.my_hp = 1s
    stog.alarm[10s] = -1s
    [obj_floweyx_flipeye].md = 0s
    self.dcon = 20s
0x00012C:
    exit
