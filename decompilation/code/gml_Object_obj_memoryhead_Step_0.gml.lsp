0x000000:
    if !(== global.mnfight 3s) goto 0x000068
0x000014:
    pushenv (int32 self.object_index) 0x000064
0x000024:
    self.attacked = 0s
    pushenv (int32 self.mypart1) 0x000060
0x000040:
    if !(== self.mega 4s) goto 0x000060
0x000054:
    self.mega = 2s
0x000060:
    popenv 0x000040
0x000064:
    popenv 0x000024
0x000068:
    push -1s
    if !(> 5s:alarm 0s) goto 0x000210
0x000084:
    push -5s
    if !(== 0s:monster 1s) goto 0x000108
0x0000A0:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000108
0x0000D8:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000108:
    push -5s
    if !(== 1s:monster 1s) goto 0x00018C
0x000124:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x00018C
0x00015C:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x00018C:
    push -5s
    if !(== 2s:monster 1s) goto 0x000210
0x0001A8:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000210
0x0001E0:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000210:
    if !(== global.mnfight 1s) goto 0x000278
0x000224:
    if !(== self.talked 0s) goto 0x000278
0x000238:
    stog.alarm[5s] = 110s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000278:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x000304
0x000290:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0002E8
0x0002AC:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x0002E8
0x0002CC:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x0002EC
0x0002E8:
    push 0s
0x0002EC:
    if !pop goto 0x000304
0x0002F0:
    stog.alarm[5s] = 2s
0x000304:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000368
0x000328:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000368:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000488
0x00038C:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x0003E0
0x0003CC:
    stog.alarm[2s] = 15s
0x0003E0:
    popenv 0x0003CC
0x0003E4:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000458
0x000408:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000488
0x000458:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000488:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000558
0x0004AC:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000520
0x00050C:
    stog.alarm[2s] = 30s
0x000520:
    popenv 0x00050C
0x000524:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000558:
    if !(== global.mnfight 2s) goto 0x0008A8
0x00056C:
    if !(== self.attacked 0s) goto 0x00086C
0x000580:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 200s
    global.firingrate = 10s
    if !(== self.pop 3s) goto 0x0005DC
0x0005BC:
    global.firingrate = (* global.firingrate 2.5d)
0x0005DC:
    if !(== self.pop 2s) goto 0x000610
0x0005F0:
    global.firingrate = (* global.firingrate 1.8d)
0x000610:
    if !(>= self.mycommand 0s) goto 0x000694
0x000624:
    pushenv 541s 0x000638
0x00062C:
    call (instance_destroy[]:int32 )
0x000638:
    popenv 0x00062C
