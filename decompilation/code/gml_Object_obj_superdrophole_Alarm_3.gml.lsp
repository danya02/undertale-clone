0x000000:
    [obj_mainchara].image_alpha = 1s
    [obj_mainchara].vspeed = 0s
    global.interact = 0s
    global.phasing = 0s
    pushenv 820s 0x000044
0x000038:
    self.solid = 1s
0x000044:
    popenv 0x000038
0x000048:
    global.entrance = 2s
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    if !(< self.x 640s) goto 0x00009C
0x00008C:
    call (room_goto_previous[]:int32 )
    goto 0x0000A8
0x00009C:
    call (room_goto_next[]:int32 )
0x0000A8:
    exit
