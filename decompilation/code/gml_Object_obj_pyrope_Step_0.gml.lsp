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
    if !(== global.mnfight 2s) goto 0x00087C
0x000524:
    if !(== self.attacked 0s) goto 0x000870
0x000538:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 180s
    global.firingrate = 9s
    if !(== self.pop 3s) goto 0x000594
0x000574:
    global.firingrate = (* global.firingrate 2.4d)
0x000594:
    if !(== self.pop 2s) goto 0x0005C8
0x0005A8:
    global.firingrate = (* global.firingrate 1.7d)
0x0005C8:
    self.num = 0s
    if !(< self.mycommand 50s) goto 0x0005FC
0x0005E8:
    push (== self.pop 1s)
    goto 0x000600
0x0005FC:
    push 0s
0x000600:
    if !pop goto 0x000668
0x000604:
    global.turntimer = 180s
    self.gen = (instance_create[]:int32 (var 340s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    goto 0x000730
0x000668:
    global.firingrate = 40s
    if !(== self.pop 3s) goto 0x0006A8
0x000688:
    global.firingrate = (* global.firingrate 2.6d)
0x0006A8:
    if !(== self.pop 2s) goto 0x0006DC
0x0006BC:
    global.firingrate = (* global.firingrate 1.1d)
0x0006DC:
    self.gen = (instance_create[]:int32 (var 346s) (var 0s) (var 0s))
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
0x000730:
    if !(>= self.mycommand 0s) goto 0x00075C
0x000744:
    stog.msg[0s] = "* Pyrope is protected by its&  winsome smile."
0x00075C:
    if !(>= self.mycommand 25s) goto 0x000788
0x000770:
    stog.msg[0s] = "* Pyrope is pretending to&  pull the fire alarm."
0x000788:
    if !(>= self.mycommand 50s) goto 0x0007B4
0x00079C:
    stog.msg[0s] = "* Pyrope is chuckling through&  its teeth."
0x0007B4:
    if !(>= self.mycommand 75s) goto 0x0007E0
0x0007C8:
    stog.msg[0s] = "* Pyrope is pretending to be&  a candle."
0x0007E0:
    if !(>= self.mycommand 90s) goto 0x00080C
0x0007F4:
    stog.msg[0s] = "* Smells like rope burn."
0x00080C:
    if !(== self.heat 1s) goto 0x000838
0x000820:
    stog.msg[0s] = "* Pyrope wants more heat."
0x000838:
    if !(> self.heat 1s) goto 0x000864
0x00084C:
    stog.msg[0s] = "* The room is sweltering!"
0x000864:
    self.attacked = 1s
0x000870:
    self.whatiheard = -1s
0x00087C:
    if !(== global.myfight 2s) goto 0x000D90
0x000890:
    if !(!= self.whatiheard -1s) goto 0x000D90
0x0008A4:
    if !(== global.heard 0s) goto 0x000D90
0x0008B8:
    if !(== self.whatiheard 0s) goto 0x000960
0x0008CC:
    global.msc = 0s
    stog.msg[0s] = "* PYROPE - ATK 29 DEF 14&* This mischievous monster&  is never warm enough./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000950
0x000944:
    self.halt = 0s
0x000950:
    popenv 0x000944
0x000954:
    self.whatiheard = 9s
0x000960:
    if !(== self.whatiheard 3s) goto 0x000AAC
0x000974:
    if !(bool (instance_exists[]:int32 (var 341s))) goto 0x0009A4
0x00098C:
    pushenv 341s 0x0009A0
0x000994:
    call (instance_destroy[]:int32 )
0x0009A0:
    popenv 0x000994
0x0009A4:
    global.msc = 0s
    stog.msg[0s] = "* You blow on Pyrope.&* Its flames die down.&* Pyrope's ATTACK dropped!/^"
    pushenv 343s 0x000A44
0x0009D0:
    push -5s
    if !(> (int32 self.myself):monsteratk 2s) goto 0x000A20
0x0009F4:
    push -5s
    stog.monsteratk[(- (int32 self.myself):monsteratk 2s)] = (int32 self.myself)
0x000A20:
    self.heat = 0s
    self.mercymod = -200s
    self.whatiheard = 3s
0x000A44:
    popenv 0x0009D0
0x000A48:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000AA8
0x000A9C:
    self.halt = 0s
0x000AA8:
    popenv 0x000A9C
0x000AAC:
    if !(== self.whatiheard 1s) goto 0x000CE8
0x000AC0:
    global.msc = 0s
    pushenv 343s 0x000AE0
0x000AD4:
    self.whatiheard = 1s
0x000AE0:
    popenv 0x000AD4
0x000AE4:
    pushenv 343s 0x000B04
0x000AEC:
    self.mercymod = (+ self.mercymod 30s)
0x000B04:
    popenv 0x000AEC
0x000B08:
    pushenv 343s 0x000B28
0x000B10:
    self.heat = (+ self.heat 1s)
0x000B28:
    popenv 0x000B10
0x000B2C:
    if !(> self.heat 1s) goto 0x000B58
0x000B40:
    pushenv 343s 0x000B54
0x000B48:
    self.mercymod = 900s
0x000B54:
    popenv 0x000B48
0x000B58:
    stog.msg[0s] = "* You crank up the thermostat.&* Pyrope begins to get&  excited./^"
    if !(== self.heat 2s) goto 0x000B9C
0x000B84:
    stog.msg[0s] = "* You crank up the thermostat.&* It's super hot!&* Pyrope looks satisfied./^"
0x000B9C:
    if !(> self.heat 2s) goto 0x000BC8
0x000BB0:
    stog.msg[0s] = "* You crank up the thermostat.&* It's SOOOO hot!/^"
0x000BC8:
    if !(== self.heat 1s) goto 0x000BF8
0x000BDC:
    push (== (instance_exists[]:int32 (var 341s)) 0s)
    goto 0x000BFC
0x000BF8:
    push 0s
0x000BFC:
    if !pop goto 0x000C24
0x000C00:
    call (instance_create[]:int32 (var 341s) (var 0s) (var 0s))
0x000C24:
    if !(> self.heat 1s) goto 0x000C50
0x000C38:
    push (bool (instance_exists[]:int32 (var 341s)))
    goto 0x000C54
0x000C50:
    push 0s
0x000C54:
    if !pop goto 0x000C84
0x000C58:
    if !(< 341.cfactor 30s) goto 0x000C84
0x000C6C:
    [obj_heatwaver].cfactor = (+ 341.cfactor 2s)
0x000C84:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000CE4
0x000CD8:
    self.halt = 0s
0x000CE4:
    popenv 0x000CD8
0x000CE8:
    if !(== self.whatiheard 4s) goto 0x000D84
0x000CFC:
    global.msc = 0s
    stog.msg[0s] = "* You invite Pyrope to hang&  out./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000D80
0x000D74:
    self.halt = 0s
0x000D80:
    popenv 0x000D74
0x000D84:
    global.heard = 1s
0x000D90:
    if !(== global.myfight 4s) goto 0x000DEC
0x000DA4:
    if !(== global.mercyuse 0s) goto 0x000DEC
0x000DB8:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000DEC
0x000DE0:
    call (instance_destroy[]:int32 )
0x000DEC:
    if !(== self.mercymod 222s) goto 0x000E1C
0x000E00:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000E20
0x000E1C:
    push 0s
0x000E20:
    if !pop goto 0x000E58
0x000E24:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000E58
0x000E4C:
    call (instance_destroy[]:int32 )
0x000E58:
    exit
