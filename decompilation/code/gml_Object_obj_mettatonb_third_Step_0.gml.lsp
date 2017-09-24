0x000000:
    if !(== global.mnfight 3s) goto 0x00002C
0x000014:
    self.attacked = 0s
    self.talked = 0s
0x00002C:
    push -1s
    if !(> 5s:alarm 0s) goto 0x0001D4
0x000048:
    push -5s
    if !(== 0s:monster 1s) goto 0x0000CC
0x000064:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0000CC
0x00009C:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0000CC:
    push -5s
    if !(== 1s:monster 1s) goto 0x000150
0x0000E8:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000150
0x000120:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000150:
    push -5s
    if !(== 2s:monster 1s) goto 0x0001D4
0x00016C:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0001D4
0x0001A4:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0001D4:
    if !(== global.mnfight 1s) goto 0x0002D4
0x0001E8:
    if !(== self.talked 1s) goto 0x000218
0x0001FC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00021C
0x000218:
    push 0s
0x00021C:
    if !pop goto 0x000240
0x000220:
    stog.alarm[5s] = 1s
    self.talked = 2s
0x000240:
    if !(== self.talked 0s) goto 0x00028C
0x000254:
    self.attacked = 0s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x00028C:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x0002D4
0x0002A4:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x0002D4
0x0002BC:
    [OBJ_WRITER].stringpos = (string_length[]:int32 782.originalstring)
0x0002D4:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000338
0x0002F8:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000338:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x00041C
0x00035C:
    pushenv (int32 self.dmgwriter) 0x000380
0x00036C:
    stog.alarm[2s] = 15s
0x000380:
    popenv 0x00036C
0x000384:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x0003EC
0x0003A8:
    stog.hurtanim[(int32 self.myself)] = 0s
    self.hurta = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x00041C
0x0003EC:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x00041C:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x0004EC
0x000440:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0004B4
0x0004A0:
    stog.alarm[2s] = 30s
0x0004B4:
    popenv 0x0004A0
0x0004B8:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x0004EC:
    if !(== global.mnfight 2s) goto 0x0007FC
0x000500:
    if !(== self.attacked 0s) goto 0x0007FC
0x000514:
    if !(>= self.turns 5s) goto 0x000548
0x000528:
    if !(== self.con 0s) goto 0x000548
0x00053C:
    self.con = 1s
0x000548:
    if !(!= self.con 1s) goto 0x00066C
0x00055C:
    if !(== self.turns 1s) goto 0x000580
0x000570:
    global.attacktype = 100s
    goto 0x000598
0x000580:
    push 0s
    stog.tang* = (int32 self.mypart1)
0x000598:
    if !(== self.turns 2s) goto 0x0005B8
0x0005AC:
    global.attacktype = 26s
0x0005B8:
    if !(== self.turns 3s) goto 0x0005D8
0x0005CC:
    global.attacktype = 27s
0x0005D8:
    if !(== self.turns 4s) goto 0x0005F8
0x0005EC:
    global.attacktype = 28s
0x0005F8:
    if !(> self.turns 4s) goto 0x000618
0x00060C:
    global.attacktype = 29s
0x000618:
    self.gen = (instance_create[]:int32 (var 414s) (var 0s) (var 0s))
    if !(== self.turns 1s) goto 0x00066C
0x000654:
    push 0s
    stog.dark* = (int32 self.gen)
0x00066C:
    pushenv (int32 self.mypart1) 0x000690
0x00067C:
    call (event_user[]:int32 (var 0s))
0x000690:
    popenv 0x00067C
0x000694:
    stog.msg[0s] = "* MEttaton Rules the school."
    if !(>= self.mycommand 0s) goto 0x0006D8
0x0006C0:
    stog.msg[0s] = "* Mettaton Is A- OK ."
0x0006D8:
    if !(>= self.mycommand 25s) goto 0x000704
0x0006EC:
    stog.msg[0s] = "* Aaron is sweating bullets^3.&* Literally."
0x000704:
    if !(>= self.mycommand 50s) goto 0x000730
