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
    if !(== global.mnfight 2s) goto 0x000924
0x000568:
    if !(== self.attacked 0s) goto 0x000924
0x00057C:
    self.pop = (scr_monstersum[]:int32 )
    if !(bool (instance_exists[]:int32 (var 217s))) goto 0x0005D0
0x0005A4:
    if !(== 217.ditch 0s) goto 0x0005D0
0x0005B8:
    self.pop = (- self.pop 1s)
0x0005D0:
    global.turntimer = 120s
    if !(== self.pop 2s) goto 0x0005FC
0x0005F0:
    global.turntimer = 130s
0x0005FC:
    global.firingrate = 16s
    if !(== self.pop 3s) goto 0x00063C
0x00061C:
    global.firingrate = (* global.firingrate 2.4d)
0x00063C:
    if !(== self.pop 2s) goto 0x000668
0x000650:
    global.firingrate = (* global.firingrate 2s)
0x000668:
    if !(>= self.mycommand 0s) goto 0x000690
0x00067C:
    push (<= self.mycommand 50s)
    goto 0x000694
0x000690:
    push 0s
0x000694:
    if !pop goto 0x0006DC
0x000698:
    self.gen = (instance_create[]:int32 (var 712s) self.y self.x)
    push 1s
    stog.bullettype* = (int32 self.gen)
    goto 0x000734
0x0006DC:
    global.firingrate = (+ global.firingrate 8s)
    self.gen = (instance_create[]:int32 (var 712s) self.y self.x)
    push 0s
    stog.bullettype* = (int32 self.gen)
0x000734:
    push self.myself
    stog.myself* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x00077C
0x000764:
    stog.msg[0s] = "* Snowdrake is assessing the&  crowd."
0x00077C:
    if !(>= self.mycommand 25s) goto 0x0007A8
0x000790:
    stog.msg[0s] = "* Snowdrake is practicing&  its next pun."
0x0007A8:
    if !(>= self.mycommand 40s) goto 0x0007D4
0x0007BC:
    stog.msg[0s] = "* Snowdrake is smiling at its&  own bad joke."
0x0007D4:
    if !(>= self.mycommand 60s) goto 0x000800
0x0007E8:
    stog.msg[0s] = "* It smells like a wet&  pillow."
0x000800:
    if !(>= self.mycommand 80s) goto 0x00082C
0x000814:
    stog.msg[0s] = "* Snowdrake realized its own&  name is a pun and is&  freaking out."
0x00082C:
    if !(== self.mercymod 80s) goto 0x000858
0x000840:
    stog.msg[0s] = "* Snowdrake is pleased with&  its \"cool\" joke."
0x000858:
    if !(== self.mercymod 200s) goto 0x000884
0x00086C:
    stog.msg[0s] = "* Snowdrake is laughing at&  your imitation of its&  cohort."
0x000884:
    if !(== self.mercymod -35s) goto 0x0008B0
0x000898:
    stog.msg[0s] = "* Snowdrake pretends not to&  care."
0x0008B0:
    if !(< self.mercymod -10s) goto 0x0008DC
0x0008C4:
    stog.msg[0s] = "* Snowdrake is puffed up.."
0x0008DC:
    push -5s
    if !(< (int32 self.myself):monsterhp 20s) goto 0x000918
0x000900:
    stog.msg[0s] = "* Snowdrake is flaking&  apart."
0x000918:
    self.attacked = 1s
0x000924:
    if !(== global.myfight 2s) goto 0x000DCC
0x000938:
    if !(!= self.whatiheard -1s) goto 0x000DCC
0x00094C:
    if !(== global.heard 0s) goto 0x000DCC
0x000960:
    if !(== self.whatiheard 0s) goto 0x0009FC
0x000974:
    global.msc = 0s
    stog.msg[0s] = "* SNOWDRAKE - ATK 12 DEF 7&* This teen comedian fights to&  keep a captive audience./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0009F8
0x0009EC:
    self.halt = 0s
0x0009F8:
    popenv 0x0009EC
0x0009FC:
    if !(== self.whatiheard 1s) goto 0x000B84
0x000A10:
    global.msc = 0s
    self.gg = (floor[]:int32 (random[]:int32 (var 6s)))
    if !(<= self.gg 2s) goto 0x000A68
0x000A50:
    stog.msg[0s] = "* You boo the Snowdrake./^"
0x000A68:
    if (== self.gg 3s) goto 0x000A90
0x000A7C:
    push (== self.gg 4s)
    goto 0x000A94
0x000A90:
    push 1s
0x000A94:
    if !pop goto 0x000AB0
0x000A98:
    stog.msg[0s] = "* You tell the Snowdrake that&  they aren't funny./^"
0x000AB0:
    if !(== self.gg 5s) goto 0x000AF4
0x000AC4:
    stog.msg[0s] = "* You tell the Snowdrake that&  no one will ever love&  them the way they are.../"
    stog.msg[1s] = "* They struggle to make a&  retort^1, and slink away&  utterly crushed.../^"
0x000AF4:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B54
0x000B48:
    self.halt = 0s
0x000B54:
    popenv 0x000B48
0x000B58:
    self.mercymod = -10s
    if !(== self.gg 5s) goto 0x000B84
0x000B78:
    self.mercymod = 222s
0x000B84:
    if !(== self.whatiheard 3s) goto 0x000CA4
0x000B98:
    if !(== self.joketold 0s) goto 0x000BBC
0x000BAC:
    self.mercymod = -4s
    goto 0x000BDC
0x000BBC:
    self.mercymod = 80s
    stog.flag[136s] = 1s
0x000BDC:
    global.msc = 0s
    if !(== self.joketold 0s) goto 0x000C14
0x000BFC:
    stog.msg[0s] = "* You laugh at Snowdrake before&  it says anything funny./^"
0x000C14:
    if !(== self.joketold 1s) goto 0x000C40
0x000C28:
    stog.msg[0s] = "* You laugh at Snowdrake's&  pun./^"
0x000C40:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000CA0
0x000C94:
    self.halt = 0s
0x000CA0:
    popenv 0x000C94
0x000CA4:
    if !(== self.whatiheard 4s) goto 0x000DC0
0x000CB8:
    global.msc = 0s
    if !(== (scr_monstersum[]:int32 ) 1s) goto 0x000CF0
0x000CD8:
    stog.msg[0s] = "* You make a bad ice pun./^"
0x000CF0:
    if !(> (scr_monstersum[]:int32 ) 1s) goto 0x000D5C
0x000D04:
    stog.msg[0s] = "* You make a bad ice pun./"
    stog.msg[1s] = "* The other monsters think&  it's hilarious.../^"
    call (scr_withallmonster[]:int32 (var 20s) (var 0s))
    self.whatiheard = 19s
0x000D5C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000DBC
0x000DB0:
    self.halt = 0s
0x000DBC:
    popenv 0x000DB0
0x000DC0:
    global.heard = 1s
0x000DCC:
    if !(== global.myfight 4s) goto 0x000E28
0x000DE0:
    if !(== global.mercyuse 0s) goto 0x000E28
0x000DF4:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000E28
0x000E1C:
    call (instance_destroy[]:int32 )
0x000E28:
    if !(== self.mercymod 222s) goto 0x000E58
0x000E3C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000E5C
0x000E58:
    push 0s
0x000E5C:
    if !pop goto 0x000E94
0x000E60:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000E94
0x000E88:
    call (instance_destroy[]:int32 )
0x000E94:
    exit
