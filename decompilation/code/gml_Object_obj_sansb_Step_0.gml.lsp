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
    stog.alarm[5s] = 15s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000230:
    if !(== self.talked 1s) goto 0x00025C
0x000244:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000260
0x00025C:
    push 0s
0x000260:
    if !pop goto 0x0002A0
0x000264:
    call (scr_textskip[]:int32 )
    push -1s
    if !(<= 5s:alarm 3s) goto 0x0002A0
0x00028C:
    stog.alarm[5s] = 3s
0x0002A0:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000304
0x0002C4:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000304:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x00039C
0x000328:
    pushenv (int32 self.dmgwriter) 0x00034C
0x000338:
    stog.alarm[2s] = 15s
0x00034C:
    popenv 0x000338
0x000350:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
0x00039C:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x00046C
0x0003C0:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000434
0x000420:
    stog.alarm[2s] = 30s
0x000434:
    popenv 0x000420
0x000438:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x00046C:
    if !(== global.mnfight 2s) goto 0x000494
0x000480:
    push (== self.normalfight 1s)
    goto 0x000498
0x000494:
    push 0s
0x000498:
    if !pop goto 0x00148C
0x00049C:
    if !(== self.attacked 0s) goto 0x00142C
0x0004B0:
    stog.flag[271s] = 1s
    if !(< global.sp 5s) goto 0x0004E4
0x0004D8:
    global.sp = 5s
0x0004E4:
    global.turntimer = 10s
    self.timer_on = 1s
    if !(== self.mercy_death 0s) goto 0x001010
0x000510:
    if !(< self.hit_try 13s) goto 0x000A00
0x000524:
    [obj_heart].movement = 2s
    [obj_heart].sprite_index = 40s
    if !(== self.part 0s) goto 0x00057C
0x000550:
    pushenv 517s 0x000578
0x000558:
    self.a_type = 0s
    call (event_user[]:int32 (var 0s))
0x000578:
    popenv 0x000558
0x00057C:
    if !(== self.part 1s) goto 0x0005BC
0x000590:
    pushenv 517s 0x0005B8
0x000598:
    self.a_type = 3s
    call (event_user[]:int32 (var 0s))
0x0005B8:
    popenv 0x000598
0x0005BC:
    if !(== self.part 2s) goto 0x0005FC
0x0005D0:
    pushenv 517s 0x0005F8
0x0005D8:
    self.a_type = 23s
    call (event_user[]:int32 (var 0s))
0x0005F8:
    popenv 0x0005D8
0x0005FC:
    if !(== self.part 3s) goto 0x00063C
0x000610:
    pushenv 517s 0x000638
0x000618:
    self.a_type = 6s
    call (event_user[]:int32 (var 0s))
0x000638:
    popenv 0x000618
0x00063C:
    if !(== self.part 4s) goto 0x00067C
0x000650:
    pushenv 517s 0x000678
0x000658:
    self.a_type = 7s
    call (event_user[]:int32 (var 0s))
0x000678:
    popenv 0x000658
0x00067C:
    if !(== self.part 5s) goto 0x0006BC
0x000690:
    pushenv 517s 0x0006B8
0x000698:
    self.a_type = 8s
    call (event_user[]:int32 (var 0s))
0x0006B8:
    popenv 0x000698
0x0006BC:
    if !(== self.part 6s) goto 0x0006FC
0x0006D0:
    pushenv 517s 0x0006F8
0x0006D8:
    self.a_type = 17s
    call (event_user[]:int32 (var 0s))
0x0006F8:
    popenv 0x0006D8
0x0006FC:
    if !(== self.part 7s) goto 0x00073C
0x000710:
    pushenv 517s 0x000738
0x000718:
    self.a_type = 15s
    call (event_user[]:int32 (var 0s))
0x000738:
    popenv 0x000718
0x00073C:
    if !(== self.part 8s) goto 0x00077C
0x000750:
    pushenv 517s 0x000778