0x000718:
    stog.msg[0s] = "* Aaron is admiring his own&  muscles."
0x000730:
    if !(>= self.mycommand 75s) goto 0x00075C
0x000744:
    stog.msg[0s] = "* Smells like an underwater&  barnyard."
0x00075C:
    if !(>= self.mycommand 90s) goto 0x000788
0x000770:
    stog.msg[0s] = "* Smells like a mussel farm."
0x000788:
    stog.msg[0s] = "* Mettaton."
    push -5s
    if !(< (int32 self.myself):monsterhp 30s) goto 0x0007DC
0x0007C4:
    stog.msg[0s] = "* No on e cares."
0x0007DC:
    self.attacked = 1s
    stog.alarm[7s] = 20s
0x0007FC:
    if !(== global.myfight 2s) goto 0x0009DC
0x000810:
    if !(!= self.whatiheard -1s) goto 0x0009DC
0x000824:
    if !(== global.heard 0s) goto 0x0009DC
0x000838:
    if !(== self.whatiheard 0s) goto 0x0008E0
0x00084C:
    global.msc = 0s
    stog.msg[0s] = "* METTATON - ATK 30 DEF 255&* Seriously^1, his metal body&  is invulnerable!/^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0008D0
0x0008C4:
    self.halt = 0s
0x0008D0:
    popenv 0x0008C4
0x0008D4:
    self.whatiheard = 9s
0x0008E0:
    if !(== self.whatiheard 3s) goto 0x0009D0
0x0008F4:
    global.msc = 0s
    stog.msg[0s] = "* This is probably what you'll&  do if things continue in&  this manner./^"
    push -5s
    if !(== 424s:flag 1s) goto 0x00096C
0x000934:
    stog.flag[424s] = 2s
    stog.msg[0s] = "* You tell Mettaton that there's&  a mirror behind him./%%"
    self.con = 40s
0x00096C:
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
    global.heard = 1s
0x0009DC:
    if !(== self.whatiheard 3s) goto 0x000A1C
0x0009F0:
    if !(== self.flex 3s) goto 0x000A1C
0x000A04:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000A20
0x000A1C:
    push 0s
0x000A20:
    if !pop goto 0x000A5C
0x000A24:
    if !(== 782.stringno 1s) goto 0x000A5C
0x000A38:
    self.vspeed = -4s
    push -4s
    stog.vspeed* = (int32 self.mypart1)
0x000A5C:
    if !(== global.myfight 4s) goto 0x000AB8
0x000A70:
    if !(== global.mercyuse 0s) goto 0x000AB8
0x000A84:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000AB8
0x000AAC:
    call (instance_destroy[]:int32 )
0x000AB8:
    if !(== self.mercymod 222s) goto 0x000AE8
0x000ACC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000AEC
0x000AE8:
    push 0s
0x000AEC:
    if !pop goto 0x000B24
0x000AF0:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000B24
0x000B18:
    call (instance_destroy[]:int32 )
0x000B24:
    if !(== self.con 1s) goto 0x000B98
0x000B38:
    [obj_heart].shot = 0s
    global.border = 0s
    call (snd_play[]:int32 (var 104s))
    call (SCR_BORDERSETUP[]:int32 )
    self.con = 1.1d
    stog.alarm[4s] = 20s
0x000B98:
    if !(== self.con 2.1d) goto 0x000C88
0x000BB4:
    self.phone = (instance_create[]:int32 (var 1363s) (var 260s) (var 520s))
    push 317s
    stog.sprite_index* = (int32 self.phone)
    push 0s
    stog.image_speed* = (int32 self.phone)
    push 1s
    stog.visible* = (int32 self.phone)
    push 20s
    stog.depth* = (int32 self.phone)
    call (snd_play[]:int32 (var 104s))
    push -2s
    stog.vspeed* = (int32 self.phone)
    self.con = 2s
    stog.alarm[4s] = 30s
0x000C88:
    if !(== self.con 3s) goto 0x000CE8
