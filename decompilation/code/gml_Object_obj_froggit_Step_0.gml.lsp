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
    stog.alarm[5s] = 60s
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
    self.shudder = 16s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000320:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000484
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
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000454
0x0003C0:
    self.mypart1 = (instance_create[]:int32 (var 215s) self.y self.x)
    self.mypart2 = (instance_create[]:int32 (var 214s) self.y self.x)
    stog.hurtanim[(int32 self.myself)] = 0s
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000484
0x000454:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000484:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000554
0x0004A8:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x00051C
0x000508:
    stog.alarm[2s] = 30s
0x00051C:
    popenv 0x000508
0x000520:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000554:
    if !(== global.mnfight 2s) goto 0x0008F4
0x000568:
    if !(== self.attacked 0s) goto 0x0008F4
0x00057C:
    global.turntimer = 100s
    global.firingrate = 20s
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 3s) goto 0x0005F8
0x0005D8:
    global.firingrate = (* global.firingrate 1.5d)
0x0005F8:
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 2s) goto 0x00065C
0x00063C:
    global.firingrate = (* global.firingrate 1.25d)
0x00065C:
    if !(>= self.mycommand 0s) goto 0x000684
0x000670:
    push (<= self.mycommand 40s)
    goto 0x000688
0x000684:
    push 0s
0x000688:
    if !pop goto 0x000774
0x00068C:
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(> (+ -5s 2s:monster) 1s) goto 0x0006FC
0x0006D0:
    self.gen = (instance_create[]:int32 (var 713s) self.y self.x)
    goto 0x000744
0x0006FC:
    push (var 625s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (- 1s:idealborder 40s))
0x000744:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    goto 0x0007B4
0x000774:
    self.gen = (instance_create[]:int32 (var 713s) self.y self.x)
    push 1s
    stog.bullettype* = (int32 self.gen)
0x0007B4:
    push self.myself
    stog.myself* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x0007FC
0x0007E4:
    stog.msg[0s] = "* Froggit doesn't seem to&  know why it's here."
0x0007FC:
    if !(>= self.mycommand 30s) goto 0x000828
0x000810:
    stog.msg[0s] = "* Froggit hops to and fro."
0x000828:
    if !(>= self.mycommand 60s) goto 0x000854
0x00083C:
    stog.msg[0s] = "* The battlefield is filled&  with the smell of mustard&  seed."
0x000854:
    if !(>= self.mycommand 80s) goto 0x000880
0x000868:
    stog.msg[0s] = "* You are intimidated by&  Froggit's raw strength^4.&* Only kidding."
0x000880:
    if !(> self.mercymod 5s) goto 0x0008AC
0x000894:
    stog.msg[0s] = "* Froggit seems reluctant&  to fight you."
0x0008AC:
    push -5s
    if !(< (int32 self.myself):monsterhp 5s) goto 0x0008E8
0x0008D0:
    stog.msg[0s] = "* Froggit is trying to&  run away."
0x0008E8:
    self.attacked = 1s
0x0008F4:
    if !(== global.myfight 2s) goto 0x000B3C
0x000908:
    if !(!= self.whatiheard -1s) goto 0x000B3C
0x00091C:
    if !(== global.heard 0s) goto 0x000B3C
0x000930:
    if !(== self.whatiheard 0s) goto 0x0009CC
0x000944:
    global.msc = 0s
    stog.msg[0s] = "* FROGGIT - ATK 4 DEF 5&* Life is difficult for&  this enemy./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0009C8
0x0009BC:
    self.halt = 0s
0x0009C8:
    popenv 0x0009BC
0x0009CC:
    if !(== self.whatiheard 1s) goto 0x000A74
0x0009E0:
    global.msc = 0s
    stog.msg[0s] = "* Froggit didn't understand&  what you said^1, but was&  scared anyway./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A64
0x000A58:
    self.halt = 0s
0x000A64:
    popenv 0x000A58
0x000A68:
    self.mercymod = 30s
0x000A74:
    if !(== self.whatiheard 3s) goto 0x000B30
0x000A88:
    stog.flag[130s] = 1s
    global.msc = 0s
    stog.msg[0s] = "* Froggit didn't understand&  what you said^1, but was&  flattered anyway./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B20
0x000B14:
    self.halt = 0s
0x000B20:
    popenv 0x000B14
0x000B24:
    self.mercymod = 30s
0x000B30:
    global.heard = 1s
0x000B3C:
    if !(== global.myfight 4s) goto 0x000B98
0x000B50:
    if !(== global.mercyuse 0s) goto 0x000B98
0x000B64:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000B98
0x000B8C:
    call (instance_destroy[]:int32 )
0x000B98:
    exit
