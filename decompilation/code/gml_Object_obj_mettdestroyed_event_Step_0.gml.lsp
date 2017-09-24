0x000000:
    if !(== self.con 1s) goto 0x000090
0x000014:
    pushenv 1363s 0x000028
0x00001C:
    self.visible = 0s
0x000028:
    popenv 0x00001C
0x00002C:
    pushenv (int32 self.brokemett) 0x000048
0x00003C:
    self.visible = 1s
0x000048:
    popenv 0x00003C
0x00004C:
    push -1s
    stog.view_yview[(+ 0s:view_yview 20s)] = 0s
    self.con = 2s
    stog.alarm[4s] = 50s
0x000090:
    if !(== self.con 2s) goto 0x0000B0
0x0000A4:
    global.interact = 1s
0x0000B0:
    if !(== self.con 3s) goto 0x000100
0x0000C4:
    call (snd_play[]:int32 (var 13s))
    self.con = 3.1d
    stog.alarm[4s] = 45s
0x000100:
    if !(== self.con 4.1d) goto 0x000128
0x00011C:
    self.con = 4s
0x000128:
    if !(== self.con 4s) goto 0x0001B4
0x00013C:
    global.facechoice = 6s
    global.typer = 47s
    global.msc = 0s
    global.faceemotion = 6s
    stog.msg[0s] = "* I..^1. I managed to open&  the lock^1!&* Are you two.../%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 5s
0x0001B4:
    if !(== self.con 5s) goto 0x0001E4
0x0001C8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0001E8
0x0001E4:
    push 0s
0x0001E8:
    if !pop goto 0x0002BC
0x0001EC:
    self.al = (instance_create[]:int32 (var 1170s) (+ 1570.y 75s) (+ 1570.x 40s))
    push (int32 self.al):usprite
    stog.sprite_index* = (int32 self.al)
    push -3s
    stog.vspeed* = (int32 self.al)
    push 1s
    stog.fun* = (int32 self.al)
    push 0.25d
    stog.image_speed* = (int32 self.al)
    self.con = 6s
    stog.alarm[4s] = 25s
0x0002BC:
    if !(== self.con 7s) goto 0x000320
0x0002D0:
    push 0s
    stog.speed* = (int32 self.al)
    push 0s
    stog.image_speed* = (int32 self.al)
    self.con = 8s
    stog.alarm[4s] = 30s
0x000320:
    if !(== self.con 9s) goto 0x00039C
0x000334:
    stog.flag[430s] = 1s
    global.faceemotion = 0s
    stog.msg[0s] = "* Oh my god./%%"
    self.con = 10s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x00039C:
    if !(== self.con 10s) goto 0x0003CC
0x0003B0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0003D0
0x0003CC:
    push 0s
0x0003D0:
    if !pop goto 0x00044C
0x0003D4:
    push -3.5d
    stog.vspeed* = (int32 self.al)
    push -4s
    stog.hspeed* = (int32 self.al)
    push 0.334d
    stog.image_speed* = (int32 self.al)
    self.con = 11s
    stog.alarm[4s] = 10s
0x00044C:
    if !(== self.con 12s) goto 0x0004B0
0x000460:
    push 0s
    stog.speed* = (int32 self.al)
    push 0s
    stog.image_speed* = (int32 self.al)
    self.con = 13s
    stog.alarm[4s] = 30s
0x0004B0:
    if !(== self.con 14s) goto 0x000530
0x0004C4:
    global.faceemotion = 0s
    stog.msg[0s] = "* Mettaton!/"
    stog.msg[1s] = "\\E1* Mettaton^1, are you.../%%"
    self.con = 15s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000530:
    if !(== self.con 15s) goto 0x000560
0x000544:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000564
0x000560:
    push 0s
0x000564:
    if !pop goto 0x000588
0x000568:
    self.con = 16s
    stog.alarm[4s] = 80s
0x000588:
    if !(== self.con 17s) goto 0x0005E4
0x00059C:
    self.con = 18s
    push (int32 self.al):rsprite
    stog.sprite_index* = (int32 self.al)
    stog.alarm[4s] = 50s
0x0005E4:
    if !(== self.con 19s) goto 0x0007AC
0x0005F8:
    global.faceemotion = 6s
    stog.msg[0s] = "* H..^1. hey.../"
    stog.msg[1s] = "* D..^1. don't worry&  about it.../"
    stog.msg[2s] = "* I can always.../"
    stog.msg[3s] = "\\E5* I can always build&  a different robot!/"
    stog.msg[4s] = "\\E6* .../"
    stog.msg[5s] = "\\E5* Why don't you go&  on ahead?/%%"
    push -5s
    if !(== 425s:flag 0s) goto 0x00077C
0x0006B0:
    global.faceemotion = 4s
    stog.msg[0s] = "* ... thank GOD^1, it's just&  the batteries./"
    stog.msg[1s] = "\\E9* Mettaton^1, if you were&  gone^1, I would have..^1.&* I would have.../"
    stog.msg[2s] = "\\E8* .../"
    stog.msg[3s] = "\\E6* I m-mean^1, h-hey^1, it's&  n-^1no problem^1, you&  know?/"
    stog.msg[4s] = "\\E5* He's just a robot^1, if&  you messed it up^1, I&  c-could always.../"
    stog.msg[5s] = "\\E6* J-just build another./"
    stog.msg[6s] = "\\E4* .../"
    stog.msg[7s] = "* Why don't you go&  on ahead?/%%"
0x00077C:
    self.con = 20s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0007AC:
    if !(== self.con 20s) goto 0x0007DC
0x0007C0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0007E0
0x0007DC:
    push 0s
0x0007E0:
    if !pop goto 0x00084C
0x0007E4:
    push (int32 self.al):utsprite
    stog.sprite_index* = (int32 self.al)
    stog.view_object[0s] = 1570s
    [obj_mainchara].cutscene = 1s
    self.con = 21s
    stog.alarm[4s] = 30s
0x00084C:
    if !(== self.con 21s) goto 0x000884
0x000860:
    push -1s
    stog.view_yview[(+ 0s:view_yview 2s)] = 0s
0x000884:
    if !(== self.con 22s) goto 0x000968
0x000898:
    [obj_mainchara].cutscene = 0s
    global.plot = 193s
    self.al2 = (instance_create[]:int32 (var 1170s) (int32 self.al):y (int32 self.al):x)
    push (int32 self.al):utsprite
    stog.sprite_index* = (int32 self.al2)
    push 1s
    stog.fun* = (int32 self.al2)
    pushenv (int32 self.al) 0x00094C
0x000940:
    call (instance_destroy[]:int32 )
0x00094C:
    popenv 0x000940
0x000950:
    self.con = 27s
    global.interact = 0s
0x000968:
    exit
