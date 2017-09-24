0x000000:
    self.buffer = (- self.buffer 1s)
    if !(== self.myinteract 1s) goto 0x000040
0x00002C:
    push (> self.buffer 0s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x000054
0x000048:
    self.myinteract = 0s
0x000054:
    if !(== self.myinteract 1s) goto 0x000090
0x000068:
    if !(== global.interact 0s) goto 0x000090
0x00007C:
    push (== self.con 0s)
    goto 0x000094
0x000090:
    push 0s
0x000094:
    if !pop goto 0x0000D8
0x000098:
    global.interact = 1s
    self.con = 1s
    call (snd_play[]:int32 (var 121s))
    call (event_user[]:int32 (var 0s))
0x0000D8:
    if !(== self.con 1s) goto 0x0001E4
0x0000EC:
    self.side = (+ self.side 2s)
    if !(>= self.side 20s) goto 0x0001E4
0x000118:
    self.con = 2s
    global.interact = 0s
    pushenv (int32 self.s1) 0x00014C
0x000140:
    call (instance_destroy[]:int32 )
0x00014C:
    popenv 0x000140
0x000150:
    pushenv (int32 self.s2) 0x00016C
0x000160:
    call (instance_destroy[]:int32 )
0x00016C:
    popenv 0x000160
0x000170:
    if !(bool (instance_exists[]:int32 (var 1170s))) goto 0x00019C
0x000188:
    push (== self.room 212s)
    goto 0x0001A0
0x00019C:
    push 0s
0x0001A0:
    if !pop goto 0x0001E4
0x0001A4:
    [obj_alphysfollow_event].con = 50s
    global.interact = 1s
    self.m = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
0x0001E4:
    if !(== self.myinteract 1s) goto 0x000220
0x0001F8:
    if !(== global.interact 0s) goto 0x000220
0x00020C:
    push (== self.con 40s)
    goto 0x000224
0x000220:
    push 0s
0x000224:
    if !pop goto 0x000240
0x000228:
    global.interact = 1s
    self.con = 41s
0x000240:
    if !(== self.con 41s) goto 0x0003E8
0x000254:
    global.interact = 1s
    global.msc = 0s
    stog.msg[0s] = "* (The elevator isn't working.)/"
    stog.msg[1s] = "* Ring.../"
    stog.msg[2s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[3s] = "* What^1?&* The elevator should&  be working.../"
    stog.msg[4s] = "* .../"
    stog.msg[5s] = "\\E6* W-well then^1!&* Go to the right&  and keep heading up!/%%"
    stog.msg[6s] = "\\TS \\F0 \\T0 %"
    stog.msg[7s] = "* Click.../%%"
    push -5s
    if !(== 415s:flag 1s) goto 0x000390
0x000348:
    stog.msg[5s] = "\\E6* W-well then^1!&* Let's go to the&  left!/%%"
    stog.msg[6s] = "\\TS \\F0 \\T0 %"
    stog.msg[7s] = "* Click.../%%"
0x000390:
    stog.flag[414s] = 1s
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x0003D0
0x0003B8:
    stog.msg[0s] = "* (The elevator isn't working.)/%%"
0x0003D0:
    call (scr_regulartext[]:int32 )
    self.con = 42s
0x0003E8:
    if !(== self.con 42s) goto 0x000418
0x0003FC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00041C
0x000418:
    push 0s
0x00041C:
    if !pop goto 0x000450
0x000420:
    self.buffer = 4s
    self.con = 43s
    self.myinteract = 0s
    global.interact = 0s
0x000450:
    if !(== self.con 43s) goto 0x00048C
0x000464:
    if !(== self.myinteract 1s) goto 0x00048C
0x000478:
    push (== global.interact 0s)
    goto 0x000490
0x00048C:
    push 0s
0x000490:
    if !pop goto 0x0004D0
0x000494:
    global.interact = 1s
    stog.msg[0s] = "* (The elevator isn't working.)/%%"
    call (scr_regulartext[]:int32 )
    self.con = 42s
0x0004D0:
    if !(== self.con 50s) goto 0x00050C
0x0004E4:
    if !(== self.myinteract 1s) goto 0x00050C
0x0004F8:
    push (== global.interact 0s)
    goto 0x000510
0x00050C:
    push 0s
0x000510:
    if !pop goto 0x000550
0x000514:
    global.interact = 1s
    stog.msg[0s] = "* (The elevator is in use.)/%%"
    call (scr_regulartext[]:int32 )
    self.con = 42s
0x000550:
    exit
