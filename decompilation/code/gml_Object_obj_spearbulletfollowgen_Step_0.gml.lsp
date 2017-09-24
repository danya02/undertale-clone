0x000000:
    if !(< global.turntimer 3s) goto 0x000050
0x000014:
    pushenv 271s 0x000028
0x00001C:
    self.deactivate = 1s
0x000028:
    popenv 0x00001C
0x00002C:
    pushenv 272s 0x000040
0x000034:
    self.darkify = 3s
0x000040:
    popenv 0x000034
0x000044:
    call (instance_destroy[]:int32 )
0x000050:
    if !(< global.turntimer 4s) goto 0x00023C
0x000064:
    if !(bool (instance_exists[]:int32 (var 272s))) goto 0x000168
0x00007C:
    if (== 272.order 9s) goto 0x0000A4
0x000090:
    push (== 272.order 15s)
    goto 0x0000A8
0x0000A4:
    push 1s
0x0000A8:
    if !pop goto 0x000168
0x0000AC:
    global.turntimer = 30s
    if !(== 272.order 9s) goto 0x0000D8
0x0000CC:
    [obj_undyneboss].lesson = 8s
0x0000D8:
    if !(== 272.order 15s) goto 0x0000F8
0x0000EC:
    [obj_undyneboss].lesson = 13s
0x0000F8:
    if !(== 272.order 24s) goto 0x000118
0x00010C:
    [obj_undyneboss].lesson = 22s
0x000118:
    pushenv 271s 0x00012C
0x000120:
    self.deactivate = 1s
0x00012C:
    popenv 0x000120
0x000130:
    pushenv 272s 0x000144
0x000138:
    self.darkify = 3s
0x000144:
    popenv 0x000138
0x000148:
    pushenv 272s 0x000164
0x000150:
    call (event_user[]:int32 (var 1s))
0x000164:
    popenv 0x000150
0x000168:
    if !(bool (instance_exists[]:int32 (var 282s))) goto 0x000230
0x000180:
    if !(== 282.order 6s) goto 0x000230
0x000194:
    global.turntimer = 30s
    pushenv 282s 0x0001BC
0x0001A8:
    stog.alarm[11s] = 40s
0x0001BC:
    popenv 0x0001A8
0x0001C0:
    if !(== 282.order 6s) goto 0x0001E0
0x0001D4:
    [obj_undyne_ex].lesson = -8s
0x0001E0:
    pushenv 282s 0x0001F4
0x0001E8:
    self.deactivate = 1s
0x0001F4:
    popenv 0x0001E8
0x0001F8:
    pushenv 282s 0x00020C
0x000200:
    self.darkify = 3s
0x00020C:
    popenv 0x000200
0x000210:
    pushenv 282s 0x00022C
0x000218:
    call (event_user[]:int32 (var 1s))
0x00022C:
    popenv 0x000218
0x000230:
    call (instance_destroy[]:int32 )
0x00023C:
    exit