0x000C9C:
    push 0s
    stog.vspeed* = (int32 self.phone)
    call (snd_play[]:int32 (var 104s))
    self.con = 5s
    stog.alarm[4s] = 30s
0x000CE8:
    if !(== self.con 6s) goto 0x000D18
0x000CFC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000D1C
0x000D18:
    push 0s
0x000D1C:
    if !pop goto 0x000F18
0x000D20:
    self.shblcon = (instance_create[]:int32 (var 186s) (int32 self.phone):y (+ (int32 self.phone):x 10s))
    push 27s
    stog.sprite_index* = (int32 self.shblcon)
    self.shake = 1s
    global.typer = 49s
    stog.msg[0s] = "U..uh... I can't see&what's going on in&there, but.../"
    stog.msg[1s] = "D-d-don't give up,&okay!?/"
    stog.msg[2s] = "Th... there's o-one&l-l-last way to beat&Mettaton.../"
    stog.msg[3s] = "It's... um... it's.../"
    stog.msg[4s] = "This is a work in-&progress, so don't&judge it too hard.../"
    stog.msg[5s] = "But, you know how&Mettaton always faces&f-f-forward?/"
    stog.msg[6s] = "That's because&there's a switch&on his backside./"
    stog.msg[7s] = "S-s-so if y-y-you&c-c-can turn him&around... um.../"
    stog.msg[8s] = "And, umm... press&th-th-th-the&switch.../"
    stog.msg[9s] = "He'll be... um...&He'll be.../"
    stog.msg[10s] = "Vulnerable./"
    stog.msg[11s] = "Well, g-g-gotta go!/%%"
    call (instance_create[]:int32 (var 782s) (- (int32 self.phone):y 140s) (- (int32 self.phone):x 100s))
    self.con = 6.1d
0x000F18:
    if !(== self.con 6.1d) goto 0x000F4C
0x000F34:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000F50
0x000F4C:
    push 0s
0x000F50:
    if !pop goto 0x000F9C
0x000F54:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x000F9C
0x000F6C:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x000F9C
0x000F84:
    [OBJ_WRITER].stringpos = (string_length[]:int32 782.originalstring)
0x000F9C:
    if !(== self.con 6.1d) goto 0x000FD4
0x000FB8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000FD8
0x000FD4:
    push 0s
0x000FD8:
    if !pop goto 0x00101C
0x000FDC:
    self.con = 5.2d
    stog.alarm[4s] = 20s
    push 5s
    stog.vspeed* = (int32 self.phone)
0x00101C:
    if !(== self.con 6.2d) goto 0x001070
0x001038:
    self.con = 7s
    pushenv (int32 self.phone) 0x001060
0x001054:
    call (instance_destroy[]:int32 )
0x001060:
    popenv 0x001054
0x001064:
    [obj_heart].shot = 1s
0x001070:
    if !(== self.con 7s) goto 0x0010A0
0x001084:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0010A4
0x0010A0:
    push 0s
0x0010A4:
    if !pop goto 0x001130
0x0010A8:
    stog.msg[0s] = "* Seems like a good time to&  turn Mettaton around."
    stog.flag[424s] = 1s
    pushenv (int32 self.shblcon) 0x0010F0
0x0010E4:
    call (instance_destroy[]:int32 )
0x0010F0:
    popenv 0x0010E4
0x0010F4:
    self.con = 8s
    self.shake = 0s
    global.turntimer = -1s
    global.mnfight = 3s
    global.myfight = -1s
0x001130:
    if !(> self.con 6s) goto 0x0011F0
0x001144:
    if !(== self.shake 1s) goto 0x001170
0x001158:
    push (bool (instance_exists[]:int32 self.shblcon))
    goto 0x001174
0x001170:
    push 0s
0x001174:
    if !pop goto 0x0011F0
0x001178:
    push (+ (int32 self.shblcon):xstart (random[]:int32 (var 2s)))
    stog.x* = (int32 self.shblcon)
    push (+ (int32 self.shblcon):ystart (random[]:int32 (var 2s)))
    stog.y* = (int32 self.shblcon)
