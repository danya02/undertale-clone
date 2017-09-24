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
    if !(== (int32 self.myself):hurtanim 2s) goto 0x0002A4
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
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000274
0x000224:
    stog.hurtanim[(int32 self.myself)] = 0s
    self.sprite_index = 189s
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x0002A4
0x000274:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x0002A4:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000374
0x0002C8:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x00033C
0x000328:
    stog.alarm[2s] = 30s
0x00033C:
    popenv 0x000328
0x000340:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000374:
    if !(== global.mnfight 2s) goto 0x0008AC
0x000388:
    if !(== self.attacked 0s) goto 0x0008AC
0x00039C:
    global.turntimer = 110s
    global.firingrate = 4s
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 3s) goto 0x000404
0x0003F8:
    self.mycommand = 2s
0x000404:
    if !(< self.mycommand 50s) goto 0x00057C
0x000418:
    global.firingrate = 13s
    if !(< self.mercymod 0s) goto 0x000450
0x000438:
    global.firingrate = (- global.firingrate 6s)
0x000450:
    if !(> self.mercymod 6s) goto 0x00047C
0x000464:
    global.firingrate = (+ global.firingrate 5s)
0x00047C:
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(> (+ -5s 2s:monster) 1s) goto 0x0004E0
0x0004C0:
    global.firingrate = (* global.firingrate 1.5d)
0x0004E0:
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 3s) goto 0x00053C
0x000524:
    global.firingrate = (* global.firingrate 2s)
0x00053C:
    self.gen = (instance_create[]:int32 (var 715s) (var 0s) (var 0s))
    push 0s
    stog.bullettype* = (int32 self.gen)
0x00057C:
    if !(>= self.mycommand 50s) goto 0x0006F4
0x000590:
    global.firingrate = 15s
    if !(< self.mercymod 0s) goto 0x0005C8
0x0005B0:
    global.firingrate = (- global.firingrate 6s)
0x0005C8:
    if !(> self.mercymod 6s) goto 0x0005F4
0x0005DC:
    global.firingrate = (+ global.firingrate 5s)
0x0005F4:
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 2s) goto 0x000658
0x000638:
    global.firingrate = (* global.firingrate 1.5d)
0x000658:
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 3s) goto 0x0006B4
0x00069C:
    global.firingrate = (* global.firingrate 2s)
0x0006B4:
    self.gen = (instance_create[]:int32 (var 715s) (var 0s) (var 0s))
    push 1s
    stog.bullettype* = (int32 self.gen)
0x0006F4:
    push self.myself
    stog.myself* = (int32 self.gen)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x000768
0x000750:
    stog.msg[0s] = "* Loox is gazing at you."
0x000768:
    if !(>= self.mycommand 30s) goto 0x000794
0x00077C:
    stog.msg[0s] = "* Loox is staring right&  through you."
0x000794:
    if !(>= self.mycommand 70s) goto 0x0007C0
0x0007A8:
    stog.msg[0s] = "* Loox gnashes its teeth."
0x0007C0:
    if !(>= self.mycommand 90s) goto 0x0007EC
0x0007D4:
    stog.msg[0s] = "* Smells like eyedrops."
0x0007EC:
    if !(< self.mercymod -100s) goto 0x000818
0x000800:
    stog.msg[0s] = "* Loox has gone bloodshot."
0x000818:
    if !(> self.mercymod 100s) goto 0x000844
0x00082C:
    stog.msg[0s] = "* Loox doesn't care about&  fighting anymore."
0x000844:
    push -5s
    push (int32 self.myself):monsterhp
    if !(< -5s (/ (int32 self.myself):monstermaxhp (double 3s))) goto 0x0008A0
0x000888:
    stog.msg[0s] = "* Loox is watering."
0x0008A0:
    self.attacked = 1s
0x0008AC:
    if !(== global.myfight 2s) goto 0x000AD0
0x0008C0:
    if !(!= self.whatiheard -1s) goto 0x000AD0
0x0008D4:
    if !(== global.heard 0s) goto 0x000AD0
0x0008E8:
    if !(== self.whatiheard 0s) goto 0x000984
0x0008FC:
    global.msc = 0s
    stog.msg[0s] = "* LOOX - ATK 6 DEF 6&* Don't pick on him.&* Family name: Eyewalker/^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000980
0x000974:
    self.halt = 0s
0x000980:
    popenv 0x000974
0x000984:
    if !(== self.whatiheard 3s) goto 0x000A28
0x000998:
    if !(< self.mercymod 100s) goto 0x0009D0
0x0009AC:
    push -5s
    push (< (int32 self.myself):xpreward 20s)
    goto 0x0009D4
0x0009D0:
    push 0s
0x0009D4:
    if !pop goto 0x000A04
0x0009D8:
    push -5s
    stog.xpreward[(+ (int32 self.myself):xpreward 5s)] = (int32 self.myself)
0x000A04:
    self.mercymod = -100s
    global.myfight = 0s
    global.mnfight = 1s
0x000A28:
    if !(== self.whatiheard 1s) goto 0x000AC4
0x000A3C:
    stog.flag[133s] = 1s
    push -5s
    if !(> (int32 self.myself):xpreward 4s) goto 0x000AA0
0x000A74:
    push -5s
    stog.xpreward[(- (int32 self.myself):xpreward 2s)] = (int32 self.myself)
0x000AA0:
    self.mercymod = 100s
    global.myfight = 0s
    global.mnfight = 1s
0x000AC4:
    global.heard = 1s
0x000AD0:
    if !(== global.myfight 4s) goto 0x000B2C
0x000AE4:
    if !(== global.mercyuse 0s) goto 0x000B2C
0x000AF8:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000B2C
0x000B20:
    call (instance_destroy[]:int32 )
0x000B2C:
    exit
