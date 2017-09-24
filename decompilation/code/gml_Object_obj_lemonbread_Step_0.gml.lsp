0x000000:
    if !(== global.mnfight 3s) goto 0x000058
0x000014:
    self.attacked = 0s
    if !(== (int32 self.mypart1):melting 3s) goto 0x000058
0x000040:
    push 4s
    stog.melting* = (int32 self.mypart1)
0x000058:
    push -1s
    if !(> 5s:alarm 0s) goto 0x000200
0x000074:
    push -5s
    if !(== 0s:monster 1s) goto 0x0000F8
0x000090:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0000F8
0x0000C8:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0000F8:
    push -5s
    if !(== 1s:monster 1s) goto 0x00017C
0x000114:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x00017C
0x00014C:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x00017C:
    push -5s
    if !(== 2s:monster 1s) goto 0x000200
0x000198:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000200
0x0001D0:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000200:
    if !(== global.mnfight 1s) goto 0x000268
0x000214:
    if !(== self.talked 0s) goto 0x000268
0x000228:
    stog.alarm[5s] = 110s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000268:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0002F4
0x000280:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0002D8
0x00029C:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x0002D8
0x0002BC:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x0002DC
0x0002D8:
    push 0s
0x0002DC:
    if !pop goto 0x0002F4
0x0002E0:
    stog.alarm[5s] = 2s
0x0002F4:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000358
0x000318:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000358:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000478
0x00037C:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x0003D0
0x0003BC:
    stog.alarm[2s] = 15s
0x0003D0:
    popenv 0x0003BC
0x0003D4:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000448
0x0003F8:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000478
0x000448:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000478:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000548
0x00049C:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000510
0x0004FC:
    stog.alarm[2s] = 30s
0x000510:
    popenv 0x0004FC
0x000514:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000548:
    if !(== global.mnfight 2s) goto 0x0007C8
0x00055C:
    if !(== self.attacked 0s) goto 0x00078C
0x000570:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 150s
    global.firingrate = 10s
    if !(== self.pop 3s) goto 0x0005CC
0x0005AC:
    global.firingrate = (* global.firingrate 2.5d)
0x0005CC:
    if !(== self.pop 2s) goto 0x000600
0x0005E0:
    global.firingrate = (* global.firingrate 1.8d)
0x000600:
    if !(>= self.mycommand 60s) goto 0x00066C
