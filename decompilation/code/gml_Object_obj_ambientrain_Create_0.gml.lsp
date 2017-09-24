0x000000:
    call (event_user[]:int32 (var 0s))
    push -5s
    if !(== 7s:flag 1s) goto 0x000040
0x000030:
    call (instance_destroy[]:int32 )
    exit
0x000040:
    self.played = 0s
    self.ok = 0s
    if (== self.room 104s) goto 0x0000E4
0x00006C:
    if (== self.room 105s) goto 0x0000E4
0x000080:
    if (== self.room 106s) goto 0x0000E4
0x000094:
    if (== self.room 107s) goto 0x0000E4
0x0000A8:
    if (== self.room 108s) goto 0x0000E4
0x0000BC:
    if (== self.room 109s) goto 0x0000E4
0x0000D0:
    push (== self.room 110s)
    goto 0x0000E8
0x0000E4:
    push 1s
0x0000E8:
    if !pop goto 0x0000F8
0x0000EC:
    self.ok = 1s
0x0000F8:
    push -5s
    if !(== 360s:flag 0s) goto 0x000128
0x000114:
    push (== self.ok 1s)
    goto 0x00012C
0x000128:
    push 0s
0x00012C:
    if !pop goto 0x0002A0
0x000130:
    stog.flag[361s] = 0.5d
    stog.flag[362s] = 0s
    if (== self.room 104s) goto 0x000188
0x000174:
    push (== self.room 110s)
    goto 0x00018C
0x000188:
    push 1s
0x00018C:
    if !pop goto 0x0001C0
0x000190:
    stog.flag[361s] = 0s
    stog.flag[362s] = 0.5d
0x0001C0:
    stog.flag[363s] = (caster_load[]:int32 (var "music/rain.ogg"))
    stog.flag[364s] = (caster_load[]:int32 (var "music/rain_deep.ogg"))
    global.currentsong = -999s
    push (var 0.9d)
    push -5s
    call (caster_loop[]:int32 361s:flag -5s 363s:flag)
    push (var 0.9d)
    push -5s
    call (caster_loop[]:int32 362s:flag -5s 364s:flag)
    stog.flag[360s] = 1s
0x0002A0:
    exit
