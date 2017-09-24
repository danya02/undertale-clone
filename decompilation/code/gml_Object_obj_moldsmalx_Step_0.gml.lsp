0x000000:
    if !(== global.mnfight 3s) goto 0x000020
0x000014:
    self.attacked = 0s
0x000020:
    call (scr_blconmatch[]:int32 )
    if !(== global.mnfight 1s) goto 0x000094
0x000040:
    if !(== self.talked 0s) goto 0x000094
0x000054:
    stog.alarm[5s] = 60s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000094:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x000120
0x0000AC:
    push -1s
    if !(> 5s:alarm 5s) goto 0x000104
0x0000C8:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x000104
0x0000E8:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x000108
0x000104:
    push 0s
0x000108:
    if !pop goto 0x000120
0x00010C:
    stog.alarm[5s] = 2s
0x000120:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000184
0x000144:
    self.shudder = 16s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000184:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x0002FC
0x0001A8:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x0001FC
0x0001E8:
    stog.alarm[2s] = 15s
0x0001FC:
    popenv 0x0001E8
0x000200:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x0002CC
0x000224:
    self.visible = 0s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    push self.stage
    stog.stage* = (int32 self.mypart1)
    stog.hurtanim[(int32 self.myself)] = 0s
    self.image_index = 0s
    self.scalevalue = 0.01d
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x0002FC
0x0002CC:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x0002FC:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x0003CC
0x000320:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000394
0x000380:
    stog.alarm[2s] = 30s
0x000394:
    popenv 0x000380
0x000398:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x0003CC:
    if !(== global.mnfight 2s) goto 0x000A4C
0x0003E0:
    if !(== self.attacked 0s) goto 0x000A4C
0x0003F4:
    if !(== self.stage 0s) goto 0x000690
0x000408:
    if !(< global.turntimer 10s) goto 0x000428
0x00041C:
    global.turntimer = 10s
0x000428:
    if !(>= self.mycommand 0s) goto 0x000450
0x00043C:
    push (<= self.mycommand 50s)
    goto 0x000454
0x000450:
    push 0s
0x000454:
    if !pop goto 0x000568
0x000458:
    global.firingrate = 90s
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 3s) goto 0x0004C0
0x0004A8:
    global.firingrate = (* global.firingrate 2s)
0x0004C0:
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 2s) goto 0x000524
0x000504:
    global.firingrate = (* global.firingrate 1.5d)
0x000524:
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 3s
    stog.bullettype* = (int32 self.gen)
    goto 0x000674
0x000568:
    global.firingrate = 90s
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 3s) goto 0x0005D0
0x0005B8:
    global.firingrate = (* global.firingrate 2s)
0x0005D0:
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 2s) goto 0x000634
0x000614:
    global.firingrate = (* global.firingrate 1.5d)
0x000634:
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 2s
    stog.bullettype* = (int32 self.gen)
0x000674:
    push self.myself
    stog.myself* = (int32 self.gen)
0x000690:
    if !(== self.stage 1s) goto 0x000814
0x0006A4:
    self.pop = (scr_monstersum[]:int32 )
    if !(>= self.mycommand 0s) goto 0x0006DC
0x0006C8:
    push (<= self.mycommand 50s)
    goto 0x0006E0
0x0006DC:
    push 0s
0x0006E0:
    if !pop goto 0x000784
0x0006E4:
    global.turntimer = 180s
    global.firingrate = 40s
    if !(== self.pop 2s) goto 0x000730
0x000710:
    global.firingrate = (* global.firingrate 1.1d)
0x000730:
    if !(== self.pop 3s) goto 0x00075C
0x000744:
    global.firingrate = (* global.firingrate 1s)
0x00075C:
    call (instance_create[]:int32 (var 692s) (var 0s) (var 0s))
    goto 0x000814
0x000784:
    global.turntimer = 180s
    global.firingrate = 35s
    if !(== self.pop 2s) goto 0x0007BC
0x0007B0:
    global.firingrate = 34s
0x0007BC:
    if !(== self.pop 3s) goto 0x0007F0
0x0007D0:
    global.firingrate = (* global.firingrate 0.6d)
0x0007F0:
    call (instance_create[]:int32 (var 691s) (var 0s) (var 0s))
0x000814:
    if !(== self.stage 0s) goto 0x000914
0x000828:
    if !(>= self.mycommand 0s) goto 0x000854
0x00083C:
    stog.msg[0s] = "* Moldsmal sits motionless."
0x000854:
    if !(>= self.mycommand 30s) goto 0x000880
0x000868:
    stog.msg[0s] = "* Moldsmal is very normal."
0x000880:
    if !(>= self.mycommand 70s) goto 0x0008AC
0x000894:
    stog.msg[0s] = "* Moldsmal is having quiet&  time."
0x0008AC:
    if !(>= self.mycommand 90s) goto 0x0008D8
