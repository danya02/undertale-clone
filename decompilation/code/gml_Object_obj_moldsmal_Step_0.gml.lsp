0x000000:
    if !(< self.image_yscale 0.9d) goto 0x000030
0x00001C:
    self.scalevalue = 0.01d
0x000030:
    if !(> self.image_yscale 1.1d) goto 0x000060
0x00004C:
    self.scalevalue = -0.01d
0x000060:
    self.image_yscale = (+ self.image_yscale self.scalevalue)
    self.y = (- self.y (* 102s self.scalevalue))
    if !(== global.mnfight 3s) goto 0x0000C0
0x0000B4:
    self.attacked = 0s
0x0000C0:
    call (scr_blconmatch[]:int32 )
    if !(== global.mnfight 1s) goto 0x000134
0x0000E0:
    if !(== self.talked 0s) goto 0x000134
0x0000F4:
    stog.alarm[5s] = 60s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000134:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0001C0
0x00014C:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0001A4
0x000168:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x0001A4
0x000188:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x0001A8
0x0001A4:
    push 0s
0x0001A8:
    if !pop goto 0x0001C0
0x0001AC:
    stog.alarm[5s] = 2s
0x0001C0:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000224
0x0001E4:
    self.shudder = 16s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000224:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x00034C
0x000248:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x00029C
0x000288:
    stog.alarm[2s] = 15s
0x00029C:
    popenv 0x000288
0x0002A0:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x00031C
0x0002C4:
    stog.hurtanim[(int32 self.myself)] = 0s
    self.image_index = 0s
    self.scalevalue = 0.01d
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x00034C
0x00031C:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x00034C:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x00041C
0x000370:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0003E4
0x0003D0:
    stog.alarm[2s] = 30s
0x0003E4:
    popenv 0x0003D0
0x0003E8:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x00041C:
    if !(== global.mnfight 2s) goto 0x0007B0
0x000430:
    if !(== self.attacked 0s) goto 0x0007B0
0x000444:
    global.turntimer = 120s
    if !(>= self.mycommand 0s) goto 0x000478
0x000464:
    push (<= self.mycommand 50s)
    goto 0x00047C
0x000478:
    push 0s
0x00047C:
    if !pop goto 0x000590
0x000480:
    global.firingrate = 15s
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 3s) goto 0x0004E8
0x0004D0:
    global.firingrate = (* global.firingrate 2s)
0x0004E8:
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 2s) goto 0x00054C
0x00052C:
    global.firingrate = (* global.firingrate 1.5d)
0x00054C:
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 3s
    stog.bullettype* = (int32 self.gen)
    goto 0x00069C
0x000590:
    global.firingrate = 30s
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 3s) goto 0x0005F8
0x0005E0:
    global.firingrate = (* global.firingrate 2s)
0x0005F8:
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 2s) goto 0x00065C
0x00063C:
    global.firingrate = (* global.firingrate 1.5d)
0x00065C:
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 2s
    stog.bullettype* = (int32 self.gen)
0x00069C:
    push self.myself
    stog.myself* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x0006E4
0x0006CC:
    stog.msg[0s] = "* Moldsmal burbles quietly."
0x0006E4:
    if !(>= self.mycommand 30s) goto 0x000710
0x0006F8:
    stog.msg[0s] = "* Moldsmal waits pensively."
0x000710:
    if !(>= self.mycommand 70s) goto 0x00073C
0x000724:
    stog.msg[0s] = "* Moldsmal is ruminating."
0x00073C:
    if !(>= self.mycommand 90s) goto 0x000768
0x000750:
    stog.msg[0s] = "* The aroma of lime gelatin&  wafts through."
0x000768:
    push -5s
    if !(< (int32 self.myself):monsterhp 15s) goto 0x0007A4
0x00078C:
    stog.msg[0s] = "* Moldsmal has started to spoil."
0x0007A4:
    self.attacked = 1s
0x0007B0:
    if !(== global.myfight 2s) goto 0x000A48
0x0007C4:
    if !(!= self.whatiheard -1s) goto 0x000A48
0x0007D8:
    if !(== global.heard 0s) goto 0x000A48
0x0007EC:
    if !(== self.whatiheard 0s) goto 0x0008C4
0x000800:
    global.msc = 0s
    stog.msg[0s] = "* MOLDSMAL - ATK 6 DEF 0&* Stereotypical: Curvaceously&  attractive, but no brains.../^"
    push -5s
    if !(> (int32 self.myself):monsteratk 6s) goto 0x000860
0x000848:
    stog.msg[0s] = "* MOLDSMAL - ATK 12 DEF 0&* It's a different color^1, so&  it's a bit stronger now./^"
0x000860:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0008C0
0x0008B4:
    self.halt = 0s
0x0008C0:
    popenv 0x0008B4
0x0008C4:
    if !(== self.whatiheard 3s) goto 0x000980
0x0008D8:
    stog.flag[132s] = 1s
    global.msc = 0s
    stog.msg[0s] = "* You lie immobile with Moldsmal.&* You feel like you understand&  the world a little better./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000970
0x000964:
    self.halt = 0s
0x000970:
    popenv 0x000964
0x000974:
    self.mercymod = 101s
0x000980:
    if !(== self.whatiheard 1s) goto 0x000A3C
0x000994:
    stog.flag[132s] = 1s
    global.msc = 0s
    stog.msg[0s] = "* You wiggle your hips.&* Moldsmal wiggles back.&* What a meaningful conversation!/^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A2C
0x000A20:
    self.halt = 0s
0x000A2C:
    popenv 0x000A20
0x000A30:
    self.mercymod = 101s
0x000A3C:
    global.heard = 1s
0x000A48:
    if !(== global.myfight 4s) goto 0x000AA4
0x000A5C:
    if !(== global.mercyuse 0s) goto 0x000AA4
0x000A70:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000AA4
0x000A98:
    call (instance_destroy[]:int32 )
0x000AA4:
    exit