0x000758:
    self.a_type = 18s
    call (event_user[]:int32 (var 0s))
0x000778:
    popenv 0x000758
0x00077C:
    if !(== self.part 9s) goto 0x0007BC
0x000790:
    pushenv 517s 0x0007B8
0x000798:
    self.a_type = 1s
    call (event_user[]:int32 (var 0s))
0x0007B8:
    popenv 0x000798
0x0007BC:
    if !(== self.part 10s) goto 0x0007FC
0x0007D0:
    pushenv 517s 0x0007F8
0x0007D8:
    self.a_type = 5s
    call (event_user[]:int32 (var 0s))
0x0007F8:
    popenv 0x0007D8
0x0007FC:
    if !(== self.part 11s) goto 0x00083C
0x000810:
    pushenv 517s 0x000838
0x000818:
    self.a_type = 21s
    call (event_user[]:int32 (var 0s))
0x000838:
    popenv 0x000818
0x00083C:
    if !(== self.part 12s) goto 0x00087C
0x000850:
    pushenv 517s 0x000878
0x000858:
    self.a_type = 16s
    call (event_user[]:int32 (var 0s))
0x000878:
    popenv 0x000858
0x00087C:
    if !(>= self.part 13s) goto 0x0009C0
0x000890:
    self.b_choose = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    if !(== self.b_choose 0s) goto 0x000900
0x0008D4:
    pushenv 517s 0x0008FC
0x0008DC:
    self.a_type = 1s
    call (event_user[]:int32 (var 0s))
0x0008FC:
    popenv 0x0008DC
0x000900:
    if !(== self.b_choose 1s) goto 0x000940
0x000914:
    pushenv 517s 0x00093C
0x00091C:
    self.a_type = 5s
    call (event_user[]:int32 (var 0s))
0x00093C:
    popenv 0x00091C
0x000940:
    if !(== self.b_choose 2s) goto 0x000980
0x000954:
    pushenv 517s 0x00097C
0x00095C:
    self.a_type = 21s
    call (event_user[]:int32 (var 0s))
0x00097C:
    popenv 0x00095C
0x000980:
    if !(== self.b_choose 3s) goto 0x0009C0
0x000994:
    pushenv 517s 0x0009BC
0x00099C:
    self.a_type = 16s
    call (event_user[]:int32 (var 0s))
0x0009BC:
    popenv 0x00099C
0x0009C0:
    if !(== global.border 39s) goto 0x000A00
0x0009D4:
    push -5s
    [obj_heart].y = (- 3s:idealborder 70s)
    [obj_heart].vspeed = 2s
0x000A00:
    if !(>= self.hit_try 14s) goto 0x000A3C
0x000A14:
    if !(< self.hit_try 23s) goto 0x000A3C
0x000A28:
    push (== self.nx 1s)
    goto 0x000A40
0x000A3C:
    push 0s
0x000A40:
    if !pop goto 0x000E5C
0x000A44:
    global.turntimer = 20s
    self.timer_on = 0s
    [obj_heart].movement = 1s
    [obj_heart].sprite_index = 34s
    if !(== self.part 0s) goto 0x000AC0
0x000A88:
    pushenv 517s 0x000AB0
0x000A90:
    self.a_type = 12s
    call (event_user[]:int32 (var 0s))
0x000AB0:
    popenv 0x000A90
0x000AB4:
    self.timer_on = 1s
0x000AC0:
    if !(== self.part 1s) goto 0x000B2C
0x000AD4:
    self.shadow = (instance_create[]:int32 (var 511s) (var 0s) (var 0s))
    push 1s
    stog.level* = (int32 self.shadow)
    push 5s
    stog.shadow_max* = (int32 self.shadow)
0x000B2C:
    if !(== self.part 2s) goto 0x000B70
0x000B40:
    pushenv 517s 0x000B6C
0x000B48:
    self.smasher = 1s
    self.smashlv = 0s
    self.smashcon = 0s
