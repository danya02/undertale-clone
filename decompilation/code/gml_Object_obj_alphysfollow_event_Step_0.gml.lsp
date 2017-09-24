0x000000:
    if !(== self.con 1s) goto 0x00003C
0x000014:
    if !(== global.interact 0s) goto 0x00003C
0x000028:
    push (> 1570.x 400s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x000138
0x000044:
    push (var 1170s)
    self.al = (instance_create[]:int32 1570.ystart -1s (- 0s:view_xview 40s))
    push 1644s
    stog.mask_index* = (int32 self.al)
    push 1s
    stog.fun* = (int32 self.al)
    push 0.2d
    stog.image_speed* = (int32 self.al)
    push (int32 self.al):rsprite
    stog.sprite_index* = (int32 self.al)
    push 2s
    stog.hspeed* = (int32 self.al)
    self.con = 2s
    stog.alarm[4s] = 50s
    global.interact = 1s
0x000138:
    if !(== self.con 3s) goto 0x00019C
0x00014C:
    push 0s
    stog.speed* = (int32 self.al)
    push 0s
    stog.image_speed* = (int32 self.al)
    self.con = 4s
    stog.alarm[4s] = 60s
0x00019C:
    if !(== self.con 5s) goto 0x000254
0x0001B0:
    stog.flag[430s] = 1s
    global.msc = 0s
    global.typer = 47s
    global.facechoice = 6s
    global.faceemotion = 6s
    stog.msg[0s] = "* S..^1. Sorry about&  that!/"
    stog.msg[1s] = "\\E5* L-let's k-keep&  going!/%%"
    self.con = 6s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000254:
    if !(== self.con 6s) goto 0x000284
0x000268:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000288
0x000284:
    push 0s
0x000288:
    if !pop goto 0x0002E8
0x00028C:
    global.interact = 0s
    self.con = 7s
    self.follow = 1s
    self.nowx = 1570.x
    self.nowax = (- 1570.x (int32 self.al):x)
0x0002E8:
    if !(== self.follow 1s) goto 0x0003C4
0x0002FC:
    if !(<= (int32 self.al):x (- 1570.x self.nowax)) goto 0x000374
0x00032C:
    push (- 1570.x self.nowax)
    stog.x* = (int32 self.al)
    push 1570.image_speed
    stog.image_speed* = (int32 self.al)
    goto 0x00038C
0x000374:
    push 0s
    stog.image_speed* = (int32 self.al)
0x00038C:
    if !(> 1570.x 1050s) goto 0x0003C4
0x0003A0:
    self.follow = 0s
    push 0s
    stog.image_speed* = (int32 self.al)
0x0003C4:
    if !(== self.con 7s) goto 0x00040C
0x0003D8:
    if !(> 1570.x (+ self.nowx 200s)) goto 0x00040C
0x0003F8:
    push (== global.interact 0s)
    goto 0x000410
0x00040C:
    push 0s
0x000410:
    if !pop goto 0x0004DC
0x000414:
    global.interact = 1s
    stog.flag[430s] = 1s
    global.msc = 0s
    global.typer = 47s
    global.faceemotion = 5s
    global.facechoice = 6s
    stog.msg[0s] = "* S-so you're about&  to meet ASGORE^1,&  h-huh?/"
    stog.msg[1s] = "\\E6* You must be..^1.&* Y-you must be.../"
    stog.msg[2s] = "\\E5* Pr..^1. pretty&  excited about all&  that^1, huh?/%%"
    self.con = 8s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0004DC:
    if !(== self.con 8s) goto 0x00050C
0x0004F0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000510
0x00050C:
    push 0s
0x000510:
    if !pop goto 0x000570
0x000514:
    global.interact = 0s
    self.con = 9s
    self.follow = 1s
    self.nowx = 1570.x
    self.nowax = (- 1570.x (int32 self.al):x)
0x000570:
    if !(== self.con 9s) goto 0x0005B8
0x000584:
    if !(> 1570.x (+ self.nowx 200s)) goto 0x0005B8
0x0005A4:
    push (== global.interact 0s)
    goto 0x0005BC
0x0005B8:
    push 0s
0x0005BC:
    if !pop goto 0x000670
0x0005C0:
    global.interact = 1s
    stog.flag[430s] = 1s
    global.msc = 0s
    global.typer = 47s
    global.faceemotion = 4s
    global.facechoice = 6s
    stog.msg[0s] = "* You'll f-f-finally.../"
    stog.msg[1s] = "\\E7* You'll finally get&  to go home!/%%"
    self.con = 10s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000670:
    if !(== self.con 10s) goto 0x0006A0
0x000684:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0006A4
0x0006A0:
    push 0s
0x0006A4:
    if !pop goto 0x000704
0x0006A8:
    global.interact = 0s
    self.con = 11s
    self.follow = 1s
    self.nowx = 1570.x
    self.nowax = (- 1570.x (int32 self.al):x)
0x000704:
    if !(== self.con 50s) goto 0x000738
0x000718:
    self.con = 51s
    stog.alarm[4s] = 10s
0x000738:
    if !(== self.con 52s) goto 0x0007F0
0x00074C:
    global.interact = 1s
    stog.flag[430s] = 1s
    global.msc = 0s
    global.typer = 47s
    global.faceemotion = 0s
    global.facechoice = 6s
    stog.msg[0s] = "* W..^1.&* Wait!/%%"
    [obj_alphys_npc].sprite_index = 1645s
    self.con = 53s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0007F0:
    if !(== self.con 53s) goto 0x000820
0x000804:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000824
0x000820:
    push 0s
0x000824:
    if !pop goto 0x000854
0x000828:
    global.facing = 3s
    self.con = 54s
    stog.alarm[4s] = 30s
0x000854:
    if !(== self.con 55s) goto 0x00099C
0x000868:
    [obj_alphys_npc].sprite_index = 1643s
    global.interact = 1s
    stog.flag[430s] = 2s
    global.msc = 0s
    global.typer = 47s
    global.faceemotion = 1s
    global.facechoice = 6s
    stog.msg[0s] = "* I mean^1, um..^1.&* I.../"
    stog.msg[1s] = "\\E1* I was just going&  to..^1.&* ...um.../"
    stog.msg[2s] = "\\E2* Say goodbye^1, and.../"
    stog.msg[3s] = "* .../"
    stog.msg[4s] = "\\E3* .../"
    stog.msg[5s] = "\\E4* .../"
    stog.msg[6s] = "* I can't take&  this anymore./%%"
    self.con = 56s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x00099C:
    if !(== self.con 56s) goto 0x0009CC
0x0009B0:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x0009D0
0x0009CC:
    push 0s
0x0009D0:
    if !pop goto 0x000A10
0x0009D4:
    if !(== 782.stringno 6s) goto 0x000A10
0x0009E8:
    push (int32 self.al):usprite
    stog.sprite_index* = (int32 self.al)
0x000A10:
    if !(== self.con 56s) goto 0x000A40
0x000A24:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000A44
0x000A40:
    push 0s
0x000A44:
    if !pop goto 0x000A74
0x000A48:
    [obj_alphys_npc].sprite_index = 1647s
    self.con = 57s
    stog.alarm[4s] = 45s
0x000A74:
    if !(== self.con 58s) goto 0x000BA4
0x000A88:
    global.interact = 1s
    stog.flag[430s] = 2s
    global.msc = 0s
    global.typer = 47s
    global.faceemotion = 6s
    global.facechoice = 6s
    stog.msg[0s] = "* I.../"
    stog.msg[1s] = "\\E5* I lied to you./"
    stog.msg[2s] = "\\E7* A human SOUL isn't&  strong enough to&  cross the barrier alone./"
    stog.msg[3s] = "\\E6* It takes at least&  a human soul.../"
    stog.msg[4s] = "\\E5* And a monster&  soul./"
    stog.msg[5s] = "\\E5* .../%%"
    [obj_alphys_npc].sprite_index = 1647s
    self.con = 59s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000BA4:
    if !(== self.con 59s) goto 0x000BD4
0x000BB8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000BD8
0x000BD4:
    push 0s
0x000BD8:
    if !pop goto 0x000BFC
0x000BDC:
    self.con = 60s
    stog.alarm[4s] = 30s
0x000BFC:
    if !(== self.con 61s) goto 0x000C48
0x000C10:
    push 1646s
    stog.sprite_index* = (int32 self.al)
    self.con = 62s
    stog.alarm[4s] = 30s
0x000C48:
    if !(== self.con 63s) goto 0x000D30
0x000C5C:
    global.interact = 1s
    stog.flag[430s] = 2s
    global.msc = 0s
    global.typer = 47s
    global.faceemotion = 6s
    global.facechoice = 6s
    stog.msg[0s] = "* If you want to&  go home.../"
    stog.msg[1s] = "\\E5* You'll have to&  take his soul./"
    stog.msg[2s] = "\\E7* You'll have to&  kill ASGORE./%%"
    [obj_alphys_npc].sprite_index = 1646s
    self.con = 64s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000D30:
    if !(== self.con 64s) goto 0x000D60
0x000D44:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000D64
0x000D60:
    push 0s
0x000D64:
    if !pop goto 0x000D88
0x000D68:
    self.con = 65s
    stog.alarm[4s] = 30s
0x000D88:
    if !(== self.con 66s) goto 0x000DB8
0x000D9C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000DBC
0x000DB8:
    push 0s
0x000DBC:
    if !pop goto 0x000E30
0x000DC0:
    [obj_alphys_npc].sprite_index = 1647s
    self.follow = 0s
    push 0.2d
    stog.image_speed* = (int32 self.al)
    push -1s
    stog.hspeed* = (int32 self.al)
    self.con = 67s
    stog.alarm[4s] = 40s
0x000E30:
    if !(== self.con 68s) goto 0x000E9C
0x000E44:
    push 0s
    stog.image_speed* = (int32 self.al)
    push 0s
    stog.speed* = (int32 self.al)
    self.con = 68.1d
    stog.alarm[4s] = 60s
0x000E9C:
    if !(== self.con 69.1d) goto 0x000EC4
0x000EB8:
    self.con = 69s
0x000EC4:
    if !(== self.con 69s) goto 0x000F7C
0x000ED8:
    global.interact = 1s
    stog.flag[430s] = 2s
    global.msc = 0s
    global.typer = 47s
    global.faceemotion = 7s
    global.facechoice = 6s
    stog.msg[0s] = "* I'm sorry./%%"
    [obj_alphys_npc].sprite_index = 1647s
    self.con = 70s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000F7C:
    if !(== self.con 70s) goto 0x000FAC
0x000F90:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000FB0
0x000FAC:
    push 0s
0x000FB0:
    if !pop goto 0x001048
0x000FB4:
    push -4s
    stog.hspeed* = (int32 self.al)
    push 0.3334d
    stog.image_speed* = (int32 self.al)
    global.facing = 2s
    self.con = 71s
    self.follow = 0s
    global.interact = 0s
    stog.flag[492s] = 1s
    global.plot = 199s
    call (instance_destroy[]:int32 )
0x001048:
    exit
