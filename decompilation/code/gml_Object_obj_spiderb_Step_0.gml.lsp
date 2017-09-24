0x000000:
    if !(== self.itemuse 1s) goto 0x000030
0x000014:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x000068
0x000038:
    self.con = 50s
    global.mnfight = 98s
    global.myfight = 98s
    self.itemuse = 2s
0x000068:
    if !(== global.mnfight 3s) goto 0x000134
0x00007C:
    self.attacked = 0s
    if !(bool (instance_exists[]:int32 (var 363s))) goto 0x0000B8
0x0000A0:
    pushenv 363s 0x0000B4
0x0000A8:
    call (instance_destroy[]:int32 )
0x0000B4:
    popenv 0x0000A8
0x0000B8:
    if !(== self.purpletime 1s) goto 0x0000E8
0x0000CC:
    push (== (instance_exists[]:int32 (var 357s)) 0s)
    goto 0x0000EC
0x0000E8:
    push 0s
0x0000EC:
    if !pop goto 0x000134
0x0000F0:
    self.o = (instance_create[]:int32 (var 357s) (var 230s) (var 650s))
    push self.turnamt
    stog.signno* = (int32 self.o)
0x000134:
    push -1s
    if !(> 5s:alarm 0s) goto 0x0002DC
0x000150:
    push -5s
    if !(== 0s:monster 1s) goto 0x0001D4
0x00016C:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0001D4
0x0001A4:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0001D4:
    push -5s
    if !(== 1s:monster 1s) goto 0x000258
0x0001F0:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000258
0x000228:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000258:
    push -5s
    if !(== 2s:monster 1s) goto 0x0002DC
0x000274:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0002DC
0x0002AC:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0002DC:
    if !(== global.mnfight 1s) goto 0x000344
0x0002F0:
    if !(== self.talked 0s) goto 0x000344
0x000304:
    stog.alarm[5s] = 110s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000344:
    if !(== self.blconactive 1s) goto 0x000374
0x000358:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000378
0x000374:
    push 0s
0x000378:
    if !pop goto 0x00039C
0x00037C:
    self.blconactive = 0s
    call (event_user[]:int32 (var 1s))
0x00039C:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000400
0x0003C0:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000400:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x00053C
0x000424:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x000478
0x000464:
    stog.alarm[2s] = 15s
0x000478:
    popenv 0x000464
0x00047C:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x0004F0
0x0004A0:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.hurt* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x00053C
0x0004F0:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    if !(< self.con 95s) goto 0x00053C
0x000528:
    call (event_user[]:int32 (var 4s))
0x00053C:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x00060C
0x000560:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0005D4
0x0005C0:
    stog.alarm[2s] = 30s
0x0005D4:
    popenv 0x0005C0
0x0005D8:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x00060C:
    if !(== global.mnfight 2s) goto 0x000B04
0x000620:
    if !(== self.attacked 0s) goto 0x000AA4
0x000634:
    self.pop = (scr_monstersum[]:int32 )
    if !(> self.con 0s) goto 0x00066C
0x000658:
    push (< self.turnamt 20s)
    goto 0x000670
0x00066C:
    push 0s
0x000670:
    if !pop goto 0x00094C
0x000674:
    global.turntimer = 180s
    global.firingrate = 10s
    self.gen = (instance_create[]:int32 (var 352s) self.y self.x)
    push -5s
    self.idealdmg = (- (int32 self.myself):monsteratk self.atkdown)
    push self.idealdmg
    stog.dmg* = (int32 self.gen)
    push self.turnamt
    stog.type* = (int32 self.gen)
    stog.alarm[(int32 self.gen)] = 0s
    stog.alarm[(int32 self.gen)] = 1s
    push 10s
    push (int32 self.gen)
    stog.alarm[] = 2s
    pushenv (int32 self.gen) 0x000790
0x00077C:
    call (event_user[]:int32 (var 3s))
0x000790:
    popenv 0x00077C
0x000794:
    if (== self.turnamt 4s) goto 0x0007D0
0x0007A8:
    if (== self.turnamt 9s) goto 0x0007D0
0x0007BC:
    push (== self.turnamt 15s)
    goto 0x0007D4