0x000B6C:
    popenv 0x000B48
0x000B70:
    if !(== self.part 3s) goto 0x000BB4
0x000B84:
    pushenv 517s 0x000BB0
0x000B8C:
    self.smasher = 1s
    self.smashlv = 1s
    self.smashcon = 0s
0x000BB0:
    popenv 0x000B8C
0x000BB4:
    if !(== self.part 4s) goto 0x000C00
0x000BC8:
    pushenv 517s 0x000BF0
0x000BD0:
    self.a_type = 13s
    call (event_user[]:int32 (var 0s))
0x000BF0:
    popenv 0x000BD0
0x000BF4:
    self.timer_on = 1s
0x000C00:
    if !(== self.part 5s) goto 0x000C4C
0x000C14:
    pushenv 517s 0x000C3C
0x000C1C:
    self.a_type = 22s
    call (event_user[]:int32 (var 0s))
0x000C3C:
    popenv 0x000C1C
0x000C40:
    self.timer_on = 1s
0x000C4C:
    if !(== self.part 6s) goto 0x000CE0
0x000C60:
    self.shadow = (instance_create[]:int32 (var 511s) (var 0s) (var 0s))
    pushenv (int32 self.shadow) 0x000CAC
0x000C98:
    stog.alarm[0s] = 4s
0x000CAC:
    popenv 0x000C98
0x000CB0:
    push 2s
    stog.level* = (int32 self.shadow)
    push 6s
    stog.shadow_max* = (int32 self.shadow)
0x000CE0:
    if !(== self.part 7s) goto 0x000D24
0x000CF4:
    pushenv 517s 0x000D20
0x000CFC:
    self.smasher = 1s
    self.smashlv = 2s
    self.smashcon = 0s
0x000D20:
    popenv 0x000CFC
0x000D24:
    if !(>= self.part 8s) goto 0x000E5C
0x000D38:
    if !(== self.c_choose 1s) goto 0x000D7C
0x000D4C:
    pushenv 517s 0x000D78
0x000D54:
    self.smasher = 1s
    self.smashlv = 2s
    self.smashcon = 0s
0x000D78:
    popenv 0x000D54
0x000D7C:
    if !(== self.c_choose 2s) goto 0x000E10
0x000D90:
    self.shadow = (instance_create[]:int32 (var 511s) (var 0s) (var 0s))
    pushenv (int32 self.shadow) 0x000DDC
0x000DC8:
    stog.alarm[0s] = 4s
0x000DDC:
    popenv 0x000DC8
0x000DE0:
    push 2s
    stog.level* = (int32 self.shadow)
    push 6s
    stog.shadow_max* = (int32 self.shadow)
0x000E10:
    if !(== self.c_choose 3s) goto 0x000E5C
0x000E24:
    pushenv 517s 0x000E4C
0x000E2C:
    self.a_type = 13s
    call (event_user[]:int32 (var 0s))
0x000E4C:
    popenv 0x000E2C
0x000E50:
    self.timer_on = 1s
0x000E5C:
    if !(== self.hit_try 23s) goto 0x000F40
0x000E70:
    global.border = -1s
    pushenv 517s 0x000E90
0x000E84:
    self.lac = 4s
0x000E90:
    popenv 0x000E84
0x000E94:
    pushenv 757s 0x000EA8
0x000E9C:
    self.instaborder = 1s
0x000EA8:
    popenv 0x000E9C
0x000EAC:
    self.timer_on = 0s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s)))
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x000F40:
    if !(== self.hit_try 14s) goto 0x000F68
0x000F54:
    push (== self.nx 0s)
    goto 0x000F6C
0x000F68:
    push 0s
0x000F6C:
    if !pop goto 0x00100C
0x000F70:
    self.nx = 1s
    self.mercymod = -10000s
    call (caster_resume[]:int32 global.batmusic)
    self.part = -1s
    self.shadow = (instance_create[]:int32 (var 511s) (var 0s) (var 0s))
    push 0s
    stog.level* = (int32 self.shadow)
    push 5s
    stog.shadow_max* = (int32 self.shadow)
    self.timer_on = 0s