0x0011F0:
    if !(== self.con 11s) goto 0x001230
0x001204:
    [obj_heart].movement = -1s
    self.con = 12s
    stog.alarm[4s] = 40s
0x001230:
    if !(== self.con 13s) goto 0x0012B4
0x001244:
    call (caster_stop[]:int32 global.batmusic)
    self.ctheart = (instance_create[]:int32 (var 742s) (+ 743.y 8s) (+ 743.x 8s))
    [obj_heart].x = -999s
    [obj_heart].movement = -1s
    self.con = 14s
0x0012B4:
    if !(== self.con 15s) goto 0x0013C4
0x0012C8:
    self.shblcon = (instance_create[]:int32 (var 186s) (int32 self.phone):y (+ (int32 self.phone):x 10s))
    push 27s
    stog.sprite_index* = (int32 self.shblcon)
    self.shake = 1s
    global.typer = 49s
    stog.msg[0s] = "Now press [Z]!!!"
    call (instance_create[]:int32 (var 782s) (- (int32 self.phone):y 140s) (- (int32 self.phone):x 100s))
    self.con = 16s
    stog.alarm[4s] = 15s
0x0013C4:
    if !(== self.con 17s) goto 0x001668
0x0013D8:
    if !(> global.hp 999s) goto 0x001648
0x0013EC:
    global.turntimer = 300s
    call (instance_create[]:int32 (var 675s) (- 743.y 180s) 743.x)
    call (instance_create[]:int32 (var 675s) (- 743.y 180s) (- 743.x 20s))
    call (instance_create[]:int32 (var 675s) (- 743.y 180s) (- 743.x 40s))
    call (instance_create[]:int32 (var 675s) (- 743.y 180s) (- 743.x 60s))
    call (instance_create[]:int32 (var 675s) (- 743.y 180s) (+ 743.x 20s))
    call (instance_create[]:int32 (var 675s) (- 743.y 180s) (+ 743.x 40s))
    call (instance_create[]:int32 (var 675s) (- 743.y 180s) (+ 743.x 60s))
    call (instance_create[]:int32 (var 675s) (- 743.y 220s) 743.x)
    call (instance_create[]:int32 (var 675s) (- 743.y 260s) 743.x)
    call (instance_create[]:int32 (var 675s) (- 743.y 220s) (- 743.x 20s))
    call (instance_create[]:int32 (var 675s) (- 743.y 220s) (+ 743.x 20s))
    [obj_blackboxtest].vspeed = 3s
    [obj_blackboxtest].friction = -0.1d
    [obj_blackboxtest].dmg = 1s
0x001648:
    self.con = 18s
    stog.alarm[4s] = 120s
0x001668:
    if !(== self.con 25s) goto 0x0016F4
0x00167C:
    pushenv 782s 0x001690
0x001684:
    call (instance_destroy[]:int32 )
0x001690:
    popenv 0x001684
0x001694:
    pushenv (int32 self.shblcon) 0x0016B0
0x0016A4:
    call (instance_destroy[]:int32 )
0x0016B0:
    popenv 0x0016A4
0x0016B4:
    pushenv 739s 0x0016C8
0x0016BC:
    call (instance_destroy[]:int32 )
0x0016C8:
    popenv 0x0016BC
0x0016CC:
    self.con = 24.5d
    stog.alarm[4s] = 30s
0x0016F4:
    if !(== self.con 25.5d) goto 0x0017E0
0x001710:
    global.msc = 0s
    stog.msg[0s] = "OOOH!/"
    stog.msg[1s] = "OOOOOOOH!/"
    stog.msg[2s] = "YOU'VE DEFEATED ME!!/"
    stog.msg[3s] = "HOW CAN THIS BE,&YOU WERE STRONGER&THAN I THOUGHT, ETC./%%"
    global.typer = 51s
    call (scr_blcon[]:int32 (var 1s) (- (int32 self.mypart1):y 120s) (- (int32 self.mypart1):x 320s))
    self.con = 26s
0x0017E0:
    if !(== self.con 26s) goto 0x001810
