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
    if !(== global.mnfight 2s) goto 0x000854
0x000524:
    if !(== self.attacked 0s) goto 0x000818
0x000538:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 150s
    global.firingrate = 10s
    if !(bool (instance_exists[]:int32 (var 387s))) goto 0x000590
0x000578:
    global.firingrate = (+ global.firingrate 5s)
0x000590:
    if !(== self.pop 3s) goto 0x0005C4
0x0005A4:
    global.firingrate = (* global.firingrate 2.8d)
0x0005C4:
    if !(== self.pop 2s) goto 0x0005F8
0x0005D8:
    global.firingrate = (* global.firingrate 1.8d)
0x0005F8:
    if !(>= self.mycommand 50s) goto 0x000620
0x00060C:
    push (== self.pop 1s)
    goto 0x000624
0x000620:
    push 0s
0x000624:
    if !pop goto 0x000680
0x000628:
    self.gen = (instance_create[]:int32 (var 382s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    goto 0x0006D4
0x000680:
    self.gen = (instance_create[]:int32 (var 380s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
0x0006D4:
    if !(>= self.mycommand 0s) goto 0x000700
0x0006E8:
    stog.msg[0s] = "* Final Froggit knows exactly&  why it's here."
0x000700:
    if !(>= self.mycommand 30s) goto 0x00072C
0x000714:
    stog.msg[0s] = "* Final Froggit jumps ominously&  up and down."
0x00072C:
    if !(>= self.mycommand 60s) goto 0x000758
0x000740:
    stog.msg[0s] = "* The battlefield is filled&  with the smell of mustard&  seed."
0x000758:
    if !(>= self.mycommand 80s) goto 0x000784
0x00076C:
    stog.msg[0s] = "* You are intimidated by&  Final Froggit's strength^4.&* Truly."
0x000784:
    if !(> self.mercymod 100s) goto 0x0007B0
0x000798:
    stog.msg[0s] = "* Final Froggit seems reluctant&  to fight you."
0x0007B0:
    push -5s
    push (int32 self.myself):monsterhp
    if !(< -5s (/ (int32 self.myself):monstermaxhp (double 4s))) goto 0x00080C
0x0007F4:
    stog.msg[0s] = "* Final Froggit stands its&  ground."
0x00080C:
    self.attacked = 1s
0x000818:
    if !(== self.mercymod 999999) goto 0x000848
0x000830:
    global.turntimer = -1s
    global.mnfight = 3s
0x000848:
    self.whatiheard = -1s
0x000854:
    if !(== global.myfight 2s) goto 0x000BF4
0x000868:
    if !(!= self.whatiheard -1s) goto 0x000BF4
0x00087C:
    if !(== global.heard 0s) goto 0x000BF4
0x000890:
    if !(== self.whatiheard 0s) goto 0x000938
0x0008A4:
    global.msc = 0s
    stog.msg[0s] = "* FINAL FROGGIT - ATK 30 DEF 24&* Its future looks brighter and&  brighter./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000928
0x00091C:
    self.halt = 0s
0x000928:
    popenv 0x00091C
0x00092C:
    self.whatiheard = 9s
0x000938:
    if !(== self.whatiheard 3s) goto 0x000A18
0x00094C:
    global.msc = 0s
    stog.msg[0s] = "* You compliment Final Froggit^1.&* It understood you perfectly^1.&* Its ATTACK dropped./^"
    push -5s
    stog.monsteratk[(- (int32 self.myself):monsteratk 2s)] = (int32 self.myself)
    self.mercymod = (+ self.mercymod 40s)
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A14
0x000A08:
    self.halt = 0s
0x000A14:
    popenv 0x000A08
0x000A18:
    if !(== self.whatiheard 1s) goto 0x000AF8
0x000A2C:
    global.msc = 0s
    stog.msg[0s] = "* You threaten Final Froggit^1.&* It understood you perfectly^1.&* Its DEFENSE dropped./^"
    push -5s
    stog.monsterdef[(- (int32 self.myself):monsterdef 20s)] = (int32 self.myself)
    self.mercymod = (+ self.mercymod 40s)
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000AF4
0x000AE8:
    self.halt = 0s
0x000AF4:
    popenv 0x000AE8
0x000AF8:
    if !(== self.whatiheard 4s) goto 0x000BE8
0x000B0C:
    global.msc = 0s
    if !(< self.mercymod 200s) goto 0x000B6C
0x000B2C:
    stog.msg[0s] = "* You did something mysterious./"
    stog.msg[1s] = "* Final Froggit recognizes it&  has more to learn from&  this world./^"
    self.mercymod = 200s
    goto 0x000B84
0x000B6C:
    stog.msg[0s] = "* You did something mysterious^1.&* But nothing happened./^"
0x000B84:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BE4
0x000BD8:
    self.halt = 0s
0x000BE4:
    popenv 0x000BD8
0x000BE8:
    global.heard = 1s
0x000BF4:
    if !(== global.myfight 4s) goto 0x000C50
0x000C08:
    if !(== global.mercyuse 0s) goto 0x000C50
0x000C1C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000C50
0x000C44:
    call (instance_destroy[]:int32 )
0x000C50:
    if !(== self.mercymod 222s) goto 0x000C80
0x000C64:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000C84
0x000C80:
    push 0s
0x000C84:
    if !pop goto 0x000CBC
0x000C88:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000CBC
0x000CB0:
    call (instance_destroy[]:int32 )
0x000CBC:
    exit
