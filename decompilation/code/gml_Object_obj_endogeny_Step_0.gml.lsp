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
    stog.alarm[5s] = 20s
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
    if !(== global.mnfight 2s) goto 0x000948
0x000524:
    if !(== self.attacked 0s) goto 0x00090C
0x000538:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 200s
    global.firingrate = 10s
    if !(== self.pop 3s) goto 0x000594
0x000574:
    global.firingrate = (* global.firingrate 2.5d)
0x000594:
    if !(== self.pop 2s) goto 0x0005C8
0x0005A8:
    global.firingrate = (* global.firingrate 1.8d)
0x0005C8:
    if !(>= self.mycommand 50s) goto 0x000634
0x0005DC:
    self.gen = (instance_create[]:int32 (var 545s) (var 0s) (var 0s))
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    goto 0x0006C8
0x000634:
    self.gen = (instance_create[]:int32 (var 544s) (var 0s) (var 0s))
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    if !(== self.turns 1s) goto 0x0006C8
0x00069C:
    pushenv (int32 self.gen) 0x0006C4
0x0006AC:
    self.con = 4s
    self.image_index = 7s
0x0006C4:
    popenv 0x0006AC
0x0006C8:
    self.turns = 1s
    if !(>= self.mycommand 0s) goto 0x000700
0x0006E8:
    stog.msg[0s] = "* Amalgamate is watching you&  intently."
0x000700:
    if !(>= self.mycommand 45s) goto 0x00072C
0x000714:
    stog.msg[0s] = "* Amalgamate is waiting for&  your command."
0x00072C:
    if !(>= self.mycommand 90s) goto 0x000758
0x000740:
    stog.msg[0s] = "* It smells like a bunch of dogs."
0x000758:
    if !(== self.close 1s) goto 0x000784
0x00076C:
    stog.msg[0s] = "* Amalgamate is hovering close^1,&  looking for affection."
0x000784:
    if !(== self.pet 1s) goto 0x0007B0
0x000798:
    stog.msg[0s] = "* Amalgamate is striking the&  wall with its claws."
0x0007B0:
    if !(== self.pet 2s) goto 0x0007DC
0x0007C4:
    stog.msg[0s] = "* Amalgamate is twitching&  affectionately."
0x0007DC:
    if !(== self.pet 3s) goto 0x000808
0x0007F0:
    stog.msg[0s] = "* Amalgamate's convulsions&  intensify."
0x000808:
    if !(== self.pet 4s) goto 0x000854
0x00081C:
    stog.msg[0s] = "* Endogeny is contented."
    stog.monstername[(int32 self.myself)] = "Endogeny"
0x000854:
    push -5s
    push (int32 self.myself):monsterhp
    if !(<= -5s (/ (int32 self.myself):monstermaxhp (double 4s))) goto 0x0008B0
0x000898:
    stog.msg[0s] = "* Monster has low HP."
0x0008B0:
    if !(== self.mercymod 999999) goto 0x000900
0x0008C8:
    stog.msg[0s] = "* Endogeny is contented."
    stog.monstername[(int32 self.myself)] = "Endogeny"
0x000900:
    self.attacked = 1s
0x00090C:
    if !(== self.mercymod 999999) goto 0x00093C
0x000924:
    global.turntimer = -1s
    global.mnfight = 3s
0x00093C:
    self.whatiheard = -1s
0x000948:
    if !(== global.myfight 2s) goto 0x0011D8
0x00095C:
    if !(!= self.whatiheard -1s) goto 0x0011D8
0x000970:
    if !(== global.heard 0s) goto 0x0011D8
0x000984:
    if !(== self.whatiheard 0s) goto 0x000A5C
0x000998:
    global.msc = 0s
    stog.msg[0s] = "* AMALGAMATE - It's unclear how&  many dogs this counts as./^"
    if !(== self.mercymod 999999) goto 0x0009EC
0x0009D4:
    stog.msg[0s] = "* ENDOGENY - It's unclear how&  many dogs this counts as./^"
0x0009EC:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A4C
0x000A40:
    self.halt = 0s
0x000A4C:
    popenv 0x000A40
0x000A50:
    self.whatiheard = 9s
0x000A5C:
    if !(== self.whatiheard 1s) goto 0x000BA0
0x000A70:
    global.msc = 0s
    if !(== self.close 1s) goto 0x000AA8
0x000A90:
    stog.msg[0s] = "* The Amalgamate's feelers&  rotate quickly^1.&* Nothing else happens./^"
0x000AA8:
    if !(== self.close 0s) goto 0x000B3C
0x000ABC:
    stog.msg[0s] = "* You call the Amalgamate./"
    stog.msg[1s] = "* It bounds towards you^1,&  flecking a strange liquid&  from an orifice./^"
    push 0.1d
    stog.mouthspeed* = (int32 self.mypart1)
    call (caster_set_pitch[]:int32 (var 0.9d) global.batmusic)
    self.close = 1s
0x000B3C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B9C
0x000B90:
    self.halt = 0s
0x000B9C:
    popenv 0x000B90
0x000BA0:
    if !(== self.whatiheard 2s) goto 0x000C3C
