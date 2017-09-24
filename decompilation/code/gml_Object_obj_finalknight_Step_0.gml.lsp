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
    if !(== global.mnfight 2s) goto 0x00082C
0x000524:
    if !(== self.attacked 0s) goto 0x0007CC
0x000538:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 150s
    global.firingrate = 7s
    if !(== self.pop 3s) goto 0x000594
0x000574:
    global.firingrate = (* global.firingrate 2.4d)
0x000594:
    if !(== self.pop 2s) goto 0x0005C8
0x0005A8:
    global.firingrate = (* global.firingrate 1.7d)
0x0005C8:
    if !(== self.asleep 0s) goto 0x0006B8
0x0005DC:
    if !(> self.mycommand 75s) goto 0x000604
0x0005F0:
    push (== self.pop 1s)
    goto 0x000608
0x000604:
    push 0s
0x000608:
    if !pop goto 0x000644
0x00060C:
    global.turntimer = 150s
    self.gen = (instance_create[]:int32 (var 370s) self.y self.x)
    goto 0x0006B8
0x000644:
    global.firingrate = 9s
    push (var 377s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 40s) -5s (- (+ 0s:idealborder (/ (c_borderwidth[]:int32 (var 0s)) (double 2s))) 20s))
0x0006B8:
    if !(>= self.mycommand 0s) goto 0x0006E4
0x0006CC:
    stog.msg[0s] = "* Knight Knight smashes her&  morningstar."
0x0006E4:
    if !(>= self.mycommand 25s) goto 0x000710
0x0006F8:
    stog.msg[0s] = "* Knight Knight breathes deeply."
0x000710:
    if !(>= self.mycommand 50s) goto 0x00073C
0x000724:
    stog.msg[0s] = "* Knight Knight watches quietly."
0x00073C:
    if !(>= self.mycommand 75s) goto 0x000768
0x000750:
    stog.msg[0s] = "* Knight Knight's armor emits&  a dark sheen."
0x000768:
    if !(>= self.mycommand 90s) goto 0x000794
0x00077C:
    stog.msg[0s] = "* Smells like stardust."
0x000794:
    if !(> self.asleep 0s) goto 0x0007C0
0x0007A8:
    stog.msg[0s] = "* Knight Knight is snoring."
0x0007C0:
    self.attacked = 1s
0x0007CC:
    if !(== self.asleep 1s) goto 0x0007F4
0x0007E0:
    push (== self.pop 1s)
    goto 0x0007F8
0x0007F4:
    push 0s
0x0007F8:
    if !pop goto 0x000820
0x0007FC:
    self.attacked = 1s
    global.turntimer = -1s
    global.mnfight = 3s
0x000820:
    self.whatiheard = -1s
0x00082C:
    if !(== global.myfight 2s) goto 0x000CA8
0x000840:
    if !(!= self.whatiheard -1s) goto 0x000CA8
0x000854:
    if !(== global.heard 0s) goto 0x000CA8
0x000868:
    if !(== self.whatiheard 0s) goto 0x000910
0x00087C:
    global.msc = 0s
    stog.msg[0s] = "* KNIGHT KNIGHT - ATK 36 DEF 36&* This megaton mercenary wields&  the Good Morningstar./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000900
0x0008F4:
    self.halt = 0s
0x000900:
    popenv 0x0008F4
0x000904:
    self.whatiheard = 9s
0x000910:
    if !(== self.whatiheard 3s) goto 0x000A28
0x000924:
    global.msc = 0s
    stog.msg[0s] = "* You ask Knight Knight about&  her day^1.&* There's no response./^"
    self.talk = (+ self.talk 1s)
    if !(== self.talk 3s) goto 0x00098C
0x000974:
    stog.msg[0s] = "* You ask Knight Knight about&  her day./^"
0x00098C:
    if !(== self.asleep 1s) goto 0x0009C4
0x0009A0:
    stog.msg[0s] = "* You talk to Knight Knight^1.&* She hums something in&  her sleep.../^"
    self.talk = 0s
0x0009C4:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A24
0x000A18:
    self.halt = 0s
0x000A24:
    popenv 0x000A18
0x000A28:
    if !(== self.whatiheard 1s) goto 0x000C9C
0x000A3C:
    global.msc = 0s
    self.mercymod = (+ self.mercymod 20s)
    if !(== self.sleepy 0s) goto 0x000AC0
0x000A74:
    stog.msg[0s] = "* You sing an old lullaby^1.&* Knight Knight starts to look&  sleepy.../^"
    push -5s
    if !(== 81s:flag 2s) goto 0x000AC0
0x000AA8:
    stog.msg[0s] = "* You sing Shyren's song^1.&* Knight Knight starts to look&  sleepy.../^"
0x000AC0:
    if !(== self.sleepy 1s) goto 0x000AEC
0x000AD4:
    stog.msg[0s] = "* You keep singing^1.&* Knight Knight closes its&  eyes a bit.../^"
0x000AEC:
    if !(== self.asleep 1s) goto 0x000B18
0x000B00:
    stog.msg[0s] = "* You keep singing^1.&* Nothing happened./^"
0x000B18:
    if !(> self.sleepy 1s) goto 0x000B40
0x000B2C:
    push (== self.asleep 0s)
    goto 0x000B44
0x000B40:
    push 0s
0x000B44:
    if !pop goto 0x000B94
0x000B48:
    stog.msg[0s] = "* You keep singing^1.&* Knight Knight falls asleep./^"
    self.mercymod = 200s
    self.asleep = 1s
    stog.monsterdef[(int32 self.myself)] = -30s
0x000B94:
    self.sleepy = (+ self.sleepy 1s)
    push -5s
    if !(== 81s:flag 2s) goto 0x000BE0
0x000BC8:
    self.sleepy = (+ self.sleepy 1s)
0x000BE0:
    if !(> self.sleepy 0s) goto 0x000C0C
0x000BF4:
    push 1s
    stog.asleep* = (int32 self.mypart1)
0x000C0C:
    if !(== self.asleep 1s) goto 0x000C38
0x000C20:
    push 2s
    stog.asleep* = (int32 self.mypart1)
0x000C38:
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
    global.heard = 1s
0x000CA8:
    if !(== global.myfight 4s) goto 0x000D04
0x000CBC:
    if !(== global.mercyuse 0s) goto 0x000D04
0x000CD0:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000D04
0x000CF8:
    call (instance_destroy[]:int32 )
0x000D04:
    if !(== self.mercymod 222s) goto 0x000D34
0x000D18:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000D38
0x000D34:
    push 0s
0x000D38:
    if !pop goto 0x000D70
0x000D3C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000D70
0x000D64:
    call (instance_destroy[]:int32 )
0x000D70:
    exit