0x0008C0:
    stog.msg[0s] = "* Smells like a bait shop."
0x0008D8:
    push -5s
    if !(< (int32 self.myself):monsterhp 15s) goto 0x000914
0x0008FC:
    stog.msg[0s] = "* Quite impossible."
0x000914:
    if !(== self.stage 1s) goto 0x000A40
0x000928:
    if !(>= self.mycommand 0s) goto 0x000954
0x00093C:
    stog.msg[0s] = "* Moldbygg needs some distance."
0x000954:
    if !(>= self.mycommand 30s) goto 0x000980
0x000968:
    stog.msg[0s] = "* Moldbygg gyrates reservedly."
0x000980:
    if !(>= self.mycommand 70s) goto 0x0009AC
0x000994:
    stog.msg[0s] = "* Moldbygg mills about in the&  corner."
0x0009AC:
    if !(>= self.mycommand 90s) goto 0x0009D8
0x0009C0:
    stog.msg[0s] = "* Smells like a bait shop."
0x0009D8:
    if !(> self.mercymod 100s) goto 0x000A04
0x0009EC:
    stog.msg[0s] = "* Moldbygg seems comfortable&  with your presence."
0x000A04:
    push -5s
    if !(< (int32 self.myself):monsterhp 30s) goto 0x000A40
0x000A28:
    stog.msg[0s] = "* Moldbygg has seen better days."
0x000A40:
    self.attacked = 1s
0x000A4C:
    if !(== global.myfight 2s) goto 0x000E80
0x000A60:
    if !(!= self.whatiheard -1s) goto 0x000E80
0x000A74:
    if !(== global.heard 0s) goto 0x000E80
0x000A88:
    if !(== self.whatiheard 0s) goto 0x000B64
0x000A9C:
    global.msc = 0s
    if !(== self.stage 0s) goto 0x000AD4
0x000ABC:
    stog.msg[0s] = "* MOLDSMAL? - ATK 6 DEF 0&* It's a slime mold...?/^"
0x000AD4:
    if !(== self.stage 1s) goto 0x000B00
0x000AE8:
    stog.msg[0s] = "* MOLDBYGG - ATK 18 DEF 18&* One size greater than&  Moldaverage./^"
0x000B00:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B60
0x000B54:
    self.halt = 0s
0x000B60:
    popenv 0x000B54
0x000B64:
    if !(== self.whatiheard 3s) goto 0x000C40
0x000B78:
    global.msc = 0s
    if !(== self.stage 0s) goto 0x000BB0
0x000B98:
    stog.msg[0s] = "* You approach Moldsmal.&* Suddenly...!/^"
0x000BB0:
    if !(== self.stage 1s) goto 0x000BDC
0x000BC4:
    stog.msg[0s] = "* You lie down.&* Moldbygg lies down too.&* Moldbygg understands life now./^"
0x000BDC:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000C3C
0x000C30:
    self.halt = 0s
0x000C3C:
    popenv 0x000C30
0x000C40:
    if !(== self.whatiheard 1s) goto 0x000D78
0x000C54:
    global.msc = 0s
    if !(== self.stage 0s) goto 0x000C8C
0x000C74:
    stog.msg[0s] = "* You wiggle your hips.&* Suddenly...!/^"
0x000C8C:
    if !(== self.stage 1s) goto 0x000D14
0x000CA0:
    stog.msg[0s] = "* You hug Moldbygg.&* Gross slime covers you.&* Your SPEED decreased./^"
    if !(> global.sp 3s) goto 0x000CE4
0x000CCC:
    global.sp = (- global.sp 1s)
0x000CE4:
    if !(bool (instance_exists[]:int32 (var 256s))) goto 0x000D14
0x000CFC:
    [obj_woshua].slime = 1s
    [obj_woshua].clean = 0s
0x000D14:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000D74
0x000D68:
    self.halt = 0s
0x000D74:
    popenv 0x000D68
0x000D78:
    if !(== self.whatiheard 4s) goto 0x000E74
0x000D8C:
    global.msc = 0s
    if !(== self.stage 0s) goto 0x000DC4
0x000DAC:
    stog.msg[0s] = "* Wrong message!/^"
0x000DC4:
    if !(== self.stage 1s) goto 0x000E04
0x000DD8:
    stog.flag[144s] = 1s
    stog.msg[0s] = "* You don't hug Moldbygg.&* It appreciates your respect&  of its boundaries./^"
0x000E04:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000E64
0x000E58:
    self.halt = 0s
0x000E64:
    popenv 0x000E58
0x000E68:
    self.mercymod = 200s
0x000E74:
    global.heard = 1s
0x000E80:
    if !(== global.myfight 4s) goto 0x000EDC
0x000E94:
    if !(== global.mercyuse 0s) goto 0x000EDC
0x000EA8:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000EDC
0x000ED0:
    call (instance_destroy[]:int32 )
0x000EDC:
    exit