0x00100C:
    goto 0x001100
0x001010:
    self.mercymod = -999999
    self.timer_on = 0s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
    [obj_heart].sprite_index = 34s
    [obj_heart].movement = 1s
    pushenv 517s 0x0010FC
0x0010DC:
    self.a_type = 20s
    call (event_user[]:int32 (var 0s))
0x0010FC:
    popenv 0x0010DC
0x001100:
    self.turns = (+ self.turns 1s)
    self.part = (+ self.part 1s)
    if !(< self.hit_try 4s) goto 0x001170
0x001144:
    if !(>= self.mycommand 0s) goto 0x001170
0x001158:
    stog.msg[0s] = "* Just keep attacking."
0x001170:
    if !(>= self.hit_try 4s) goto 0x0011B0
0x001184:
    if !(>= self.mycommand 0s) goto 0x0011B0
0x001198:
    stog.msg[0s] = "* Sans's movements grow a&  little wearier."
0x0011B0:
    if !(>= self.hit_try 8s) goto 0x0011F0
0x0011C4:
    if !(>= self.mycommand 0s) goto 0x0011F0
0x0011D8:
    stog.msg[0s] = "* Sans's movements seem to be&  slower."
0x0011F0:
    if !(>= self.hit_try 13s) goto 0x001230
0x001204:
    if !(>= self.mycommand 0s) goto 0x001230
0x001218:
    stog.msg[0s] = "* Felt like a turning point."
0x001230:
    if !(>= global.km 0s) goto 0x00125C
0x001244:
    stog.msg[0s] = "* You felt your sins crawling&  on your back."
0x00125C:
    if !(>= global.km 10s) goto 0x001288
0x001270:
    stog.msg[0s] = "* You felt your sins weighing&  on your neck."
0x001288:
    if !(>= global.km 20s) goto 0x0012B4
0x00129C:
    stog.msg[0s] = "* KARMA coursing through your&  veins."
0x0012B4:
    if !(>= global.km 30s) goto 0x0012E0
0x0012C8:
    stog.msg[0s] = "* Doomed to death of KARMA!"
0x0012E0:
    if !(== self.hit_try 15s) goto 0x001320
0x0012F4:
    if !(>= self.mycommand 0s) goto 0x001320
0x001308:
    stog.msg[0s] = "* The REAL battle finally begins."
0x001320:
    if !(>= self.hit_try 19s) goto 0x001360
0x001334:
    if !(>= self.mycommand 0s) goto 0x001360
0x001348:
    stog.msg[0s] = "* Reading this doesn't seem&  like the best use of time."
0x001360:
    if !(>= self.hit_try 20s) goto 0x0013A0
0x001374:
    if !(>= self.mycommand 0s) goto 0x0013A0
0x001388:
    stog.msg[0s] = "* Sans is starting to look&  really tired."
0x0013A0:
    if !(>= self.hit_try 21s) goto 0x0013E0
0x0013B4:
    if !(>= self.mycommand 0s) goto 0x0013E0
0x0013C8:
    stog.msg[0s] = "* Sans is preparing something."
0x0013E0:
    if !(>= self.hit_try 22s) goto 0x001420
0x0013F4:
    if !(>= self.mycommand 0s) goto 0x001420
0x001408:
    stog.msg[0s] = "* Sans is getting ready to&  use his special attack."
0x001420:
    self.attacked = 1s
0x00142C:
    if !(== self.mercymod 999999) goto 0x001480
0x001444:
    [obj_heart].speed = 0s
    stog.msg[0s] = "* Sans is sparing you."
    global.turntimer = -1s
    global.mnfight = 3s
0x001480:
    self.whatiheard = -1s
0x00148C:
    if !(== global.myfight 2s) goto 0x0015C4
