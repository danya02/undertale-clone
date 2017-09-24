0x000000:
    if !(== global.mnfight 3s) goto 0x00006C
0x000014:
    self.attacked = 0s
    pushenv (int32 self.mypart1) 0x000068
0x000030:
    self.sh_timer = 0s
    self.sh = 0s
    stog.alarm[1s] = -1s
    self.attackmode = 0s
0x000068:
    popenv 0x000030
0x00006C:
    push -1s
    if !(> 5s:alarm 0s) goto 0x000214
0x000088:
    push -5s
    if !(== 0s:monster 1s) goto 0x00010C
0x0000A4:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x00010C
0x0000DC:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x00010C:
    push -5s
    if !(== 1s:monster 1s) goto 0x000190
0x000128:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000190
0x000160:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000190:
    push -5s
    if !(== 2s:monster 1s) goto 0x000214
0x0001AC:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000214
0x0001E4:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000214:
    if !(== global.mnfight 1s) goto 0x00027C
0x000228:
    if !(== self.talked 0s) goto 0x00027C
0x00023C:
    stog.alarm[5s] = 110s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x00027C:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x000308
0x000294:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0002EC
0x0002B0:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x0002EC
0x0002D0:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x0002F0
0x0002EC:
    push 0s
0x0002F0:
    if !pop goto 0x000308
0x0002F4:
    stog.alarm[5s] = 2s
0x000308:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x00036C
0x00032C:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x00036C:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x00048C
0x000390:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x0003E4
0x0003D0:
    stog.alarm[2s] = 15s
0x0003E4:
    popenv 0x0003D0
0x0003E8:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x00045C
0x00040C:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x00048C
0x00045C:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x00048C:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x00055C
0x0004B0:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000524
0x000510:
    stog.alarm[2s] = 30s
0x000524:
    popenv 0x000510
0x000528:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x00055C:
    if !(== global.mnfight 2s) goto 0x000900
0x000570:
    if !(== self.attacked 0s) goto 0x0008C4
0x000584:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 180s
    global.firingrate = 10s
    if !(== self.pop 3s) goto 0x0005E0
0x0005C0:
    global.firingrate = (* global.firingrate 2.5d)
0x0005E0:
    if !(== self.pop 2s) goto 0x000614
0x0005F4:
    global.firingrate = (* global.firingrate 1.8d)
0x000614:
    if !(< self.mycommand 40s) goto 0x00066C
0x000628:
    pushenv (int32 self.mypart1) 0x000668
0x000638:
    self.sh = 1s
    self.attackmode = 1s
    self.sh_speed = 1s
    self.diff = 5s
0x000668:
    popenv 0x000638
0x00066C:
    if !(>= self.mycommand 40s) goto 0x000694
0x000680:
    push (< self.mycommand 70s)
    goto 0x000698
0x000694:
    push 0s
0x000698:
    if !pop goto 0x0006E0
0x00069C:
    pushenv (int32 self.mypart1) 0x0006DC
0x0006AC:
    self.sh = 1s
    self.attackmode = 1s
    self.sh_speed = 2s
    self.diff = 3s
0x0006DC:
    popenv 0x0006AC
0x0006E0:
    if !(> self.mycommand 70s) goto 0x000728
0x0006F4:
    pushenv (int32 self.mypart1) 0x000724
0x000704:
    self.attackmode = 1s
    stog.alarm[1s] = 5s
0x000724:
    popenv 0x000704
0x000728:
    if !(>= self.mycommand 0s) goto 0x000754
0x00073C:
    stog.msg[0s] = "* Glyde does fancy flips."
0x000754:
    if !(>= self.mycommand 25s) goto 0x000780
0x000768:
    stog.msg[0s] = "* Glyde is giving itself a&  high five^1.&* ... somehow."
0x000780:
    if !(>= self.mycommand 50s) goto 0x0007AC
0x000794:
    stog.msg[0s] = "* Glyde sees its reflection &  and gets jealous."
0x0007AC:
    if !(>= self.mycommand 75s) goto 0x0007D8
0x0007C0:
    stog.msg[0s] = "* Glyde is thinking of new&  slang for the word \"cool.\"&* Like \"freakadacious.\""
0x0007D8:
    if !(>= self.mycommand 90s) goto 0x000804
0x0007EC:
    stog.msg[0s] = "* An arrogant-smelling wind&  blows through."
0x000804:
    if !(== self.nothing 2s) goto 0x000830
0x000818:
    stog.msg[0s] = "* Glyde is doing tons of flips&  to get your attention."
0x000830:
    if !(> self.mercymod 100s) goto 0x00085C
0x000844:
    stog.msg[0s] = "* Glyde seems satisfied."
0x00085C:
    push -5s
    push (int32 self.myself):monsterhp
    if !(<= -5s (/ (int32 self.myself):monstermaxhp (double 4s))) goto 0x0008B8
