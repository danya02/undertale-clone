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
    if !(== global.mnfight 2s) goto 0x000B38
0x000524:
    if !(== self.attacked 0s) goto 0x0009A8
0x000538:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 160s
    global.firingrate = 7s
    if !(== self.pop 3s) goto 0x000594
0x000574:
    global.firingrate = (* global.firingrate 2.4d)
0x000594:
    if !(== self.pop 2s) goto 0x0005C8
0x0005A8:
    global.firingrate = (* global.firingrate 1.7d)
0x0005C8:
    self.num = 0s
    if !(== self.whatiheard 1s) goto 0x0005F4
0x0005E8:
    self.num = 1s
0x0005F4:
    if !(< global.hp global.maxhp) goto 0x000618
0x00060C:
    self.num = 1s
0x000618:
    if !(== self.criticize 0s) goto 0x0007D8
0x00062C:
    if !(== self.num 1s) goto 0x0006D0
0x000640:
    global.turntimer = 160s
    if !(> self.encourage 0s) goto 0x000678
0x000660:
    global.firingrate = (- global.firingrate 2s)
0x000678:
    self.gen = (instance_create[]:int32 (var 334s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    goto 0x0007D8
0x0006D0:
    global.firingrate = 9s
    if !(> self.encourage 0s) goto 0x000708
0x0006F0:
    global.firingrate = (- global.firingrate 4s)
0x000708:
    if !(== self.pop 3s) goto 0x00073C
0x00071C:
    global.firingrate = (* global.firingrate 2.6d)
0x00073C:
    if !(== self.pop 2s) goto 0x000770
0x000750:
    global.firingrate = (* global.firingrate 1.7d)
0x000770:
    push (var 331s)
    push -5s
    push (+ 2s:idealborder 2s)
    self.gen = (instance_create[]:int32 -5s 0s:idealborder (- (/ (+ -5s 1s:idealborder) (double 2s)) 30s))
0x0007D8:
    if !(>= self.mycommand 0s) goto 0x000804
0x0007EC:
    stog.msg[0s] = "* Vulkin parades around the&  room."
0x000804:
    if !(>= self.mycommand 25s) goto 0x000830
0x000818:
    stog.msg[0s] = "* Vulkin is making coffee&  in its crater."
0x000830:
    if !(>= self.mycommand 50s) goto 0x00085C
0x000844:
    stog.msg[0s] = "* Vulkin is wiggling its&  weird rump."
0x00085C:
    if !(>= self.mycommand 75s) goto 0x000888
0x000870:
    stog.msg[0s] = "* Vulkin makes a smoke hoop&  and jumps through it."
0x000888:
    if !(>= self.mycommand 90s) goto 0x0008B4
0x00089C:
    stog.msg[0s] = "* Smells like a lava lamp."
0x0008B4:
    if !(> self.hug 0s) goto 0x0008E0
0x0008C8:
    stog.msg[0s] = "* Vulkin's cheeks glow with&  a bright heat."
0x0008E0:
    if !(> self.encourage 0s) goto 0x00090C
0x0008F4:
    stog.msg[0s] = "* Vulkin parades around you&  proudly."
0x00090C:
    if !(== self.criticize 1s) goto 0x000938
0x000920:
    stog.msg[0s] = "* Vulkin stands in the corner."
0x000938:
    if !(> self.criticize 1s) goto 0x000964
0x00094C:
    stog.msg[0s] = "* Little streams of lava come&  from Vulkin's eyes."
0x000964:
    if !(== self.specialmessage 1s) goto 0x00099C
0x000978:
    stog.msg[0s] = "* Vulkin reassures you the&  plane turning tiny is^1, like^1,&  completely intentional."
    self.specialmessage = 0s
0x00099C:
    self.attacked = 1s
0x0009A8:
    if !(> self.criticize 0s) goto 0x0009D0
0x0009BC:
    push (== self.pop 1s)
    goto 0x0009D4
0x0009D0:
    push 0s
0x0009D4:
    if !pop goto 0x0009F0
0x0009D8:
    global.turntimer = -1s
    global.mnfight = 3s
0x0009F0:
    if !(> self.criticize 0s) goto 0x000A18
0x000A04:
    push (>= (scr_monstersum[]:int32 ) 2s)
    goto 0x000A1C
0x000A18:
    push 0s
0x000A1C:
    if !pop goto 0x000B2C
0x000A20:
    push -5s
    if !(bool (instance_exists[]:int32 0s:monsterinstance)) goto 0x000A60
0x000A40:
    push -5s
    push (bool (instance_exists[]:int32 1s:monsterinstance))
    goto 0x000A64
0x000A60:
    push 0s
0x000A64:
    if !pop goto 0x000B2C
0x000A68:
    push -5s
    if !(== 0s:monsterinstance 337s) goto 0x000AA0
0x000A84:
    push -5s
    push (== 1s:monsterinstance 337s)
    goto 0x000AA4
0x000AA0:
    push 0s
0x000AA4:
    if !pop goto 0x000B2C
0x000AA8:
    push -5s
    if !(> (int32 0s:monsterinstance):criticize 0s) goto 0x000AF8
0x000AD0:
    push -5s
    push (> (int32 1s:monsterinstance):criticize 0s)
    goto 0x000AFC
0x000AF8:
    push 0s
0x000AFC:
    if !pop goto 0x000B2C
0x000B00:
    global.turntimer = -1s
    if !(== global.mnfight 2s) goto 0x000B2C
0x000B20:
    global.mnfight = 3s
0x000B2C:
    self.whatiheard = -1s
0x000B38:
    if !(== global.myfight 2s) goto 0x000F3C
0x000B4C:
    if !(!= self.whatiheard -1s) goto 0x000F3C
0x000B60:
    if !(== global.heard 0s) goto 0x000F3C
0x000B74:
    if !(== self.whatiheard 0s) goto 0x000C1C
0x000B88:
    global.msc = 0s
    stog.msg[0s] = "* VULKIN - ATK 25 DEF 0&* Mistakenly believes its lava&  can heal people./^"
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
    self.whatiheard = 9s
0x000C1C:
    if !(== self.whatiheard 3s) goto 0x000D20
0x000C30:
    global.msc = 0s
    stog.msg[0s] = "* You tell Vulkin that its&  attacks are NOT helpful./^"
    if !(== self.criticize 1s) goto 0x000C80
0x000C68:
    stog.msg[0s] = "* You tell Vulkin that its&  rump looks like a sack&  of trash./^"
0x000C80:
    self.encourage = 0s
    self.criticize = (+ self.criticize 1s)
    self.hug = 0s
    self.mercymod = -200s
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000D1C
0x000D10:
    self.halt = 0s
0x000D1C:
    popenv 0x000D10
0x000D20:
    if !(== self.whatiheard 1s) goto 0x000DF8
0x000D34:
    global.msc = 0s
    self.mercymod = 100s
    self.encourage = (+ self.encourage 1s)
    self.criticize = 0s
    self.hug = 0s
    stog.msg[0s] = "* You tell Vulkin it's doing&  a great job.&* Its attacks become extreme.../^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000DF4
0x000DE8:
    self.halt = 0s
0x000DF4:
    popenv 0x000DE8
0x000DF8:
    if !(== self.whatiheard 4s) goto 0x000F30
0x000E0C:
    global.msc = 0s
    self.mercymod = 100s
    self.encourage = 0s
    self.criticize = 0s
    self.hug = (+ self.hug 1s)
    stog.msg[0s] = "* You give Vulkin a hug^1.&* It warms your heart.../"
    if !(>= global.df 5s) goto 0x000EB4
0x000E80:
    global.df = (- global.df 5s)
    stog.msg[1s] = "* And your whole body!&* Ouch!&* Your DEFENSE dropped!/^"
    goto 0x000ECC
0x000EB4:
    stog.msg[1s] = "* Nothing else happened./^"
0x000ECC:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000F2C
0x000F20:
    self.halt = 0s
0x000F2C:
    popenv 0x000F20
0x000F30:
    global.heard = 1s
0x000F3C:
    if !(== global.myfight 4s) goto 0x000F98
0x000F50:
    if !(== global.mercyuse 0s) goto 0x000F98
0x000F64:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000F98
0x000F8C:
    call (instance_destroy[]:int32 )
0x000F98:
    if !(== self.mercymod 222s) goto 0x000FC8
0x000FAC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000FCC
0x000FC8:
    push 0s
0x000FCC:
    if !pop goto 0x001004
0x000FD0:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001004
0x000FF8:
    call (instance_destroy[]:int32 )
0x001004:
    exit
