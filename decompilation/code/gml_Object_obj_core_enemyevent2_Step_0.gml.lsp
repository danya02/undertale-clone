0x000000:
    if !(== self.con 1s) goto 0x00007C
0x000014:
    global.interact = 1s
    self.dm1 = (instance_create[]:int32 (var 1260s) (var 100s) (var 120s))
    self.dm2 = (instance_create[]:int32 (var 1260s) (var 100s) (var 180s))
    self.con = 6s
0x00007C:
    if !(== self.con 6s) goto 0x0000AC
0x000090:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0000B0
0x0000AC:
    push 0s
0x0000B0:
    if !pop goto 0x0000E8
0x0000B4:
    self.con = 7s
    call (snd_play[]:int32 (var 30s))
    stog.alarm[4s] = 60s
0x0000E8:
    if !(== self.con 7s) goto 0x000108
0x0000FC:
    global.interact = 1s
0x000108:
    if !(== self.con 8s) goto 0x00018C
0x00011C:
    global.mercy = 1s
    stog.flag[15s] = 1s
    global.battlegroup = 60s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.con = 9s
    stog.alarm[4s] = 32s
0x00018C:
    if !(== self.con 10s) goto 0x0001F0
0x0001A0:
    pushenv 1260s 0x0001B4
0x0001A8:
    call (instance_destroy[]:int32 )
0x0001B4:
    popenv 0x0001A8
0x0001B8:
    global.interact = 1s
    global.mercy = 0s
    self.con = 11s
    stog.alarm[4s] = 20s
0x0001F0:
    if !(== self.con 11s) goto 0x000210
0x000204:
    global.interact = 1s
0x000210:
    if !(== self.con 12s) goto 0x000404
0x000224:
    call (snd_play[]:int32 (var 104s))
    global.typer = 5s
    global.facechoice = 0s
    global.msc = 0s
    global.faceemotion = 8s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* Sorry^1, I..^1. I.../"
    stog.msg[3s] = "* I thought that.../"
    stog.msg[4s] = "\\E8* Let's try the&  right path instead./"
    stog.msg[5s] = "\\TS \\F0 \\T0 %"
    stog.msg[6s] = "* (Click...)/%%"
    push -5s
    if !(== 416s:flag 0s) goto 0x0003D4
0x00032C:
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* A-are you okay?/"
    stog.msg[3s] = "* Why didn't you&  head to the&  right...?/"
    stog.msg[4s] = "\\E4* C-C'mon..^1.&* Y-you trust me^1,&  d-don't you?/"
    stog.msg[5s] = "\\TS \\F0 \\T0 %"
    stog.msg[6s] = "* (Click...)/%%"
0x0003D4:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 13s
0x000404:
    if !(== self.con 13s) goto 0x000434
0x000418:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000438
0x000434:
    push 0s
0x000438:
    if !pop goto 0x000474
0x00043C:
    self.con = 14s
    stog.flag[417s] = 1s
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x000474:
    exit