0x000BB4:
    global.msc = 0s
    stog.msg[0s] = "* You try looking away^1, but&  it seems to appear everywhere&  you look./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000C38
0x000C2C:
    self.halt = 0s
0x000C38:
    popenv 0x000C2C
0x000C3C:
    if !(== self.whatiheard 3s) goto 0x000FF0
0x000C50:
    global.msc = 0s
    stog.msg[0s] = "* You pet the Amalgamate./^"
    if !(== self.pet 4s) goto 0x000CA0
0x000C88:
    stog.msg[0s] = "* You'd give it a tummy rub^1,&  but it's not clear where its&  tummy begins or ends./^"
0x000CA0:
    if !(== self.pet 3s) goto 0x000DA0
0x000CB4:
    self.pet = 4s
    stog.msg[0s] = "* You pet decisively^1.&* The Amalgamate seems to be&  satisfied by all this./^"
    call (caster_set_volume[]:int32 (var 0.3d) global.batmusic)
    call (caster_set_pitch[]:int32 (var 0.8d) global.batmusic)
    call (caster_loop[]:int32 (var 0.8d) (var 0.8d) self.dogsong)
    push 1s
    stog.spared* = (int32 self.mypart1)
    global.sp = 154.tempspd
    self.mercymod = 999999
    stog.flag[156s] = 1s
0x000DA0:
    if !(== self.pet 2s) goto 0x000E2C
0x000DB4:
    stog.msg[0s] = "* You pet the Amalgamate^1.&* It starts to generate a&  Stage I Happiness Froth./^"
    call (caster_set_pitch[]:int32 (var 1.2d) global.batmusic)
    push 1s
    stog.mouthspeed* = (int32 self.mypart1)
    push 4s
    stog.shaker* = (int32 self.mypart1)
    self.pet = 3s
0x000E2C:
    if !(== self.pet 1s) goto 0x000E70
0x000E40:
    stog.msg[0s] = "* You try to pet the&  Amalgamate but your hand&  phases through it./"
    stog.msg[1s] = "* It must not want to be pet&  for now./^"
0x000E70:
    if !(== self.close 1s) goto 0x000E98
0x000E84:
    push (== self.pet 0s)
    goto 0x000E9C
0x000E98:
    push 0s
0x000E9C:
    if !pop goto 0x000F60
0x000EA0:
    stog.msg[0s] = "* You pet the Amalgamate^1.&* It convulses rapidly..^1.&* Then calms down./"
    stog.msg[1s] = "* It rests quietly on your&  lap for a moment.../"
    stog.msg[2s] = "* Zzzzz.../"
    stog.msg[3s] = "* Suddenly^1, it shoots away and&  crawls wildly on the walls!/^"
    push 0.2d
    stog.mouthspeed* = (int32 self.mypart1)
    push 1s
    stog.shaker* = (int32 self.mypart1)
    call (caster_set_pitch[]:int32 (var 1s) global.batmusic)
    self.pet = 1s
0x000F60:
    if !(== self.close 0s) goto 0x000F8C
0x000F74:
    stog.msg[0s] = "* Amalgamate is too far&  away to pet^1.&* You just pet the air./^"
0x000F8C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000FEC
0x000FE0:
    self.halt = 0s
0x000FEC:
    popenv 0x000FE0
0x000FF0:
    if !(== self.whatiheard 4s) goto 0x0011CC
0x001004:
    global.msc = 0s
    stog.msg[0s] = "* You play with the Amalgamate./^"
    if !(> self.pet 1s) goto 0x001054
0x00103C:
    stog.msg[0s] = "* Amalgamate seems too tired&  to play./^"
0x001054:
    if !(== self.pet 1s) goto 0x001130
0x001068:
    stog.msg[0s] = "* You throw your weapon into&  the corner of the room./"
    stog.msg[1s] = "* The Amalgamate brings it back&  to you..^1.&* Proudly?/"
    stog.msg[2s] = "* You repeat this process a&  few times./"
    stog.msg[3s] = "* Now Amalgamate is very tired..^1.&* It leans its dripping^1,&  amorphous body on you.../^"
    self.pet = 2s
    push 0.5d
    stog.mouthspeed* = (int32 self.mypart1)
    push 2s
    stog.shaker* = (int32 self.mypart1)
    call (caster_set_pitch[]:int32 (var 1.1d) global.batmusic)
0x001130:
    if !(== self.pet 0s) goto 0x00115C
0x001144:
    stog.msg[0s] = "* Amalgamate is not excited&  enough to play with...?/^"
0x00115C:
    global.msc = 0s
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0011C8
0x0011BC:
    self.halt = 0s
0x0011C8:
    popenv 0x0011BC
0x0011CC:
    global.heard = 1s
0x0011D8:
    if !(== global.myfight 4s) goto 0x001234
0x0011EC:
    if !(== global.mercyuse 0s) goto 0x001234
0x001200:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001234
0x001228:
    call (instance_destroy[]:int32 )
0x001234:
    if !(== self.mercymod 222s) goto 0x001264
0x001248:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001268
0x001264:
    push 0s
0x001268:
    if !pop goto 0x0012A0
0x00126C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x0012A0
0x001294:
    call (instance_destroy[]:int32 )
0x0012A0:
    exit
