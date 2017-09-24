0x000000:
    if !(== self.con 1s) goto 0x000070
0x000014:
    self.dm1 = (instance_create[]:int32 (var 1260s) (var 100s) (var 120s))
    self.dm2 = (instance_create[]:int32 (var 1260s) (var 100s) (var 180s))
    self.con = 2s
0x000070:
    if !(== self.con 2s) goto 0x0002E0
0x000084:
    global.msc = 0s
    global.facechoice = 0s
    global.typer = 5s
    push -5s
    if !(== 414s:flag 0s) goto 0x000138
0x0000C4:
    call (snd_play[]:int32 (var 104s))
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E6 \\F6 \\TA %"
    stog.msg[2s] = "* H-hey^1, why don't&  you try to use&  the elevator first?/"
    stog.msg[3s] = "* .../%%"
0x000138:
    push -5s
    if !(== 414s:flag 1s) goto 0x000170
0x000154:
    push -5s
    push (== 415s:flag 0s)
    goto 0x000174
0x000170:
    push 0s
0x000174:
    if !pop goto 0x0001EC
0x000178:
    call (snd_play[]:int32 (var 104s))
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E6 \\F6 \\TA %"
    stog.msg[2s] = "* H-hey^1, why don't&  you try to go&  to the right first?/"
    stog.msg[3s] = "* .../%%"
0x0001EC:
    push -5s
    if !(== 415s:flag 1s) goto 0x000224
0x000208:
    push -5s
    push (== 414s:flag 1s)
    goto 0x000228
0x000224:
    push 0s
0x000228:
    if !pop goto 0x0002A0
0x00022C:
    call (snd_play[]:int32 (var 104s))
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E6 \\F6 \\TA %"
    stog.msg[2s] = "* Okay^1, you should&  be able to make&  it through here.../"
    stog.msg[3s] = "* .../%%"
0x0002A0:
    push -5s
    if !(== 367s:flag 1s) goto 0x0002C8
0x0002BC:
    self.donotcall = 1s
0x0002C8:
    self.con = 3s
    call (scr_regulartext[]:int32 )
0x0002E0:
    if !(== self.con 3s) goto 0x000310
0x0002F4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000314
0x000310:
    push 0s
0x000314:
    if !pop goto 0x000344
0x000318:
    [obj_darkman_actor].vspeed = 3s
    self.con = 4s
    stog.alarm[4s] = 40s
0x000344:
    if !(== self.con 5s) goto 0x0003AC
0x000358:
    global.faceemotion = 3s
    stog.msg[0s] = "* W-watch out!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 6s
0x0003AC:
    if !(== self.con 6s) goto 0x0003DC
0x0003C0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0003E0
0x0003DC:
    push 0s
0x0003E0:
    if !pop goto 0x000418
0x0003E4:
    self.con = 7s
    call (snd_play[]:int32 (var 30s))
    stog.alarm[4s] = 30s
0x000418:
    if !(== self.con 8s) goto 0x00049C
0x00042C:
    global.mercy = 1s
    stog.flag[15s] = 1s
    global.battlegroup = 59s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.con = 9s
    stog.alarm[4s] = 32s
0x00049C:
    if !(== self.con 10s) goto 0x000500
0x0004B0:
    pushenv 1260s 0x0004C4
0x0004B8:
    call (instance_destroy[]:int32 )
0x0004C4:
    popenv 0x0004B8
0x0004C8:
    global.interact = 1s
    global.mercy = 0s
    self.con = 11s
    stog.alarm[4s] = 20s
0x000500:
    if !(== self.con 11s) goto 0x000520
0x000514:
    global.interact = 1s
0x000520:
    if !(== self.con 12s) goto 0x00063C
0x000534:
    global.typer = 47s
    global.facechoice = 6s
    global.msc = 0s
    global.faceemotion = 8s
    stog.msg[0s] = "* Th-that was close.../"
    stog.msg[1s] = "* Wh..^1. why are there&  so many monsters&  here?/"
    stog.msg[2s] = "\\E6* I mean..^1.&* It's no problem^1,&  r-r-right?/"
    stog.msg[3s] = "* W-w-we've just got&  to keep heading&  forward!/"
    stog.msg[4s] = "\\E9* .../"
    stog.msg[5s] = "\\TS \\F0 \\T0 %"
    stog.msg[6s] = "* (Click...)/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 13s
0x00063C:
    if !(== self.con 13s) goto 0x00066C
0x000650:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000670
0x00066C:
    push 0s
0x000670:
    if !pop goto 0x0006A4
0x000674:
    self.con = 14s
    global.plot = 179s
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x0006A4:
    if !(> self.con 3s) goto 0x0006FC
0x0006B8:
    if !(bool (instance_exists[]:int32 (var 1260s))) goto 0x0006FC
0x0006D0:
    if !(> 1260.y (- 1570.y 60s)) goto 0x0006FC
0x0006F0:
    [obj_darkman_actor].vspeed = 0s
0x0006FC:
    exit
