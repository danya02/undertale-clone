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
    if !(== (int32 self.myself):hurtanim 2s) goto 0x00045C
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
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x00042C
0x0003C0:
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    stog.hurtanim[(int32 self.myself)] = 0s
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x00045C
0x00042C:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x00045C:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x00052C
0x000480:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0004F4
0x0004E0:
    stog.alarm[2s] = 30s
0x0004F4:
    popenv 0x0004E0
0x0004F8:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x00052C:
    if !(== global.mnfight 2s) goto 0x00095C
0x000540:
    if !(== self.attacked 0s) goto 0x00095C
0x000554:
    self.pop = (scr_monstersum[]:int32 )
    if !(== self.encourage 5s) goto 0x000584
0x000578:
    self.encourage = 6s
0x000584:
    global.turntimer = 124s
    global.firingrate = 25s
    if !(== self.pop 3s) goto 0x0005D0
0x0005B0:
    global.firingrate = (* global.firingrate 2.4d)
0x0005D0:
    if !(== self.pop 2s) goto 0x000604
0x0005E4:
    global.firingrate = (* global.firingrate 1.7d)
0x000604:
    if !(>= self.mycommand 0s) goto 0x000708
0x000618:
    global.firingrate = 50s
    if !(< global.turntimer 90s) goto 0x000644
0x000638:
    global.turntimer = 90s
0x000644:
    if !(== self.emotion 1s) goto 0x000698
0x000658:
    global.firingrate = (- 8s (/ self.encourage 1.5d))
    self.emotion = 2s
    global.turntimer = 124s
0x000698:
    self.gen = (instance_create[]:int32 (var 689s) (+ self.y 62s) (+ self.x 36s))
    push 0s
    stog.bullettype* = (int32 self.gen)
    if !(>= self.encourage 5s) goto 0x000708
0x0006FC:
    global.turntimer = 310s
0x000708:
    push self.myself
    stog.myself* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x000750
0x000738:
    stog.msg[0s] = "* Shyren hums very faintly."
0x000750:
    if !(>= self.mycommand 25s) goto 0x00077C
0x000764:
    stog.msg[0s] = "* Shyren pretends to be a&  pop idol."
0x00077C:
    if !(>= self.mycommand 50s) goto 0x0007A8
0x000790:
    stog.msg[0s] = "* Shyren taps a little beat&  with her fins."
0x0007A8:
    if !(>= self.mycommand 70s) goto 0x0007D4
0x0007BC:
    stog.msg[0s] = "* Shyren thinks about doing&  karaoke by herself."
0x0007D4:
    if !(>= self.mycommand 90s) goto 0x000800
0x0007E8:
    stog.msg[0s] = "* Smells like music."
0x000800:
    push -5s
    if !(< (int32 self.myself):monsterhp 30s) goto 0x00083C
0x000824:
    stog.msg[0s] = "* Shyren's voice gets raspy."
0x00083C:
    if !(== self.encourage 1s) goto 0x000868
0x000850:
    stog.msg[0s] = "* Shyren seems much more&  comfortable singing along."
0x000868:
    if !(== self.encourage 2s) goto 0x0008CC
0x00087C:
    push -5s
    if !(== 67s:flag 0s) goto 0x0008B4
0x000898:
    stog.msg[0s] = "* Sans is selling tickets&  made of toilet paper."
    goto 0x0008CC
0x0008B4:
    stog.msg[0s] = "* A hooded figure watches&  the commotion from afar."
0x0008CC:
    if !(== self.encourage 3s) goto 0x0008F8
0x0008E0:
    stog.msg[0s] = "* The crowd tosses clothing^1.&* It's a storm of socks."
0x0008F8:
    if !(== self.encourage 4s) goto 0x000924
0x00090C:
    stog.msg[0s] = "* Shyren thinks about her&  future."
0x000924:
    if !(> self.encourage 4s) goto 0x000950
0x000938:
    stog.msg[0s] = " "
0x000950:
    self.attacked = 1s
0x00095C:
    if !(== global.myfight 2s) goto 0x000F28
0x000970:
    if !(!= self.whatiheard -1s) goto 0x000F28
0x000984:
    if !(== global.heard 0s) goto 0x000F28
0x000998:
    if !(== self.whatiheard 0s) goto 0x000A98
0x0009AC:
    global.msc = 0s
    stog.msg[0s] = "* SHYREN - ATK 19 DEF 0&* Tone deaf^1. She's too ashamed&  to sing her deadly song./^"
    if !(== self.encourage 1s) goto 0x0009FC
0x0009E4:
    stog.msg[0s] = "* SHYREN - ATK 19 DEF 0&* A talented singer^1, with&  a little help./^"
0x0009FC:
    if !(> self.encourage 1s) goto 0x000A28
0x000A10:
    stog.msg[0s] = "* SHYREN - ATK 19 DEF 0&* That's Shyren^1.&* She's your band-mate./^"
0x000A28:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A88
0x000A7C:
    self.halt = 0s
0x000A88:
    popenv 0x000A7C
0x000A8C:
    self.whatiheard = 9s
0x000A98:
    if !(== self.whatiheard 1s) goto 0x000D24
0x000AAC:
    global.msc = 0s
    self.d = (choose[]:int32 (var 2s) (var 1s) (var 0s))
    if !(== self.d 0s) goto 0x000B0C
0x000AF4:
    stog.msg[0s] = "* You hum a funky tune^1.&* Shyren follows your melody./^"
