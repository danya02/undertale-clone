0x000000:
    if !(== global.mnfight 4s) goto 0x000028
0x000014:
    push (== self.attacked 1s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000214
0x000030:
    if !(> self.hitno 0s) goto 0x0000CC
0x000044:
    if !(== self.hitno 1s) goto 0x000070
0x000058:
    self.rating = (+ self.rating 1s)
0x000070:
    if !(> self.hitno 1s) goto 0x00009C
0x000084:
    self.rating = (+ self.rating 2s)
0x00009C:
    if !(== self.berserk 1s) goto 0x0000C8
0x0000B0:
    self.rating = (- self.rating 1s)
0x0000C8:
    goto 0x000184
0x0000CC:
    if !(>= self.rating 10s) goto 0x0000F4
0x0000E0:
    push (> self.lesson 5s)
    goto 0x0000F8
0x0000F4:
    push 0s
0x0000F8:
    if !pop goto 0x000118
0x0000FC:
    self.rating = (- self.rating 2s)
    goto 0x000144
0x000118:
    if !(> self.rating 8s) goto 0x000144
0x00012C:
    self.rating = (- self.rating 1s)
0x000144:
    if !(== self.berserk 1s) goto 0x000184
0x000158:
    if !(> self.rating 6s) goto 0x000184
0x00016C:
    self.rating = (- self.rating 1s)
0x000184:
    self.attacked = 0s
    global.mnfight = 5s
    if !(== global.border 12s) goto 0x0001BC
0x0001B0:
    global.border = 13s
0x0001BC:
    call (SCR_BORDERSETUP[]:int32 )
    stog.alarm[7s] = 10s
    if !(bool (instance_exists[]:int32 (var 262s))) goto 0x000214
0x0001F4:
    pushenv 262s 0x000210
0x0001FC:
    call (event_user[]:int32 (var 1s))
0x000210:
    popenv 0x0001FC
0x000214:
    push -1s
    if !(> 5s:alarm 0s) goto 0x0003BC
0x000230:
    push -5s
    if !(== 0s:monster 1s) goto 0x0002B4
0x00024C:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0002B4
0x000284:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0002B4:
    push -5s
    if !(== 1s:monster 1s) goto 0x000338
0x0002D0:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000338
0x000308:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000338:
    push -5s
    if !(== 2s:monster 1s) goto 0x0003BC
0x000354:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0003BC
0x00038C:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0003BC:
    if !(== global.mnfight 1s) goto 0x000490
0x0003D0:
    if !(== self.talked 0s) goto 0x000490
0x0003E4:
    stog.alarm[5s] = 110s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
    if !(== self.order -35s) goto 0x000490
0x000438:
    global.mnfight = 99s
    global.bmenuno = 4s
    [obj_heart].x = -400s
    stog.alarm[5s] = -2s
    stog.alarm[6s] = -2s
    self.con = 60s
0x000490:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0004BC
0x0004A8:
    push (== self.uncancel 0s)
    goto 0x0004C0
0x0004BC:
    push 0s
0x0004C0:
    if !pop goto 0x000538
0x0004C4:
    push -1s
    if !(> 5s:alarm 5s) goto 0x00051C
0x0004E0:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x00051C
0x000500:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x000520
0x00051C:
    push 0s
0x000520:
    if !pop goto 0x000538
0x000524:
    stog.alarm[5s] = 2s
0x000538:
    if !(== self.uncancel 1s) goto 0x00059C
0x00054C:
    stog.alarm[5s] = 100s
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x00059C
0x00057C:
    stog.alarm[5s] = 1s
    self.uncancel = 0s
0x00059C:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000658
0x0005C0:
    self.tempdie = 0s
    self.shudder = 8s
    push -5s
    if !(< (int32 self.myself):monsterhp 1s) goto 0x000610
0x0005FC:
    push (== self.died 0s)
    goto 0x000614
0x000610:
    push 0s
0x000614:
    if !pop goto 0x000624
0x000618:
    self.shudder = 16s
0x000624:
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000658:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x00088C
0x00067C:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x0006D0
0x0006BC:
    stog.alarm[2s] = 15s
0x0006D0:
    popenv 0x0006BC
0x0006D4:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000764
0x0006F8:
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    stog.hurtanim[(int32 self.myself)] = 0s
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x00088C
0x000764:
    global.myfight = 0s
    global.mnfight = 1s
    if !(== self.died 0s) goto 0x00083C
0x000790:
    call (caster_stop[]:int32 global.batmusic)
    self.deadmusic1 = (caster_load[]:int32 (var "music/endingexcerpt1.ogg"))
    self.deadmusic2 = (caster_load[]:int32 (var "music/endingexcerpt2.ogg"))
    self.con = 50s
    [obj_heart].sprite_index = 34s
    pushenv 267s 0x000808
0x0007FC:
    self.fade = 1s
0x000808:
    popenv 0x0007FC
0x00080C:
    self.order = -40s
    self.lesson = -40s
    self.died = 1s
    global.mnfight = 99s
0x00083C:
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    stog.hurtanim[(int32 self.myself)] = 0s
    self.image_index = 0s
0x00088C:
    if !(== self.greenlock 1s) goto 0x0008B4
0x0008A0:
    push (> global.mnfight 0s)
    goto 0x0008B8
0x0008B4:
    push 0s
0x0008B8:
    if !pop goto 0x0008FC
0x0008BC:
    if !(== 743.sprite_index 39s) goto 0x0008EC
0x0008D0:
    [obj_heart].y = (+ 759.y 34s)
    goto 0x0008F8
0x0008EC:
    self.greenlock = 0s
0x0008F8:
    goto 0x000908
0x0008FC:
    self.greenlock = 0s
0x000908:
    if !(== self.darkify 1s) goto 0x0009A8
0x00091C:
    if !(< (int32 self.pseudodarker):image_alpha 0.5d) goto 0x000978
0x000944:
    stog.image_alpha* = (+ (int32 self.pseudodarker):image_alpha 0.04d)
    goto 0x000984
0x000978:
    push (int32 self.pseudodarker)
    self.darkify = 2s
0x000984:
    [obj_borderparent].image_alpha = (- 1s (int32 self.pseudodarker):image_alpha)
0x0009A8:
    if !(== self.darkify 3s) goto 0x000A7C
0x0009BC:
    if !(> (int32 self.pseudodarker):image_alpha 0s) goto 0x000A0C
0x0009DC:
    stog.image_alpha* = (- (int32 self.pseudodarker):image_alpha 0.04d)
0x000A0C:
    push (int32 self.pseudodarker)
    [obj_borderparent].image_alpha = (- 1s (int32 self.pseudodarker):image_alpha)
    if !(<= (int32 self.pseudodarker):image_alpha 0s) goto 0x000A7C
0x000A50:
    self.darkify = 0s
    pushenv (int32 self.pseudodarker) 0x000A78
0x000A6C:
    call (instance_destroy[]:int32 )
0x000A78:
    popenv 0x000A6C
0x000A7C:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000B4C
0x000AA0:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000B14
0x000B00:
    stog.alarm[2s] = 30s
0x000B14:
    popenv 0x000B00
0x000B18:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000B4C:
    if !(== global.mnfight 2s) goto 0x001380
0x000B60:
    if !(== self.attacked 0s) goto 0x001380
0x000B74:
    self.hitno = 0s
    self.xx = (/ self.room_width (double 2s))
    self.yy = (/ self.room_height (double 2s))
    global.turntimer = 200s
    global.firingrate = 15s
    if !(== 743.sprite_index 39s) goto 0x000C9C
0x000BE4:
    self.gen = (instance_create[]:int32 (var 263s) self.yy self.xx)
    push self.lesson
    stog.lesson* = (int32 self.gen)
    push self.rating
    stog.rating* = (int32 self.gen)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    pushenv (int32 self.gen) 0x000C94
0x000C80:
    call (event_user[]:int32 (var 1s))
0x000C94:
    popenv 0x000C80
0x000C98:
    goto 0x000E4C
0x000C9C:
    if !(<= self.mycommand 50s) goto 0x000D84
0x000CB0:
    call (event_user[]:int32 (var 2s))
    self.ratingb = (+ self.ratingb 1s)
    self.lesson = (- self.lesson 1s)
    if !(> self.ratingb 9s) goto 0x000D14
0x000D08:
    self.ratingb = 9s
0x000D14:
    global.firingrate = (- 19s self.ratingb)
    self.gen = (instance_create[]:int32 (var 270s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    goto 0x000E4C
0x000D84:
    self.borderspec = 1s
    self.ratingb = (+ self.ratingb 1s)
    self.lesson = (- self.lesson 1s)
    if !(> self.ratingb 9s) goto 0x000DE0
0x000DD4:
    self.ratingb = 9s
0x000DE0:
    global.firingrate = (- 23s self.ratingb)
    self.gen = (instance_create[]:int32 (var 269s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
0x000E4C:
    push self.myself
    stog.myself* = (int32 self.gen)
    push -5s
    push (int32 self.myself):monsterhp
    if !(< -5s (int32 self.myself):monstermaxhp) goto 0x000F7C
0x000EA0:
    if !(>= self.mycommand 0s) goto 0x000ECC
0x000EB4:
    stog.msg[0s] = "* The wind is howling..."
0x000ECC:
    if !(>= self.mycommand 20s) goto 0x000EF8
0x000EE0:
    stog.msg[0s] = "* Undyne flips her spear&  impatiently."
0x000EF8:
    if !(>= self.mycommand 40s) goto 0x000F24
0x000F0C:
    stog.msg[0s] = "* Flower pollen drifts in&  front of you."
0x000F24:
    if !(>= self.mycommand 60s) goto 0x000F50
0x000F38:
    stog.msg[0s] = "* Water rushes around you."
0x000F50:
    if !(>= self.mycommand 80s) goto 0x000F7C
0x000F64:
    stog.msg[0s] = "* The spears pause for a&  moment."
0x000F7C:
    push -5s
    push (int32 self.myself):monsterhp
    if !(>= -5s (/ (int32 self.myself):monstermaxhp (double 2s))) goto 0x001268
0x000FC0:
    if !(>= self.mycommand 0s) goto 0x000FEC
0x000FD4:
    stog.msg[0s] = "* Undyne points heroically&  towards the sky."
0x000FEC:
    if !(>= self.mycommand 10s) goto 0x001018
0x001000:
    stog.msg[0s] = "* Undyne flips her spear&  impatiently."
0x001018:
    if !(>= self.mycommand 20s) goto 0x001044
0x00102C:
    stog.msg[0s] = "* Undyne suplexes a huge&  boulder^1, just because&  she can."
0x001044:
    if !(>= self.mycommand 30s) goto 0x001070
0x001058:
    stog.msg[0s] = "* Undyne bounces impatiently."
0x001070:
    if !(>= self.mycommand 40s) goto 0x00109C
0x001084:
    stog.msg[0s] = "* Undyne flashes a menacing&  smile."
0x00109C:
    if !(>= self.mycommand 50s) goto 0x0010C8
0x0010B0:
    stog.msg[0s] = "* Undyne draws her finger&  across her neck."
0x0010C8:
    if !(>= self.mycommand 60s) goto 0x0010F4
0x0010DC:
    stog.msg[0s] = "* Undyne holds her fist in&  front of her and shakes&  her head."
0x0010F4:
    if !(>= self.mycommand 70s) goto 0x001120
0x001108:
    stog.msg[0s] = "* Undyne towers threateningly."
0x001120:
    if !(>= self.mycommand 80s) goto 0x00114C
0x001134:
    stog.msg[0s] = "* Undyne thinks of her friends&  and pounds the ground&  with her fists."
0x00114C:
    if !(>= self.mycommand 90s) goto 0x001178
0x001160:
    stog.msg[0s] = "* Smells like sushi."
0x001178:
    if !(> self.order 22s) goto 0x001268
0x00118C:
    if !(>= self.mycommand 0s) goto 0x0011B8
0x0011A0:
    stog.msg[0s] = "* Undyne's eye is twitching&  involuntarily."
0x0011B8:
    if !(>= self.mycommand 25s) goto 0x0011E4
0x0011CC:
    stog.msg[0s] = "* Undyne is smashing spears&  on the ground."
0x0011E4:
    if !(>= self.mycommand 50s) goto 0x001210
0x0011F8:
    stog.msg[0s] = "* Undyne's eyes dart around&  to see if this is&  a prank."
0x001210:
    if !(>= self.mycommand 75s) goto 0x00123C
0x001224:
    stog.msg[0s] = "* Undyne is hyperventilating."
0x00123C:
    if !(>= self.mycommand 90s) goto 0x001268
0x001250:
    stog.msg[0s] = "* Smells like angry fish."
0x001268:
    if !(== self.order -40s) goto 0x001294
0x00127C:
    stog.msg[0s] = "* Undyne is smiling as if&  nothing is wrong."
0x001294:
    if !(== self.order -39s) goto 0x0012C0
0x0012A8:
    stog.msg[0s] = "* Undyne's body is wavering."
0x0012C0:
    if !(== self.order -38s) goto 0x0012EC
0x0012D4:
    stog.msg[0s] = "* Undyne's body is losing&  its shape."
0x0012EC:
    if !(== self.order -37s) goto 0x001318
0x001300:
    stog.msg[0s] = "* Undyne's body..."
0x001318:
    if !(== self.order -36s) goto 0x001344
0x00132C:
    stog.msg[0s] = "* ..."
0x001344:
    self.attacked = 1s
    self.order = (+ self.order 1s)
    self.lesson = (+ self.lesson 1s)
0x001380:
    if !(== global.mnfight 3s) goto 0x0013BC
0x001394:
    if !(> self.darkify 0s) goto 0x0013BC
0x0013A8:
    push (!= self.darkify 3s)
    goto 0x0013C0
0x0013BC:
    push 0s
0x0013C0:
    if !pop goto 0x0013D0
0x0013C4:
    self.darkify = 3s
0x0013D0:
    if !(== global.myfight 2s) goto 0x0019F8
0x0013E4:
    if !(!= self.whatiheard -1s) goto 0x0019F8
0x0013F8:
    if !(== global.heard 0s) goto 0x0019F8
0x00140C:
    if !(== self.whatiheard 0s) goto 0x0014A8
0x001420:
    global.msc = 0s
    stog.msg[0s] = "* UNDYNE - ATK 50 DEF 20&* The heroine that NEVER gives&  up./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0014A4
0x001498:
    self.halt = 0s
0x0014A4:
    popenv 0x001498
0x0014A8:
    if !(== self.whatiheard 1s) goto 0x0017A0
0x0014BC:
    global.msc = 0s
    self.chal_e = 0s
    if !(== self.rating 8s) goto 0x001500
0x0014E8:
    self.rating = 7s
    self.chal_e = 1s
0x001500:
    if !(== self.rating 9s) goto 0x00152C
0x001514:
    self.rating = 8s
    self.chal_e = 1s
0x00152C:
    if !(== self.rating 10s) goto 0x001558
0x001540:
    self.rating = 9s
    self.chal_e = 1s
0x001558:
    if !(== self.rating 11s) goto 0x001584
0x00156C:
    self.rating = 10s
    self.chal_e = 1s
0x001584:
    if !(== self.rating 12s) goto 0x0015B0
0x001598:
    self.rating = 10s
    self.chal_e = 1s
0x0015B0:
    if !(== self.rating 13s) goto 0x0015DC
0x0015C4:
    self.rating = 11s
    self.chal_e = 1s
0x0015DC:
    if !(== self.rating 14s) goto 0x001608
0x0015F0:
    self.rating = 11s
    self.chal_e = 1s
0x001608:
    if !(== self.rating 15s) goto 0x001634
0x00161C:
    self.rating = 12s
    self.chal_e = 1s
0x001634:
    if !(== self.rating 16s) goto 0x001660
0x001648:
    self.rating = 12s
    self.chal_e = 1s
0x001660:
    if !(== self.chal_e 0s) goto 0x00168C
0x001674:
    stog.msg[0s] = "* You tell UNDYNE her attacks&  are too easy^1.&* She doesn't care./^"
0x00168C:
    if !(== self.chal_e 1s) goto 0x001710
0x0016A0:
    if !(< self.ratingb 6s) goto 0x0016CC
0x0016B4:
    self.ratingb = (+ self.ratingb 1s)
0x0016CC:
    stog.msg[0s] = "* You tell UNDYNE her attacks&  are too easy^1.&* The bullets get faster./^"
    if !(== self.rating 7s) goto 0x001710
0x0016F8:
    stog.msg[0s] = "* You tell UNDYNE her attacks&  are too easy^1.&* The bullets get unfair./^"
0x001710:
    if !(>= self.con 50s) goto 0x00173C
0x001724:
    stog.msg[0s] = "* Didn't work./^"
0x00173C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x00179C
0x001790:
    self.halt = 0s
0x00179C:
    popenv 0x001790
0x0017A0:
    if !(== self.whatiheard 3s) goto 0x0019EC
0x0017B4:
    global.msc = 0s
    stog.msg[0s] = "* Hamburger Helpers./^"
    self.plead_e = 0s
    if !(== self.ratingb 7s) goto 0x001810
0x0017F8:
    self.ratingb = 6s
    self.plead_e = 1s
0x001810:
    if !(== self.ratingb 8s) goto 0x00183C
0x001824:
    self.ratingb = 7s
    self.plead_e = 1s
0x00183C:
    if !(== self.ratingb 9s) goto 0x001868
0x001850:
    self.ratingb = 7s
    self.plead_e = 1s
0x001868:
    if !(== self.rating 9s) goto 0x001894
0x00187C:
    self.rating = 10s
    self.plead_e = 1s
0x001894:
    if !(== self.rating 8s) goto 0x0018C0
0x0018A8:
    self.rating = 10s
    self.plead_e = 1s
0x0018C0:
    if !(== self.rating 7s) goto 0x0018EC
0x0018D4:
    self.rating = 9s
    self.plead_e = 1s
0x0018EC:
    if !(== self.plead_e 0s) goto 0x001918
0x001900:
    stog.msg[0s] = "* You told Undyne you didn't&  want to fight^1.&* But nothing happened./^"
0x001918:
    if !(== self.plead_e 1s) goto 0x00195C
0x00192C:
    stog.msg[0s] = "* You told Undyne you just&  want to be friends.&* She remembers someone.../"
    stog.msg[1s] = "* Her attacks became a little&  less extreme./^"
0x00195C:
    if !(>= self.con 50s) goto 0x001988
0x001970:
    stog.msg[0s] = "* Didn't work./^"
0x001988:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0019E8
0x0019DC:
    self.halt = 0s
0x0019E8:
    popenv 0x0019DC
0x0019EC:
    global.heard = 1s
0x0019F8:
    self.siner = (+ self.siner 1s)
    if !(bool (instance_exists[]:int32 (var 267s))) goto 0x001A60
0x001A28:
    [obj_boxsiner].x = (+ 267.xstart (* (sin[]:int32 (/ self.siner (double 24s))) 40s))
0x001A60:
    if !(== global.myfight 4s) goto 0x001AB4
0x001A74:
    if !(== global.mercyuse 0s) goto 0x001AB4
0x001A88:
    self.mercied = (+ self.mercied 1s)
    call (script_execute[]:int32 (var 163s))
0x001AB4:
    if !(== 743.sprite_index 39s) goto 0x001ADC
0x001AC8:
    push (== global.mnfight 2s)
    goto 0x001AE0
0x001ADC:
    push 0s
0x001AE0:
    if !pop goto 0x001AF0
0x001AE4:
    [obj_heart].movement = 3s
0x001AF0:
    if !(== self.con 0s) goto 0x001B24
0x001B04:
    self.con = 1s
    stog.alarm[4s] = 30s
0x001B24:
    if !(== self.con 1s) goto 0x001BC4
0x001B38:
    global.bmenuno = 4s
    [obj_heart].x = (- (/ self.room_width (double 2s)) (/ 743.sprite_width (double 2s)))
    [obj_heart].y = (- (/ self.room_height (double 2s)) (/ 743.sprite_height (double 2s)))
    global.myfight = 0s
    global.mnfight = 99s
0x001BC4:
    if !(== self.con 2s) goto 0x001C48
0x001BD8:
    push -5s
    if !(< 99s:flag 4s) goto 0x001C34
0x001BF4:
    call (event_user[]:int32 (var 1s))
    self.con = 3.1d
    stog.alarm[4s] = 30s
    goto 0x001C48
0x001C34:
    self.con = 4.1d
0x001C48:
    if !(== self.con 4.1d) goto 0x001DE0
0x001C64:
    global.typer = 39s
    stog.msg[0s] = "En guarde!/%%"
    push -5s
    if !(== 99s:flag 2s) goto 0x001CD4
0x001CA4:
    stog.msg[0s] = "\\E1  You won't get&  away from me&  this time!/%%"
    self.lesson = 8s
    self.order = 9s
0x001CD4:
    push -5s
    if !(== 99s:flag 3s) goto 0x001D20
0x001CF0:
    stog.msg[0s] = "\\E4  You've escaped&  from me for&  the LAST time!/%%"
    self.lesson = 13s
    self.order = 15s
0x001D20:
    push -5s
    if !(== 99s:flag 4s) goto 0x001D6C
0x001D3C:
    stog.msg[0s] = "\\E5  STOP RUNNING&  AWAY!!!/%%"
    self.lesson = 22s
    self.order = 22s
0x001D6C:
    push -5s
    if !(> 99s:flag 4s) goto 0x001DB8
0x001D88:
    stog.msg[0s] = "\\E5  COME BACK HERE^1,&  YOU LITTLE&  PUNK!!/%%"
    self.lesson = 22s
    self.order = 22s
0x001DB8:
    call (scr_blcon_x[]:int32 self.blcony self.blconx)
    self.con = 5s
0x001DE0:
    if !(== self.con 5s) goto 0x001E10
0x001DF4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001E14
0x001E10:
    push 0s
0x001E14:
    if !pop goto 0x001E80
0x001E18:
    stog.msg[0s] = "* Undyne attacks!"
    call (caster_loop[]:int32 (var 1s) (var 0.82d) global.batmusic)
    global.myfight = 0s
    global.mnfight = 3s
    self.con = 6s
0x001E80:
    if !(== global.mnfight 2s) goto 0x001EBC
0x001E94:
    if !(< global.turntimer 1s) goto 0x001EBC
0x001EA8:
    push (== 743.sprite_index 34s)
    goto 0x001EC0
0x001EBC:
    push 0s
0x001EC0:
    if !pop goto 0x001ED0
0x001EC4:
    global.mnfight = 4s
0x001ED0:
    if !(== self.con 50s) goto 0x001FF8
0x001EE4:
    pushenv (int32 self.mypart1) 0x001F00
0x001EF4:
    call (instance_destroy[]:int32 )
0x001F00:
    popenv 0x001EF4
0x001F04:
    self.image_index = 2s
    self.shakify = 1s
    self.myfight = 0s
    self.mnfight = 99s
    global.bmenuno = 4s
    global.border = 4s
    call (SCR_BORDERSETUP[]:int32 )
    self.con = 51s
    global.msc = 0s
    global.typer = 40s
    stog.msg[0s] = "Ngahhh.../"
    stog.msg[1s] = "You were stronger...&Than I thought.../"
    stog.msg[2s] = "So then..^1.&... this is where..^1.&... it ends.../"
    stog.msg[3s] = ".../%%"
    call (scr_blcon_x[]:int32 self.blcony self.blconx)
0x001FF8:
    if !(== self.con 51s) goto 0x002048
0x00200C:
    [obj_heart].x = (+ 759.y 20s)
    [obj_heart].x = (- (/ self.room_width (double 2s)) 8s)
0x002048:
    if !(== self.con 51s) goto 0x002078
0x00205C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00207C
0x002078:
    push 0s
0x00207C:
    if !pop goto 0x0020B4
0x002080:
    self.con = 50.1d
    self.shakify = 3s
    stog.alarm[4s] = 60s
0x0020B4:
    if !(== self.con 51.1d) goto 0x002160
0x0020D0:
    self.shakify = 0s
    self.x = self.xstart
    self.y = self.ystart
    self.image_index = 3s
    global.faceemotion = 8s
    global.typer = 40s
    stog.msg[0s] = "  No.../%%"
    call (scr_blcon_x[]:int32 self.blcony self.blconx)
    self.con = 52s
0x002160:
    if !(== self.con 53s) goto 0x002190
0x002174:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002194
0x002190:
    push 0s
0x002194:
    if !pop goto 0x0021CC
0x002198:
    call (event_user[]:int32 (var 1s))
    self.con = 54s
    stog.alarm[4s] = 30s
0x0021CC:
    if !(== self.con 52s) goto 0x0021FC
0x0021E0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002200
0x0021FC:
    push 0s
0x002200:
    if !pop goto 0x00233C
0x002204:
    self.shakify = 0s
    self.image_index = 0s
    global.typer = 41s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    pushenv (int32 self.mypart1) 0x002274
0x002260:
    call (event_user[]:int32 (var 4s))
0x002274:
    popenv 0x002260
0x002278:
    call (caster_play[]:int32 (var 1s) (var 1s) self.deadmusic1)
    stog.msg[0s] = "NO!/"
    stog.msg[1s] = "I won't die!/"
    stog.msg[2s] = "Alphys..^1.&Asgore..^1.&Papyrus.../"
    stog.msg[3s] = "Everyone is counting&on me to protect&them!/"
    stog.msg[4s] = "NNNNGAH!/%%"
    call (scr_blcon_x[]:int32 self.blcony self.blconx)
    self.con = 53s
0x00233C:
    if !(== self.con 55s) goto 0x0023CC
0x002350:
    global.typer = 41s
    stog.msg[0s] = "Human!/"
    stog.msg[1s] = "In the name of&everybody's hopes&and dreams.../"
    stog.msg[2s] = "I WILL DEFEAT YOU!/%%"
    call (scr_blcon_x[]:int32 self.blcony self.blconx)
    self.con = 56s
0x0023CC:
    if !(== self.con 56s) goto 0x0023FC
0x0023E0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002400
0x0023FC:
    push 0s
0x002400:
    if !pop goto 0x002440
0x002404:
    stog.msg[0s] = "* Undyne looks determined."
    global.myfight = 0s
    global.mnfight = 3s
    self.con = 57s
0x002440:
    if !(== self.con 60s) goto 0x002558
0x002454:
    call (caster_free[]:int32 self.deadmusic1)
    call (caster_free[]:int32 self.deadmusic2)
    global.faceemotion = 7s
    global.typer = 40s
    global.msc = 0s
    stog.msg[0s] = ".../"
    stog.msg[1s] = "Ha..^1. ha.../"
    stog.msg[2s] = "... Alphys.../"
    stog.msg[3s] = "This is what I&  was afraid of.../"
    stog.msg[4s] = "This is why I&  never told you.../"
    stog.msg[5s] = ".../%%"
    call (scr_blcon_x[]:int32 self.blcony self.blconx)
    self.con = 61s
0x002558:
    if !(== self.con 61s) goto 0x002588
0x00256C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00258C
0x002588:
    push 0s
0x00258C:
    if !pop goto 0x00262C
0x002590:
    global.faceemotion = 8s
    pushenv 262s 0x0025B8
0x0025A4:
    call (event_user[]:int32 (var 1s))
0x0025B8:
    popenv 0x0025A4
0x0025BC:
    stog.msg[0s] = "No..^1.&No!/"
    stog.msg[1s] = "Not yet!/"
    stog.msg[2s] = "I won't die!/%%"
    call (scr_blcon_x[]:int32 self.blcony self.blconx)
    self.con = 62s
0x00262C:
    if !(== self.con 62s) goto 0x00265C
0x002640:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002660
0x00265C:
    push 0s
0x002660:
    if !pop goto 0x0026D0
0x002664:
    pushenv 262s 0x002680
0x00266C:
    call (event_user[]:int32 (var 1s))
0x002680:
    popenv 0x00266C
0x002684:
    global.typer = 42s
    stog.msg[0s] = "NGAHHHHHHHH!!^2! %%"
    call (scr_blcon_x[]:int32 self.blcony self.blconx)
    self.con = 63s
0x0026D0:
    if !(== self.con 63s) goto 0x002700
0x0026E4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002704
0x002700:
    push 0s
0x002704:
    if !pop goto 0x002788
0x002708:
    self.con = 64s
    global.typer = 42s
    pushenv 262s 0x00273C
0x002728:
    call (event_user[]:int32 (var 1s))
0x00273C:
    popenv 0x002728
0x002740:
    stog.alarm[4s] = 120s
    stog.msg[0s] = " I WON'T DIE^3! %%"
    call (scr_blcon_x[]:int32 self.blcony self.blconx)
0x002788:
    if !(== self.con 65s) goto 0x0027B8
0x00279C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0027BC
0x0027B8:
    push 0s
0x0027BC:
    if !pop goto 0x002840
0x0027C0:
    self.con = 66s
    global.typer = 43s
    pushenv (int32 self.melter) 0x0027F4
0x0027E8:
    self.image_index = 1s
0x0027F4:
    popenv 0x0027E8
0x0027F8:
    stog.alarm[4s] = 120s
    stog.msg[0s] = " I WON'T DIE^3! %%"
    call (scr_blcon_x[]:int32 self.blcony self.blconx)
0x002840:
    if !(== self.con 67s) goto 0x002870
0x002854:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002874
0x002870:
    push 0s
0x002874:
    if !pop goto 0x0028F8
0x002878:
    self.con = 68s
    global.typer = 44s
    pushenv (int32 self.melter) 0x0028AC
0x0028A0:
    self.image_index = 2s
0x0028AC:
    popenv 0x0028A0
0x0028B0:
    stog.alarm[4s] = 120s
    stog.msg[0s] = " I WON'T DIE^3! %%"
    call (scr_blcon_x[]:int32 self.blcony self.blconx)
0x0028F8:
    if !(== self.con 69s) goto 0x002928
0x00290C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00292C
0x002928:
    push 0s
0x00292C:
    if !pop goto 0x0029B0
0x002930:
    self.con = 70s
    global.typer = 45s
    pushenv (int32 self.melter) 0x002964
0x002958:
    self.image_index = 3s
0x002964:
    popenv 0x002958
0x002968:
    stog.alarm[4s] = 120s
    stog.msg[0s] = " I^2 WON'T^2 %%"
    call (scr_blcon_x[]:int32 self.blcony self.blconx)
0x0029B0:
    if !(== self.con 71s) goto 0x0029E0
0x0029C4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0029E4
0x0029E0:
    push 0s
0x0029E4:
    if !pop goto 0x002AEC
0x0029E8:
    global.vaporspeed = 0s
    global.monstersprite = 278s
    self.ddd = (instance_create[]:int32 (var 157s) (int32 self.melter):y (int32 self.melter):x)
    push 0s
    stog.image_speed* = (int32 self.ddd)
    push 1s
    stog.image_index* = (int32 self.ddd)
    global.kills = (+ global.kills 1s)
    global.xp = (+ global.xp 500s)
    call (scr_levelup[]:int32 )
    pushenv (int32 self.melter) 0x002AC8
0x002ABC:
    call (instance_destroy[]:int32 )
0x002AC8:
    popenv 0x002ABC
0x002ACC:
    self.con = 72s
    stog.alarm[4s] = 200s
0x002AEC:
    if !(== self.con 73s) goto 0x002B64
0x002B00:
    call (instance_create[]:int32 (var 149s) self.y self.x)
    stog.flag[350s] = 1s
    global.plot = 122s
    stog.alarm[9s] = 10s
    self.con = 74s
0x002B64:
    push -5s
    stog.flag[351s] = (int32 self.myself):monsterhp
    if !(== 743.sprite_index 34s) goto 0x002BAC
0x002BA0:
    global.mercy = 0s
0x002BAC:
    if !(== 743.sprite_index 39s) goto 0x002BCC
0x002BC0:
    global.mercy = 1s
0x002BCC:
    if !(== self.died 1s) goto 0x002BEC
0x002BE0:
    global.mercy = 1s
0x002BEC:
    if !(== self.died 1s) goto 0x002C28
0x002C00:
    if !(>= self.con 53s) goto 0x002C28
0x002C14:
    push (< self.con 60s)
    goto 0x002C2C
0x002C28:
    push 0s
0x002C2C:
    if !pop goto 0x002C94
0x002C30:
    if !(== (caster_is_playing[]:int32 self.deadmusic1) 0s) goto 0x002C68
0x002C4C:
    push (== (caster_is_playing[]:int32 self.deadmusic2) 0s)
    goto 0x002C6C
0x002C68:
    push 0s
0x002C6C:
    if !pop goto 0x002C94
0x002C70:
    call (caster_loop[]:int32 (var 1s) (var 1s) self.deadmusic2)
0x002C94:
    if !(> self.shakify 0s) goto 0x002CF0
0x002CA8:
    self.x = (+ self.xstart (random[]:int32 self.shakify))
    self.y = (+ self.ystart (random[]:int32 self.shakify))
0x002CF0:
    if !(== global.debug 1s) goto 0x002D1C
0x002D04:
    push (bool (keyboard_check_pressed[]:int32 (var 85s)))
    goto 0x002D20
0x002D1C:
    push 0s
0x002D20:
    if !pop goto 0x002D40
0x002D24:
    stog.monsterhp[(int32 self.myself)] = 2s
0x002D40:
    exit
