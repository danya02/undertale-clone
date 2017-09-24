0x000000:
    if !(== self.con 1s) goto 0x000034
0x000014:
    self.con = 2s
    stog.alarm[4s] = 40s
0x000034:
    if !(== self.con 2s) goto 0x000054
0x000048:
    global.facing = 2s
0x000054:
    if !(== self.con 3s) goto 0x0000A8
0x000068:
    [obj_mainchara].vspeed = -1s
    [obj_mainchara].image_speed = 0.1d
    self.con = 4s
    stog.alarm[4s] = 100s
0x0000A8:
    if !(== self.con 5s) goto 0x0000F4
0x0000BC:
    [obj_mainchara].image_speed = 0s
    [obj_mainchara].vspeed = 0s
    self.con = 6s
    stog.alarm[4s] = 30s
0x0000F4:
    if !(== self.con 7s) goto 0x000160
0x000108:
    push -1s
    self.remy = 0s:view_yview
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
    self.con = 8s
    stog.alarm[4s] = 90s
0x000160:
    if !(== self.con 8s) goto 0x000198
0x000174:
    push -1s
    stog.view_yview[(- 0s:view_yview 1s)] = 0s
0x000198:
    if !(== self.con 9s) goto 0x0001CC
0x0001AC:
    self.con = 10s
    stog.alarm[4s] = 50s
0x0001CC:
    if !(== self.con 11s) goto 0x0002CC
0x0001E0:
    global.facechoice = 0s
    global.typer = 60s
    global.msc = 0s
    stog.msg[0s] = "* Dum dee dum.../"
    stog.msg[1s] = "* Oh^1?&* Is someone there?/"
    stog.msg[2s] = "* Just a moment!/"
    stog.msg[3s] = "* I have almost finished watering&  these flowers./%%"
    self.con = 12s
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x0002A8
0x000284:
    stog.msg[0s] = "* Curious^1.&* I've never seen a plant..^1.&* Cry before./%%"
    self.con = 99s
0x0002A8:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0002CC:
    if !(== self.con 12s) goto 0x0002FC
0x0002E0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000300
0x0002FC:
    push 0s
0x000300:
    if !pop goto 0x000344
0x000304:
    push 0.2d
    stog.image_speed* = (int32 self.asg)
    self.con = 13s
    stog.alarm[4s] = 50s
0x000344:
    if !(== self.con 14s) goto 0x0003A8
0x000358:
    push 0s
    stog.image_speed* = (int32 self.asg)
    push 0s
    stog.image_index* = (int32 self.asg)
    self.con = 15s
    stog.alarm[4s] = 30s
0x0003A8:
    if !(== self.con 16s) goto 0x000404
0x0003BC:
    stog.msg[0s] = "* ... Here we are!/%%"
    self.con = 17s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000404:
    if !(== self.con 17s) goto 0x000434
0x000418:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000438
0x000434:
    push 0s
0x000438:
    if !pop goto 0x00045C
0x00043C:
    self.con = 18s
    stog.alarm[4s] = 20s
0x00045C:
    if !(== self.con 19s) goto 0x0004B8
0x000470:
    push (int32 self.asg):rsprite
    stog.sprite_index* = (int32 self.asg)
    self.con = 20s
    stog.alarm[4s] = 35s
0x0004B8:
    if !(== self.con 21s) goto 0x000514
0x0004CC:
    push (int32 self.asg):dtsprite
    stog.sprite_index* = (int32 self.asg)
    self.con = 22s
    stog.alarm[4s] = 20s
0x000514:
    if !(== self.con 23s) goto 0x000594
0x000528:
    global.facechoice = 7s
    global.msc = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Howdy^1!&* How can I.../%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 24s
0x000594:
    if !(== self.con 24s) goto 0x0005C4
0x0005A8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0005C8
0x0005C4:
    push 0s
0x0005C8:
    if !pop goto 0x00068C
0x0005CC:
    self.con = 24.1d
    call (caster_free[]:int32 (var -3s))
    pushenv 88s 0x000608
0x0005FC:
    call (instance_destroy[]:int32 )
0x000608:
    popenv 0x0005FC
0x00060C:
    global.currentsong = (caster_load[]:int32 (var "music/smallshock.ogg"))
    stog.alarm[4s] = 15s
    push 1906s
    stog.sprite_index* = (int32 self.asg)
    push -1s
    stog.vspeed* = (int32 self.asg)
    push 0.2d
    stog.image_speed* = (int32 self.asg)
0x00068C:
    if !(== self.con 25.1d) goto 0x000710
0x0006A8:
    push 0s
    stog.vspeed* = (int32 self.asg)
    push 0s
    stog.image_index* = (int32 self.asg)
    push 0s
    stog.image_speed* = (int32 self.asg)
    self.con = 25s
    stog.alarm[4s] = 80s
0x000710:
    if !(== self.con 26s) goto 0x0007B4
0x000724:
    push 1910s
    stog.sprite_index* = (int32 self.asg)
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    global.faceemotion = 1s
    stog.msg[0s] = "* Oh./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 27s
0x0007B4:
    if !(== self.con 27s) goto 0x0007E4
0x0007C8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0007E8
0x0007E4:
    push 0s
0x0007E8:
    if !pop goto 0x000834
0x0007EC:
    push (int32 self.asg):rsprite
    stog.sprite_index* = (int32 self.asg)
    self.con = 28s
    stog.alarm[4s] = 110s
0x000834:
    if !(== self.con 29s) goto 0x000890
0x000848:
    push (int32 self.asg):dtsprite
    stog.sprite_index* = (int32 self.asg)
    self.con = 30s
    stog.alarm[4s] = 30s
0x000890:
    if !(== self.con 31s) goto 0x000968