0x0007D0:
    push 1s
0x0007D4:
    if !pop goto 0x00089C
0x0007D8:
    global.turntimer = 660s
    if !(== self.turnamt 4s) goto 0x000804
0x0007F8:
    global.turntimer = 620s
0x000804:
    if !(== self.turnamt 15s) goto 0x000824
0x000818:
    global.turntimer = 700s
0x000824:
    self.gege = (instance_create[]:int32 (var 350s) (var 0s) (var 0s))
    push 1s
    stog.pattern* = (int32 self.gege)
    push self.idealdmg
    stog.dmg* = (int32 self.gege)
    push 30s
    push (int32 self.gen)
    stog.alarm[] = 2s
0x00089C:
    self.turnamt = (+ self.turnamt 1s)
    if !(> self.turnamt 99s) goto 0x000948
0x0008C8:
    push 60s
    push (int32 self.gen)
    stog.alarm[] = 0s
    global.turntimer = 360s
    global.border = 22s
    [obj_purpleheart].ttype = 3s
    if !(== self.turnamt 15s) goto 0x000928
0x00091C:
    [obj_purpleheart].yadd2 = 3s
0x000928:
    if !(== self.turnamt 16s) goto 0x000948
0x00093C:
    [obj_purpleheart].yadd2 = 4s
0x000948:
    goto 0x0009BC
0x00094C:
    if !(< self.turnamt 20s) goto 0x000998
0x000960:
    pushenv (int32 self.mypart1) 0x000984
0x000970:
    call (event_user[]:int32 (var 0s))
0x000984:
    popenv 0x000970
0x000988:
    self.con = 1s
    goto 0x0009BC
0x000998:
    global.turntimer = -1s
    global.mnfight = 3s
    global.myfight = -1s
0x0009BC:
    if !(>= self.mycommand 0s) goto 0x0009E8
0x0009D0:
    stog.msg[0s] = "* Muffet pours you a cup of&  spiders."
0x0009E8:
    if !(>= self.mycommand 25s) goto 0x000A14
0x0009FC:
    stog.msg[0s] = "* All the spiders clap along to&  the music."
0x000A14:
    if !(>= self.mycommand 50s) goto 0x000A40
0x000A28:
    stog.msg[0s] = "* Muffet does a synchronized&  dance with the other spiders."
0x000A40:
    if !(>= self.mycommand 75s) goto 0x000A6C
0x000A54:
    stog.msg[0s] = "* Muffet tidies up the web&  around you."
0x000A6C:
    if !(>= self.mycommand 90s) goto 0x000A98
0x000A80:
    stog.msg[0s] = "* Smells like freshly baked&  cobwebs."
0x000A98:
    self.attacked = 1s
0x000AA4:
    if !(> self.criticize 0s) goto 0x000ACC
0x000AB8:
    push (== self.pop 1s)
    goto 0x000AD0
0x000ACC:
    push 0s
0x000AD0:
    if !pop goto 0x000AEC
0x000AD4:
    global.turntimer = -1s
    global.mnfight = 3s
0x000AEC:
    self.atkdown = 0s
    self.whatiheard = -1s
0x000B04:
    if !(== global.myfight 2s) goto 0x0012E8
0x000B18:
    if !(!= self.whatiheard -1s) goto 0x0012E8
0x000B2C:
    if !(== global.heard 0s) goto 0x0012E8
0x000B40:
    if !(== self.whatiheard 0s) goto 0x000BE8
0x000B54:
    global.msc = 0s
    stog.msg[0s] = "* MUFFET - ATK 38.8 DEF 18.8&* If she invites you to her&  parlor^1, excuse yourself./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BD8
0x000BCC:
    self.halt = 0s
0x000BD8:
    popenv 0x000BCC
0x000BDC:
    self.whatiheard = 9s
0x000BE8:
    if !(== self.whatiheard 3s) goto 0x000E04
0x000BFC:
    global.msc = 0s
    stog.msg[0s] = "* You struggle to escape the web^1.&* Nothing happened./^"
    if !(== self.struggle 0s) goto 0x000C4C