0x00063C:
    self.gen = (instance_create[]:int32 (var 541s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    goto 0x0006FC
0x000694:
    push (var 331s)
    push -5s
    push (+ 2s:idealborder 2s)
    self.gen = (instance_create[]:int32 -5s 0s:idealborder (- (/ (+ -5s 1s:idealborder) (double 2s)) 30s))
0x0006FC:
    if !(>= self.mycommand 0s) goto 0x000728
0x000710:
    stog.msg[0s] = "* But nobody came."
0x000728:
    if !(>= self.mycommand 25s) goto 0x000754
0x00073C:
    stog.msg[0s] = "* But nobody came."
0x000754:
    if !(>= self.mycommand 50s) goto 0x000780
0x000768:
    stog.msg[0s] = "* But nobody came."
0x000780:
    if !(>= self.mycommand 75s) goto 0x0007AC
0x000794:
    stog.msg[0s] = "* But nobody came."
0x0007AC:
    if !(>= self.mycommand 95s) goto 0x0007D8
0x0007C0:
    stog.msg[0s] = "* Smells like batteries."
0x0007D8:
    if !(> self.mercymod 100s) goto 0x000804
0x0007EC:
    stog.msg[0s] = "* Seems like it doesn't&  care anymore."
0x000804:
    push -5s
    push (int32 self.myself):monsterhp
    if !(<= -5s (/ (int32 self.myself):monstermaxhp (double 4s))) goto 0x000860
0x000848:
    stog.msg[0s] = "* Monster has low HP."
0x000860:
    self.attacked = 1s
0x00086C:
    if !(== self.mercymod 999999) goto 0x00089C
0x000884:
    global.turntimer = -1s
    global.mnfight = 3s
0x00089C:
    self.whatiheard = -1s
0x0008A8:
    if !(== global.myfight 2s) goto 0x000D8C
0x0008BC:
    if !(!= self.whatiheard -1s) goto 0x000D8C
0x0008D0:
    if !(== global.heard 0s) goto 0x000D8C
0x0008E4:
    if !(== self.coherent 0s) goto 0x000C64
0x0008F8:
    if !(== self.whatiheard 0s) goto 0x0009A0
0x00090C:
    global.msc = 0s
    stog.msg[0s] = "* No data available./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000990
0x000984:
    self.halt = 0s
0x000990:
    popenv 0x000984
0x000994:
    self.whatiheard = 9s
0x0009A0:
    if !(== self.whatiheard 3s) goto 0x000A90
0x0009B4:
    global.msc = 0s
    call (scr_itemget[]:int32 (var 54s))
    if !(== self.noroom 0s) goto 0x000A00
0x0009E8:
    stog.msg[0s] = "* The enemy put a piece of&  itself in your inventory./^"
0x000A00:
    if !(== self.noroom 1s) goto 0x000A2C
0x000A14:
    stog.msg[0s] = "* But your inventory was full./^"
0x000A2C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A8C
0x000A80:
    self.halt = 0s
0x000A8C:
    popenv 0x000A80
0x000A90:
    if !(== self.whatiheard 1s) goto 0x000B84
0x000AA4:
    global.msc = 0s
    stog.msg[0s] = (+ (+ (+ (+ "* AT - " (string[]:int32 (+ global.at global.wstrength))) " DF - ") (string[]:int32 (+ global.df global.adef))) " /^")
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B80
0x000B74:
    self.halt = 0s
0x000B80:
    popenv 0x000B74
0x000B84:
    if !(== self.whatiheard 4s) goto 0x000C60
0x000B98:
    global.msc = 0s
    stog.msg[0s] = "* You take out your CELL PHONE^1.&* You can hear voices through&  the receiver...!/^"
    pushenv (int32 self.object_index) 0x000BF8
0x000BCC:
    self.coherent = 1s
    stog.monstername[(int32 self.myself)] = "Memoryhead"
0x000BF8:
    popenv 0x000BCC
0x000BFC:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000C5C
0x000C50:
    self.halt = 0s
0x000C5C:
    popenv 0x000C50
0x000C60:
    goto 0x000D80
0x000C64:
    if !(== self.whatiheard 0s) goto 0x000D0C
0x000C78:
    global.msc = 0s
    stog.msg[0s] = "* MEMORYHEAD/^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000CFC
0x000CF0:
    self.halt = 0s
0x000CFC:
    popenv 0x000CF0
0x000D00:
    self.whatiheard = 9s
0x000D0C:
    if !(== self.whatiheard 3s) goto 0x000D38
0x000D20:
    global.myfight = 0s
    global.mnfight = 1s
0x000D38:
    if !(== self.whatiheard 1s) goto 0x000D80
0x000D4C:
    global.myfight = 0s
    global.mnfight = 1s
    push 999998
    stog.mercymod* = (int32 self.object_index)
0x000D80:
    global.heard = 1s
0x000D8C:
    if !(== global.myfight 4s) goto 0x000DE8
0x000DA0:
    if !(== global.mercyuse 0s) goto 0x000DE8
0x000DB4:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000DE8
0x000DDC:
    call (instance_destroy[]:int32 )
0x000DE8:
    if !(== self.mercymod 222s) goto 0x000E18
0x000DFC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000E1C
0x000E18:
    push 0s
0x000E1C:
    if !pop goto 0x000E54
0x000E20:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000E54
0x000E48:
    call (instance_destroy[]:int32 )
0x000E54:
    exit