0x0017F4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001814
0x001810:
    push 0s
0x001814:
    if !pop goto 0x0018CC
0x001818:
    stog.msg[0s] = "WHATEVER."
    call (scr_blcon[]:int32 (var 1s) (- (int32 self.mypart1):y 120s) (- (int32 self.mypart1):x 320s))
    self.con = 27s
    push -7s
    stog.hspeed* = (int32 self.mypart1)
    push 1s
    stog.hurta* = (int32 self.mypart1)
    stog.alarm[4s] = 60s
0x0018CC:
    if !(>= self.con 27s) goto 0x0018F4
0x0018E0:
    push (< self.con 53s)
    goto 0x0018F8
0x0018F4:
    push 0s
0x0018F8:
    if !pop goto 0x00195C
0x0018FC:
    if !(bool (instance_exists[]:int32 (var 188s))) goto 0x00195C
0x001914:
    [obj_blconwideslave].x = (- (int32 self.mypart1):x 320s)
    [OBJ_WRITER].writingx = (- (int32 self.mypart1):x 280s)
0x00195C:
    if !(== self.con 28s) goto 0x0019B4
0x001970:
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    self.con = 29s
    stog.alarm[4s] = 13s
0x0019B4:
    if !(== self.con 30s) goto 0x0019F0
0x0019C8:
    call (caster_free[]:int32 (var -3s))
    call (room_goto[]:int32 global.currentroom)
0x0019F0:
    if !(== self.con 40s) goto 0x001A20
0x001A04:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001A24
0x001A20:
    push 0s
0x001A24:
    if !pop goto 0x001AE0
0x001A28:
    global.mnfight = -1s
    global.myfight = -1s
    global.msc = 0s
    stog.msg[0s] = "OH???&A MIRROR???/"
    stog.msg[1s] = "RIGHT, I HAVE TO&LOOK PERFECT FOR&OUR GRAND FINALE!/%%"
    global.typer = 51s
    call (scr_blcon[]:int32 (var 1s) (- (int32 self.mypart1):y 120s) (- (int32 self.mypart1):x 320s))
    self.con = 41s
0x001AE0:
    if !(== self.con 41s) goto 0x001B10
0x001AF4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001B14
0x001B10:
    push 0s
0x001B14:
    if !pop goto 0x001BAC
0x001B18:
    push 1s
    stog.behind* = (int32 self.mypart1)
    stog.msg[0s] = "HMMM...&I DON'T SEE IT...&WHERE IS IT...?/%%"
    global.typer = 51s
    call (scr_blcon[]:int32 (var 1s) (- (int32 self.mypart1):y 120s) (- (int32 self.mypart1):x 320s))
    self.con = 42s
0x001BAC:
    if !(== self.con 42s) goto 0x001BDC
0x001BC0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001BE0
0x001BDC:
    push 0s
0x001BE0:
    if !pop goto 0x001C44
0x001BE4:
    call (caster_free[]:int32 (var -3s))
    push 2s
    stog.behind* = (int32 self.mypart1)
    call (snd_play[]:int32 (var 108s))
    self.con = 43s
    stog.alarm[4s] = 60s
0x001C44:
    if !(== self.con 44s) goto 0x001D34
0x001C58:
    stog.msg[0s] = "DID YOU./"
    stog.msg[1s] = "JUST FLIP./"
    stog.msg[2s] = "MY SWITCH?/%%"
    global.typer = 51s
    call (scr_blcon[]:int32 (var 1s) (- (int32 self.mypart1):y 120s) (- (int32 self.mypart1):x 320s))
    self.con = 46s
    self.cc = (caster_load[]:int32 (var "music/computer.ogg"))
    self.pit = 0.8d
0x001D34:
    if !(== self.con 46s) goto 0x001D64
0x001D48:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001D68
0x001D64:
    push 0s
0x001D68:
    if !pop goto 0x001DE0
