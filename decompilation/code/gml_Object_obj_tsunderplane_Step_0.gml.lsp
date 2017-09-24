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
    stog.hurt* = (int32 self.mypart1)
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
    if !(== global.mnfight 2s) goto 0x00092C
0x000524:
    if !(== self.attacked 0s) goto 0x000920
0x000538:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 160s
    global.firingrate = 20s
    if !(== self.pop 3s) goto 0x000594
0x000574:
    global.firingrate = (* global.firingrate 2.4d)
0x000594:
    if !(== self.pop 2s) goto 0x0005C8
0x0005A8:
    global.firingrate = (* global.firingrate 1.7d)
0x0005C8:
    self.num = 0s
    if !(>= self.mycommand 0s) goto 0x0005FC
0x0005E8:
    push (<= self.mycommand 50s)
    goto 0x000600
0x0005FC:
    push 0s
0x000600:
    if !pop goto 0x000610
0x000604:
    self.num = 1s
0x000610:
    if !(== self.whatiheard 1s) goto 0x000630
0x000624:
    self.num = 1s
0x000630:
    if !(== self.num 1s) goto 0x0006D4
0x000644:
    global.turntimer = 160s
    self.gen = (instance_create[]:int32 (var 322s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    if !(== self.whatiheard 1s) goto 0x0006D0
0x0006B8:
    push 1s
    stog.green* = (int32 self.gen)
0x0006D0:
    goto 0x0007B4
0x0006D4:
    global.firingrate = 30s
    if !(== self.pop 3s) goto 0x000714
0x0006F4:
    global.firingrate = (* global.firingrate 2.2d)
0x000714:
    if !(== self.pop 2s) goto 0x000748
0x000728:
    global.firingrate = (* global.firingrate 1.5d)
0x000748:
    self.gen = (instance_create[]:int32 (var 326s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    push 0s
    stog.bullettype* = (int32 self.gen)
0x0007B4:
    push self.myself
    stog.myself* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x0007FC
0x0007E4:
    stog.msg[0s] = "* Tsunderplane looks over^1,&  then turns up its nose."
0x0007FC:
    if !(>= self.mycommand 25s) goto 0x000828
0x000810:
    stog.msg[0s] = "* Tsunderplane shakes its&  nose dimissively at you."
0x000828:
    if !(>= self.mycommand 50s) goto 0x000854
0x00083C:
    stog.msg[0s] = "* Tsunderplane \"accidentally\"&  bumps you with its wing."
0x000854:
    if !(>= self.mycommand 75s) goto 0x000880
0x000868:
    stog.msg[0s] = "* Tsunderplane gives you a&  condescending barrel roll."
0x000880:
    if !(>= self.mycommand 90s) goto 0x0008AC
0x000894:
    stog.msg[0s] = "* Smells like an airport&  perfume counter."
0x0008AC:
    if !(> self.mercymod 60s) goto 0x0008D8
0x0008C0:
    stog.msg[0s] = "* Tsunderplane is looking away&  shyly."
0x0008D8:
    push -5s
    if !(< (int32 self.myself):monsterhp 30s) goto 0x000914
0x0008FC:
    stog.msg[0s] = "* Tsunderplane's body is smoking."
0x000914:
    self.attacked = 1s
0x000920:
    self.whatiheard = -1s
0x00092C:
    if !(== global.myfight 2s) goto 0x000C50
0x000940:
    if !(!= self.whatiheard -1s) goto 0x000C50
0x000954:
    if !(== global.heard 0s) goto 0x000C50
0x000968:
    if !(== self.whatiheard 0s) goto 0x000A10
0x00097C:
    global.msc = 0s
    stog.msg[0s] = "* TSUNDERPLANE - ATK 25 DEF 26&* Seems mean^1, but does&  it secretly like you?/^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A00
0x0009F4:
    self.halt = 0s
0x000A00:
    popenv 0x0009F4
0x000A04:
    self.whatiheard = 9s
0x000A10:
    if !(== self.whatiheard 3s) goto 0x000BA8
0x000A24:
    global.msc = 0s
    stog.msg[0s] = "* You tell Tsunderplane it has&  an impressive wingspan./^"
    self.g = (floor[]:int32 (random[]:int32 (var 5s)))
    if !(== self.g 0s) goto 0x000A94
0x000A7C:
    stog.msg[0s] = "* You tell Tsunderplane it has&  an impressive wingspan./^"
0x000A94:
    if !(== self.g 1s) goto 0x000AC0
0x000AA8:
    stog.msg[0s] = "* You tell Tsunderplane it has&  nice turbines./^"
0x000AC0:
    if !(== self.g 2s) goto 0x000AEC
0x000AD4:
    stog.msg[0s] = "* You tell Tsunderplane it has&  a powerful rudder./^"
0x000AEC:
    if !(== self.g 3s) goto 0x000B18
0x000B00:
    stog.msg[0s] = "* You tell Tsunderplane that&  you like its taste in&  movies and books./^"
0x000B18:
    if !(== self.g 4s) goto 0x000B44
0x000B2C:
    stog.msg[0s] = "* You tell Tsunderplane that&  it has cute winglets./^"
0x000B44:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BA4
0x000B98:
    self.halt = 0s
0x000BA4:
    popenv 0x000B98
0x000BA8:
    if !(== self.whatiheard 1s) goto 0x000C44
0x000BBC:
    global.msc = 0s
    stog.msg[0s] = "* You get close to Tsunderplane^1.&* But not too close./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000C40
0x000C34:
    self.halt = 0s
0x000C40:
    popenv 0x000C34
0x000C44:
    global.heard = 1s
0x000C50:
    if !(== global.myfight 4s) goto 0x000CAC
0x000C64:
    if !(== global.mercyuse 0s) goto 0x000CAC
0x000C78:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000CAC
0x000CA0:
    call (instance_destroy[]:int32 )
0x000CAC:
    if !(== self.mercymod 222s) goto 0x000CDC
0x000CC0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000CE0
0x000CDC:
    push 0s
0x000CE0:
    if !pop goto 0x000D18
0x000CE4:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000D18
0x000D0C:
    call (instance_destroy[]:int32 )
0x000D18:
    exit
