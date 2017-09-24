0x000000:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x001064
0x000018:
    push -5s
    if !(== 496s:flag 0s) goto 0x0002A4
0x000034:
    if !(> 1570.x 100s) goto 0x00005C
0x000048:
    push (== self.tents 0s)
    goto 0x000060
0x00005C:
    push 0s
0x000060:
    if !pop goto 0x0000F4
0x000064:
    self.tent1 = (instance_create[]:int32 (var 1078s) (var 70s) 1570.x)
    push 1s
    stog.follow* = (int32 self.tent1)
    push 0s
    stog.type* = (int32 self.tent1)
    self.tents = 1s
    push 2s
    stog.on* = (int32 self.tent1)
    call (snd_play[]:int32 (var 22s))
0x0000F4:
    if !(> 1570.x 210s) goto 0x00011C
0x000108:
    push (== self.tents 1s)
    goto 0x000120
0x00011C:
    push 0s
0x000120:
    if !pop goto 0x0001B4
0x000124:
    self.tent2 = (instance_create[]:int32 (var 1078s) (var 220s) 1570.x)
    push 1s
    stog.follow* = (int32 self.tent2)
    push 1s
    stog.type* = (int32 self.tent2)
    push 2s
    stog.on* = (int32 self.tent2)
    self.tents = 2s
    call (snd_play[]:int32 (var 22s))
0x0001B4:
    if !(> 1570.x 420s) goto 0x0001F0
0x0001C8:
    if !(== self.tents 2s) goto 0x0001F0
0x0001DC:
    push (== global.interact 0s)
    goto 0x0001F4
0x0001F0:
    push 0s
0x0001F4:
    if !pop goto 0x0002A4
0x0001F8:
    global.facing = 0s
    self.tents = 3s
    self.con = 1s
    stog.alarm[4s] = 90s
    global.interact = 1s
    pushenv (int32 self.tent1) 0x000258
0x00024C:
    self.on = 4s
0x000258:
    popenv 0x00024C
0x00025C:
    pushenv (int32 self.tent2) 0x000278
0x00026C:
    self.on = 4s
0x000278:
    popenv 0x00026C
0x00027C:
    stog.flag[496s] = 1s
    call (snd_play[]:int32 (var 22s))
0x0002A4:
    if !(== self.con 2s) goto 0x000368
0x0002B8:
    pushenv 1078s 0x0002CC
0x0002C0:
    call (instance_destroy[]:int32 )
0x0002CC:
    popenv 0x0002C0
0x0002D0:
    stog.flag[20s] = 0s
    pushenv (int32 self.onion) 0x000324
0x0002F4:
    self.x = (+ 1570.x 10s)
    self.follow = 0s
    self.hspeed = 0s
0x000324:
    popenv 0x0002F4
0x000328:
    pushenv (int32 self.onion) 0x000344
0x000338:
    self.on = 1s
0x000344:
    popenv 0x000338
0x000348:
    self.con = 3s
    stog.alarm[4s] = 50s
0x000368:
    if !(== self.con 4s) goto 0x0003E0
0x00037C:
    global.facing = 2s
    pushenv (int32 self.onion) 0x0003A4
0x000398:
    self.on = 2s
0x0003A4:
    popenv 0x000398
0x0003A8:
    pushenv 1078s 0x0003BC
0x0003B0:
    self.on = 2s
0x0003BC:
    popenv 0x0003B0
0x0003C0:
    self.con = 5s
    stog.alarm[4s] = 150s
0x0003E0:
    if !(== self.con 6s) goto 0x000478
0x0003F4:
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    stog.msg[0s] = "* Hey..^1. there..^1.&* Noticed you were..^1.&* Here.../"
    stog.msg[1s] = "\\M1* I'm Onionsan^1!&* Onionsan^1, y'hear!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 7s
0x000478:
    if !(== self.con 7s) goto 0x0004A4
0x00048C:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0004A8
0x0004A4:
    push 0s
0x0004A8:
    if !pop goto 0x0004D8
0x0004AC:
    if !(== 782.stringno 1s) goto 0x0004D8
0x0004C0:
    pushenv 1078s 0x0004D4
0x0004C8:
    self.on = 4s
0x0004D4:
    popenv 0x0004C8
0x0004D8:
    if !(== self.con 7s) goto 0x000508
0x0004EC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00050C
0x000508:
    push 0s
0x00050C:
    if !pop goto 0x000558
0x000510:
    global.interact = 0s
    push 1s
    stog.follow* = (int32 self.onion)
    push 2s
    stog.on* = (int32 self.onion)
    self.con = 8s
