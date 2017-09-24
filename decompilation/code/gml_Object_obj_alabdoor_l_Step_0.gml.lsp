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
    if !(== self.myinteract 1s) goto 0x0001E0
0x000068:
    push -5s
    if !(== 492s:flag 1s) goto 0x0001E0
0x000084:
    self.h = 0s
    call (scr_itemcheck[]:int32 (var 56s))
    if !(== self.haveit 1s) goto 0x0000C4
0x0000B8:
    self.h = 1s
0x0000C4:
    call (scr_itemcheck[]:int32 (var 57s))
    if !(== self.haveit 1s) goto 0x0000F8
0x0000EC:
    self.h = 1s
0x0000F8:
    if !(== self.h 0s) goto 0x00016C
0x00010C:
    global.msc = 0s
    global.facechoice = 0s
    global.typer = 5s
    stog.msg[0s] = "* (There's no response.)/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x00016C:
    if !(== self.h 1s) goto 0x0001C8
0x000180:
    global.msc = 825s
    global.facechoice = 0s
    global.typer = 5s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0001C8:
    global.interact = 1s
    self.myinteract = 2s
0x0001E0:
    if !(== self.myinteract 2s) goto 0x000210
0x0001F4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000214
0x000210:
    push 0s
0x000214:
    if !pop goto 0x00023C
0x000218:
    self.buffer = 4s
    self.myinteract = 0s
    global.interact = 0s
0x00023C:
    if !(== self.con 2s) goto 0x00026C
0x000250:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000270
0x00026C:
    push 0s
0x000270:
    if !pop goto 0x000388
0x000274:
    self.i = 0s
    if !(< self.i 9s) goto 0x000324
0x000294:
    push -5s
    if (== (int32 self.i):item 56s) goto 0x0002DC
0x0002B8:
    push -5s
    push (== (int32 self.i):item 57s)
    goto 0x0002E0
0x0002DC:
    push 1s
0x0002E0:
    if !pop goto 0x000308
0x0002E4:
    call (script_execute[]:int32 (var 0s) self.i (var 66s))
0x000308:
    self.i = (+ self.i 1s)
    goto 0x000280
0x000324:
    global.interact = 1s
    call (caster_stop[]:int32 global.currentsong)
    self.chainsaw = (caster_load[]:int32 (var "music/sfx_chainsaw.ogg"))
    self.con = 2.1d
    stog.alarm[4s] = 40s
0x000388:
    if !(== self.con 3.1d) goto 0x0003C0
0x0003A4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0003C4
0x0003C0:
    push 0s
0x0003C4:
    if !pop goto 0x0004DC
0x0003C8:
    global.typer = 47s
    global.facechoice = 0s
    global.msc = 0s
    stog.msg[0s] = "* (...)/"
    stog.msg[1s] = "* (O^1-oh n^1-no^1, is that another&  letter...?)/"
    stog.msg[2s] = "* (I don't want to open it...^1)&* (C-^1can't I just slide it&  back out...?)/"
    stog.msg[3s] = "* (...)/"
    stog.msg[4s] = "* (N..^1. no..^1. I can't keep doing&  this.^1)&* (I'll read this one.)/"
    stog.msg[5s] = "* (...)/"
    stog.msg[6s] = "* (Um...^1)&* (I-it's shut k-kind of&  strongly^1, isn't it?)/"
    stog.msg[7s] = "* (Wait a second...)/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 3s
0x0004DC:
    if !(== self.con 3s) goto 0x00050C
0x0004F0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000510
0x00050C:
    push 0s
0x000510:
    if !pop goto 0x00053C
0x000514:
    self.con = 3.2d
    stog.alarm[4s] = 30s
0x00053C:
    if !(== self.con 2.1d) goto 0x000564
0x000558:
    global.interact = 1s
0x000564:
    if !(== self.con 4.2d) goto 0x0005CC
0x000580:
    self.con = 5s
    stog.alarm[4s] = 110s
    call (caster_play[]:int32 (var 1s) (var 0.8d) self.chainsaw)
0x0005CC:
    if !(== self.con 6s) goto 0x000694
0x0005E0:
    self.alphys = (scr_marker[]:int32 (var 1650s) (+ self.y 35s) (+ self.x 2s))
    push (+ self.depth 10s)
    stog.depth* = (int32 self.alphys)
    if !(== self.side 1s) goto 0x000668
0x000650:
    push 1643s
    stog.sprite_index* = (int32 self.alphys)
0x000668:
    self.open = 1s
    self.con = 7s
    stog.alarm[4s] = 25s
0x000694:
    if !(== self.con 8s) goto 0x0008A8
0x0006A8:
    global.facechoice = 6s
    global.typer = 47s
    global.faceemotion = 9s
    stog.flag[430s] = 0s
    stog.msg[0s] = "* Hey^1, if this is a&  joke^1, it's.../"
    stog.msg[1s] = "\\E1* .../"
    stog.msg[2s] = "\\E3* Oh My God?/"
    stog.msg[3s] = "\\E5* Did YOU write this&  letter?/"
    stog.msg[4s] = "\\E6* It wasn't signed^1, so^1,&  I had no idea who&  could have.../"
    stog.msg[5s] = "\\E8* Oh my god^1.&* Oh no./"
    stog.msg[6s] = "\\E7* That's adorable.../"
    stog.msg[7s] = "\\E5* And I h-had no idea&  you^1, um^1, wrote that way!/"
    stog.msg[8s] = "\\E9* It's surprising^1, too..^1.&* After all the gross&  stuff I did.../"
    stog.msg[9s] = "\\E8* I don't really deserve&  to be forgiven./"
    stog.msg[10s] = "\\E4* Much less^1, um.../"
    stog.msg[11s] = "\\E5* This?/"
    stog.msg[12s] = "\\E1* And so passionately^1,&  too./"
    stog.msg[13s] = "\\E2* .../"
    stog.msg[14s] = "\\E0* You know what^1, okay^1!&* I'll do it!/"
    stog.msg[15s] = "\\E5* It's the least I can&  do to make it up&  to you!/"
    stog.msg[16s] = "\\W*\\E7 Y-yeah^1!&* \\WLet's \\Rgo on a date\\W!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 9s
0x0008A8:
    if !(== self.con 9s) goto 0x0008D8
0x0008BC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0008DC
0x0008D8:
    push 0s
0x0008DC:
    if !pop goto 0x000910
0x0008E0:
    call (instance_create[]:int32 (var 143s) (var 0s) (var 0s))
    self.con = 10s
0x000910:
    exit
