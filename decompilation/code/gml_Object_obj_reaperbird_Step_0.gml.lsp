0x000000:
    if !(== global.mnfight 3s) goto 0x000038
0x000014:
    self.attacked = 0s
    push 0s
    stog.stretchup* = (int32 self.mypart1)
0x000038:
    push -1s
    if !(> 5s:alarm 0s) goto 0x0001E0
0x000054:
    push -5s
    if !(== 0s:monster 1s) goto 0x0000D8
0x000070:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0000D8
0x0000A8:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0000D8:
    push -5s
    if !(== 1s:monster 1s) goto 0x00015C
0x0000F4:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x00015C
0x00012C:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x00015C:
    push -5s
    if !(== 2s:monster 1s) goto 0x0001E0
0x000178:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0001E0
0x0001B0:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0001E0:
    if !(== global.mnfight 1s) goto 0x000248
0x0001F4:
    if !(== self.talked 0s) goto 0x000248
0x000208:
    stog.alarm[5s] = 110s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000248:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0002D4
0x000260:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0002B8
0x00027C:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x0002B8
0x00029C:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x0002BC
0x0002B8:
    push 0s
0x0002BC:
    if !pop goto 0x0002D4
0x0002C0:
    stog.alarm[5s] = 2s
0x0002D4:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000338
0x0002F8:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000338:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000458
0x00035C:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x0003B0
0x00039C:
    stog.alarm[2s] = 15s
0x0003B0:
    popenv 0x00039C
0x0003B4:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000428
0x0003D8:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000458
0x000428:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000458:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000528
0x00047C:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0004F0
0x0004DC:
    stog.alarm[2s] = 30s
0x0004F0:
    popenv 0x0004DC
0x0004F4:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000528:
    if !(== global.mnfight 2s) goto 0x0008E8
0x00053C:
    if !(== self.attacked 0s) goto 0x0008AC
0x000550:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 200s
    global.firingrate = 10s
    if !(== self.pop 3s) goto 0x0005AC
0x00058C:
    global.firingrate = (* global.firingrate 2.5d)
0x0005AC:
    if !(== self.pop 2s) goto 0x0005E0
0x0005C0:
    global.firingrate = (* global.firingrate 1.8d)
0x0005E0:
    if !(> self.turns 0s) goto 0x0006D0
0x0005F4:
    if !(== self.turns 1s) goto 0x00066C
0x000608:
    self.gen = (instance_create[]:int32 (var 535s) (var 0s) (var 0s))
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    self.turns = 2s
    goto 0x0006CC
0x00066C:
    self.turns = 1s
    self.gen = (instance_create[]:int32 (var 536s) (var 0s) (var 0s))
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
0x0006CC:
    goto 0x00073C
0x0006D0:
    global.turntimer = 250s
    self.gen = (instance_create[]:int32 (var 538s) (var 0s) (var 0s))
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    self.turns = 1s
0x00073C:
    if !(>= self.mycommand 0s) goto 0x000768
0x000750:
    stog.msg[0s] = "* ,"
0x000768:
    if !(>= self.mycommand 25s) goto 0x000794
0x00077C:
    stog.msg[0s] = "* ,"
0x000794:
    if !(>= self.mycommand 50s) goto 0x0007C0
0x0007A8:
    stog.msg[0s] = "* ,"
0x0007C0:
    if !(>= self.mycommand 75s) goto 0x0007EC
0x0007D4:
    stog.msg[0s] = "* ,"
0x0007EC:
    if !(>= self.mycommand 98s) goto 0x000818
0x000800:
    stog.msg[0s] = "* Smells like a ,"
0x000818:
    if !(> self.mercymod 100s) goto 0x000844
0x00082C:
    stog.msg[0s] = "* Reaper Bird seems placated."
0x000844:
    push -5s
    push (int32 self.myself):monsterhp
    if !(<= -5s (/ (int32 self.myself):monstermaxhp (double 4s))) goto 0x0008A0
0x000888:
    stog.msg[0s] = "* Monster has low HP."
0x0008A0:
    self.attacked = 1s
0x0008AC:
    if !(== self.mercymod 99999) goto 0x0008DC
0x0008C4:
    global.turntimer = -1s
    global.mnfight = 3s
0x0008DC:
    self.whatiheard = -1s
0x0008E8:
    if !(== global.myfight 2s) goto 0x001244
0x0008FC:
    if !(!= self.whatiheard -1s) goto 0x001244
0x000910:
    if !(== global.heard 0s) goto 0x001244
0x000924:
    if !(== self.whatiheard 0s) goto 0x000C6C
0x000938:
    if !(< self.mercymod 100s) goto 0x000BE4
0x00094C:
    global.msc = 0s
    [OBJ_WRITER].halt = 3s
    push "* ASTIGMATISM "
    push (+ (+ -5s (string[]:int32 (int32 self.myself):monsteratk)) " ATK ")
    stog.msg[0s] = (+ (+ -5s (string[]:int32 (int32 self.myself):monsterdef)) " DEF&* This relentless bully ALWAYS&  gets its way.")
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A30
0x000A24:
    self.halt = 0s
0x000A30:
    popenv 0x000A24
0x000A34:
    push "* WHIMSALOT "
    push (+ (+ -5s (string[]:int32 (int32 self.myself):monsteratk)) " ATK ")
    stog.msg[0s] = (+ (+ -5s (string[]:int32 (int32 self.myself):monsterdef)) " DEF&* It finally stopped worrying.")
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B00
0x000AF4:
    self.halt = 0s
0x000B00:
    popenv 0x000AF4