0x000558:
    push -5s
    if !(== 496s:flag 1s) goto 0x00059C
0x000574:
    if !(> 1570.x 550s) goto 0x00059C
0x000588:
    push (== global.interact 0s)
    goto 0x0005A0
0x00059C:
    push 0s
0x0005A0:
    if !pop goto 0x000648
0x0005A4:
    stog.flag[496s] = 2s
    global.interact = 1s
    self.con = 11s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    stog.msg[0s] = "\\M1* You're visiting Waterfall^1, huh^1!* It's great here^1, huh^1!&* You love it^1, huh!/"
    stog.msg[1s] = "\\M0* Yeah^1!&* Me too^1!&* It's my Big Favorite./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000648:
    push -5s
    if !(== 496s:flag 2s) goto 0x00068C
0x000664:
    if !(> 1570.x 700s) goto 0x00068C
0x000678:
    push (== global.interact 0s)
    goto 0x000690
0x00068C:
    push 0s
0x000690:
    if !pop goto 0x000780
0x000694:
    stog.flag[496s] = 3s
    global.interact = 1s
    self.con = 11s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    stog.msg[0s] = "\\M3* Even though^1, the water's&  getting so shallow here..^1./"
    stog.msg[1s] = "* I^1, have to sit down all&  the time^1, but.../"
    stog.msg[2s] = "\\M1* He^1-hey^1! That's OK^1!&* It beats moving to the city!/"
    stog.msg[3s] = "* And living in a crowded&  aquarium!/"
    stog.msg[4s] = "\\M2* Like all my friends did!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000780:
    push -5s
    if !(== 496s:flag 3s) goto 0x0007C4
0x00079C:
    if !(> 1570.x 850s) goto 0x0007C4
0x0007B0:
    push (== global.interact 0s)
    goto 0x0007C8
0x0007C4:
    push 0s
0x0007C8:
    if !pop goto 0x000888
0x0007CC:
    stog.flag[496s] = 4s
    global.interact = 1s
    self.con = 11s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    stog.msg[0s] = "\\M3* And the aquarium's full^1,&  a-anyway^1, so^1, even if I&  wanted to^1, I.../"
    stog.msg[1s] = "\\M1* That's okay though^1, y'hear!&* Undyne's gonna fix&  everything^1, y'hear!/"
    stog.msg[2s] = "* I'm gonna get out of here&  and live in the ocean^1!&* Y'hear!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000888:
    push -5s
    if !(== 496s:flag 4s) goto 0x0008CC
0x0008A4:
    if !(> 1570.x 1000s) goto 0x0008CC
0x0008B8:
    push (== global.interact 0s)
    goto 0x0008D0
0x0008CC:
    push 0s
0x0008D0:
    if !pop goto 0x0009B8
0x0008D4:
    stog.flag[496s] = 5s
    global.interact = 1s
    self.con = 15s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    stog.msg[0s] = "\\M2* Hey..^1. there..^1.&* That's the end of this room./"
    stog.msg[1s] = "* I'll see you around^1!&* Have a good time!/"
    stog.msg[2s] = "* In Waterfalllllllllllllllll&  lllllllllllll/%%"
    pushenv (int32 self.onion) 0x000990
0x00097C:
    call (event_user[]:int32 (var 2s))
0x000990:
    popenv 0x00097C
0x000994:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0009B8:
    if !(== self.con 11s) goto 0x0009E8
0x0009CC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0009EC
0x0009E8:
    push 0s
0x0009EC:
    if !pop goto 0x000A08
0x0009F0:
    global.interact = 0s
    self.con = 10s
0x000A08:
    if !(== self.con 15s) goto 0x000A34
0x000A1C:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000A38
0x000A34:
    push 0s
0x000A38:
    if !pop goto 0x000AC4
0x000A3C:
    if !(== self.con 15s) goto 0x000A64
0x000A50:
    push (== 782.stringno 2s)
    goto 0x000A68
0x000A64:
    push 0s
0x000A68:
    if !pop goto 0x000AC4
0x000A6C:
    pushenv 1078s 0x000A80
0x000A74:
    self.on = 4s
0x000A80:
    popenv 0x000A74
0x000A84:
    pushenv (int32 self.onion) 0x000AA0
0x000A94:
    self.on = 4s
0x000AA0:
    popenv 0x000A94
0x000AA4:
    pushenv (int32 self.onion) 0x000AC0
0x000AB4:
    self.follow = 0s
