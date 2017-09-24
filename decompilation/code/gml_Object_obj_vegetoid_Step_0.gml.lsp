0x000000:
    if !(== global.mnfight 3s) goto 0x000020
0x000014:
    self.attacked = 0s
0x000020:
    call (scr_blconmatch[]:int32 )
    if !(== global.myfight 0s) goto 0x000054
0x000040:
    push (== global.mnfight 0s)
    goto 0x000058
0x000054:
    push 0s
0x000058:
    if !pop goto 0x000068
0x00005C:
    self.eat = 0s
0x000068:
    if !(== global.mnfight 1s) goto 0x0000D0
0x00007C:
    if !(== self.talked 0s) goto 0x0000D0
0x000090:
    stog.alarm[5s] = 75s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x0000D0:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x00015C
0x0000E8:
    push -1s
    if !(> 5s:alarm 5s) goto 0x000140
0x000104:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x000140
0x000124:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x000144
0x000140:
    push 0s
0x000144:
    if !pop goto 0x00015C
0x000148:
    stog.alarm[5s] = 2s
0x00015C:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x0001C0
0x000180:
    self.shudder = 16s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x0001C0:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x0002E0
0x0001E4:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x000238
0x000224:
    stog.alarm[2s] = 15s
0x000238:
    popenv 0x000224
0x00023C:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x0002B0
0x000260:
    stog.hurtanim[(int32 self.myself)] = 0s
    self.sprite_index = 191s
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x0002E0
0x0002B0:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x0002E0:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x0003B0
0x000304:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000378
0x000364:
    stog.alarm[2s] = 30s
0x000378:
    popenv 0x000364
0x00037C:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x0003B0:
    if !(== global.mnfight 2s) goto 0x0007A8
0x0003C4:
    if !(== self.attacked 0s) goto 0x0007A8
0x0003D8:
    global.turntimer = 110s
    global.firingrate = 4s
    if !(< self.mycommand 50s) goto 0x00051C
0x000404:
    global.firingrate = 6s
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(> (+ -5s 2s:monster) 1s) goto 0x000460
0x000454:
    global.firingrate = 10s
0x000460:
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 3s) goto 0x0004B0
0x0004A4:
    global.firingrate = 16s
0x0004B0:
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    if !(== self.eat 1s) goto 0x000504
0x0004EC:
    push 1s
    stog.specgreen* = (int32 self.gen)
0x000504:
    push 6s
    stog.bullettype* = (int32 self.gen)
0x00051C:
    if !(>= self.mycommand 50s) goto 0x000648
0x000530:
    global.firingrate = 18s
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 2s) goto 0x00058C
0x000580:
    global.firingrate = 30s
0x00058C:
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 3s) goto 0x0005DC
0x0005D0:
    global.firingrate = 42s
0x0005DC:
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    if !(== self.eat 1s) goto 0x000630
0x000618:
    push 1s
    stog.specgreen* = (int32 self.gen)
0x000630:
    push 5s
    stog.bullettype* = (int32 self.gen)
0x000648:
    push self.myself
    stog.myself* = (int32 self.gen)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x0006BC
0x0006A4:
    stog.msg[0s] = "* Vegetoid gave a mysterious&  smile."
0x0006BC:
    if !(>= self.mycommand 30s) goto 0x0006E8
0x0006D0:
    stog.msg[0s] = "* Vegetoid cackles softly."
0x0006E8:
    if !(>= self.mycommand 70s) goto 0x000714
0x0006FC:
    stog.msg[0s] = "* Vegetoid's here for your&  health."
0x000714:
    if !(>= self.mycommand 90s) goto 0x000740
0x000728:
    stog.msg[0s] = "* It smells like steamed&  carrots and peas."
0x000740:
    push -5s
    push (int32 self.myself):monsterhp
    if !(< -5s (/ (int32 self.myself):monstermaxhp (double 3s))) goto 0x00079C
0x000784:
    stog.msg[0s] = "* Vegetoid seems kind of&  bruised."
0x00079C:
    self.attacked = 1s
0x0007A8:
    if !(== self.whatiheard 1s) goto 0x0007D8
0x0007BC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0007DC
0x0007D8:
    push 0s
0x0007DC:
    if !pop goto 0x000820
0x0007E0:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 8s) goto 0x000820
0x000808:
    self.killed = 0s
    call (instance_destroy[]:int32 )
0x000820:
    if !(== global.myfight 2s) goto 0x000B00
0x000834:
    if !(!= self.whatiheard -1s) goto 0x000B00
0x000848:
    if !(== global.heard 0s) goto 0x000B00
0x00085C:
    if !(== self.whatiheard 0s) goto 0x0008F8
0x000870:
    global.msc = 0s
    stog.msg[0s] = "* VEGETOID - ATK 6 DEF 6&* Serving Size: 1 Monster&* Not monitored by the USDA/^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0008F4
0x0008E8:
    self.halt = 0s
0x0008F4:
    popenv 0x0008E8
0x0008F8:
    if !(== self.whatiheard 3s) goto 0x000924
0x00090C:
    global.myfight = 0s
    global.mnfight = 1s
0x000924:
    if !(== self.whatiheard 1s) goto 0x000A4C
0x000938:
    global.msc = 0s
    call (script_execute[]:int32 (var 163s))
    stog.msg[0s] = "* You tried to eat Vegetoid^1,&  but it wasn't weakened&  enough./^"
    if !(< self.mercy 8s) goto 0x0009E8
0x000984:
    stog.msg[0s] = "* You took a bite out of&  Vegetoid^1.&* You recovered 5 HP!/^"
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 5s) (var 56s))
    self.sprite_index = 192s
0x0009E8:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A48
0x000A3C:
    self.halt = 0s
0x000A48:
    popenv 0x000A3C
0x000A4C:
    if !(== self.whatiheard 4s) goto 0x000AF4
0x000A60:
    self.eat = 1s
    global.msc = 0s
    stog.msg[0s] = "* You pat your stomach^1.&* Vegetoid offers a healthy&  meal./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000AF0
0x000AE4:
    self.halt = 0s
0x000AF0:
    popenv 0x000AE4
0x000AF4:
    global.heard = 1s
0x000B00:
    if !(== global.myfight 4s) goto 0x000B70
0x000B14:
    if !(== global.mercyuse 0s) goto 0x000B70
0x000B28:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000B70
0x000B50:
    stog.flag[134s] = 1s
    call (instance_destroy[]:int32 )
0x000B70:
    exit