0x0014A0:
    if !(!= self.whatiheard -1s) goto 0x0015C4
0x0014B4:
    if !(== global.heard 0s) goto 0x0015C4
0x0014C8:
    if !(== self.whatiheard 0s) goto 0x0015B8
0x0014DC:
    global.msc = 0s
    if !(> self.hit_try 0s) goto 0x001530
0x0014FC:
    stog.msg[0s] = "* SANS 1 ATK 1 DEF&* The easiest enemy^1.&* Can only deal 1 damage./"
    stog.msg[1s] = "* Can't keep dodging forever^1.&* Keep attacking./^"
    goto 0x001548
0x001530:
    stog.msg[0s] = "* SANS 1 ATK 1 DEF&* The easiest enemy^1.&* Can only deal 1 damage./^"
0x001548:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0015A8
0x00159C:
    self.halt = 0s
0x0015A8:
    popenv 0x00159C
0x0015AC:
    self.whatiheard = 9s
0x0015B8:
    global.heard = 1s
0x0015C4:
    if !(== global.myfight 4s) goto 0x001620
0x0015D8:
    if !(== global.mercyuse 0s) goto 0x001620
0x0015EC:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001620
0x001614:
    self.mercy_death = 1s
0x001620:
    if !(== self.mercymod 222s) goto 0x001650
0x001634:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001654
0x001650:
    push 0s
0x001654:
    if !pop goto 0x00168C
0x001658:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x00168C
0x001680:
    self.mercy_death = 1s
0x00168C:
    if !(== self.con 1s) goto 0x0016B4
0x0016A0:
    push (== self.skip 0s)
    goto 0x0016B8
0x0016B4:
    push 0s
0x0016B8:
    if !pop goto 0x001704
0x0016BC:
    pushenv 782s 0x0016D0
0x0016C4:
    call (instance_destroy[]:int32 )
0x0016D0:
    popenv 0x0016C4
0x0016D4:
    global.mnfight = 99s
    global.myfight = 99s
    [obj_heart].visible = 0s
    global.sp = 5s
0x001704:
    if !(== self.con 1s) goto 0x00172C
0x001718:
    push (== self.skip 1s)
    goto 0x001730
0x00172C:
    push 0s
0x001730:
    if !pop goto 0x0017C4
0x001734:
    global.mnfight = 99s
    global.myfight = 99s
    call (caster_loop[]:int32 (var 0.95d) (var 0.9d) global.batmusic)
    global.sp = 5s
    pushenv 782s 0x0017A0
0x001794:
    call (instance_destroy[]:int32 )
0x0017A0:
    popenv 0x001794
0x0017A4:
    pushenv (int32 self.mypart1) 0x0017C0
0x0017B4:
    self.fac = 20s
0x0017C0:
    popenv 0x0017B4
0x0017C4:
    if !(== self.con 2s) goto 0x0018D8
0x0017D8:
    global.msc = 0s
    global.typer = 107s
    stog.msg[0s] = "it's a beautiful&day outside./"
    stog.msg[1s] = "birds are singing^1,&flowers are&blooming.../"
    stog.msg[2s] = "on days like these^1,&kids like you.../%%"
    if !(== self.intro 1s) goto 0x00187C
0x00184C:
    stog.msg[0s] = "it's a beautiful&day outside./"
    stog.msg[1s] = "birds are singing^1,%%"
0x00187C:
    if !(>= self.intro 2s) goto 0x0018A8
0x001890:
    stog.msg[0s] = "ready?/%%"
0x0018A8:
    self.con = 3s
    call (scr_blcon_x[]:int32 self.y (+ self.x 120s))
0x0018D8:
    if !(== self.con 3s) goto 0x001908
0x0018EC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00190C
0x001908:
    push 0s
0x00190C:
    if !pop goto 0x001958
0x001910:
    self.con = 5s
    stog.alarm[4s] = 10s
    if !(>= self.intro 1s) goto 0x001958
0x001944:
    stog.alarm[4s] = 2s
