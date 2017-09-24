0x000000:
    if !(== global.mnfight 3s) goto 0x000020
0x000014:
    self.attacked = 0s
0x000020:
    push -1s
    if !(> 5s:alarm 0s) goto 0x0001C8
0x00003C:
    push -5s
    if !(== 0s:monster 1s) goto 0x0000C0
0x000058:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0000C0
0x000090:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0000C0:
    push -5s
    if !(== 1s:monster 1s) goto 0x000144
0x0000DC:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000144
0x000114:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000144:
    push -5s
    if !(== 2s:monster 1s) goto 0x0001C8
0x000160:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0001C8
0x000198:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0001C8:
    if !(== global.mnfight 1s) goto 0x000230
0x0001DC:
    if !(== self.talked 0s) goto 0x000230
0x0001F0:
    stog.alarm[5s] = 110s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000230:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0002BC
0x000248:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0002A0
0x000264:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x0002A0
0x000284:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x0002A4
0x0002A0:
    push 0s
0x0002A4:
    if !pop goto 0x0002BC
0x0002A8:
    stog.alarm[5s] = 2s
0x0002BC:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000320
0x0002E0:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000320:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x00045C
0x000344:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x000398
0x000384:
    stog.alarm[2s] = 15s
0x000398:
    popenv 0x000384
0x00039C:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x00042C
0x0003C0:
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    stog.hurtanim[(int32 self.myself)] = 0s
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x00045C
0x00042C:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x00045C:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x00052C
0x000480:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0004F4
0x0004E0:
    stog.alarm[2s] = 30s
0x0004F4:
    popenv 0x0004E0
0x0004F8:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x00052C:
    if !(== global.mnfight 2s) goto 0x0008B4
0x000540:
    if !(== self.attacked 0s) goto 0x0008B4
0x000554:
    self.pop = (scr_monstersum[]:int32 )
    pushenv (int32 self.mypart1) 0x000580
0x000574:
    call (instance_destroy[]:int32 )
0x000580:
    popenv 0x000574
0x000584:
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    global.turntimer = 160s
    global.firingrate = 25s
    if !(== self.pop 3s) goto 0x0005F8
0x0005D8:
    global.firingrate = (* global.firingrate 2.4d)
0x0005F8:
    if !(== self.pop 2s) goto 0x00062C
0x00060C:
    global.firingrate = (* global.firingrate 1.7d)
0x00062C:
    if !(>= self.mycommand 0s) goto 0x000654
0x000640:
    push (< self.mycommand 25s)
    goto 0x000658
0x000654:
    push 0s
0x000658:
    if !pop goto 0x0006D0
0x00065C:
    global.turntimer = 200s
    self.gen = (instance_create[]:int32 (var 671s) (+ self.y 96s) (+ self.x 24s))
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    goto 0x000748
0x0006D0:
    global.firingrate = 4s
    push (var 662s)
    push -5s
    self.gen = (instance_create[]:int32 2s:idealborder -5s (+ (+ 0s:idealborder 80s) (random[]:int32 (var 20s))))
    push 0s
    stog.bullettype* = (int32 self.gen)
0x000748:
    push self.myself
    stog.myself* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x000790
0x000778:
    stog.msg[0s] = "* Temmie is trying to glomp&  you."
0x000790:
    if !(>= self.mycommand 25s) goto 0x0007BC
0x0007A4:
    stog.msg[0s] = "* Temmie forgot her other&  attack."
0x0007BC:
    if !(>= self.mycommand 50s) goto 0x0007E8
0x0007D0:
    stog.msg[0s] = "* Temmie vibrates intensely."
0x0007E8:
    if !(>= self.mycommand 75s) goto 0x000814
0x0007FC:
    stog.msg[0s] = "* Temmie is doing her hairs."
0x000814:
    if !(>= self.mycommand 83s) goto 0x000840
0x000828:
    stog.msg[0s] = "* Temmiy accidentally misspells&  her own name."
0x000840:
    if !(>= self.mycommand 90s) goto 0x00086C
0x000854:
    stog.msg[0s] = "* Smells like Temmie Flakes."
0x00086C:
    push -5s
    if !(< (int32 self.myself):monsterhp 3s) goto 0x0008A8
