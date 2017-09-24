0x000000:
    if !(== global.mnfight 3s) goto 0x00002C
0x000014:
    self.attacked = 0s
    [obj_heart].movement = 0s
0x00002C:
    push -1s
    if !(> 5s:alarm 0s) goto 0x0001D4
0x000048:
    push -5s
    if !(== 0s:monster 1s) goto 0x0000CC
0x000064:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0000CC
0x00009C:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0000CC:
    push -5s
    if !(== 1s:monster 1s) goto 0x000150
0x0000E8:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000150
0x000120:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000150:
    push -5s
    if !(== 2s:monster 1s) goto 0x0001D4
0x00016C:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0001D4
0x0001A4:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0001D4:
    if !(== global.mnfight 1s) goto 0x00023C
0x0001E8:
    if !(== self.talked 0s) goto 0x00023C
0x0001FC:
    stog.alarm[5s] = 110s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x00023C:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0002C8
0x000254:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0002AC
0x000270:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x0002AC
0x000290:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x0002B0
0x0002AC:
    push 0s
0x0002B0:
    if !pop goto 0x0002C8
0x0002B4:
    stog.alarm[5s] = 2s
0x0002C8:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x00032C
0x0002EC:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x00032C:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x00041C
0x000350:
    pushenv (int32 self.dmgwriter) 0x000374
0x000360:
    stog.alarm[2s] = 15s
0x000374:
    popenv 0x000360
0x000378:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x0003EC
0x00039C:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x00041C
0x0003EC:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x00041C:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x0004EC
0x000440:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0004B4
0x0004A0:
    stog.alarm[2s] = 30s
0x0004B4:
    popenv 0x0004A0
0x0004B8:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x0004EC:
    if !(== global.mnfight 2s) goto 0x001434
0x000500:
    if !(== self.attacked 0s) goto 0x0013F8
0x000514:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 150s
    global.firingrate = 10s
    if !(== self.pop 3s) goto 0x000570
0x000550:
    global.firingrate = (* global.firingrate 2.5d)
0x000570:
    if !(== self.pop 2s) goto 0x0005A4
0x000584:
    global.firingrate = (* global.firingrate 1.8d)
0x0005A4:
    if !(== self.turns 0s) goto 0x000B4C
0x0005B8:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
    global.turntimer = 240s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 40s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (- 0s:idealborder 40s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 60s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (- 0s:idealborder 60s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (- 0s:idealborder 170s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 110s) -5s (- 0s:idealborder 170s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (- 0s:idealborder 190s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 110s) -5s (- 0s:idealborder 190s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 90s) -5s (- 0s:idealborder 320s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push 1s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 480s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 700s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 700s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 700s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (- 0s:idealborder 700s))
    push 4s
    stog.hspeed* = (int32 self.gen)
0x000B4C:
    if !(> self.turns 0s) goto 0x0013C8
0x000B60:
    if !(>= self.mycommand 50s) goto 0x001074
0x000B74:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
    global.turntimer = 220s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 60s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 1s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 140s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 0s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 220s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 1s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 300s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 0s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 380s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 1s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 460s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 0s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 540s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 1s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 620s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 0s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 1250s))
    push -7.5d
    stog.hspeed* = (int32 self.gen)
    push 1s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 1330s))
    push -7.5d
    stog.hspeed* = (int32 self.gen)
    push 0s
    stog.blue* = (int32 self.gen)
    goto 0x0013C8
0x001074:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
    global.turntimer = 150s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (- 0s:idealborder 10s))
    push 2s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (- 0s:idealborder 110s))
    push 2s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (- 0s:idealborder 210s))
    push 2s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (- 0s:idealborder 310s))
    push 2s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 10s))
    push -2s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 110s))
    push -2s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 210s))
    push -2s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 310s))
    push -2s
    stog.hspeed* = (int32 self.gen)
    [blt_sizebone].speed = 4s
    global.turntimer = 150s
0x0013C8:
    self.turns = 1s
    stog.msg[0s] = "* The Lost Souls stand there."
    self.attacked = 1s
0x0013F8:
    if !(== self.mercymod 999999) goto 0x001428
0x001410:
    global.turntimer = -1s
    global.mnfight = 3s
0x001428:
    self.whatiheard = -1s