0x001958:
    if !(== self.con 6s) goto 0x001B0C
0x00196C:
    call (caster_stop[]:int32 self.birdnoise)
    call (snd_play[]:int32 (var 106s))
    self.blk = (scr_marker[]:int32 (var 996s) (var -10s) (var -10s))
    push 999s
    stog.image_xscale* = (int32 self.blk)
    push 999s
    stog.image_yscale* = (int32 self.blk)
    push -9999s
    stog.depth* = (int32 self.blk)
    global.bmenuno = 999s
    pushenv 757s 0x001A24
0x001A18:
    self.instaborder = 1s
0x001A24:
    popenv 0x001A18
0x001A28:
    global.border = -1s
    stog.idealborder[0s] = 240s
    stog.idealborder[1s] = 400s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 160s)
    push -5s
    [obj_heart].x = (+ 0s:idealborder 75s)
    push -5s
    [obj_heart].y = (+ 2s:idealborder 75s)
    self.con = 7s
    stog.alarm[4s] = 8s
    if !(>= self.intro 1s) goto 0x001B0C
0x001AF8:
    stog.alarm[4s] = 2s
0x001B0C:
    if !(== self.con 8s) goto 0x001C04
0x001B20:
    global.faceemotion = 5s
    stog.flag[271s] = 1s
    [obj_heart].visible = 1s
    pushenv (int32 self.blk) 0x001B68
0x001B5C:
    call (instance_destroy[]:int32 )
0x001B68:
    popenv 0x001B5C
0x001B6C:
    call (snd_play[]:int32 (var 106s))
    self.normalfight = 0s
    global.myfight = -1s
    global.mnfight = 2s
    self.con = 9s
    [obj_borderparent].visible = 1s
    stog.alarm[4s] = 20s
    if !(>= self.intro 1s) goto 0x001C04
0x001BE4:
    self.con = 11s
    stog.alarm[4s] = -1s
0x001C04:
    if !(== self.con 10s) goto 0x001C8C
0x001C18:
    global.typer = 108s
    stog.msg[0s] = "Should&be&burning&in hell./%%"
    self.con = 11s
    call (scr_blcon_x[]:int32 (- self.y 30s) (+ self.x 120s))
    push 18s
    stog.sprite_index* = (int32 self.blcon)
0x001C8C:
    if !(== self.con 11s) goto 0x001CBC
0x001CA0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001CC0
0x001CBC:
    push 0s
0x001CC0:
    if !pop goto 0x001CE8
0x001CC4:
    pushenv 517s 0x001CD8
0x001CCC:
    self.fac = 1s
0x001CD8:
    popenv 0x001CCC
0x001CDC:
    self.con = 12s
0x001CE8:
    if !(== self.p_cut 1s) goto 0x001D78
0x001CFC:
    call (caster_stop[]:int32 self.cutsfx)
    call (caster_play[]:int32 (var 1.4d) (var 0.8d) self.cutsfx)
    call (snd_stop[]:int32 (var 20s))
    call (snd_play[]:int32 (var 20s))
    self.p_cut = 0s
0x001D78:
    if !(== self.p_power 1s) goto 0x001E3C
0x001D8C:
    self.dopower = 0s
    if !(== global.osflavor 2s) goto 0x001DC0
0x001DAC:
    push (>= self.hit_try 23s)
    goto 0x001DC4
0x001DC0:
    push 0s
0x001DC4:
    if !pop goto 0x001DD4
0x001DC8:
    self.dopower = 1s
0x001DD4:
    if !(== self.dopower 0s) goto 0x001E30
0x001DE8:
    call (caster_stop[]:int32 self.beam_up_sfx)
    call (caster_play[]:int32 (var 1.2d) (var 0.8d) self.beam_up_sfx)
0x001E30:
    self.p_power = 0s
0x001E3C:
    if !(== self.p_beam 1s) goto 0x001F00