0x000614:
    self.gen = (instance_create[]:int32 (var 524s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    goto 0x0006A0
0x00066C:
    self.gen = (instance_create[]:int32 (var 547s) (var 0s) (var 0s))
    global.turntimer = 190s
0x0006A0:
    if !(>= self.mycommand 0s) goto 0x0006CC
0x0006B4:
    stog.msg[0s] = "* Smells like sweet lemons."
0x0006CC:
    if !(>= self.mycommand 90s) goto 0x0006F8
0x0006E0:
    stog.msg[0s] = "* You hear the melody of&  pulsating flesh."
0x0006F8:
    if !(> self.mercymod 100s) goto 0x000724
0x00070C:
    stog.msg[0s] = "* Could this be goodbye!?"
0x000724:
    push -5s
    push (int32 self.myself):monsterhp
    if !(<= -5s (/ (int32 self.myself):monstermaxhp (double 4s))) goto 0x000780
0x000768:
    stog.msg[0s] = "* Monster has low HP."
0x000780:
    self.attacked = 1s
0x00078C:
    if !(== self.mercymod 999999) goto 0x0007BC
0x0007A4:
    global.turntimer = -1s
    global.mnfight = 3s
0x0007BC:
    self.whatiheard = -1s
0x0007C8:
    if !(== global.myfight 2s) goto 0x000DBC
0x0007DC:
    if !(!= self.whatiheard -1s) goto 0x000DBC
0x0007F0:
    if !(== global.heard 0s) goto 0x000DBC
0x000804:
    if !(== self.whatiheard 0s) goto 0x0008AC
0x000818:
    global.msc = 0s
    stog.msg[0s] = "* You called for help^1.&* But nobody came./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x00089C
0x000890:
    self.halt = 0s
0x00089C:
    popenv 0x000890
0x0008A0:
    self.whatiheard = 9s
0x0008AC:
    if !(== self.whatiheard 3s) goto 0x0009F0
0x0008C0:
    global.msc = 0s
    if !(== self.hum 0s) goto 0x000908
0x0008E0:
    stog.msg[0s] = "* You hum a familiar tune^1.&* Lemon Bread's body shakes.../^"
    self.hum = 1s
    goto 0x000920
0x000908:
    stog.msg[0s] = "* You hum a familiar tune^1.&* Nothing else happened./^"
0x000920:
    if !(== self.hum 1s) goto 0x00095C
0x000934:
    if !(== self.hug 1s) goto 0x00095C
0x000948:
    push (== self.flex 1s)
    goto 0x000960
0x00095C:
    push 0s
0x000960:
    if !pop goto 0x00098C
0x000964:
    stog.msg[0s] = "* You hum a familiar tune^1.&* Lemon Bread seems to&  remember something./^"
    self.mercymod = 99999
0x00098C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0009EC
0x0009E0:
    self.halt = 0s
0x0009EC:
    popenv 0x0009E0
0x0009F0:
    if !(== self.whatiheard 1s) goto 0x000A8C
0x000A04:
    global.msc = 0s
    stog.msg[0s] = "* You screamed out^1.&* But nobody came./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A88
0x000A7C:
    self.halt = 0s
0x000A88:
    popenv 0x000A7C
0x000A8C:
    if !(== self.whatiheard 4s) goto 0x000BD0
0x000AA0:
    global.msc = 0s
    if !(== self.flex 0s) goto 0x000AE8
0x000AC0:
    stog.msg[0s] = "* You flexed your arm^1.&* Lemon Bread's muscle shakes.../^"
    self.flex = 1s
    goto 0x000B00
0x000AE8:
    stog.msg[0s] = "* You flexed your arm^1.&* Nothing else happened./^"
0x000B00:
    if !(== self.hum 1s) goto 0x000B3C
0x000B14:
    if !(== self.hug 1s) goto 0x000B3C
0x000B28:
    push (== self.flex 1s)
    goto 0x000B40
0x000B3C:
    push 0s
0x000B40:
    if !pop goto 0x000B6C
0x000B44:
    stog.msg[0s] = "* You flexed your arm^1.&* Lemon Bread seems to&  remember something./^"
    self.mercymod = 99999
0x000B6C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BCC
0x000BC0:
    self.halt = 0s
0x000BCC:
    popenv 0x000BC0
0x000BD0:
    if !(== self.whatiheard 2s) goto 0x000D14
0x000BE4:
    global.msc = 0s
    if !(== self.hug 0s) goto 0x000C2C
0x000C04:
    stog.msg[0s] = "* You let Lemon Bread be^1.&* Lemon Bread's teeth shake.../^"
    self.hug = 1s
    goto 0x000C44
0x000C2C:
    stog.msg[0s] = "* You let Lemon Bread be^1.&* Nothing else happened./^"
0x000C44:
    if !(== self.hum 1s) goto 0x000C80
0x000C58:
    if !(== self.hug 1s) goto 0x000C80
0x000C6C:
    push (== self.flex 1s)
    goto 0x000C84
0x000C80:
    push 0s
0x000C84:
    if !pop goto 0x000CB0
0x000C88:
    stog.msg[0s] = "* You let Lemon Bread be^1.&* Lemon Bread seems to&  remember something./^"
    self.mercymod = 99999
0x000CB0:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000D10
0x000D04:
    self.halt = 0s
0x000D10:
    popenv 0x000D04
0x000D14:
    if !(== self.whatiheard 5s) goto 0x000DB0
0x000D28:
    global.msc = 0s
    stog.msg[0s] = "* You cried as loud as you&  could^1.&* But nobody came./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000DAC
0x000DA0:
    self.halt = 0s
0x000DAC:
    popenv 0x000DA0
0x000DB0:
    global.heard = 1s
0x000DBC:
    if !(== global.myfight 4s) goto 0x000E18
0x000DD0:
    if !(== global.mercyuse 0s) goto 0x000E18
0x000DE4:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000E18
0x000E0C:
    call (instance_destroy[]:int32 )
0x000E18:
    if !(== self.mercymod 222s) goto 0x000E48
0x000E2C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000E4C
0x000E48:
    push 0s
0x000E4C:
    if !pop goto 0x000E84
0x000E50:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000E84
0x000E78:
    call (instance_destroy[]:int32 )
0x000E84:
    exit