0x000AC0:
    popenv 0x000AB4
0x000AC4:
    if !(== self.con 15s) goto 0x000AF4
0x000AD8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000AF8
0x000AF4:
    push 0s
0x000AF8:
    if !pop goto 0x000B14
0x000AFC:
    self.con = 16s
    global.interact = 0s
0x000B14:
    push -5s
    if !(== 496s:flag 5s) goto 0x000B6C
0x000B30:
    if !(> 1570.x 600s) goto 0x000B6C
0x000B44:
    if !(< 1570.x 640s) goto 0x000B6C
0x000B58:
    push (== global.interact 0s)
    goto 0x000B70
0x000B6C:
    push 0s
0x000B70:
    if !pop goto 0x000C48
0x000B74:
    if !(!= (int32 self.onion):on 4s) goto 0x000BB4
0x000B94:
    push (!= (int32 self.onion):on 0s)
    goto 0x000BB8
0x000BB4:
    push 0s
0x000BB8:
    if !pop goto 0x000C48
0x000BBC:
    stog.flag[496s] = 6s
    global.interact = 1s
    self.con = 11s
    global.facechoice = 0s
    global.msc = 0s
    global.typer = 5s
    global.msc = 839s
    self.once = 1s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000C48:
    push -5s
    if !(== 496s:flag 6s) goto 0x000CB4
0x000C64:
    if !(> 1570.x 600s) goto 0x000CB4
0x000C78:
    if !(< 1570.x 640s) goto 0x000CB4
0x000C8C:
    if !(== global.interact 0s) goto 0x000CB4
0x000CA0:
    push (== self.once 0s)
    goto 0x000CB8
0x000CB4:
    push 0s
0x000CB8:
    if !pop goto 0x000E54
0x000CBC:
    if !(!= (int32 self.onion):on 4s) goto 0x000CFC
0x000CDC:
    push (!= (int32 self.onion):on 0s)
    goto 0x000D00
0x000CFC:
    push 0s
0x000D00:
    if !pop goto 0x000E54
0x000D04:
    self.once = 1s
    global.interact = 1s
    self.con = 11s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    stog.msg[0s] = "\\M1* Oh^1!&* Did y'hear!!!/"
    stog.msg[1s] = "\\M1* .../"
    stog.msg[2s] = "\\M1* I got nothing else..^1.&* To talk about.../%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000E30
0x000DB0:
    stog.msg[0s] = "\\M2* I've been wondering when&  we're all gonna go free./"
    stog.msg[1s] = "\\M3* S-since..^1. if we did..^1.&* How would I ever know?/"
    stog.msg[2s] = "\\M1* Well^1, I'll keep my&  tentacles out for you^1!&* Y'hear!/"
    stog.msg[3s] = "* As soon as I know I'll be&  the first to tell you^1!&* Y'hear!!/%%"
    stog.flag[496s] = 7s
    self.once = 1s
0x000E30:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000E54:
    push -5s
    if !(== 496s:flag 7s) goto 0x000EC0
0x000E70:
    if !(> 1570.x 600s) goto 0x000EC0
0x000E84:
    if !(< 1570.x 640s) goto 0x000EC0
0x000E98:
    if !(== global.interact 0s) goto 0x000EC0
0x000EAC:
    push (== self.once 0s)
    goto 0x000EC4
0x000EC0:
    push 0s
0x000EC4:
    if !pop goto 0x000F94
0x000EC8:
    if !(!= (int32 self.onion):on 4s) goto 0x000F08
0x000EE8:
    push (!= (int32 self.onion):on 0s)
    goto 0x000F0C
0x000F08:
    push 0s
0x000F0C:
    if !pop goto 0x000F94
0x000F10:
    self.once = 1s
    global.facechoice = 0s
    global.interact = 1s
    self.con = 11s
    global.msc = 0s
    global.typer = 5s
    stog.msg[0s] = "\\M0* It's gotta be any day now!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000F94:
    if !(== self.con 25s) goto 0x000FE0
0x000FA8:
    global.facing = 2s
    self.con = 26s
    global.interact = 1s
    stog.alarm[4s] = 60s
0x000FE0:
    if !(== self.con 27s) goto 0x00102C
0x000FF4:
    self.con = 28s
    stog.alarm[4s] = 120s
    push 4s
    stog.on* = (int32 self.onion)
0x00102C:
    if !(== self.con 29s) goto 0x001064
0x001040:
    global.interact = 0s
    self.con = 30s
    global.facing = 0s
0x001064:
    exit
