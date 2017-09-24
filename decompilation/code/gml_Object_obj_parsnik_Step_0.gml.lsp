0x000000:
    if !(== global.mnfight 3s) goto 0x000020
0x000014:
    self.attacked = 0s
0x000020:
    if !(== global.myfight 0s) goto 0x000048
0x000034:
    push (== global.mnfight 0s)
    goto 0x00004C
0x000048:
    push 0s
0x00004C:
    if !pop goto 0x00005C
0x000050:
    self.eat = 0s
0x00005C:
    push -1s
    if !(> 5s:alarm 0s) goto 0x000204
0x000078:
    push -5s
    if !(== 0s:monster 1s) goto 0x0000FC
0x000094:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0000FC
0x0000CC:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0000FC:
    push -5s
    if !(== 1s:monster 1s) goto 0x000180
0x000118:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000180
0x000150:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000180:
    push -5s
    if !(== 2s:monster 1s) goto 0x000204
0x00019C:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000204
0x0001D4:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000204:
    if !(== global.mnfight 1s) goto 0x00026C
0x000218:
    if !(== self.talked 0s) goto 0x00026C
0x00022C:
    stog.alarm[5s] = 110s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x00026C:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0002F8
0x000284:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0002DC
0x0002A0:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x0002DC
0x0002C0:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x0002E0
0x0002DC:
    push 0s
0x0002E0:
    if !pop goto 0x0002F8
0x0002E4:
    stog.alarm[5s] = 2s
0x0002F8:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x00035C
0x00031C:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x00035C:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x00047C
0x000380:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x0003D4
0x0003C0:
    stog.alarm[2s] = 15s
0x0003D4:
    popenv 0x0003C0
0x0003D8:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x00044C
0x0003FC:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x00047C
0x00044C:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x00047C:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x00054C
0x0004A0:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000514
0x000500:
    stog.alarm[2s] = 30s
0x000514:
    popenv 0x000500
0x000518:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x00054C:
    if !(== global.mnfight 2s) goto 0x0009DC
0x000560:
    if !(== self.attacked 0s) goto 0x0009A0
0x000574:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 150s
    if !(< self.mycommand 50s) goto 0x0006BC
0x0005A4:
    global.firingrate = 4s
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(> (+ -5s 2s:monster) 1s) goto 0x000600
0x0005F4:
    global.firingrate = 7s
0x000600:
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 3s) goto 0x000650
0x000644:
    global.firingrate = 11s
0x000650:
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    if !(== self.eat 1s) goto 0x0006A4
0x00068C:
    push 1s
    stog.specgreen* = (int32 self.gen)
0x0006A4:
    push 6s
    stog.bullettype* = (int32 self.gen)
0x0006BC:
    if !(>= self.mycommand 50s) goto 0x0007E8
0x0006D0:
    global.firingrate = 12s
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 2s) goto 0x00072C
0x000720:
    global.firingrate = 22s
0x00072C:
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 3s) goto 0x00077C
0x000770:
    global.firingrate = 30s
0x00077C:
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    if !(== self.eat 1s) goto 0x0007D0
0x0007B8:
    push 1s
    stog.specgreen* = (int32 self.gen)
0x0007D0:
    push 5s
    stog.bullettype* = (int32 self.gen)
0x0007E8:
    push self.myself
    stog.myself* = (int32 self.gen)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x00085C
0x000844:
    stog.msg[0s] = "* Parsnik has a hissy fit."
0x00085C:
    if !(>= self.mycommand 25s) goto 0x000888
0x000870:
    stog.msg[0s] = "* Parsnik's snakes shift to&  change hairstyles^1.&* Mohawk^1. Ponytail^1. Undercut."
0x000888:
    if !(>= self.mycommand 50s) goto 0x0008B4
0x00089C:
    stog.msg[0s] = "* Parsnik completely closes its&  mouth^1.&* It looks short and weird."
0x0008B4:
    if !(>= self.mycommand 75s) goto 0x0008E0
0x0008C8:
    stog.msg[0s] = "* Snakes play with a beach ball."
0x0008E0:
    if !(>= self.mycommand 90s) goto 0x00090C
0x0008F4:
    stog.msg[0s] = "* Smells like tasty snakes."
0x00090C:
    if !(> self.mercymod 100s) goto 0x000938
0x000920:
    stog.msg[0s] = "* Parsnik seems satisfied."
0x000938:
    push -5s
    push (int32 self.myself):monsterhp
    if !(<= -5s (/ (int32 self.myself):monstermaxhp (double 4s))) goto 0x000994
0x00097C:
    stog.msg[0s] = "* The snakes are wilting."
0x000994:
    self.attacked = 1s
0x0009A0:
    if !(== self.mercymod 999999) goto 0x0009D0
0x0009B8:
    global.turntimer = -1s
    global.mnfight = 3s
0x0009D0:
    self.whatiheard = -1s
0x0009DC:
    if !(== self.whatiheard 1s) goto 0x000A0C
0x0009F0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000A10
0x000A0C:
    push 0s
0x000A10:
    if !pop goto 0x000A54
0x000A14:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 8s) goto 0x000A54
0x000A3C:
    self.killed = 0s
    call (instance_destroy[]:int32 )
0x000A54:
    if !(== global.myfight 2s) goto 0x000D4C
0x000A68:
    if !(!= self.whatiheard -1s) goto 0x000D4C
0x000A7C:
    if !(== global.heard 0s) goto 0x000D4C
0x000A90:
    if !(== self.whatiheard 0s) goto 0x000B38
0x000AA4:
    global.msc = 0s
    stog.msg[0s] = "* PARSNIK - ATK 30 DEF 28&* This cobrafied carrot has&  a headful of tasty snakes./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B28
0x000B1C:
    self.halt = 0s
0x000B28:
    popenv 0x000B1C
0x000B2C:
    self.whatiheard = 9s
0x000B38:
    if !(== self.whatiheard 3s) goto 0x000B64
0x000B4C:
    global.myfight = 0s
    global.mnfight = 1s
0x000B64:
    if !(== self.whatiheard 1s) goto 0x000C98
0x000B78:
    global.msc = 0s
    call (script_execute[]:int32 (var 163s))
    stog.msg[0s] = "* You tried to eat Parsnik^1,&  but it wasn't weakened&  enough./^"
    if !(< self.mercy 8s) goto 0x000C34
0x000BC4:
    stog.msg[0s] = "* You start eating snakes like&  they're spaghetti.&* You recovered 5 HP!/^"
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 5s) (var 56s))
    push 1s
    stog.pause* = (int32 self.mypart1)
0x000C34:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000C94
0x000C88:
    self.halt = 0s
0x000C94:
    popenv 0x000C88
0x000C98:
    if !(== self.whatiheard 4s) goto 0x000D40
0x000CAC:
    self.eat = 1s
    global.msc = 0s
    stog.msg[0s] = "* Parsnik mishears you and fires&  a series of tasty snakes./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000D3C
0x000D30:
    self.halt = 0s
0x000D3C:
    popenv 0x000D30
0x000D40:
    global.heard = 1s
0x000D4C:
    if !(== global.myfight 4s) goto 0x000DA8
0x000D60:
    if !(== global.mercyuse 0s) goto 0x000DA8
0x000D74:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000DA8
0x000D9C:
    call (instance_destroy[]:int32 )
0x000DA8:
    if !(== self.mercymod 222s) goto 0x000DD8
0x000DBC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000DDC
0x000DD8:
    push 0s
0x000DDC:
    if !pop goto 0x000E14
0x000DE0:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000E14
0x000E08:
    call (instance_destroy[]:int32 )
0x000E14:
    exit
