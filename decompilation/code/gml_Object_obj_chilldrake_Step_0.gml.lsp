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
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    self.mypart2 = (instance_create[]:int32 self.part2 self.y self.x)
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
    if !(== global.mnfight 2s) goto 0x00090C
0x000568:
    if !(== self.attacked 0s) goto 0x00090C
0x00057C:
    self.pop = (scr_monstersum[]:int32 )
    if !(bool (instance_exists[]:int32 (var 217s))) goto 0x0005D0
0x0005A4:
    if !(== 217.ditch 0s) goto 0x0005D0
0x0005B8:
    self.pop = (- self.pop 1s)
0x0005D0:
    global.turntimer = 130s
    global.firingrate = 17s
    if !(== self.pop 3s) goto 0x00061C
0x0005FC:
    global.firingrate = (* global.firingrate 2.4d)
0x00061C:
    if !(== self.pop 2s) goto 0x000650
0x000630:
    global.firingrate = (* global.firingrate 1.7d)
0x000650:
    if !(>= self.mycommand 0s) goto 0x000678
0x000664:
    push (<= self.mycommand 50s)
    goto 0x00067C
0x000678:
    push 0s
0x00067C:
    if !pop goto 0x0006C4
0x000680:
    self.gen = (instance_create[]:int32 (var 712s) self.y self.x)
    push 1s
    stog.bullettype* = (int32 self.gen)
    goto 0x00071C
0x0006C4:
    global.firingrate = (+ global.firingrate 8s)
    self.gen = (instance_create[]:int32 (var 712s) self.y self.x)
    push 0s
    stog.bullettype* = (int32 self.gen)
0x00071C:
    push self.myself
    stog.myself* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x000764
0x00074C:
    stog.msg[0s] = "* Chilldrake starts a one-&  monster riot."
0x000764:
    if !(>= self.mycommand 25s) goto 0x000790
0x000778:
    stog.msg[0s] = "* Chilldrake is chanting an&  anarchist spell."
0x000790:
    if !(>= self.mycommand 50s) goto 0x0007BC
0x0007A4:
    stog.msg[0s] = "* Chilldrake is eating its&  own homework."
0x0007BC:
    if !(>= self.mycommand 70s) goto 0x0007E8
0x0007D0:
    stog.msg[0s] = "* It smells like \"Ice\"&  scented body-spray."
0x0007E8:
    if !(>= self.mycommand 90s) goto 0x000814
0x0007FC:
    stog.msg[0s] = "* Chilldrake is wondering&  where Snowy went."
0x000814:
    if !(== self.mercymod 80s) goto 0x000840
0x000828:
    stog.msg[0s] = "* Chilldrake feels neutered&  by your agreement."
0x000840:
    if !(== self.mercymod 200s) goto 0x00086C
0x000854:
    stog.msg[0s] = "* Chilldrake is laughing at&  your imitation of its&  cohort."
0x00086C:
    if !(== self.mercymod -35s) goto 0x000898
0x000880:
    stog.msg[0s] = "* Chilldrake pretends not to&  care."
0x000898:
    if !(< self.mercymod -10s) goto 0x0008C4
0x0008AC:
    stog.msg[0s] = "* Chilldrake is puffed up.."
0x0008C4:
    push -5s
    if !(< (int32 self.myself):monsterhp 20s) goto 0x000900
0x0008E8:
    stog.msg[0s] = "* Chilldrake is flaking&  apart."
0x000900:
    self.attacked = 1s
0x00090C:
    if !(== global.myfight 2s) goto 0x000D14
0x000920:
    if !(!= self.whatiheard -1s) goto 0x000D14
0x000934:
    if !(== global.heard 0s) goto 0x000D14
0x000948:
    if !(== self.whatiheard 0s) goto 0x0009E4
0x00095C:
    global.msc = 0s
    stog.msg[0s] = "* CHILLDRAKE - ATK 12 DEF 7&* Rebels against everything!!&* Looking for its friend Snowy./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0009E0
0x0009D4:
    self.halt = 0s
0x0009E0:
    popenv 0x0009D4
0x0009E4:
    if !(== self.whatiheard 1s) goto 0x000AE0
0x0009F8:
    global.msc = 0s
    self.gg = (floor[]:int32 (random[]:int32 (var 6s)))
    if !(<= self.gg 6s) goto 0x000A50
0x000A38:
    stog.msg[0s] = "* You tell Chilldrake it's&  all wrong./^"
0x000A50:
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
    self.mercymod = -10s
    if !(== self.gg 7s) goto 0x000AE0
0x000AD4:
    self.mercymod = 222s
0x000AE0:
    if !(== self.whatiheard 3s) goto 0x000BEC
0x000AF4:
    if !(== self.joketold 0s) goto 0x000B18
0x000B08:
    self.mercymod = -4s
    goto 0x000B24
0x000B18:
    self.mercymod = 80s
0x000B24:
    global.msc = 0s
    if !(== self.joketold 0s) goto 0x000B5C
0x000B44:
    stog.msg[0s] = "* You agree with Chilldrake&  before it gives its speech./^"
0x000B5C:
    if !(== self.joketold 1s) goto 0x000B88
0x000B70:
    stog.msg[0s] = "* You agree with Chilldrake^1.&* It seems to get very&  uncomfortable.../^"
0x000B88:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BE8
0x000BDC:
    self.halt = 0s
0x000BE8:
    popenv 0x000BDC
0x000BEC:
    if !(== self.whatiheard 4s) goto 0x000D08
0x000C00:
    global.msc = 0s
    if !(== (scr_monstersum[]:int32 ) 1s) goto 0x000C38
0x000C20:
    stog.msg[0s] = "* You make fun of Chilldrake./^"
0x000C38:
    if !(> (scr_monstersum[]:int32 ) 1s) goto 0x000CA4
0x000C4C:
    stog.msg[0s] = "* You make fun of Chilldrake./"
    stog.msg[1s] = "* The other monsters think&  it's hilarious.../^"
    call (scr_withallmonster[]:int32 (var 20s) (var 0s))
    self.whatiheard = 19s
0x000CA4:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000D04
0x000CF8:
    self.halt = 0s
0x000D04:
    popenv 0x000CF8
0x000D08:
    global.heard = 1s
0x000D14:
    if !(== global.myfight 4s) goto 0x000D70
0x000D28:
    if !(== global.mercyuse 0s) goto 0x000D70
0x000D3C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000D70
0x000D64:
    call (instance_destroy[]:int32 )
0x000D70:
    if !(== self.mercymod 222s) goto 0x000DA0
0x000D84:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000DA4
0x000DA0:
    push 0s
0x000DA4:
    if !pop goto 0x000DDC
0x000DA8:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000DDC
0x000DD0:
    call (instance_destroy[]:int32 )
0x000DDC:
    exit
