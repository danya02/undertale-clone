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
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0002A0
0x000248:
    push -1s
    if !(> 5s:alarm 5s) goto 0x000284
0x000264:
    push 758.x
    push (== -5s 0s:idealborder)
    goto 0x000288
0x000284:
    push 0s
0x000288:
    if !pop goto 0x0002A0
0x00028C:
    stog.alarm[5s] = 2s
0x0002A0:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000304
0x0002C4:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000304:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000424
0x000328:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x00037C
0x000368:
    stog.alarm[2s] = 15s
0x00037C:
    popenv 0x000368
0x000380:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x0003F4
0x0003A4:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000424
0x0003F4:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000424:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x0004F4
0x000448:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0004BC
0x0004A8:
    stog.alarm[2s] = 30s
0x0004BC:
    popenv 0x0004A8
0x0004C0:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x0004F4:
    if !(== global.mnfight 2s) goto 0x00082C
0x000508:
    if !(== self.attacked 0s) goto 0x0007F0
0x00051C:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 150s
    global.firingrate = 10s
    if !(== self.pop 3s) goto 0x000578
0x000558:
    global.firingrate = (* global.firingrate 2.5d)
0x000578:
    if !(== self.pop 2s) goto 0x0005AC
0x00058C:
    global.firingrate = (* global.firingrate 1.8d)
0x0005AC:
    if !(>= self.mycommand 50s) goto 0x000618
0x0005C0:
    self.gen = (instance_create[]:int32 (var 334s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    goto 0x000680
0x000618:
    push (var 331s)
    push -5s
    push (+ 2s:idealborder 2s)
    self.gen = (instance_create[]:int32 -5s 0s:idealborder (- (/ (+ -5s 1s:idealborder) (double 2s)) 30s))
0x000680:
    if !(>= self.mycommand 0s) goto 0x0006AC
0x000694:
    stog.msg[0s] = "* Monster does an action."
0x0006AC:
    if !(>= self.mycommand 25s) goto 0x0006D8
0x0006C0:
    stog.msg[0s] = "* Monster does an action."
0x0006D8:
    if !(>= self.mycommand 50s) goto 0x000704
0x0006EC:
    stog.msg[0s] = "* Monster does an action."
0x000704:
    if !(>= self.mycommand 75s) goto 0x000730
0x000718:
    stog.msg[0s] = "* Monster does an action."
0x000730:
    if !(>= self.mycommand 90s) goto 0x00075C
0x000744:
    stog.msg[0s] = "* Smells like a monster."
0x00075C:
    if !(> self.mercymod 100s) goto 0x000788
0x000770:
    stog.msg[0s] = "* Monster seems satisfied."
0x000788:
    push -5s
    push (int32 self.myself):monsterhp
    if !(<= -5s (/ (int32 self.myself):monstermaxhp (double 4s))) goto 0x0007E4
0x0007CC:
    stog.msg[0s] = "* Monster has low HP."
0x0007E4:
    self.attacked = 1s
0x0007F0:
    if !(== self.mercymod 999999) goto 0x000820
0x000808:
    global.turntimer = -1s
    global.mnfight = 3s
0x000820:
    self.whatiheard = -1s
0x00082C:
    if !(== global.myfight 2s) goto 0x000B50
0x000840:
    if !(!= self.whatiheard -1s) goto 0x000B50
0x000854:
    if !(== global.heard 0s) goto 0x000B50
0x000868:
    if !(== self.whatiheard 0s) goto 0x000970
0x00087C:
    global.msc = 0s
    push "* MONSTER "
    push (+ (+ -5s (string[]:int32 (int32 self.myself):monsteratk)) " ATK ")
    stog.msg[0s] = (+ (+ -5s (string[]:int32 (int32 self.myself):monsterdef)) " DEF&* Mistakenly believes its lava&  is a monster./^")
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000960
0x000954:
    self.halt = 0s
0x000960:
    popenv 0x000954
0x000964:
    self.whatiheard = 9s
0x000970:
    if !(== self.whatiheard 3s) goto 0x000A0C
0x000984:
    global.msc = 0s
    stog.msg[0s] = "* You execute some action./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A08
0x0009FC:
    self.halt = 0s
0x000A08:
    popenv 0x0009FC
0x000A0C:
    if !(== self.whatiheard 1s) goto 0x000AA8
0x000A20:
    global.msc = 0s
    stog.msg[0s] = "* You execute some action./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000AA4
0x000A98:
    self.halt = 0s
0x000AA4:
    popenv 0x000A98
0x000AA8:
    if !(== self.whatiheard 4s) goto 0x000B44
0x000ABC:
    global.msc = 0s
    stog.msg[0s] = "* You execute some action./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B40
0x000B34:
    self.halt = 0s
0x000B40:
    popenv 0x000B34
0x000B44:
    global.heard = 1s
0x000B50:
    if !(== global.myfight 4s) goto 0x000BAC
0x000B64:
    if !(== global.mercyuse 0s) goto 0x000BAC
0x000B78:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000BAC
0x000BA0:
    call (instance_destroy[]:int32 )
0x000BAC:
    if !(== self.mercymod 222s) goto 0x000BDC
0x000BC0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000BE0
0x000BDC:
    push 0s
0x000BE0:
    if !pop goto 0x000C18
0x000BE4:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000C18
0x000C0C:
    call (instance_destroy[]:int32 )
0x000C18:
    exit