0x000B04:
    push "* FINAL FROGGIT "
    push (+ (+ -5s (string[]:int32 (int32 self.myself):monsteratk)) " ATK ")
    stog.msg[0s] = (+ (+ -5s (string[]:int32 (int32 self.myself):monsterdef)) " DEF&* Its future looks brighter and&  brighter         ./^")
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BD0
0x000BC4:
    self.halt = 0s
0x000BD0:
    popenv 0x000BC4
0x000BD4:
    self.whatiheard = 9s
    goto 0x000C6C
0x000BE4:
    global.msc = 0s
    [OBJ_WRITER].halt = 3s
    stog.msg[0s] = "* REAPER BIRD - ATK ?? DEF ??&* This relentless future finally&  looks brighter and brighter./^"
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000C68
0x000C5C:
    self.halt = 0s
0x000C68:
    popenv 0x000C5C
0x000C6C:
    if !(== self.whatiheard 3s) goto 0x000DE0
0x000C80:
    global.msc = 0s
    if !(== self.pickon 0s) goto 0x000CB8
0x000CA0:
    stog.msg[0s] = "* You pick on , ^1.&* It seemed effective./^"
0x000CB8:
    if !(== self.pickon 1s) goto 0x000CE4
0x000CCC:
    stog.msg[0s] = "* But^1, it was already&  picked on./^"
0x000CE4:
    self.pickon = 1s
    if !(== self.pray 1s) goto 0x000D2C
0x000D04:
    if !(== self.pickon 1s) goto 0x000D2C
0x000D18:
    push (== self.mystify 1s)
    goto 0x000D30
0x000D2C:
    push 0s
0x000D30:
    if !pop goto 0x000D7C
0x000D34:
    self.mercymod = 999999
    stog.monstername[(int32 self.myself)] = "Reaper Bird"
    stog.msg[0s] = "* You pick on Reaper Bird^1.&* Reaper Bird seems to&  remember something./^"
0x000D7C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000DDC
0x000DD0:
    self.halt = 0s
0x000DDC:
    popenv 0x000DD0
0x000DE0:
    if !(== self.whatiheard 1s) goto 0x000F54
0x000DF4:
    global.msc = 0s
    if !(== self.mystify 0s) goto 0x000E2C
0x000E14:
    stog.msg[0s] = "* You did something mysterious.&* , recognizes it has more to&  learn from this world./^"
0x000E2C:
    if !(== self.mystify 1s) goto 0x000E58
0x000E40:
    stog.msg[0s] = "* But^1, it was already&  mystified./^"
0x000E58:
    self.mystify = 1s
    if !(== self.pray 1s) goto 0x000EA0
0x000E78:
    if !(== self.pickon 1s) goto 0x000EA0
0x000E8C:
    push (== self.mystify 1s)
    goto 0x000EA4
0x000EA0:
    push 0s
0x000EA4:
    if !pop goto 0x000EF0
0x000EA8:
    self.mercymod = 999999
    stog.monstername[(int32 self.myself)] = "Reaper Bird"
    stog.msg[0s] = "* You did something mysterious^1.&* Reaper Bird seems to&  remember something./^"
0x000EF0:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000F50
0x000F44:
    self.halt = 0s
0x000F50:
    popenv 0x000F44
0x000F54:
    if !(== self.whatiheard 4s) goto 0x001028
0x000F68:
    global.msc = 0s
    stog.msg[0s] = "* You wash your hands^1.&* Nothing happened./^"
    if !(== self.xclean 1s) goto 0x000FB8
0x000FA0:
    stog.msg[0s] = "* Your hands are clean enough&  to eat!/^"
0x000FB8:
    [OBJ_WRITER].halt = 3s
    self.xclean = 1s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x001024
0x001018:
    self.halt = 0s
0x001024:
    popenv 0x001018
0x001028:
    if !(== self.whatiheard 2s) goto 0x0010C4
0x00103C:
    global.msc = 0s
    stog.msg[0s] = "* You hum a familiar tune^1.&* But no one heard you./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0010C0
0x0010B4:
    self.halt = 0s
0x0010C0:
    popenv 0x0010B4
0x0010C4:
    if !(== self.whatiheard 5s) goto 0x001238
0x0010D8:
    global.msc = 0s
    if !(== self.pray 0s) goto 0x001110
0x0010F8:
    stog.msg[0s] = "* You kneel and pray for safety^1.&* , remembers its conscience./^"
0x001110:
    if !(== self.pray 1s) goto 0x00113C
0x001124:
    stog.msg[0s] = "* But , already remembered its&  conscience./^"
0x00113C:
    self.pray = 1s
    if !(== self.pray 1s) goto 0x001184
0x00115C:
    if !(== self.pickon 1s) goto 0x001184
0x001170:
    push (== self.mystify 1s)
    goto 0x001188
0x001184:
    push 0s
0x001188:
    if !pop goto 0x0011D4
0x00118C:
    self.mercymod = 999999
    stog.monstername[(int32 self.myself)] = "Reaper Bird"
    stog.msg[0s] = "* You kneel and pray for safety^1.&* Reaper Bird seems to&  remember something./^"
0x0011D4:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x001234
0x001228:
    self.halt = 0s
0x001234:
    popenv 0x001228
0x001238:
    global.heard = 1s
0x001244:
    if !(== global.myfight 4s) goto 0x0012A0
0x001258:
    if !(== global.mercyuse 0s) goto 0x0012A0
0x00126C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x0012A0
0x001294:
    call (instance_destroy[]:int32 )
0x0012A0:
    if !(== self.mercymod 222s) goto 0x0012D0
0x0012B4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0012D4
0x0012D0:
    push 0s
0x0012D4:
    if !pop goto 0x00130C
0x0012D8:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x00130C
0x001300:
    call (instance_destroy[]:int32 )
0x00130C:
    exit