0x0008A0:
    stog.msg[0s] = "* Glyde is dying^1, but in a&  cool way."
0x0008B8:
    self.attacked = 1s
0x0008C4:
    if !(== self.mercymod 999999) goto 0x0008F4
0x0008DC:
    global.turntimer = -1s
    global.mnfight = 3s
0x0008F4:
    self.whatiheard = -1s
0x000900:
    if !(== global.myfight 2s) goto 0x000D9C
0x000914:
    if !(!= self.whatiheard -1s) goto 0x000D9C
0x000928:
    if !(== global.heard 0s) goto 0x000D9C
0x00093C:
    if !(== self.whatiheard 0s) goto 0x0009E4
0x000950:
    global.msc = 0s
    stog.msg[0s] = "* GLYDE - ATK HIGH DEF HIGH&* Refuses to give more details&  about its statistics./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0009D4
0x0009C8:
    self.halt = 0s
0x0009D4:
    popenv 0x0009C8
0x0009D8:
    self.whatiheard = 9s
0x0009E4:
    if !(== self.whatiheard 3s) goto 0x000ADC
0x0009F8:
    global.msc = 0s
    if !(== self.applaud 0s) goto 0x000A40
0x000A18:
    stog.msg[0s] = "* You clap really sloppily^1.&* Glyde sucks up your praise&  like a vacuum cleaner./^"
    self.applaud = 1s
    goto 0x000A78
0x000A40:
    stog.msg[0s] = "* You clap like a gorilla^1.&* Glyde is becoming addicted to&  your praise./^"
    if !(== self.applaud 1s) goto 0x000A78
0x000A6C:
    self.applaud = 2s
0x000A78:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000AD8
0x000ACC:
    self.halt = 0s
0x000AD8:
    popenv 0x000ACC
0x000ADC:
    if !(== self.whatiheard 1s) goto 0x000C2C
0x000AF0:
    global.msc = 0s
    stog.msg[0s] = "* You boo..^1. but haters&  only make Glyde stronger^1.&* Glyde ATTACK UP+DEFENSE DOWN./^"
    push -5s
    stog.monsteratk[(+ (int32 self.myself):monsteratk 2s)] = (int32 self.myself)
    push -5s
    stog.monsterdef[(- (int32 self.myself):monsterdef 10s)] = (int32 self.myself)
    if !(== self.nothing 2s) goto 0x000BB0
0x000B80:
    stog.msg[0s] = "* You boo loudly^1.&* Glyde leaves to look elsewhere&  for praise./^"
    self.nothing = 3s
    self.mercymod = 222s
0x000BB0:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000C10
0x000C04:
    self.halt = 0s
0x000C10:
    popenv 0x000C04
0x000C14:
    self.boo = (+ self.boo 1s)
0x000C2C:
    if !(== self.whatiheard 4s) goto 0x000D90
0x000C40:
    global.msc = 0s
    stog.msg[0s] = "* You do nothing^1.&* No effect./^"
    if !(>= self.applaud 2s) goto 0x000D2C
0x000C78:
    if !(== self.nothing 2s) goto 0x000CBC
0x000C8C:
    stog.msg[0s] = "* You do nothing^1.&* Glyde leaves to look elsewhere&  for praise./^"
    self.nothing = 3s
    self.mercymod = 222s
0x000CBC:
    if !(== self.nothing 1s) goto 0x000CF4
0x000CD0:
    stog.msg[0s] = "* You do nothing^1.&* Glyde looks desperate for&  attention./^"
    self.nothing = 2s
0x000CF4:
    if !(== self.nothing 0s) goto 0x000D2C
0x000D08:
    stog.msg[0s] = "* You do nothing^1.&* Glyde looks disappointed you&  aren't paying attention./^"
    self.nothing = 1s
0x000D2C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000D8C
0x000D80:
    self.halt = 0s
0x000D8C:
    popenv 0x000D80
0x000D90:
    global.heard = 1s
0x000D9C:
    if !(== global.myfight 4s) goto 0x000DF8
0x000DB0:
    if !(== global.mercyuse 0s) goto 0x000DF8
0x000DC4:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000DF8
0x000DEC:
    call (instance_destroy[]:int32 )
0x000DF8:
    if !(== self.mercymod 222s) goto 0x000E28
0x000E0C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000E2C
0x000E28:
    push 0s
0x000E2C:
    if !pop goto 0x000E64
0x000E30:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000E64
0x000E58:
    call (instance_destroy[]:int32 )
0x000E64:
    if !(< global.turntimer 2s) goto 0x000E8C
0x000E78:
    push (== global.mnfight 2s)
    goto 0x000E90
0x000E8C:
    push 0s
0x000E90:
    if !pop goto 0x000EA0
0x000E94:
    global.mnfight = 3s
0x000EA0:
    exit