0x001434:
    if !(== global.myfight 2s) goto 0x001A68
0x001448:
    if !(!= self.whatiheard -1s) goto 0x001A68
0x00145C:
    if !(== global.heard 0s) goto 0x001A68
0x001470:
    if !(== self.whatiheard 0s) goto 0x0015F4
0x001484:
    global.msc = 0s
    pushenv 605s 0x0014B0
0x001498:
    self.totalmercy = (+ self.totalmercy 1s)
0x0014B0:
    popenv 0x001498
0x0014B4:
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You told the Lost Soul a bad&  pun about skeletons./"
    stog.msg[1s] = "* He seems to hate it..^1.&* But the other Lost Soul&  seems to like it./^"
    if !(>= self.totalmercy 4s) goto 0x001584
0x001510:
    stog.msg[1s] = "* Something about that bad&  joke..^1.&* It's all flooding back!/%%"
    self.saved = 1s
    global.mnfight = 5s
    if !(== 560.mercyno 0s) goto 0x001584
0x001554:
    stog.msg[1s] = "* Suddenly^1, its memories are&  flooding back!/"
    stog.msg[2s] = "* Seeing how nicely you treated&  its brother^1, the other Lost&  Soul remembers^1, too!/%%"
0x001584:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0015E4
0x0015D8:
    self.halt = 0s
0x0015E4:
    popenv 0x0015D8
0x0015E8:
    self.whatiheard = 9s
0x0015F4:
    if !(== self.whatiheard 3s) goto 0x00176C
0x001608:
    global.msc = 0s
    pushenv 605s 0x001634
0x00161C:
    self.totalmercy = (+ self.totalmercy 1s)
0x001634:
    popenv 0x00161C
0x001638:
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You asked the Lost Soul for&  help with a puzzle./"
    stog.msg[1s] = "* He doesn't know why^1, but he&  really wants to help you./^"
    if !(>= self.totalmercy 4s) goto 0x001708
0x001694:
    stog.msg[1s] = "* Suddenly^1, the memories are&  flooding back!/%%"
    self.saved = 1s
    global.mnfight = 5s
    if !(== 560.mercyno 0s) goto 0x001708
0x0016D8:
    stog.msg[1s] = "* Suddenly^1, its memories are&  flooding back!/"
    stog.msg[2s] = "* Seeing how nicely you treated&  its brother^1, the other Lost&  Soul remembers^1, too!/%%"
0x001708:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x001768
0x00175C:
    self.halt = 0s
0x001768:
    popenv 0x00175C
0x00176C:
    if !(== self.whatiheard 1s) goto 0x0018E4
0x001780:
    global.msc = 0s
    pushenv 605s 0x0017AC
0x001794:
    self.totalmercy = (+ self.totalmercy 1s)
0x0017AC:
    popenv 0x001794
0x0017B0:
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You asked the Lost Soul to&  cook something for you./"
    stog.msg[1s] = "* The Lost Soul is trying to&  hide its joy.../^"
    if !(>= self.totalmercy 4s) goto 0x001880
0x00180C:
    stog.msg[1s] = "* Suddenly^1, the memories are&  flooding back!/%%"
    self.saved = 1s
    global.mnfight = 5s
    if !(== 560.mercyno 0s) goto 0x001880
0x001850:
    stog.msg[1s] = "* Suddenly^1, its memories are&  flooding back!/"
    stog.msg[2s] = "* Seeing how nicely you treated&  its brother^1, the other Lost&  Soul remembers^1, too!/%%"
0x001880:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0018E0
0x0018D4:
    self.halt = 0s
0x0018E0:
    popenv 0x0018D4
0x0018E4:
    if !(== self.whatiheard 4s) goto 0x001A5C
0x0018F8:
    global.msc = 0s
    pushenv 605s 0x001924
0x00190C:
    self.totalmercy = (+ self.totalmercy 1s)
0x001924:
    popenv 0x00190C
0x001928:
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You insulted the Lost Soul./"
    stog.msg[1s] = "* Somehow^1, it seems flattered&  by this./^"
    if !(>= self.totalmercy 4s) goto 0x0019F8
