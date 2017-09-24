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
    if !(== global.mnfight 2s) goto 0x000870
0x000524:
    if !(== self.attacked 0s) goto 0x000834
0x000538:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 150s
    global.firingrate = 17s
    if !(== self.pop 3s) goto 0x000594
0x000574:
    global.firingrate = (* global.firingrate 2.8d)
0x000594:
    if !(== self.pop 2s) goto 0x0005C8
0x0005A8:
    global.firingrate = (* global.firingrate 1.8d)
0x0005C8:
    if !(>= self.mycommand 50s) goto 0x000634
0x0005DC:
    self.gen = (instance_create[]:int32 (var 390s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    goto 0x0006C4
0x000634:
    self.gen = (instance_create[]:int32 (var 391s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    if !(== self.pop 1s) goto 0x0006C4
0x00069C:
    stog.rate* = (+ (int32 self.gen):rate 1s)
0x0006C4:
    push (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x0006F0
0x0006D8:
    stog.msg[0s] = "* Astigmatism gazes through&  your soul."
0x0006F0:
    if !(>= self.mycommand 30s) goto 0x00071C
0x000704:
    stog.msg[0s] = "* Astigmatism gives you a&  hypnotizing glare."
0x00071C:
    if !(>= self.mycommand 70s) goto 0x000748
0x000730:
    stog.msg[0s] = "* Astigmatism clicks its teeth."
0x000748:
    if !(>= self.mycommand 90s) goto 0x000774
0x00075C:
    stog.msg[0s] = "* Smells like glasses."
0x000774:
    if !(< self.mercymod -100s) goto 0x0007A0
0x000788:
    stog.msg[0s] = "* Astigmatism has gone&  bloodshot."
0x0007A0:
    if !(> self.mercymod 100s) goto 0x0007CC
0x0007B4:
    stog.msg[0s] = "* Astigmatism doesn't care&  about fighting anymore."
0x0007CC:
    push -5s
    push (int32 self.myself):monsterhp
    if !(< -5s (/ (int32 self.myself):monstermaxhp (double 3s))) goto 0x000828
0x000810:
    stog.msg[0s] = "* Astigmatism is watering."
0x000828:
    self.attacked = 1s
0x000834:
    if !(== self.mercymod 999999) goto 0x000864
0x00084C:
    global.turntimer = -1s
    global.mnfight = 3s
0x000864:
    self.whatiheard = -1s
0x000870:
    if !(== global.myfight 2s) goto 0x000C4C
0x000884:
    if !(!= self.whatiheard -1s) goto 0x000C4C
0x000898:
    if !(== global.heard 0s) goto 0x000C4C
0x0008AC:
    if !(== self.whatiheard 0s) goto 0x000954
0x0008C0:
    global.msc = 0s
    stog.msg[0s] = "* ASTIGMATISM - ATK 32 DEF 26&* This relentless bully ALWAYS&  gets its way./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000944
0x000938:
    self.halt = 0s
0x000944:
    popenv 0x000938
0x000948:
    self.whatiheard = 9s
0x000954:
    if !(== self.whatiheard 3s) goto 0x000A30
0x000968:
    global.msc = 0s
    stog.msg[0s] = "* You pick on Astigmatism./^"
    [OBJ_WRITER].halt = 3s
    if !(== self.pickon 0s) goto 0x0009B8
0x0009AC:
    self.mercymod = -120s
0x0009B8:
    if !(== self.pickon 1s) goto 0x0009D8
0x0009CC:
    self.mercymod = 120s
0x0009D8:
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A2C
0x000A20:
    self.halt = 0s
0x000A2C:
    popenv 0x000A20
0x000A30:
    if !(== self.whatiheard 1s) goto 0x000B0C
0x000A44:
    global.msc = 0s
    stog.msg[0s] = "* You don't pick on Astigmatism./^"
    if !(== self.pickon 1s) goto 0x000A88
0x000A7C:
    self.mercymod = -120s
0x000A88:
    if !(== self.pickon 0s) goto 0x000AA8
0x000A9C:
    self.mercymod = 120s
0x000AA8:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B08
0x000AFC:
    self.halt = 0s
0x000B08:
    popenv 0x000AFC
0x000B0C:
    if !(== self.whatiheard 4s) goto 0x000C40
0x000B20:
    global.msc = 0s
    stog.msg[0s] = "* You execute some action./^"
    self.sum = (scr_monstersum[]:int32 )
    if !(== self.sum 1s) goto 0x000B80
0x000B68:
    stog.msg[0s] = "* You stand up to Astigmatism./^"
0x000B80:
    if !(> self.sum 1s) goto 0x000BAC
0x000B94:
    stog.msg[0s] = "* You stand up to Astigmatism^1.&* The other monsters are&  impressed./^"
0x000BAC:
    [obj_monsterparent].mercymod = 150s
    [obj_monsterparent].impress = 1s
    self.impress = 0s
    self.mercymod = 0s
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000C3C
0x000C30:
    self.halt = 0s
0x000C3C:
    popenv 0x000C30
0x000C40:
    global.heard = 1s
0x000C4C:
    if !(== global.myfight 4s) goto 0x000CA8
0x000C60:
    if !(== global.mercyuse 0s) goto 0x000CA8
0x000C74:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000CA8
0x000C9C:
    call (instance_destroy[]:int32 )
0x000CA8:
    if !(== self.mercymod 222s) goto 0x000CD8
0x000CBC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000CDC
0x000CD8:
    push 0s
0x000CDC:
    if !pop goto 0x000D14
0x000CE0:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000D14
0x000D08:
    call (instance_destroy[]:int32 )
0x000D14:
    exit
