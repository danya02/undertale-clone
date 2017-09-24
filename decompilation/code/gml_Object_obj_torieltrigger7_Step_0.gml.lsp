0x000000:
    if !(== self.conversation 1s) goto 0x000030
0x000014:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x000108
0x000038:
    self.conversation = 2s
    pushenv 861s 0x000064
0x00004C:
    self.x = (- self.x 10s)
0x000064:
    popenv 0x00004C
0x000068:
    [obj_toroverworld3].rsprite = 1114s
    [obj_toroverworld3].usprite = 1117s
    [obj_toroverworld3].sprite_index = 1114s
    [obj_mainchara].visible = 0s
    pushenv 861s 0x0000CC
0x0000A0:
    call (path_start[]:int32 (var 0s) (var 0s) (var 2s) (var 21s))
0x0000CC:
    popenv 0x0000A0
0x0000D0:
    pushenv 1570s 0x000104
0x0000D8:
    call (path_start[]:int32 (var 0s) (var 0s) (var 2s) (var 21s))
0x000104:
    popenv 0x0000D8
0x000108:
    if !(bool (instance_exists[]:int32 (var 861s))) goto 0x000134
0x000120:
    push (== self.conversation 2s)
    goto 0x000138
0x000134:
    push 0s
0x000138:
    if !pop goto 0x000230
0x00013C:
    if !(== 861.path_position 1s) goto 0x000230
0x000150:
    [obj_toroverworld3].usprite = 1112s
    [obj_toroverworld3].rsprite = 1107s
    [obj_mainchara].x = (+ 1570.x 33s)
    stog.alarm[2s] = 1s
    [obj_toroverworld3].y = (- 861.y 1s)
    [obj_toroverworld3].facing = 2s
    [obj_toroverworld3].direction = 90s
    global.facing = 2s
    [obj_mainchara].y = (- 1570.y 3s)
    stog.msg[0s] = "* A room of your own.&* I hope you like it!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 3s
0x000230:
    if !(== self.conversation 3s) goto 0x000260
0x000244:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x000264
0x000260:
    push 0s
0x000264:
    if !pop goto 0x000308
0x000268:
    stog.alarm[5s] = 90s
    pushenv 861s 0x000290
0x000284:
    self.visible = 0s
0x000290:
    popenv 0x000284
0x000294:
    self.ruff = (scr_marker[]:int32 (var 1101s) 861.y 861.x)
    push 0.1d
    stog.image_speed* = (int32 self.ruff)
    [obj_mainchara].visible = 0s
    stog.alarm[1s] = 10s
    self.conversation = 4s
0x000308:
    if !(== self.conversation 5s) goto 0x000338
0x00031C:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x00033C
0x000338:
    push 0s
0x00033C:
    if !pop goto 0x0003B4
0x000340:
    [obj_toroverworld3].usprite = 1112s
    global.interact = 0s
    self.conversation = 2s
    pushenv 861s 0x000398
0x00036C:
    call (path_start[]:int32 (var 0s) (var 0s) (var 6s) (var 20s))
0x000398:
    popenv 0x00036C
0x00039C:
    global.plot = 19s
    call (instance_destroy[]:int32 )
0x0003B4:
    exit