0x000B0C:
    if !(== self.d 1s) goto 0x000B38
0x000B20:
    stog.msg[0s] = "* You hum a sad song^1.&* Shyren follows your melody./^"
0x000B38:
    if !(== self.d 2s) goto 0x000B64
0x000B4C:
    stog.msg[0s] = "* You hum a jazz ballad^1.&* Shyren follows your melody./^"
0x000B64:
    if !(== self.encourage 1s) goto 0x000BA8
0x000B78:
    stog.msg[0s] = "* You hum some more^1.&* Monsters are drawn to the&  music./"
    stog.msg[1s] = "* Suddenly^1, it's a concert.../^"
0x000BA8:
    if !(== self.encourage 2s) goto 0x000BD4
0x000BBC:
    stog.msg[0s] = "* You hum some more^1.&* The seats are sold out^1.&* You feel like a rock star./^"
0x000BD4:
    if !(== self.encourage 3s) goto 0x000C18
0x000BE8:
    stog.msg[0s] = "* You hum some more^1.&* But the constant attention.../"
    stog.msg[1s] = "* The tours..^1.&* The groupies..^1.&* It's all.../^"
0x000C18:
    if !(== self.encourage 4s) goto 0x000C74
0x000C2C:
    stog.msg[0s] = "* You and Shyren have come so&  far^1, but it's time./"
    stog.msg[1s] = "* You both have your own&  journeys to embark on./"
    stog.msg[2s] = "* You hum a farewell song./^"
0x000C74:
    self.encourage = (+ self.encourage 1s)
    self.emotion = 1s
    stog.monsterdef[(int32 self.myself)] = -150s
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000D14
0x000D08:
    self.halt = 0s
0x000D14:
    popenv 0x000D08
0x000D18:
    self.mercymod = 140s
0x000D24:
    if !(== self.whatiheard 3s) goto 0x000E54
0x000D38:
    global.msc = 0s
    stog.msg[0s] = "* You smile^1.&* You ask to see Shyren's smile^1,&  too./"
    stog.msg[1s] = "* Shyren gets quieter^1.&* In the corner^1, Aaron nods&  his head approvingly./^"
    if !(== self.creep 1s) goto 0x000DA0
0x000D88:
    stog.msg[0s] = "* You keep smiling^1.&* But nothing happened./^"
0x000DA0:
    if !(> self.encourage 1s) goto 0x000DE4
0x000DB4:
    stog.msg[0s] = "* You give a darling smile and&  a little wink./"
    stog.msg[1s] = "* The crowd goes wild!/^"
0x000DE4:
    self.creep = 1s
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000E50
0x000E44:
    self.halt = 0s
0x000E50:
    popenv 0x000E44
0x000E54:
    if !(== self.whatiheard 4s) goto 0x000F1C
0x000E68:
    global.msc = 0s
    stog.msg[0s] = "* You wave your arms wildly^1.&* You are now vulnerable&  to electric attacks./^"
    if !(> self.encourage 1s) goto 0x000EB8
0x000EA0:
    stog.msg[0s] = "* You wave your arms wildly^1.&* The crowd eats it up./^"
0x000EB8:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000F18
0x000F0C:
    self.halt = 0s
0x000F18:
    popenv 0x000F0C
0x000F1C:
    global.heard = 1s
0x000F28:
    if !(== self.encourage 6s) goto 0x000FA0
0x000F3C:
    if !(< global.turntimer 40s) goto 0x000FA0
0x000F50:
    self.encourage = 7s
    if !(bool (instance_exists[]:int32 (var 689s))) goto 0x000F8C
0x000F74:
    pushenv 689s 0x000F88
0x000F7C:
    call (instance_destroy[]:int32 )
0x000F88:
    popenv 0x000F7C
0x000F8C:
    call (caster_pause[]:int32 global.batmusic)
0x000FA0:
    if !(== self.encourage 7s) goto 0x000FC8
0x000FB4:
    push (< global.turntimer 18s)
    goto 0x000FCC
0x000FC8:
    push 0s
0x000FCC:
    if !pop goto 0x000FDC
0x000FD0:
    global.border = 0s
0x000FDC:
    if !(== self.encourage 7s) goto 0x001004
0x000FF0:
    push (<= global.turntimer 2s)
    goto 0x001008
0x001004:
    push 0s
0x001008:
    if !pop goto 0x0010A0
0x00100C:
    stog.flag[81s] = 2s
    global.turntimer = -1s
    global.mnfight = 1s
    global.myfight = 0s
    global.border = 0s
    pushenv 782s 0x001064
0x001058:
    call (instance_destroy[]:int32 )
0x001064:
    popenv 0x001058
0x001068:
    global.typer = 1s
    [obj_heart].visible = 0s
    call (script_execute[]:int32 (var 163s))
    call (instance_destroy[]:int32 )
0x0010A0:
    if !(== global.myfight 4s) goto 0x0010FC
0x0010B4:
    if !(== global.mercyuse 0s) goto 0x0010FC
0x0010C8:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x0010FC
0x0010F0:
    call (instance_destroy[]:int32 )
0x0010FC:
    if !(== self.mercymod 222s) goto 0x00112C
0x001110:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001130
0x00112C:
    push 0s
0x001130:
    if !pop goto 0x001168
0x001134:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001168
0x00115C:
    call (instance_destroy[]:int32 )
0x001168:
    exit
