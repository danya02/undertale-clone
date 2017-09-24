0x000000:
    if !(== self.path_position 1s) goto 0x000028
0x000014:
    push (== self.conversation 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000114
0x000030:
    pushenv 1570s 0x000044
0x000038:
    call (path_end[]:int32 )
0x000044:
    popenv 0x000038
0x000048:
    call (path_end[]:int32 )
    global.phasing = 0s
    [obj_spiketile2].solid = 1s
    [obj_mainchara].visible = 1s
    self.tor = (instance_create[]:int32 (var 862s) self.y (+ self.x 12s))
    stog.alarm[0s] = 2s
    pushenv (int32 self.tor) 0x0000D8
0x0000CC:
    self.direction = 180s
0x0000D8:
    popenv 0x0000CC
0x0000DC:
    pushenv (int32 self.tor) 0x0000F8
0x0000EC:
    self.facing = 3s
0x0000F8:
    popenv 0x0000EC
0x0000FC:
    self.visible = 0s
    self.conversation = 2s
0x000114:
    if !(== self.conversation 3s) goto 0x000144
0x000128:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x000148
0x000144:
    push 0s
0x000148:
    if !pop goto 0x0001B0
0x00014C:
    pushenv (int32 self.tor) 0x000188
0x00015C:
    call (path_start[]:int32 (var 0s) (var 0s) (var 3s) (var 41s))
0x000188:
    popenv 0x00015C
0x00018C:
    global.interact = 0s
    call (instance_destroy[]:int32 )
    global.plot = 8s
0x0001B0:
    exit