0x001D6C:
    push 3s
    stog.behind* = (int32 self.mypart1)
    push 0.1d
    stog.trueanim* = (int32 self.mypart1)
    self.cc = (caster_loop[]:int32 self.pit (var 0.6d) self.cc)
    self.con = 47s
0x001DE0:
    if !(== self.con 47s) goto 0x001E88
0x001DF4:
    self.pit = (+ self.pit 0.013d)
    stog.trueanim* = (+ (int32 self.mypart1):trueanim 0.04d)
    call (caster_set_pitch[]:int32 self.pit self.cc)
    if !(> self.pit 2.8d) goto 0x001E88
0x001E7C:
    push (int32 self.mypart1)
    self.con = 48s
0x001E88:
    if !(== self.con 48s) goto 0x001F60
0x001E9C:
    call (caster_free[]:int32 (var -3s))
    call (snd_play[]:int32 (var 44s))
    self.wht = (scr_marker[]:int32 (var 999s) (var 0s) (var 0s))
    push 700s
    stog.image_xscale* = (int32 self.wht)
    push 700s
    stog.image_yscale* = (int32 self.wht)
    push 0.2d
    stog.image_alpha* = (int32 self.wht)
    push -9000s
    stog.depth* = (int32 self.wht)
    self.con = 49s
0x001F60:
    if !(== self.con 49s) goto 0x00200C
0x001F74:
    stog.image_alpha* = (+ (int32 self.wht):image_alpha 0.05d)
    if !(> (int32 self.wht):image_alpha 0.98d) goto 0x00200C
0x001FCC:
    push (int32 self.wht)
    push 1s
    stog.image_alpha* = (int32 self.wht)
    self.con = 49.1d
    stog.alarm[4s] = 30s
0x00200C:
    if !(== self.con 50.1d) goto 0x002088
0x002028:
    self.oyea = (caster_load[]:int32 (var "music/ohyes.ogg"))
    call (caster_play[]:int32 (var 1s) (var 1s) self.oyea)
    self.con = 50s
    stog.alarm[4s] = 60s
0x002088:
    if !(== self.con 51s) goto 0x0020EC
0x00209C:
    pushenv (int32 self.mypart1) 0x0020B8
0x0020AC:
    self.visible = 0s
0x0020B8:
    popenv 0x0020AC
0x0020BC:
    call (instance_create[]:int32 (var 405s) (var 0s) (var 0s))
    self.con = 52s
0x0020EC:
    if !(== self.con 52s) goto 0x002184
0x002100:
    stog.image_alpha* = (- (int32 self.wht):image_alpha 0.05d)
    if !(< (int32 self.wht):image_alpha 0.06d) goto 0x002184
0x002158:
    push (int32 self.wht)
    pushenv (int32 self.wht) 0x002174
0x002168:
    call (instance_destroy[]:int32 )
0x002174:
    popenv 0x002168
0x002178:
    self.con = 53s
0x002184:
    if !(> self.con_2 0s) goto 0x0021A4
0x002198:
    global.turntimer = 11s
0x0021A4:
    if !(== self.con_2 1s) goto 0x002270
0x0021B8:
    pushenv 782s 0x0021CC
0x0021C0:
    call (instance_destroy[]:int32 )
0x0021CC:
    popenv 0x0021C0
0x0021D0:
    global.msc = 0s
    stog.msg[0s] = "THAT WORTHLESS PEA-&SHOOTER WON'T WORK&ON ME, DARLING. ^3 %"
    stog.msg[1s] = "DON'T YOU UNDERSTAND&WHAT ACTING IS!?^3 %%"
    global.typer = 51s
    call (scr_blcon[]:int32 (var 1s) (- (int32 self.mypart1):y 120s) (- (int32 self.mypart1):x 320s))
    self.con_2 = 2s
0x002270:
    if !(== self.con_2 2s) goto 0x0022A0
0x002284:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0022A4
0x0022A0:
    push 0s
0x0022A4:
    if !pop goto 0x0022D8
0x0022A8:
    stog.msg[0s] = "* Mettaton."
    self.con_2 = -1s
    global.turntimer = 3s
0x0022D8:
    exit