0x000890:
    stog.msg[0s] = "* How'd you do that?"
0x0008A8:
    self.attacked = 1s
0x0008B4:
    if !(== global.myfight 2s) goto 0x000E98
0x0008C8:
    if !(!= self.whatiheard -1s) goto 0x000E98
0x0008DC:
    if !(== global.heard 0s) goto 0x000E98
0x0008F0:
    if !(== self.whatiheard 0s) goto 0x000998
0x000904:
    global.msc = 0s
    stog.msg[0s] = "* TEMMIE - RATED TEM OUTTA TEM&* Loves to pet cute humans^1.&* But you're allergic!/^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000988
0x00097C:
    self.halt = 0s
0x000988:
    popenv 0x00097C
0x00098C:
    self.whatiheard = 9s
0x000998:
    if !(== self.whatiheard 1s) goto 0x000AE0
0x0009AC:
    call (scr_itemcheck[]:int32 (var 22s))
    if !(== self.haveit 0s) goto 0x000A60
0x0009D4:
    global.msc = 0s
    stog.msg[0s] = "* Temmie only wants the&  Temmie Flakes./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A58
0x000A4C:
    self.halt = 0s
0x000A58:
    popenv 0x000A4C
0x000A5C:
    goto 0x000AE0
0x000A60:
    global.msc = 0s
    global.myfight = 3s
    global.bmenuno = 6s
    stog.msg[0s] = "   Give the Temmie Flakes?& &   Yas             NO!!!!!!!\\C"
    [OBJ_WRITER].halt = 3s
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
0x000AE0:
    if !(== self.whatiheard 3s) goto 0x000BEC
0x000AF4:
    global.msc = 0s
    stog.msg[0s] = "* You flex at Temmie.../%%"
    self.flex = (+ self.flex 1s)
    if !(< global.at 150s) goto 0x000B5C
0x000B44:
    global.at = (+ global.at 7s)
0x000B5C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BBC
0x000BB0:
    self.halt = 0s
0x000BBC:
    popenv 0x000BB0
0x000BC0:
    push -5s
    stog.monsteratk[(+ (int32 self.myself):monsteratk 1s)] = (int32 self.myself)
0x000BEC:
    if !(== self.whatiheard 4s) goto 0x000CA8
0x000C00:
    stog.flag[146s] = 1s
    global.msc = 0s
    stog.msg[0s] = "* You say hello to Temmie./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000C98
0x000C8C:
    self.halt = 0s
0x000C98:
    popenv 0x000C8C
0x000C9C:
    self.mercymod = -10s
0x000CA8:
    if !(== self.whatiheard 6s) goto 0x000DD0
0x000CBC:
    self.i = 0s
    self.n = 0s
    if (<= 8s 0) goto 0x000D64
0x000CEC:
    push 8s
    push -5s
    if !(== (int32 self.i):item 22s) goto 0x000D34
0x000D10:
    self.n = 1s
    stog.flag[146s] = 1s
    goto 0x000D4C
0x000D34:
    self.i = (+ self.i 1s)
0x000D4C:
    if (bool (- pop 1)) goto 0x000CEC
0x000D64:
    push (- pop 1)
    pop
    call (scr_itemshift[]:int32 (var 0s) self.i)
    pushenv 785s 0x000D98
0x000D8C:
    call (instance_destroy[]:int32 )
0x000D98:
    popenv 0x000D8C
0x000D9C:
    stog.alarm[6s] = 1s
    stog.alarm[5s] = 100s
    global.myfight = 0s
0x000DD0:
    if !(== self.whatiheard 7s) goto 0x000E8C
0x000DE4:
    pushenv (int32 self.mypart1) 0x000E00
0x000DF4:
    self.atk = 3s
0x000E00:
    popenv 0x000DF4
0x000E04:
    call (caster_pause[]:int32 global.batmusic)
    stog.alarm[7s] = 190s
    pushenv 785s 0x000E40
0x000E34:
    call (instance_destroy[]:int32 )
0x000E40:
    popenv 0x000E34
0x000E44:
    pushenv (int32 self.mypart1) 0x000E60
