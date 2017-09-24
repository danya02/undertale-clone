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
    if !(== (int32 self.myself):hurtanim 2s) goto 0x0002C4
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
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000294
0x000224:
    stog.hurtanim[(int32 self.myself)] = 0s
    self.sprite_index = 186s
    if !(> self.mercymod 0s) goto 0x00026C
0x000260:
    self.sprite_index = 188s
0x00026C:
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x0002C4
0x000294:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x0002C4:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000394
0x0002E8:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x00035C
0x000348:
    stog.alarm[2s] = 30s
0x00035C:
    popenv 0x000348
0x000360:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000394:
    if !(== global.mnfight 2s) goto 0x0006B0
0x0003A8:
    if !(== self.attacked 0s) goto 0x0006B0
0x0003BC:
    global.turntimer = 110s
    global.firingrate = 6s
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 3s) goto 0x000424
0x000418:
    self.mycommand = 99s
0x000424:
    if !(< self.mercymod 0s) goto 0x0004FC
0x000438:
    if !(< self.mycommand 5s) goto 0x000498
0x00044C:
    global.firingrate = 15s
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 1s
    stog.bullettype* = (int32 self.gen)
0x000498:
    if !(>= self.mycommand 5s) goto 0x0004F8
0x0004AC:
    global.firingrate = 7s
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 4s
    stog.bullettype* = (int32 self.gen)
0x0004F8:
    goto 0x000524
0x0004FC:
    self.gen = (instance_create[]:int32 (var 626s) (var 0s) (var 0s))
0x000524:
    push self.myself
    stog.myself* = (int32 self.gen)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x000598
0x000580:
    stog.msg[0s] = "* Migosp skitters around."
0x000598:
    if !(>= self.mycommand 30s) goto 0x0005C4
0x0005AC:
    stog.msg[0s] = "* Migosp is knitting its brow."
0x0005C4:
    if !(>= self.mycommand 70s) goto 0x0005F0
0x0005D8:
    stog.msg[0s] = "* Migosp is whispering to the&  others."
0x0005F0:
    if !(>= self.mycommand 90s) goto 0x00061C
0x000604:
    stog.msg[0s] = "* It's starting to smell like&  a roach motel."
0x00061C:
    if !(> self.mercymod 0s) goto 0x000648
0x000630:
    stog.msg[0s] = "* Migosp doesn't have a care&  in the world."
0x000648:
    push -5s
    push (int32 self.myself):monsterhp
    if !(< -5s (/ (int32 self.myself):monstermaxhp (double 3s))) goto 0x0006A4
0x00068C:
    stog.msg[0s] = "* Migosp refuses to give&  up."
0x0006A4:
    self.attacked = 1s
0x0006B0:
    if !(== global.myfight 2s) goto 0x0007D4
0x0006C4:
    if !(!= self.whatiheard -1s) goto 0x0007D4
0x0006D8:
    if !(== global.heard 0s) goto 0x0007D4
0x0006EC:
    if !(== self.whatiheard 0s) goto 0x000788
0x000700:
    global.msc = 0s
    stog.msg[0s] = "* MIGOSP - ATK 7 DEF 5&* It seems evil^1, but it's&  just with the wrong crowd.../^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000784
0x000778:
    self.halt = 0s
0x000784:
    popenv 0x000778
0x000788:
    if !(== self.whatiheard 3s) goto 0x0007C8
0x00079C:
    stog.flag[135s] = 1s
    global.myfight = 0s
    global.mnfight = 1s
0x0007C8:
    global.heard = 1s
0x0007D4:
    if !(== global.myfight 4s) goto 0x000830
0x0007E8:
    if !(== global.mercyuse 0s) goto 0x000830
0x0007FC:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000830
0x000824:
    call (instance_destroy[]:int32 )
0x000830:
    exit