0x000C34:
    stog.msg[0s] = "* You struggle to escape the web^1.&* Muffet covers her mouth&  and giggles at you./^"
0x000C4C:
    if !(== self.struggle 1s) goto 0x000C78
0x000C60:
    stog.msg[0s] = "* You struggle to escape the web^1.&* Muffet laughs and claps&  her hands./^"
0x000C78:
    if !(== self.struggle 2s) goto 0x000D5C
0x000C8C:
    stog.msg[0s] = "* You struggle to escape the web./"
    stog.msg[1s] = "* Muffet is so amused by your&  antics that she gives you a&  discount!/^"
    push -5s
    if !(<= 382s:flag global.gold) goto 0x000D14
0x000CDC:
    push -5s
    stog.flag[382s] = (ceil[]:int32 (/ 382s:flag (double 2s)))
    goto 0x000D2C
0x000D14:
    stog.flag[382s] = global.gold
0x000D2C:
    push -5s
    if !(<= 382s:flag 1s) goto 0x000D5C
0x000D48:
    stog.flag[382s] = 1s
0x000D5C:
    if !(> self.con 50s) goto 0x000D88
0x000D70:
    stog.msg[0s] = "* You struggle to escape the web^1.&* Nothing happened./^"
0x000D88:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000DE8
0x000DDC:
    self.halt = 0s
0x000DE8:
    popenv 0x000DDC
0x000DEC:
    self.struggle = (+ self.struggle 1s)
0x000E04:
    if !(== self.whatiheard 1s) goto 0x0012DC
0x000E18:
    global.msc = 0s
    if !(< self.con 50s) goto 0x001260
0x000E38:
    push global.gold
    if !(>= -5s 382s:flag) goto 0x00102C
0x000E58:
    push "* You pay "
    stog.msg[0s] = (+ (+ -5s (string[]:int32 382s:flag)) "G^1.&* Muffet reduces her ATTACK&  for this turn!/^")
    push global.gold
    global.gold = (- -5s 382s:flag)
    push -5s
    push 383s
    stog.flag[383s:flag] = (+ -5s 382s:flag)
    self.bribes = (+ self.bribes 1s)
    if !(== self.bribes 1s) goto 0x000F3C
0x000F18:
    push -5s
    stog.flag[(+ 382s:flag 30s)] = 382s
0x000F3C:
    if !(== self.bribes 2s) goto 0x000F74
0x000F50:
    push -5s
    stog.flag[(+ 382s:flag 40s)] = 382s
0x000F74:
    if !(== self.bribes 3s) goto 0x000FAC
0x000F88:
    push -5s
    stog.flag[(+ 382s:flag 70s)] = 382s
0x000FAC:
    if !(== self.bribes 4s) goto 0x000FE4
0x000FC0:
    push -5s
    stog.flag[(+ 382s:flag 50s)] = 382s
0x000FE4:
    if !(> self.bribes 4s) goto 0x00101C
0x000FF8:
    push -5s
    stog.flag[(+ 382s:flag 300s)] = 382s
0x00101C:
    self.atkdown = 2s
    goto 0x001188
0x00102C:
    stog.msg[0s] = "* You empty your pockets^1, but you&  don't have enough money.&* Muffet lowers the price./^"
    if !(== self.bribes 0s) goto 0x00107C
0x001058:
    push -5s
    stog.flag[(- 382s:flag 5s)] = 382s
0x00107C:
    if !(== self.bribes 1s) goto 0x0010B4
0x001090:
    push -5s
    stog.flag[(- 382s:flag 5s)] = 382s
0x0010B4:
    if !(== self.bribes 2s) goto 0x0010EC
0x0010C8:
    push -5s
    stog.flag[(- 382s:flag 5s)] = 382s
0x0010EC:
    if !(> self.bribes 2s) goto 0x001124
0x001100:
    push -5s
    stog.flag[(- 382s:flag 5s)] = 382s
0x001124:
    push -5s
    stog.flag[382s] = (ceil[]:int32 (/ 382s:flag (double 10s)))
    push -5s
    if !(<= 382s:flag 1s) goto 0x001188
0x001174:
    stog.flag[382s] = 1s
0x001188:
    if !(> self.bribes 0s) goto 0x0011B0
