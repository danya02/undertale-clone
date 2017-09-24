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
    if !(== global.mnfight 2s) goto 0x0007E4
0x000524:
    if !(== self.attacked 0s) goto 0x0007D8
0x000538:
    global.turntimer = 150s
    global.firingrate = 6s
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 3s) goto 0x0005A0
0x000594:
    self.mycommand = 99s
0x0005A0:
    if !(== self.sad 0s) goto 0x000618
0x0005B4:
    if !(>= self.mycommand 0s) goto 0x000614
0x0005C8:
    global.firingrate = 2s
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 4s
    stog.bullettype* = (int32 self.gen)
0x000614:
    goto 0x00064C
0x000618:
    global.turntimer = 45s
    self.gen = (instance_create[]:int32 (var 626s) (var 0s) (var 0s))
0x00064C:
    push self.myself
    stog.myself* = (int32 self.gen)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x0006C0
0x0006A8:
    stog.msg[0s] = "* Migospel is juggling balls&  of ants."
0x0006C0:
    if !(>= self.mycommand 30s) goto 0x0006EC
0x0006D4:
    stog.msg[0s] = "* Migospel makes a balloon animal&  out of bees^3.&* Shape: Pile of bees"
0x0006EC:
    if !(>= self.mycommand 70s) goto 0x000718
0x000700:
    stog.msg[0s] = "* Migospel intentionally&  pratfalls^1.&* Twenty times."
0x000718:
    if !(>= self.mycommand 90s) goto 0x000744
0x00072C:
    stog.msg[0s] = "* Smells like bug-flavored cotton&  candy."
0x000744:
    if !(> self.mercymod 20s) goto 0x000770
0x000758:
    stog.msg[0s] = "* Migospel's facade is broken."
0x000770:
    push -5s
    push (int32 self.myself):monsterhp
    if !(< -5s (/ (int32 self.myself):monstermaxhp (double 3s))) goto 0x0007CC
0x0007B4:
    stog.msg[0s] = "* Migospel's clown aura fades."
0x0007CC:
    self.attacked = 1s
0x0007D8:
    self.whatiheard = -1s
0x0007E4:
    if !(== global.myfight 2s) goto 0x000970
0x0007F8:
    if !(!= self.whatiheard -1s) goto 0x000970
0x00080C:
    if !(== global.heard 0s) goto 0x000970
0x000820:
    if !(== self.whatiheard 0s) goto 0x0008C8
0x000834:
    global.msc = 0s
    stog.msg[0s] = "* MIGOSPEL - ATK 28 DEF 17&* This messed-up clownbug thinks&  battle's a performance./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0008B8
0x0008AC:
    self.halt = 0s
0x0008B8:
    popenv 0x0008AC
0x0008BC:
    self.whatiheard = 9s
0x0008C8:
    if !(== self.whatiheard 3s) goto 0x000970
0x0008DC:
    global.msc = 0s
    stog.msg[0s] = "* Talking has no effect./^"
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
    global.heard = 1s
0x000970:
    if !(== global.myfight 4s) goto 0x0009CC
0x000984:
    if !(== global.mercyuse 0s) goto 0x0009CC
0x000998:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x0009CC
0x0009C0:
    call (instance_destroy[]:int32 )
0x0009CC:
    if !(== self.mercymod 222s) goto 0x0009FC
0x0009E0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000A00
0x0009FC:
    push 0s
0x000A00:
    if !pop goto 0x000A38
0x000A04:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000A38
0x000A2C:
    call (instance_destroy[]:int32 )
0x000A38:
    self.pop = (scr_monstersum[]:int32 )
    if !(== self.pop 1s) goto 0x000AA4
0x000A5C:
    self.sad = 1s
    self.mercymod = 200s
    if !(bool (instance_exists[]:int32 self.mypart1)) goto 0x000AA4
0x000A8C:
    push 1s
    stog.sad* = (int32 self.mypart1)
0x000AA4:
    exit