0x001E50:
    call (caster_stop[]:int32 self.beamsfx)
    call (caster_play[]:int32 (var 1.2d) (var 0.8d) self.beamsfx)
    if !(== global.osflavor 1s) goto 0x001EC0
0x001EAC:
    call (caster_stop[]:int32 self.beamsfx_a)
0x001EC0:
    call (caster_play[]:int32 (var 1.2d) (var 0.6d) self.beamsfx_a)
    self.p_beam = 0s
0x001F00:
    if !(== self.timer_on 1s) goto 0x002090
0x001F14:
    if !(<= global.turntimer 0s) goto 0x002090
0x001F28:
    if !(>= self.hit_try 15s) goto 0x001F50
0x001F3C:
    push (< self.hit_try 23s)
    goto 0x001F54
0x001F50:
    push 0s
0x001F54:
    if !pop goto 0x001F7C
0x001F58:
    call (instance_create[]:int32 (var 510s) (var 0s) (var 0s))
0x001F7C:
    global.mnfight = 3s
    global.movement = 0s
    self.timer_on = 0s
    pushenv 502s 0x001FB4
0x001FA8:
    call (instance_destroy[]:int32 )
0x001FB4:
    popenv 0x001FA8
0x001FB8:
    pushenv 512s 0x001FCC
0x001FC0:
    call (instance_destroy[]:int32 )
0x001FCC:
    popenv 0x001FC0
0x001FD0:
    pushenv 500s 0x001FE4
0x001FD8:
    call (instance_destroy[]:int32 )
0x001FE4:
    popenv 0x001FD8
0x001FE8:
    pushenv 501s 0x001FFC
0x001FF0:
    call (instance_destroy[]:int32 )
0x001FFC:
    popenv 0x001FF0
0x002000:
    pushenv 515s 0x002014
0x002008:
    call (instance_destroy[]:int32 )
0x002014:
    popenv 0x002008
0x002018:
    pushenv 499s 0x00202C
0x002020:
    call (instance_destroy[]:int32 )
0x00202C:
    popenv 0x002020
0x002030:
    pushenv 498s 0x002044
0x002038:
    call (instance_destroy[]:int32 )
0x002044:
    popenv 0x002038
0x002048:
    pushenv 503s 0x00205C
0x002050:
    call (instance_destroy[]:int32 )
0x00205C:
    popenv 0x002050
0x002060:
    pushenv 518s 0x002074
0x002068:
    call (instance_destroy[]:int32 )
0x002074:
    popenv 0x002068
0x002078:
    pushenv 514s 0x00208C
0x002080:
    call (instance_destroy[]:int32 )
0x00208C:
    popenv 0x002080
0x002090:
    if !(== self.drama 1s) goto 0x00212C
0x0020A4:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x00212C
0x0020BC:
    if !(== 782.stringno 2s) goto 0x00212C
0x0020D0:
    self.d_music = (caster_load[]:int32 (var "music/chokedup.ogg"))
    call (caster_loop[]:int32 (var 0.9d) (var 0.8d) self.d_music)
    self.drama = 2s
0x00212C:
    if !(== global.debug 1s) goto 0x002158
0x002140:
    push (bool (keyboard_check_pressed[]:int32 (var 81s)))
    goto 0x00215C
0x002158:
    push 0s
0x00215C:
    if !pop goto 0x00218C
0x002160:
    if !(< self.hit_try 12s) goto 0x00218C
0x002174:
    self.hit_try = 12s
    self.hit_reached = 11s
0x00218C:
    if !(== global.debug 1s) goto 0x0021B8
0x0021A0:
    push (bool (keyboard_check_pressed[]:int32 (var 69s)))
    goto 0x0021BC
0x0021B8:
    push 0s
0x0021BC:
    if !pop goto 0x0021EC
0x0021C0:
    if !(< self.hit_try 22s) goto 0x0021EC
0x0021D4:
    self.hit_try = 22s
    self.hit_reached = 21s
0x0021EC:
    exit