0x00119C:
    push (== global.gold 0s)
    goto 0x0011B4
0x0011B0:
    push 0s
0x0011B4:
    if !pop goto 0x0011D0
0x0011B8:
    stog.msg[0s] = "* You're out of money^1.&* Muffet shakes her head./^"
0x0011D0:
    if !(== global.gold 0s) goto 0x0011F8
0x0011E4:
    push (== self.bribes 0s)
    goto 0x0011FC
0x0011F8:
    push 0s
0x0011FC:
    if !pop goto 0x00125C
0x001200:
    stog.msg[0s] = "* You empty your pockets..^1.&* But you don't have any&  money at all!/"
    stog.msg[1s] = "* Muffet takes pity on you&  and reduces her ATTACK for&  this turn./^"
    stog.flag[382s] = 10s
    self.bribes = 1s
    self.atkdown = 2s
0x00125C:
    goto 0x001278
0x001260:
    stog.msg[0s] = "* Muffet refuses your money./^"
0x001278:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0012D8
0x0012CC:
    self.halt = 0s
0x0012D8:
    popenv 0x0012CC
0x0012DC:
    global.heard = 1s
0x0012E8:
    if !(== global.myfight 4s) goto 0x00134C
0x0012FC:
    if !(== global.mercyuse 0s) goto 0x00134C
0x001310:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x00134C
0x001338:
    call (event_user[]:int32 (var 5s))
0x00134C:
    if !(== self.con 2s) goto 0x0013A4
0x001360:
    self.purpletime = 1s
    stog.msg[0s] = "... I think purple is&a better look on&you! Ahuhuhu~/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 3s
0x0013A4:
    if !(== self.con 3s) goto 0x0013C4
0x0013B8:
    global.turntimer = 10s
0x0013C4:
    if !(== self.con 3s) goto 0x0013F4
0x0013D8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0013F8
0x0013F4:
    push 0s
0x0013F8:
    if !pop goto 0x001444
0x0013FC:
    stog.msg[0s] = "* You're trapped in a strange&  purple web!"
    global.myfight = -1s
    global.mnfight = 3s
    global.turntimer = 20s
    self.con = 4s
0x001444:
    if !(== self.con 50s) goto 0x001504
0x001458:
    stog.msg[0s] = "You're still alive^1?&Ahuhuhu~/"
    stog.msg[1s] = "Oh, my pet~&Looks like it's&time for dessert~/%%"
    if !(> self.itemuse 0s) goto 0x0014E4
0x00149C:
    stog.msg[0s] = "Huh^1?&Where did you get&that...?/"
    stog.msg[1s] = "Did you steal it?/"
    stog.msg[2s] = "Oh^1, my pet^1~&It's time to show&them what we do&with thieves~/%%"
0x0014E4:
    call (event_user[]:int32 (var 3s))
    self.con = 51s
0x001504:
    if !(== self.con 51s) goto 0x001534
0x001518:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001538
0x001534:
    push 0s
0x001538:
    if !pop goto 0x001580
0x00153C:
    call (instance_create[]:int32 (var 358s) (var 230s) (var 720s))
    self.con = 52s
    stog.alarm[4s] = 30s
0x001580:
    if !(== self.con 53s) goto 0x00187C
0x001594:
    stog.msg[0s] = "Huh?&A telegram from&the spiders in&the RUINS?/"
    stog.msg[1s] = "What?&They're saying&that they saw&you, and.../"
    stog.msg[2s] = "... that this is&an error message!?/"
    push -5s
    if !(== 59s:flag 0s) goto 0x00163C
0x0015F8:
    stog.msg[2s] = "... even if you&are stingy, you&never hurt a&single spider!/"
    if !(> global.kills 0s) goto 0x00163C
0x001624:
    stog.msg[2s] = "... even if you&hurt others, you&never hurt a&single spider!/"
0x00163C:
    push -5s
    if !(> 59s:flag 0s) goto 0x001670
0x001658:
    stog.msg[2s] = "... you helped donate&to their cause!/"
0x001670:
    push -5s
    if !(> 59s:flag 20s) goto 0x0016A4
