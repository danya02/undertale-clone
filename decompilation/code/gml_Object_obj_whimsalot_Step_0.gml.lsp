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
    if !(== global.mnfight 2s) goto 0x00091C
0x000524:
    if !(== self.attacked 0s) goto 0x0008D4
0x000538:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 150s
    global.firingrate = 22s
    if !(== self.pop 3s) goto 0x000594
0x000574:
    global.firingrate = (* global.firingrate 2.7d)
0x000594:
    if !(== self.pop 2s) goto 0x0005C8
0x0005A8:
    global.firingrate = (* global.firingrate 1.8d)
0x0005C8:
    if (>= self.mycommand 50s) goto 0x0005F0
0x0005DC:
    push (== self.pop 1s)
    goto 0x0005F4
0x0005F0:
    push 1s
0x0005F4:
    if !pop goto 0x0006E4
0x0005F8:
    if !(== self.greentime 0s) goto 0x000660
0x00060C:
    self.gen = (instance_create[]:int32 (var 397s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
0x000660:
    if !(== self.greentime 1s) goto 0x0006E0
0x000674:
    self.gen = (instance_create[]:int32 (var 398s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    push 1s
    stog.green* = (int32 self.gen)
0x0006E0:
    goto 0x000764
0x0006E4:
    self.gen = (instance_create[]:int32 (var 398s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    if !(== self.greentime 1s) goto 0x000764
0x00074C:
    push 1s
    stog.green* = (int32 self.gen)
0x000764:
    if !(>= self.mycommand 0s) goto 0x000790
0x000778:
    stog.msg[0s] = "* Whimsalot locks eyes with you."
0x000790:
    if !(>= self.mycommand 25s) goto 0x0007BC
0x0007A4:
    stog.msg[0s] = "* Whimsalot flutters silently."
0x0007BC:
    if !(>= self.mycommand 50s) goto 0x0007E8
0x0007D0:
    stog.msg[0s] = "* Whimsalot shakes its head&  dismissively."
0x0007E8:
    if !(>= self.mycommand 75s) goto 0x000814
0x0007FC:
    stog.msg[0s] = "* Whimsalot spins its weapon&  around."
0x000814:
    if !(>= self.mycommand 90s) goto 0x000840
0x000828:
    stog.msg[0s] = "* Smells like nightshade and&  bleach."
0x000840:
    if !(> self.mercymod 80s) goto 0x00086C
0x000854:
    stog.msg[0s] = "* Whimsalot doesn't want to&  fight anymore."
0x00086C:
    push -5s
    push (int32 self.myself):monsterhp
    if !(<= -5s (/ (int32 self.myself):monstermaxhp (double 4s))) goto 0x0008C8
0x0008B0:
    stog.msg[0s] = "* Whimsalot's flying stutters."
0x0008C8:
    self.attacked = 1s
0x0008D4:
    if !(== self.mercymod 999999) goto 0x000904
0x0008EC:
    global.turntimer = -1s
    global.mnfight = 3s
0x000904:
    self.greentime = 0s
    self.whatiheard = -1s
0x00091C:
    if !(== global.myfight 2s) goto 0x000C1C
0x000930:
    if !(!= self.whatiheard -1s) goto 0x000C1C
0x000944:
    if !(== global.heard 0s) goto 0x000C1C
0x000958:
    if !(== self.whatiheard 0s) goto 0x000A00
0x00096C:
    global.msc = 0s
    stog.msg[0s] = "* WHIMSALOT - ATK 34 DEF 12&* It finally stopped worrying./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0009F0
0x0009E4:
    self.halt = 0s
0x0009F0:
    popenv 0x0009E4
0x0009F4:
    self.whatiheard = 9s
0x000A00:
    if !(== self.whatiheard 3s) goto 0x000AB4
0x000A14:
    global.msc = 0s
    stog.msg[0s] = "* You reassure Whimsalot that&  what it's doing is&  alright./^"
    self.mercymod = (+ self.mercymod 30s)
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000AB0
0x000AA4:
    self.halt = 0s
0x000AB0:
    popenv 0x000AA4
0x000AB4:
    if !(== self.whatiheard 1s) goto 0x000B50
0x000AC8:
    global.msc = 0s
    stog.msg[0s] = "* You leap at Whimsalot in a&  threatening manner./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B4C
0x000B40:
    self.halt = 0s
0x000B4C:
    popenv 0x000B40
0x000B50:
    if !(== self.whatiheard 4s) goto 0x000C10
0x000B64:
    global.msc = 0s
    stog.msg[0s] = "* You kneel and pray for safety^1.&* Whimsalot remembers its&  conscience./^"
    self.mercymod = (+ self.mercymod 50s)
    self.greentime = 1s
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000C0C
0x000C00:
    self.halt = 0s
0x000C0C:
    popenv 0x000C00
0x000C10:
    global.heard = 1s
0x000C1C:
    if !(== global.myfight 4s) goto 0x000C78
0x000C30:
    if !(== global.mercyuse 0s) goto 0x000C78
0x000C44:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000C78
0x000C6C:
    call (instance_destroy[]:int32 )
0x000C78:
    if !(== self.mercymod 222s) goto 0x000CA8
0x000C8C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000CAC
0x000CA8:
    push 0s
0x000CAC:
    if !pop goto 0x000CE4
0x000CB0:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000CE4
0x000CD8:
    call (instance_destroy[]:int32 )
0x000CE4:
    exit
