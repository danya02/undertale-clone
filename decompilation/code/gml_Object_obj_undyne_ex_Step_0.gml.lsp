0x000000:
    if !(== global.mnfight 4s) goto 0x000028
0x000014:
    push (== self.attacked 1s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000150
0x000030:
    if !(> self.hitno 0s) goto 0x0000CC
0x000044:
    if !(>= self.hitno 1s) goto 0x00006C
0x000058:
    push (< self.rating 10s)
    goto 0x000070
0x00006C:
    push 0s
0x000070:
    if !pop goto 0x00008C
0x000074:
    self.rating = (+ self.rating 1s)
0x00008C:
    if !(>= self.hitno 3s) goto 0x0000B4
0x0000A0:
    push (< self.rating 10s)
    goto 0x0000B8
0x0000B4:
    push 0s
0x0000B8:
    if !pop goto 0x0000C8
0x0000BC:
    self.rating = 10s
0x0000C8:
    goto 0x0000F8
0x0000CC:
    if !(> self.rating 8s) goto 0x0000F8
0x0000E0:
    self.rating = (- self.rating 1s)
0x0000F8:
    self.attacked = 0s
    global.mnfight = 5s
    if !(== global.border 12s) goto 0x000130
0x000124:
    global.border = 13s
0x000130:
    call (SCR_BORDERSETUP[]:int32 )
    stog.alarm[7s] = 10s
0x000150:
    push -1s
    if !(> 5s:alarm 0s) goto 0x0002F8
0x00016C:
    push -5s
    if !(== 0s:monster 1s) goto 0x0001F0
0x000188:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0001F0
0x0001C0:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0001F0:
    push -5s
    if !(== 1s:monster 1s) goto 0x000274
0x00020C:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000274
0x000244:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000274:
    push -5s
    if !(== 2s:monster 1s) goto 0x0002F8
0x000290:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0002F8
0x0002C8:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0002F8:
    if !(== global.mnfight 1s) goto 0x0003CC
0x00030C:
    if !(== self.talked 0s) goto 0x0003CC
0x000320:
    stog.alarm[5s] = 15s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
    if !(== self.order -35s) goto 0x0003CC
0x000374:
    global.mnfight = 99s
    global.bmenuno = 4s
    [obj_heart].x = -400s
    stog.alarm[5s] = -2s
    stog.alarm[6s] = -2s
    self.con = 60s
0x0003CC:
    if !(== self.uncancel 1s) goto 0x000430
0x0003E0:
    stog.alarm[5s] = 100s
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000430
0x000410:
    stog.alarm[5s] = 1s
    self.uncancel = 0s
0x000430:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000494
0x000454:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000494:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x0005C4
0x0004B8:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x00050C
0x0004F8:
    stog.alarm[2s] = 15s
0x00050C:
    popenv 0x0004F8
0x000510:
    push -5s
    if !(> (int32 self.myself):monsterhp 0s) goto 0x000584
0x000534:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x0005C4
0x000584:
    global.myfight = -99s
    global.mnfight = -99s
    stog.hurtanim[(int32 self.myself)] = 0s
    self.con = 50s
0x0005C4:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000694
0x0005E8:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x00065C
0x000648:
    stog.alarm[2s] = 30s
0x00065C:
    popenv 0x000648
0x000660:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000694:
    if !(== self.greenlock 1s) goto 0x0006BC
0x0006A8:
    push (> global.mnfight 0s)
    goto 0x0006C0
0x0006BC:
    push 0s
0x0006C0:
    if !pop goto 0x000704
0x0006C4:
    if !(== 743.sprite_index 39s) goto 0x0006F4
0x0006D8:
    [obj_heart].y = (+ 759.y 34s)
    goto 0x000700
0x0006F4:
    self.greenlock = 0s
0x000700:
    goto 0x000710
0x000704:
    self.greenlock = 0s
0x000710:
    if !(== self.darkify 1s) goto 0x0007B0
0x000724:
    if !(< (int32 self.pseudodarker):image_alpha 0.5d) goto 0x000780
0x00074C:
    stog.image_alpha* = (+ (int32 self.pseudodarker):image_alpha 0.04d)
    goto 0x00078C
0x000780:
    push (int32 self.pseudodarker)
    self.darkify = 2s
0x00078C:
    [obj_borderparent].image_alpha = (- 1s (int32 self.pseudodarker):image_alpha)
0x0007B0:
    if !(== self.darkify 3s) goto 0x000884
0x0007C4:
    if !(> (int32 self.pseudodarker):image_alpha 0s) goto 0x000814
0x0007E4:
    stog.image_alpha* = (- (int32 self.pseudodarker):image_alpha 0.04d)
0x000814:
    push (int32 self.pseudodarker)
    [obj_borderparent].image_alpha = (- 1s (int32 self.pseudodarker):image_alpha)
    if !(<= (int32 self.pseudodarker):image_alpha 0s) goto 0x000884
0x000858:
    self.darkify = 0s
    pushenv (int32 self.pseudodarker) 0x000880
0x000874:
    call (instance_destroy[]:int32 )
0x000880:
    popenv 0x000874
0x000884:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000954
0x0008A8:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x00091C
0x000908:
    stog.alarm[2s] = 30s
0x00091C:
    popenv 0x000908
0x000920:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000954:
    if !(== global.mnfight 2s) goto 0x001054
0x000968:
    if !(== self.attacked 0s) goto 0x001054
0x00097C:
    self.hitno = 0s
    self.xx = (/ self.room_width (double 2s))
    self.yy = (/ self.room_height (double 2s))
    global.turntimer = 300s
    global.firingrate = 15s
    if !(== 743.sprite_index 39s) goto 0x000AA4
0x0009EC:
    self.gen = (instance_create[]:int32 (var 263s) self.yy self.xx)
    push self.lesson
    stog.lesson* = (int32 self.gen)
    push self.rating
    stog.rating* = (int32 self.gen)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    pushenv (int32 self.gen) 0x000A9C
0x000A88:
    call (event_user[]:int32 (var 1s))
0x000A9C:
    popenv 0x000A88
0x000AA0:
    goto 0x000FC4
0x000AA4:
    if (== self.orderb 0s) goto 0x000ACC
0x000AB8:
    push (== self.orderb 6s)
    goto 0x000AD0
0x000ACC:
    push 1s
0x000AD0:
    if !pop goto 0x000BDC
0x000AD4:
    self.borderspec = 0s
    global.turntimer = 240s
    call (event_user[]:int32 (var 2s))
    self.ratingb = (+ self.ratingb 1s)
    self.lesson = (+ self.lesson 1s)
    if !(> self.ratingb 10s) goto 0x000B50
0x000B44:
    self.ratingb = 10s
0x000B50:
    if !(< self.ratingb 8s) goto 0x000B70
0x000B64:
    self.ratingb = 8s
0x000B70:
    global.firingrate = (- 18s self.ratingb)
    self.gen = (instance_create[]:int32 (var 270s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
0x000BDC:
    if (== self.orderb 1s) goto 0x000C04
0x000BF0:
    push (== self.orderb 7s)
    goto 0x000C08
0x000C04:
    push 1s
0x000C08:
    if !pop goto 0x000D00
0x000C0C:
    global.turntimer = 220s
    self.borderspec = 1s
    self.ratingb = (+ self.ratingb 1s)
    self.lesson = (+ self.lesson 1s)
    if !(> self.ratingb 10s) goto 0x000C74
0x000C68:
    self.ratingb = 10s
0x000C74:
    if !(< self.ratingb 8s) goto 0x000C94
0x000C88:
    self.ratingb = 8s
0x000C94:
    global.firingrate = (- 23s self.ratingb)
    self.gen = (instance_create[]:int32 (var 269s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
0x000D00:
    if (== self.orderb 2s) goto 0x000D28
0x000D14:
    push (== self.orderb 3s)
    goto 0x000D2C
0x000D28:
    push 1s
0x000D2C:
    if !pop goto 0x000DFC
0x000D30:
    self.borderspec = 0s
    global.turntimer = 215s
    self.ratingb = (+ self.ratingb 1s)
    self.lesson = (+ self.lesson 1s)
    self.gen = (instance_create[]:int32 (var 276s) self.y self.x)
    push 0s
    stog.type* = (int32 self.gen)
    push 0s
    stog.t* = (int32 self.gen)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
0x000DFC:
    if !(== self.orderb 4s) goto 0x000EAC
0x000E10:
    self.borderspec = 0s
    global.turntimer = 400s
    self.ratingb = (+ self.ratingb 1s)
    self.lesson = (+ self.lesson 1s)
    self.gen = (instance_create[]:int32 (var 279s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
0x000EAC:
    if !(== self.orderb 5s) goto 0x000F8C
0x000EC0:
    self.borderspec = 0s
    global.turntimer = 215s
    self.ratingb = (+ self.ratingb 1s)
    self.lesson = (+ self.lesson 1s)
    self.gen = (instance_create[]:int32 (var 276s) self.y self.x)
    push 1s
    stog.type* = (int32 self.gen)
    push 1s
    stog.t* = (int32 self.gen)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
0x000F8C:
    self.orderb = (+ self.orderb 1s)
    if !(>= self.orderb 8s) goto 0x000FC4
0x000FB8:
    self.orderb = 4s
0x000FC4:
    push self.myself
    stog.myself* = (int32 self.gen)
    self.hitno = 0s
    self.attacked = 1s
    self.order = (+ self.order 1s)
    self.lesson = (- self.lesson 1s)
    if !(>= self.mycommand 0s) goto 0x001054
0x00103C:
    stog.msg[0s] = "* The wind is howling..."
0x001054:
    if !(== global.mnfight 3s) goto 0x001090
0x001068:
    if !(> self.darkify 0s) goto 0x001090
0x00107C:
    push (!= self.darkify 3s)
    goto 0x001094
0x001090:
    push 0s
0x001094:
    if !pop goto 0x0010A4
0x001098:
    self.darkify = 3s
0x0010A4:
    if !(== global.myfight 2s) goto 0x001188
0x0010B8:
    if !(!= self.whatiheard -1s) goto 0x001188
0x0010CC:
    if !(== global.heard 0s) goto 0x001188
0x0010E0:
    if !(== self.whatiheard 0s) goto 0x00117C
0x0010F4:
    global.msc = 0s
    stog.msg[0s] = "* UNDYNE THE UNDYING 99ATK 99DEF&* Heroine reformed by her own&  DETERMINATION to save Earth./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x001178
0x00116C:
    self.halt = 0s
0x001178:
    popenv 0x00116C
0x00117C:
    global.heard = 1s
0x001188:
    self.siner = (+ self.siner 1s)
    if !(bool (instance_exists[]:int32 (var 267s))) goto 0x0011F0
0x0011B8:
    [obj_boxsiner].x = (+ 267.xstart (* (sin[]:int32 (/ self.siner (double 24s))) 40s))
0x0011F0:
    if !(== global.myfight 4s) goto 0x001244
0x001204:
    if !(== global.mercyuse 0s) goto 0x001244
0x001218:
    self.mercied = (+ self.mercied 1s)
    call (script_execute[]:int32 (var 163s))
0x001244:
    if !(== 743.sprite_index 39s) goto 0x00126C
0x001258:
    push (== global.mnfight 2s)
    goto 0x001270
0x00126C:
    push 0s
0x001270:
    if !pop goto 0x001280
0x001274:
    [obj_heart].movement = 3s
0x001280:
    if !(== global.mnfight 2s) goto 0x0012BC
0x001294:
    if !(< global.turntimer 1s) goto 0x0012BC
0x0012A8:
    push (== 743.sprite_index 34s)
    goto 0x0012C0
0x0012BC:
    push 0s
0x0012C0:
    if !pop goto 0x0012D0
0x0012C4:
    global.mnfight = 4s
0x0012D0:
    if !(== self.con 50s) goto 0x001304
0x0012E4:
    self.con = 51s
    stog.alarm[4s] = 90s
0x001304:
    if !(== self.con 52s) goto 0x0014C0
0x001318:
    self.shakify = 2s
    push 1s
    stog.shakify* = (int32 self.mypart1)
    self.myfight = 0s
    self.mnfight = 99s
    global.bmenuno = 4s
    global.border = 0s
    call (SCR_BORDERSETUP[]:int32 )
    self.con = 53s
    global.msc = 0s
    global.typer = 94s
    stog.msg[0s] = "Damn it.../"
    stog.msg[1s] = "So even THAT&power..^1.&It wasn't enough...?/"
    stog.msg[2s] = ".../"
    stog.msg[3s] = "\\E1Heh.../"
    stog.msg[4s] = "Heheheh.../"
    stog.msg[5s] = "\\E2If you..^1./"
    stog.msg[6s] = "If you think I'm&gonna give up hope^1,&you're wrong./"
    stog.msg[7s] = "'Cause I've..^1.&Got my friends&behind me./"
    stog.msg[8s] = "\\E3Alphys told me that&she would watch me&fight you.../"
    stog.msg[9s] = "\\E4And if anything went&wrong^1, she would..^1.&evacuate everyone./"
    stog.msg[10s] = "\\E5By now she's called&ASGORE and told him&to absorb the 6&human SOULs./%%"
    call (scr_blcon_x[]:int32 self.blcony self.blconx)
0x0014C0:
    if !(== self.con 53s) goto 0x0014F0
0x0014D4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0014F4
0x0014F0:
    push 0s
0x0014F4:
    if !pop goto 0x0015A0
0x0014F8:
    global.typer = 95s
    stog.msg[0s] = "And with that&power.../%%"
    self.melter = (scr_marker[]:int32 (var 299s) (var -40s) (- (int32 self.mypart1):x 20s))
    self.con = 54s
    call (scr_blcon_x[]:int32 self.blcony self.blconx)
    pushenv (int32 self.mypart1) 0x00159C
0x001590:
    call (instance_destroy[]:int32 )
0x00159C:
    popenv 0x001590
0x0015A0:
    if !(== self.con 54s) goto 0x0015D0
0x0015B4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0015D4
0x0015D0:
    push 0s
0x0015D4:
    if !pop goto 0x00163C
0x0015D8:
    global.typer = 96s
    stog.msg[0s] = "This world will&live on...!/%%"
    push 1s
    stog.image_index* = (int32 self.melter)
    self.con = 71s
    call (scr_blcon_x[]:int32 self.blcony self.blconx)
0x00163C:
    if !(== self.con 71s) goto 0x00166C
0x001650:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001670
0x00166C:
    push 0s
0x001670:
    if !pop goto 0x001810
0x001674:
    global.monstersprite = (int32 self.melter):sprite_index
    global.vaporspeed = 0s
    self.ddd = (instance_create[]:int32 (var 155s) (int32 self.melter):y (int32 self.melter):x)
    pushenv (int32 self.ddd) 0x001700
0x0016EC:
    call (scr_newvapordata[]:int32 (var 35s))
0x001700:
    popenv 0x0016EC
0x001704:
    push (int32 self.melter):sprite_index
    stog.sprite_index* = (int32 self.ddd)
    pushenv (int32 self.melter) 0x001748
0x00173C:
    call (instance_destroy[]:int32 )
0x001748:
    popenv 0x00173C
0x00174C:
    push self.ht
    stog.ht* = (int32 self.ddd)
    push self.wd
    stog.wd* = (int32 self.ddd)
    push 0s
    stog.image_speed* = (int32 self.ddd)
    push 1s
    stog.image_index* = (int32 self.ddd)
    global.kills = (+ global.kills 1s)
    global.xp = (+ global.xp 1500s)
    call (scr_levelup[]:int32 )
    self.con = 72s
    stog.alarm[4s] = 180s
0x001810:
    if !(== self.con 73s) goto 0x00189C
0x001824:
    call (instance_create[]:int32 (var 149s) self.y self.x)
    stog.flag[350s] = 1s
    stog.flag[251s] = 1s
    global.plot = 122s
    stog.alarm[9s] = 10s
    self.con = 74s
0x00189C:
    if !(== 743.sprite_index 34s) goto 0x0018BC
0x0018B0:
    global.mercy = 1s
0x0018BC:
    if !(== 743.sprite_index 39s) goto 0x0018DC
0x0018D0:
    global.mercy = 1s
0x0018DC:
    exit