0x001984:
    stog.msg[1s] = "* Somehow^1, it's flattered by&  this..^1. memories&  are flooding back!/%%"
    self.saved = 1s
    global.mnfight = 5s
    if !(== 560.mercyno 0s) goto 0x0019F8
0x0019C8:
    stog.msg[1s] = "* Suddenly^1, its memories are&  flooding back!/"
    stog.msg[2s] = "* Seeing how nicely you treated&  its brother^1, the other Lost&  Soul remembers^1, too!/%%"
0x0019F8:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x001A58
0x001A4C:
    self.halt = 0s
0x001A58:
    popenv 0x001A4C
0x001A5C:
    global.heard = 1s
0x001A68:
    if !(== global.myfight 4s) goto 0x001AC4
0x001A7C:
    if !(== global.mercyuse 0s) goto 0x001AC4
0x001A90:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001AC4
0x001AB8:
    call (instance_destroy[]:int32 )
0x001AC4:
    if !(== self.mercymod 222s) goto 0x001AF4
0x001AD8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001AF8
0x001AF4:
    push 0s
0x001AF8:
    if !pop goto 0x001B30
0x001AFC:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001B30
0x001B24:
    call (instance_destroy[]:int32 )
0x001B30:
    if !(<= global.turntimer 2s) goto 0x001B58
0x001B44:
    push (== global.mnfight 2s)
    goto 0x001B5C
0x001B58:
    push 0s
0x001B5C:
    if !pop goto 0x001BB4
0x001B60:
    [obj_heart].vspeed = 0s
    [obj_heart].jumpstage = 0s
    global.turntimer = -1s
    [obj_heart].movement = 0s
    [obj_heart].gravity = 0s
    [obj_heart].vspeed = 0s
    global.mnfight = 3s
0x001BB4:
    if !(== global.mnfight 5s) goto 0x001BE4
0x001BC8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001BE8
0x001BE4:
    push 0s
0x001BE8:
    if !pop goto 0x001EB0
0x001BEC:
    if !(== self.saved 1s) goto 0x001CE8
0x001C00:
    if !(< global.hp global.maxhp) goto 0x001C3C
0x001C18:
    global.hp = global.maxhp
    call (snd_play[]:int32 (var 155s))
0x001C3C:
    pushenv 1662s 0x001C50
0x001C44:
    call (instance_destroy[]:int32 )
0x001C50:
    popenv 0x001C44
0x001C54:
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    call (snd_play[]:int32 (var 30s))
    push 0s
    stog.face* = (int32 self.part1)
    pushenv 560s 0x001CC4
0x001CAC:
    push 0s
    stog.face* = (int32 self.mypart1)
0x001CC4:
    popenv 0x001CAC
0x001CC8:
    self.saved = 2s
    stog.alarm[11s] = 3s
0x001CE8:
    if !(== self.saved 3s) goto 0x001DD0
0x001CFC:
    global.faceemotion = 9s
    global.msc = 0s
    global.typer = 22s
    stog.msg[0s] = " NO! WAIT!^1!& YOU'RE MY FRIEND^1!& I COULD NEVER&  CAPTURE YOU!!/%%"
    call (scr_blcon_x[]:int32 (var 20s) (var 200s))
    pushenv 560s 0x001DC0
0x001D5C:
    global.msc = 0s
    global.typer = 80s
    stog.msg[0s] = "nah^1, i'm rootin for&ya^1, kid.                                 /%%"
    call (scr_blcon_x[]:int32 (var 140s) (var 200s))
    push 30s
    stog.sprite_index* = (int32 self.blcon)
0x001DC0:
    popenv 0x001D5C
0x001DC4:
    self.saved = 4s
0x001DD0:
    if !(== self.saved 4s) goto 0x001E00
0x001DE4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001E04
0x001E00:
    push 0s
0x001E04:
    if !pop goto 0x001E70
0x001E08:
    call (instance_create[]:int32 (var 557s) (var -10s) (var -10s))
    self.saved = 5s
    call (instance_create[]:int32 (var 557s) (var 0s) (var 0s))
    stog.alarm[11s] = 34s
0x001E70:
    if !(== self.saved 6s) goto 0x001EB0
0x001E84:
    global.battlegroup = 256s
    stog.flag[507s] = 1s
    call (room_restart[]:int32 )
0x001EB0:
    exit