0x000E54:
    self.sprite_index = 251s
0x000E60:
    popenv 0x000E54
0x000E64:
    pushenv (int32 self.mypart1) 0x000E88
0x000E74:
    stog.alarm[9s] = 30s
0x000E88:
    popenv 0x000E74
0x000E8C:
    global.heard = 1s
0x000E98:
    if !(== self.whatiheard 3s) goto 0x000EDC
0x000EAC:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000EDC
0x000EC8:
    push (== self.dunk 0s)
    goto 0x000EE0
0x000EDC:
    push 0s
0x000EE0:
    if !pop goto 0x000FB4
0x000EE4:
    self.blconx = (instance_create[]:int32 (var 186s) (- self.y 25s) (+ self.x 95s))
    stog.msg[0s] = "NO!!!!!&muscles&r.....&NOT CUTE/%%"
    self.dunk = 1s
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconxwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blconx):y 10s) (+ (int32 self.blconx):x 15s))
0x000FB4:
    if !(== self.dunk 1s) goto 0x000FE4
0x000FC8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000FE8
0x000FE4:
    push 0s
0x000FE8:
    if !pop goto 0x0011B4
0x000FEC:
    pushenv (int32 self.blconx) 0x001008
0x000FFC:
    call (instance_destroy[]:int32 )
0x001008:
    popenv 0x000FFC
0x00100C:
    stog.monstertype[1s] = 23s
    stog.monsterinstance[1s] = (instance_create[]:int32 (var 289s) (var 38s) (var 420s))
    [obj_aaron].image_alpha = 0s
    [obj_aaron].alphaup = 1s
    self.blconx = (instance_create[]:int32 (var 186s) (- 289.y 25s) (+ 289.x 95s))
    push 50s
    stog.depth* = (int32 self.blconx)
    stog.msg[0s] = "Ooh, I&have to&disagree&; )/%%"
    push -5s
    if !(== 95s:flag 1s) goto 0x001104
0x0010EC:
    stog.msg[0s] = "Temmie^1,&are you&okay?&; )/%%"
0x001104:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    global.msc = 0s
    self.blcont = (instance_create[]:int32 (var 782s) (+ (int32 self.blconx):y 10s) (+ (int32 self.blconx):x 15s))
    push -50s
    stog.depth* = (int32 self.blcont)
    self.dunk = 2s
    global.myfight = 999s
0x0011B4:
    if !(== self.dunk 2s) goto 0x0011E4
0x0011C8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0011E8
0x0011E4:
    push 0s
0x0011E8:
    if !pop goto 0x0012F4
0x0011EC:
    pushenv (int32 self.blconx) 0x001208
0x0011FC:
    call (instance_destroy[]:int32 )
0x001208:
    popenv 0x0011FC
0x00120C:
    self.image_index = 1s
    self.blconx = (instance_create[]:int32 (var 186s) (- self.y 25s) (+ self.x 95s))
    [obj_tembody].visible = 0s
    stog.msg[0s] = "NO!!!!!&!!!!!!!/%%"
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconxwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blconx):y 10s) (+ (int32 self.blconx):x 15s))
    self.dunk = 3s
0x0012F4:
    if !(== self.dunk 3s) goto 0x001324
0x001308:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001328
0x001324:
    push 0s
0x001328:
    if !pop goto 0x001364
0x00132C:
    pushenv (int32 self.blconx) 0x001348
0x00133C:
    call (instance_destroy[]:int32 )
0x001348:
    popenv 0x00133C
0x00134C:
    self.mercymod = 222s
    [obj_aaron].flex = 2s
0x001364:
    if !(== global.myfight 4s) goto 0x0013C0
0x001378:
    if !(== global.mercyuse 0s) goto 0x0013C0
0x00138C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x0013C0
0x0013B4:
    call (instance_destroy[]:int32 )
0x0013C0:
    if !(== self.mercymod 222s) goto 0x0013F0
0x0013D4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0013F4
0x0013F0:
    push 0s
0x0013F4:
    if !pop goto 0x001438
0x0013F8:
    global.myfight = 4s
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001438
0x00142C:
    call (instance_destroy[]:int32 )
0x001438:
    exit
