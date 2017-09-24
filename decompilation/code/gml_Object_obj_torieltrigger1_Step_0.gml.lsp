0x000000:
    if !(== self.conversation 1s) goto 0x000030
0x000014:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x000088
0x000038:
    global.interact = 1s
    self.conversation = 2s
    pushenv 861s 0x000084
0x000058:
    call (path_start[]:int32 (var 1s) (var 0s) (var 3s) (var 6s))
0x000084:
    popenv 0x000058
0x000088:
    if !(bool (instance_exists[]:int32 (var 861s))) goto 0x000134
0x0000A0:
    if !(== self.conversation 2s) goto 0x0000C8
0x0000B4:
    push (== 861.path_position 1s)
    goto 0x0000CC
0x0000C8:
    push 0s
0x0000CC:
    if !pop goto 0x000134
0x0000D0:
    self.conversation = 2.5d
    pushenv 925s 0x0000F8
0x0000EC:
    self.on = 1s
0x0000F8:
    popenv 0x0000EC
0x0000FC:
    pushenv 861s 0x000110
0x000104:
    call (path_end[]:int32 )
0x000110:
    popenv 0x000104
0x000114:
    [obj_toroverworld3].direction = 90s
    stog.alarm[4s] = 20s
0x000134:
    if !(== self.conversation 3s) goto 0x000164
0x000148:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000168
0x000164:
    push 0s
0x000168:
    if !pop goto 0x000190
0x00016C:
    self.conversation = 4s
    global.interact = 0s
    global.plot = 3s
0x000190:
    if !(bool (instance_exists[]:int32 (var 861s))) goto 0x000244
0x0001A8:
    if !(== self.conversation 4s) goto 0x0001F8
0x0001BC:
    if !(== 861.path_position 1s) goto 0x0001F8
0x0001D0:
    push (< (abs[]:int32 (- 1570.y 861.y)) 50s)
    goto 0x0001FC
0x0001F8:
    push 0s
0x0001FC:
    if !pop goto 0x000244
0x000200:
    self.conversation = 5s
    pushenv 861s 0x000240
0x000214:
    call (path_start[]:int32 (var 0s) (var 0s) (var 3s) (var 39s))
0x000240:
    popenv 0x000214
0x000244:
    exit
