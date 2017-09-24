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
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000440
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
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000410
0x0003C0:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000440
0x000410:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000440:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000510
0x000464:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0004D8
0x0004C4:
    stog.alarm[2s] = 30s
0x0004D8:
    popenv 0x0004C4
0x0004DC:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000510:
    if !(== global.mnfight 2s) goto 0x00094C
0x000524:
    if !(== self.attacked 0s) goto 0x00094C
0x000538:
    global.turntimer = 150s
    if (< self.mercymod 100s) goto 0x00056C
0x000558:
    push (>= (scr_monstersum[]:int32 ) 2s)
    goto 0x000570
0x00056C:
    push 1s
0x000570:
    if !pop goto 0x0007F0
0x000574:
    if !(>= self.mycommand 0s) goto 0x00059C
0x000588:
    push (<= self.mycommand 50s)
    goto 0x0005A0
0x00059C:
    push 0s
0x0005A0:
    if !pop goto 0x0006BC
0x0005A4:
    global.firingrate = 7s
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 3s) goto 0x000614
0x0005F4:
    global.firingrate = (* global.firingrate 2.7d)
0x000614:
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 2s) goto 0x000678
0x000658:
    global.firingrate = (* global.firingrate 1.8d)
0x000678:
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 3s
    stog.bullettype* = (int32 self.gen)
    goto 0x0007D0
0x0006BC:
    global.firingrate = 15s
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 3s) goto 0x00072C
0x00070C:
    global.firingrate = (* global.firingrate 2.7d)
0x00072C:
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 2s) goto 0x000790
0x000770:
    global.firingrate = (* global.firingrate 1.8d)
0x000790:
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 2s
    stog.bullettype* = (int32 self.gen)
0x0007D0:
    push self.myself
    stog.myself* = (int32 self.gen)
    goto 0x00081C
0x0007F0:
    if !(== (scr_monstersum[]:int32 ) 1s) goto 0x00081C
0x000804:
    global.mnfight = 3s
    global.turntimer = -1s
0x00081C:
    if !(>= self.mycommand 0s) goto 0x000848
0x000830:
    stog.msg[0s] = "* Moldessa's face rearranges&  itself."
0x000848:
    if !(>= self.mycommand 40s) goto 0x000874
0x00085C:
    stog.msg[0s] = "* Moldessa tries to make its&  face look like a movie-&  star's^1, but it shifts apart."
0x000874:
    if !(>= self.mycommand 70s) goto 0x0008A0
0x000888:
    stog.msg[0s] = "* Moldessa hides behind its ears^3.&* ... arms?"
0x0008A0:
    if !(>= self.mycommand 90s) goto 0x0008CC
0x0008B4:
    stog.msg[0s] = "* Smells like twelve-week-old&  gummy bears."
0x0008CC:
    self.whatiheard = -1s
    push -5s
    if !(< (int32 self.myself):monsterhp 15s) goto 0x000914
0x0008FC:
    stog.msg[0s] = "* Moldessa's face falls apart."
0x000914:
    if !(> self.mercymod 15s) goto 0x000940
0x000928:
    stog.msg[0s] = "* Moldessa's face looks... happy?"
0x000940:
    self.attacked = 1s
0x00094C:
    if !(== global.myfight 2s) goto 0x000E0C
0x000960:
    if !(!= self.whatiheard -1s) goto 0x000E0C
0x000974:
    if !(== global.heard 0s) goto 0x000E0C
0x000988:
    if !(== self.whatiheard 0s) goto 0x000A30
0x00099C:
    global.msc = 0s
    stog.msg[0s] = "* MOLDESSA - ATK 27 DEF 23&* Can't decide on a face^1.&* Can't see friend from foe./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A20
0x000A14:
    self.halt = 0s
0x000A20:
    popenv 0x000A14
0x000A24:
    self.whatiheard = 9s
0x000A30:
    if !(== self.whatiheard 3s) goto 0x000B54
0x000A44:
    push -5s
    if !(< 3s:goldreward 8s) goto 0x000A84
0x000A60:
    push -5s
    stog.goldreward[(+ 3s:goldreward 2s)] = 3s
0x000A84:
    global.msc = 0s
    stog.msg[0s] = "* You encourage Moldessa to try&  a new look^1.&* Its face shifts.../^"
    pushenv (int32 self.mypart1) 0x000ACC
0x000AB8:
    call (event_user[]:int32 (var 0s))
0x000ACC:
    popenv 0x000AB8
0x000AD0:
    pushenv (int32 self.mypart1) 0x000AEC
0x000AE0:
    self.facego = 1s
0x000AEC:
    popenv 0x000AE0
0x000AF0:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B50
0x000B44:
    self.halt = 0s
0x000B50:
    popenv 0x000B44
0x000B54:
    if !(== self.whatiheard 1s) goto 0x000C64
0x000B68:
    global.msc = 0s
    stog.msg[0s] = "* You adjust Moldessa's face./^"
    if !(< self.mercymod 100s) goto 0x000BBC
0x000BA0:
    stog.msg[0s] = "* You adjust Moldessa's face^1.&* It seems to be happy with its&  new look./^"
    goto 0x000BD4
0x000BBC:
    stog.msg[0s] = "* You adjust Moldessa's face./^"
0x000BD4:
    pushenv (int32 self.mypart1) 0x000BF0
0x000BE4:
    self.facego = 0s
0x000BF0:
    popenv 0x000BE4
0x000BF4:
    self.mercymod = 100s
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000C60
0x000C54:
    self.halt = 0s
0x000C60:
    popenv 0x000C54
0x000C64:
    if !(== self.whatiheard 4s) goto 0x000E00
0x000C78:
    global.msc = 0s
    if !(< global.hp global.maxhp) goto 0x000CB0
0x000C9C:
    push (== self.lie 0s)
    goto 0x000CB4
0x000CB0:
    push 0s
0x000CB4:
    if !pop goto 0x000CF0
0x000CB8:
    self.lie = 1s
    global.hp = (+ global.hp 2s)
    call (snd_play[]:int32 (var 155s))
0x000CF0:
    if !(>= (scr_monstersum[]:int32 ) 2s) goto 0x000D84
0x000D04:
    stog.msg[0s] = "* You lie down and rest^1.&* Moldessa tucks you in with&  a blanket of moss./"
    stog.msg[1s] = "* While you were sleeping^1, the&  other monsters get bored./^"
    self.pre_m = self.mercymod
    pushenv 605s 0x000D6C
0x000D4C:
    if !(< self.mercymod 90s) goto 0x000D6C
0x000D60:
    self.mercymod = 90s
0x000D6C:
    popenv 0x000D4C
0x000D70:
    self.mercymod = self.pre_m
    goto 0x000D9C
0x000D84:
    stog.msg[0s] = "* You lie down and rest^1.&* Moldessa tucks you in with&  a blanket of moss./^"
0x000D9C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000DFC
0x000DF0:
    self.halt = 0s
0x000DFC:
    popenv 0x000DF0
0x000E00:
    global.heard = 1s
0x000E0C:
    if !(== global.myfight 4s) goto 0x000E68
0x000E20:
    if !(== global.mercyuse 0s) goto 0x000E68
0x000E34:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000E68
0x000E5C:
    call (instance_destroy[]:int32 )
0x000E68:
    if !(== self.mercymod 222s) goto 0x000E98
0x000E7C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000E9C
0x000E98:
    push 0s
0x000E9C:
    if !pop goto 0x000ED4
0x000EA0:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000ED4
0x000EC8:
    call (instance_destroy[]:int32 )
0x000ED4:
    exit