0x00168C:
    stog.msg[2s] = "... you were&really passionate&about spiders!/"
0x0016A4:
    push -5s
    if !(> 59s:flag 50s) goto 0x0016D8
0x0016C0:
    stog.msg[2s] = "... you're a total&spider fanatic!/"
0x0016D8:
    if !(== self.murder 1s) goto 0x00171C
0x0016EC:
    stog.msg[1s] = "They say even if&you are a hyper-&violent murderer.../"
    stog.msg[2s] = "You never laid a&single finger on a&spider!/"
0x00171C:
    stog.msg[3s] = "Oh my, this has&all been a big&misunderstanding~/"
    stog.msg[4s] = "I thought you&were someone that&hated spiders~/"
    stog.msg[5s] = "The person who&asked for that SOUL.../"
    stog.msg[6s] = "They must have&meant a DIFFERENT&human in a&striped shirt~/"
    if !(== self.murder 1s) goto 0x0017C0
0x001790:
    stog.msg[5s] = "The person who&warned me about&you.../"
    stog.msg[6s] = "They really had&no idea what they&were talking about~/"
0x0017C0:
    stog.msg[7s] = "Sorry for all the&trouble~&Ahuhuhu~/"
    stog.msg[8s] = "I'll make it up&to you~/"
    stog.msg[9s] = "You can come back&here any time...&And, for no charge&at all.../"
    stog.msg[10s] = "I'll wrap you&up and let you&play with my pet&again!/"
    stog.msg[11s] = "Ahuhuhuhuhuhu~&Just kidding~/"
    stog.msg[12s] = "I'll SPARE you&now~/%%"
    self.talktime = 1s
    call (event_user[]:int32 (var 3s))
    self.con = 54s
0x00187C:
    if !(== self.con 54s) goto 0x0018AC
0x001890:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0018B0
0x0018AC:
    push 0s
0x0018B0:
    if !pop goto 0x001948
0x0018B4:
    stog.msg[0s] = "* Muffet is sparing you."
    pushenv 358s 0x0018E0
0x0018D4:
    self.con = 2s
0x0018E0:
    popenv 0x0018D4
0x0018E4:
    self.turnamt = 20s
    global.myfight = -1s
    global.mnfight = 3s
    global.turntimer = -1s
    self.mercymod = 9999s
    stog.monsterdef[(int32 self.myself)] = -9999s
    self.con = 55s
0x001948:
    if !(== self.con 96s) goto 0x00198C
0x00195C:
    call (instance_create[]:int32 (var 359s) (var 310s) (var 660s))
    self.con = 97s
0x00198C:
    if !(== self.con 97s) goto 0x0019BC
0x0019A0:
    push (== (instance_exists[]:int32 (var 359s)) 0s)
    goto 0x0019C0
0x0019BC:
    push 0s
0x0019C0:
    if !pop goto 0x0019EC
0x0019C4:
    stog.monster[(int32 self.myself)] = 0s
    call (instance_destroy[]:int32 )
0x0019EC:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x001A94
0x001A04:
    if !(bool (instance_exists[]:int32 self.blconwd)) goto 0x001A94
0x001A1C:
    if !(== (int32 self.blconwd):halt 0s) goto 0x001A80
0x001A3C:
    if !(!= global.typer 10s) goto 0x001A80
0x001A50:
    push (string_length[]:int32 (int32 self.blconwd):originalstring)
    stog.stringpos* = (int32 self.blconwd)
0x001A80:
    call (keyboard_clear[]:int32 (var 16s))
0x001A94:
    if !(== global.debug 1s) goto 0x001B24
0x001AA8:
    if !(bool (keyboard_check_pressed[]:int32 (var 68s))) goto 0x001AD8
0x001AC0:
    self.turnamt = (+ self.turnamt 1s)
0x001AD8:
    if !(bool (keyboard_check_pressed[]:int32 (var 65s))) goto 0x001B04
0x001AF0:
    push (> self.turnamt 0s)
    goto 0x001B08
0x001B04:
    push 0s
0x001B08:
    if !pop goto 0x001B24
0x001B0C:
    self.turnamt = (- self.turnamt 1s)
0x001B24:
    exit
