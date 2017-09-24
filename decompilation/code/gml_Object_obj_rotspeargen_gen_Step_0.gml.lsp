0x000000:
    if !(< global.turntimer 4s) goto 0x0000F4
0x000014:
    if !(bool (instance_exists[]:int32 (var 282s))) goto 0x0000AC
0x00002C:
    if !(== 282.orderb 4s) goto 0x0000AC
0x000040:
    global.turntimer = 30s
    pushenv 282s 0x000068
0x000054:
    stog.alarm[11s] = 40s
0x000068:
    popenv 0x000054
0x00006C:
    if !(== 282.order 11s) goto 0x00008C
0x000080:
    [obj_undyne_ex].lesson = -11s
0x00008C:
    pushenv 282s 0x0000A8
0x000094:
    call (event_user[]:int32 (var 1s))
0x0000A8:
    popenv 0x000094
0x0000AC:
    pushenv 277s 0x0000C0
0x0000B4:
    call (instance_destroy[]:int32 )
0x0000C0:
    popenv 0x0000B4
0x0000C4:
    pushenv 278s 0x0000E4
0x0000CC:
    self.deactivate = 1s
    self.fade = 1s
0x0000E4:
    popenv 0x0000CC
0x0000E8:
    call (instance_destroy[]:int32 )
0x0000F4:
    exit
