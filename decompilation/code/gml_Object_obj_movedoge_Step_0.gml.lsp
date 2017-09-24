0x000000:
    if !(== global.mnfight 3s) goto 0x0000BC
0x000014:
    stog.msg[0s] = "* Doggo can't seem to&  find anything."
    if !(== self.excited 1s) goto 0x000058
0x000040:
    stog.msg[0s] = "* Doggo is confirming the moving&  object."
0x000058:
    if !(> self.mercymod 100s) goto 0x000084
0x00006C:
    stog.msg[0s] = "* Doggo loves fetch!!!"
0x000084:
    if !(> self.mercymod 300s) goto 0x0000B0
0x000098:
    stog.msg[0s] = "* Doggo has been pet."
0x0000B0:
    self.attacked = 0s
0x0000BC:
    push -1s
    if !(> 5s:alarm 0s) goto 0x000264
0x0000D8:
    push -5s
    if !(== 0s:monster 1s) goto 0x00015C
0x0000F4:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x00015C
0x00012C:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x00015C:
    push -5s
    if !(== 1s:monster 1s) goto 0x0001E0
0x000178:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0001E0
0x0001B0:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0001E0:
    push -5s
    if !(== 2s:monster 1s) goto 0x000264
0x0001FC:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000264
0x000234:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000264:
    if !(== global.mnfight 1s) goto 0x0002CC
0x000278:
    if !(== self.talked 0s) goto 0x0002CC
0x00028C:
    stog.alarm[5s] = 110s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x0002CC:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x000358
0x0002E4:
    push -1s
    if !(> 5s:alarm 5s) goto 0x00033C
0x000300:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x00033C
0x000320:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x000340
0x00033C:
    push 0s
0x000340:
    if !pop goto 0x000358
0x000344:
    stog.alarm[5s] = 2s
0x000358:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x0003BC
0x00037C:
    self.shudder = 16s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x0003BC:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000570
0x0003E0:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x000434
0x000420:
    stog.alarm[2s] = 15s
0x000434:
    popenv 0x000420
0x000438:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000540
0x00045C:
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    self.mypart2 = (instance_create[]:int32 self.part2 self.y self.x)
    self.mypart3 = (instance_create[]:int32 self.part3 self.y self.x)
    self.mypart4 = (instance_create[]:int32 self.part4 self.y self.x)
    stog.hurtanim[(int32 self.myself)] = 0s
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000570
0x000540:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000570:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000640
0x000594:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000608
0x0005F4:
    stog.alarm[2s] = 30s
0x000608:
    popenv 0x0005F4
0x00060C:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000640:
    if !(== global.mnfight 2s) goto 0x000840
0x000654:
    if !(== self.attacked 0s) goto 0x000840
0x000668:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 120s
    global.firingrate = 15s
    if !(== self.pop 3s) goto 0x0006C4
0x0006A4:
    global.firingrate = (* global.firingrate 2.4d)
0x0006C4:
    if !(== self.pop 2s) goto 0x0006F8
0x0006D8:
    global.firingrate = (* global.firingrate 1.7d)
0x0006F8:
    if !(>= self.mycommand 0s) goto 0x000728
0x00070C:
    push (<= self.mycommand 99.9d)
    goto 0x00072C
0x000728:
    push 0s
0x00072C:
    if !pop goto 0x0007C0
0x000730:
    global.firingrate = 13s
    push (var 655s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 45s) -5s (- 1s:idealborder 50s))
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    global.border = 8s
    goto 0x000818
0x0007C0:
    global.firingrate = (+ global.firingrate 10s)
    self.gen = (instance_create[]:int32 (var 712s) self.y self.x)
    push 0s
    stog.bullettype* = (int32 self.gen)
0x000818:
    push self.myself
    stog.myself* = (int32 self.gen)
    self.attacked = 1s
0x000840:
    if !(== global.myfight 2s) goto 0x000AC8
0x000854:
    if !(!= self.whatiheard -1s) goto 0x000AC8
0x000868:
    if !(== global.heard 0s) goto 0x000AC8
0x00087C:
    if !(== self.whatiheard 0s) goto 0x000918
0x000890:
    global.msc = 0s
    stog.msg[0s] = "* DOGGO - ATK 13 DEF 7&* Easily excited by movement.&* Hobbies include^1: squirrels./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000914
0x000908:
    self.halt = 0s
0x000914:
    popenv 0x000908
0x000918:
    if !(== self.whatiheard 3s) goto 0x000ABC
0x00092C:
    global.msc = 0s
    stog.msg[0s] = "* Doggo is too suspicious of&  your movements./^"
    if !(== self.excited 0s) goto 0x000A58
0x000964:
    stog.msg[0s] = "* You pet Doggo./^"
    stog.msg[1s] = "* You pet Doggo./^"
    stog.flag[139s] = 1s
    self.mercymod = 1000s
    if !(< self.pets 4s) goto 0x000A18
0x0009C8:
    self.pets = (+ self.pets 1s)
    push 1s
    stog.excited* = (int32 self.mypart1)
    push 999s
    push (int32 self.mypart1)
    stog.alarm[] = 0s
    goto 0x000A58
0x000A18:
    push 0s
    stog.excited* = (int32 self.mypart1)
    push 3s
    push (int32 self.mypart1)
    stog.alarm[] = 0s
    self.excited = 0s
0x000A58:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000AB8
0x000AAC:
    self.halt = 0s
0x000AB8:
    popenv 0x000AAC
0x000ABC:
    global.heard = 1s
0x000AC8:
    if !(== global.myfight 4s) goto 0x000B24
0x000ADC:
    if !(== global.mercyuse 0s) goto 0x000B24
0x000AF0:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000B24
0x000B18:
    call (instance_destroy[]:int32 )
0x000B24:
    if !(== self.mercymod 222s) goto 0x000B54
0x000B38:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000B58
0x000B54:
    push 0s
0x000B58:
    if !pop goto 0x000B90
0x000B5C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000B90
0x000B84:
    call (instance_destroy[]:int32 )
0x000B90:
    exit
