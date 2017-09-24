0x000000:
    if !(< global.turntimer 1s) goto 0x000038
0x000014:
    pushenv 268s 0x000028
0x00001C:
    self.deactivate = 1s
0x000028:
    popenv 0x00001C
0x00002C:
    call (instance_destroy[]:int32 )
0x000038:
    if !(< global.turntimer 4s) goto 0x000220
0x00004C:
    stog.alarm[0s] = -1s
    pushenv 268s 0x000074
0x000068:
    self.deactivate = 1s
0x000074:
    popenv 0x000068
0x000078:
    if !(bool (instance_exists[]:int32 (var 272s))) goto 0x000164
0x000090:
    if (== 272.order 9s) goto 0x0000B8
0x0000A4:
    push (== 272.order 15s)
    goto 0x0000BC
0x0000B8:
    push 1s
0x0000BC:
    if !pop goto 0x000164
0x0000C0:
    global.turntimer = 30s
    if !(== 272.order 9s) goto 0x0000EC
0x0000E0:
    [obj_undyneboss].lesson = 8s
0x0000EC:
    if !(== 272.order 15s) goto 0x00010C
0x000100:
    [obj_undyneboss].lesson = 13s
0x00010C:
    if !(== 272.order 24s) goto 0x00012C
0x000120:
    [obj_undyneboss].lesson = 22s
0x00012C:
    pushenv 272s 0x000148
0x000134:
    call (event_user[]:int32 (var 1s))
0x000148:
    popenv 0x000134
0x00014C:
    pushenv 268s 0x000160
0x000154:
    self.deactivate = 1s
0x000160:
    popenv 0x000154
0x000164:
    if !(bool (instance_exists[]:int32 (var 282s))) goto 0x000214
0x00017C:
    if !(== 282.order 6s) goto 0x000214
0x000190:
    global.turntimer = 30s
    pushenv 282s 0x0001B8
0x0001A4:
    stog.alarm[11s] = 40s
0x0001B8:
    popenv 0x0001A4
0x0001BC:
    if !(== 282.order 6s) goto 0x0001DC
0x0001D0:
    [obj_undyne_ex].lesson = -8s
0x0001DC:
    pushenv 282s 0x0001F8
0x0001E4:
    call (event_user[]:int32 (var 1s))
0x0001F8:
    popenv 0x0001E4
0x0001FC:
    pushenv 268s 0x000210
0x000204:
    self.deactivate = 1s
0x000210:
    popenv 0x000204
0x000214:
    call (instance_destroy[]:int32 )
0x000220:
    exit
