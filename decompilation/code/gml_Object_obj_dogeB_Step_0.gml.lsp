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
    stog.alarm[5s] = 70s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000094:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x000104
0x0000AC:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0000E8
0x0000C8:
    push 758.x
    push (== -5s 0s:idealborder)
    goto 0x0000EC
0x0000E8:
    push 0s
0x0000EC:
    if !pop goto 0x000104
0x0000F0:
    stog.alarm[5s] = 2s
0x000104:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000168
0x000128:
    self.shudder = 16s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000168:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x00028C
0x00018C:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x0001E0
0x0001CC:
    stog.alarm[2s] = 15s
0x0001E0:
    popenv 0x0001CC
0x0001E4:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x00025C
0x000208:
    stog.hurtanim[(int32 self.myself)] = 0s
    self.sprite_index = self.normalsprite
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x00028C
0x00025C:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x00028C:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x00035C
0x0002B0:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000324
0x000310:
    stog.alarm[2s] = 30s
0x000324:
    popenv 0x000310
0x000328:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x00035C:
    if !(== global.mnfight 2s) goto 0x000714
0x000370:
    if !(== self.attacked 0s) goto 0x000714
0x000384:
    global.turntimer = 110s
    global.firingrate = 4s
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 3s) goto 0x0003EC
0x0003E0:
    self.mycommand = 2s
0x0003EC:
    if !(< self.mycommand 50s) goto 0x0004A4
0x000400:
    global.firingrate = 13s
    push (var 648s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 45s) -5s (- 1s:idealborder 50s))
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    global.border = 8s
    push 0s
    stog.bullettype* = (int32 self.gen)
0x0004A4:
    if !(>= self.mycommand 50s) goto 0x00055C
0x0004B8:
    global.firingrate = 13s
    push (var 653s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 45s) -5s (- 1s:idealborder 50s))
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    global.border = 8s
    push 0s
    stog.bullettype* = (int32 self.gen)
0x00055C:
    push self.myself
    stog.myself* = (int32 self.gen)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x0005D0
0x0005B8:
    stog.msg[0s] = "* Doge is pacing anxiously."
0x0005D0:
    if !(>= self.mycommand 30s) goto 0x0005FC
0x0005E4:
    stog.msg[0s] = "* Doge paws at an imaginary&  door."
0x0005FC:
    if !(>= self.mycommand 70s) goto 0x000628
0x000610:
    stog.msg[0s] = "* Doge is looking at you and&  whining."
0x000628:
    if !(>= self.mycommand 90s) goto 0x000654
0x00063C:
    stog.msg[0s] = "* Doge is wondering where she&  put her leash."
0x000654:
    if !(>= self.mercymod 20s) goto 0x000680
0x000668:
    stog.msg[0s] = "* Doge is now primed for petting."
0x000680:
    if !(>= self.mercymod 100s) goto 0x0006AC
0x000694:
    stog.msg[0s] = "* Doge looks satisfied."
0x0006AC:
    push -5s
    push (int32 self.myself):monsterhp
    if !(< -5s (/ (int32 self.myself):monstermaxhp (double 3s))) goto 0x000708
0x0006F0:
    stog.msg[0s] = "* Doge needs a vet."
0x000708:
    self.attacked = 1s
0x000714:
    if !(== global.myfight 2s) goto 0x000C7C
0x000728:
    if !(!= self.whatiheard -1s) goto 0x000C7C
0x00073C:
    if !(== global.heard 0s) goto 0x000C7C
0x000750:
    if !(== self.whatiheard 0s) goto 0x0007EC
0x000764:
    global.msc = 0s
    stog.msg[0s] = "* DOGE - ATK 7 DEF 5&* Pronounced \"dohj.\" Soft j^1.&* Seems like she wants a walk./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0007E8
0x0007DC:
    self.halt = 0s
0x0007E8:
    popenv 0x0007DC
0x0007EC:
    if !(== self.whatiheard 1s) goto 0x000888
0x000800:
    global.msc = 0s
    stog.msg[0s] = "* You tried to bathe Doge^2,&  but she's perfectly clean.../^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000884
0x000878:
    self.halt = 0s
0x000884:
    popenv 0x000878
0x000888:
    if !(== self.whatiheard 2s) goto 0x0009D0
0x00089C:
    if !(<= self.mercymod 10s) goto 0x000948
0x0008B0:
    global.msc = 0s
    stog.msg[0s] = "* You go on a short walk with&  the Doge./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000934
0x000928:
    self.halt = 0s
0x000934:
    popenv 0x000928
0x000938:
    self.mercymod = 20s
    goto 0x0009D0
0x000948:
    global.msc = 0s
    stog.msg[0s] = "* The Doge seems all tuckered&  out./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0009CC
0x0009C0:
    self.halt = 0s
0x0009CC:
    popenv 0x0009C0
0x0009D0:
    if !(== self.whatiheard 3s) goto 0x000A8C
0x0009E4:
    global.msc = 0s
    stog.msg[0s] = "* You called Doge over.&* Doge came close./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A68
0x000A5C:
    self.halt = 0s
0x000A68:
    popenv 0x000A5C
0x000A6C:
    if !(== self.mercymod 0s) goto 0x000A8C
0x000A80:
    self.mercymod = 10s
0x000A8C:
    if !(== self.whatiheard 4s) goto 0x000B28
0x000AA0:
    global.msc = 0s
    stog.msg[0s] = "* Dry a dry doge?&* Your mind boggles at this&  impossibility./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B24
0x000B18:
    self.halt = 0s
0x000B24:
    popenv 0x000B18
0x000B28:
    if !(== self.whatiheard 5s) goto 0x000C70
0x000B3C:
    if !(>= self.mercymod 20s) goto 0x000BE8
0x000B50:
    global.msc = 0s
    stog.msg[0s] = "* You pet the Doge.&* What a good Doge./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BD4
0x000BC8:
    self.halt = 0s
0x000BD4:
    popenv 0x000BC8
0x000BD8:
    self.mercymod = 100s
    goto 0x000C70
0x000BE8:
    global.msc = 0s
    stog.msg[0s] = "* Doge seems too dangerous&  to pet..^1.&* For now./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000C6C
0x000C60:
    self.halt = 0s
0x000C6C:
    popenv 0x000C60
0x000C70:
    global.heard = 1s
0x000C7C:
    if !(== global.myfight 4s) goto 0x000CD8
0x000C90:
    if !(== global.mercyuse 0s) goto 0x000CD8
0x000CA4:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000CD8
0x000CCC:
    call (instance_destroy[]:int32 )
0x000CD8:
    exit