0x0008A4:
    push (int32 self.asg):dtsprite
    stog.sprite_index* = (int32 self.asg)
    global.faceemotion = 3s
    stog.msg[0s] = "\\E3* .../"
    stog.msg[1s] = "\\E2* I so badly want to&  say^1, \"would you like&  a cup of tea?\"/"
    stog.msg[2s] = "* But.../"
    stog.msg[3s] = "\\E3* You know how it is./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 32s
0x000968:
    if !(== self.con 32s) goto 0x000998
0x00097C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00099C
0x000998:
    push 0s
0x00099C:
    if !pop goto 0x0009C0
0x0009A0:
    self.con = 33s
    stog.alarm[4s] = 60s
0x0009C0:
    if !(== self.con 34s) goto 0x000A54
0x0009D4:
    push (int32 self.asg):lsprite
    stog.sprite_index* = (int32 self.asg)
    push 0.2d
    stog.image_speed* = (int32 self.asg)
    push -1s
    stog.hspeed* = (int32 self.asg)
    stog.alarm[4s] = 80s
    self.con = 35s
0x000A54:
    if !(== self.con 36s) goto 0x000AB8
0x000A68:
    push 0s
    stog.hspeed* = (int32 self.asg)
    push 0s
    stog.image_speed* = (int32 self.asg)
    self.con = 37s
    stog.alarm[4s] = 70s
0x000AB8:
    if !(== self.con 38s) goto 0x000B2C
0x000ACC:
    push (int32 self.asg):dtsprite
    stog.sprite_index* = (int32 self.asg)
    push 0s
    stog.image_index* = (int32 self.asg)
    self.con = 39s
    stog.alarm[4s] = 30s
0x000B2C:
    if !(== self.con 40s) goto 0x000BC4
0x000B40:
    global.faceemotion = 0s
    stog.msg[0s] = "* Nice day today^1, huh?/"
    stog.msg[1s] = "* Birds are singing^1,&  flowers are blooming.../"
    stog.msg[2s] = "* Perfect weather for a&  game of catch./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 41s
0x000BC4:
    if !(== self.con 41s) goto 0x000BF4
0x000BD8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000BF8
0x000BF4:
    push 0s
0x000BF8:
    if !pop goto 0x000C44
0x000BFC:
    push (int32 self.asg):lsprite
    stog.sprite_index* = (int32 self.asg)
    self.con = 42s
    stog.alarm[4s] = 120s
0x000C44:
    if !(== self.con 43s) goto 0x000C90
0x000C58:
    push 1911s
    stog.sprite_index* = (int32 self.asg)
    self.con = 44s
    stog.alarm[4s] = 60s
0x000C90:
    if !(== self.con 45s) goto 0x000D28
0x000CA4:
    global.faceemotion = 3s
    stog.msg[0s] = "* .../"
    stog.msg[1s] = "* You know what we must&  do./"
    stog.msg[2s] = "* When you are ready^1,&  come into the next&  room./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 46s
0x000D28:
    if !(== self.con 46s) goto 0x000D58
0x000D3C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000D5C
0x000D58:
    push 0s
0x000D5C:
    if !pop goto 0x000DE0
0x000D60:
    push (int32 self.asg):usprite
    stog.sprite_index* = (int32 self.asg)
    push 0.25d
    stog.image_speed* = (int32 self.asg)
    push -2s
    stog.vspeed* = (int32 self.asg)
    self.con = 47s
    stog.alarm[4s] = 30s
0x000DE0:
    if !(== self.con 48s) goto 0x000EC4
0x000DF4:
    push -1s
    if !(< 0s:view_yview self.remy) goto 0x000E3C
0x000E14:
    push -1s
    stog.view_yview[(+ 0s:view_yview 2s)] = 0s
    goto 0x000EC4
0x000E3C:
    stog.view_yview[0s] = self.remy
    [obj_mainchara].cutscene = 0s
    stog.view_object[0s] = 1570s
    global.interact = 0s
    pushenv (int32 self.asg) 0x000E9C
0x000E90:
    call (instance_destroy[]:int32 )
0x000E9C:
    popenv 0x000E90
0x000EA0:
    call (instance_destroy[]:int32 )
    global.plot = 206s
    self.con = 49s
0x000EC4:
    if !(== self.con 99s) goto 0x000EF4
0x000ED8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000EF8
0x000EF4:
    push 0s
0x000EF8:
    if !pop goto 0x000F44
0x000EFC:
    push (int32 self.asg):rtsprite
    stog.sprite_index* = (int32 self.asg)
    self.con = 100s
    stog.alarm[4s] = 10s
0x000F44:
    if !(== self.con 101s) goto 0x000FA0
0x000F58:
    push (int32 self.asg):dtsprite
    stog.sprite_index* = (int32 self.asg)
    self.con = 102s
    stog.alarm[4s] = 10s
0x000FA0:
    if !(== self.con 103s) goto 0x0010B0
0x000FB4:
    global.facechoice = 7s
    global.msc = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "\\E3* ... huh?/"
    stog.msg[1s] = "* You must be the one&  that flower just warned&  me about./"
    stog.msg[2s] = "\\E0* Howdy!/"
    stog.msg[3s] = "* .../"
    stog.msg[4s] = "\\E3* Erm..^1.&* What kind of monster&  are you...?/"
    stog.msg[5s] = "\\E0* Sorry^1, I cannot tell./"
    stog.msg[6s] = "* Well^1, we can always%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 111s
0x0010B0:
    if !(== self.con 111s) goto 0x0010E0
0x0010C4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0010E4
0x0010E0:
    push 0s
0x0010E4:
    if !pop goto 0x001130
0x0010E8:
    global.battlegroup = 100s
    global.mercy = 1s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.con = 112s
0x001130:
    exit
