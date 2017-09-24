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
    if !(== global.mnfight 1s) goto 0x00027C
0x0001DC:
    if !(== self.talked 0s) goto 0x00027C
0x0001F0:
    push -5s
    if !(> (int32 self.myself):monsterhp 0s) goto 0x000228
0x000214:
    stog.alarm[5s] = 15s
0x000228:
    if !(== self.mercymod -49s) goto 0x000250
0x00023C:
    stog.alarm[5s] = 400s
0x000250:
    stog.alarm[6s] = 2s
    self.talked = 1s
    global.heard = 0s
0x00027C:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0003A0
0x000294:
    if !(< self.conversation 13s) goto 0x00031C
0x0002A8:
    push -1s
    if !(> 5s:alarm 5s) goto 0x000300
0x0002C4:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x000300
0x0002E4:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x000304
0x000300:
    push 0s
0x000304:
    if !pop goto 0x00031C
0x000308:
    stog.alarm[5s] = 2s
0x00031C:
    if !(>= self.conversation 13s) goto 0x000344
0x000330:
    push (!= self.conversation 99s)
    goto 0x000348
0x000344:
    push 0s
0x000348:
    if !pop goto 0x0003A0
0x00034C:
    if !(bool (instance_exists[]:int32 (var 784s))) goto 0x0003A0
0x000364:
    push 784.stringpos
    if !(>= 784s (string_length[]:int32 0s:mystring)) goto 0x0003A0
0x00038C:
    stog.alarm[5s] = 2s
0x0003A0:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000424
0x0003C4:
    self.shudder = 16s
    stog.alarm[3s] = global.damagetimer
    if !(> global.damage 100s) goto 0x000408
0x0003FC:
    self.shudder = 32s
0x000408:
    stog.hurtanim[(int32 self.myself)] = 3s
0x000424:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x0005F0
0x000448:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x00049C
0x000488:
    stog.alarm[2s] = 15s
0x00049C:
    popenv 0x000488
0x0004A0:
    if !(> global.damage 100s) goto 0x0004DC
0x0004B4:
    pushenv (int32 self.dmgwriter) 0x0004D8
0x0004C4:
    stog.alarm[2s] = 60s
0x0004D8:
    popenv 0x0004C4
0x0004DC:
    push -5s
    if !(<= (int32 self.myself):monsterhp 150s) goto 0x00051C
0x000500:
    stog.monsterdef[(int32 self.myself)] = -140s
0x00051C:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x0005D8
0x000540:
    stog.hurtanim[(int32 self.myself)] = 0s
    if !(< self.conversation 13s) goto 0x0005B0
0x000570:
    if !(> global.hp 2s) goto 0x000590
0x000584:
    self.sprite_index = 725s
0x000590:
    if !(<= global.hp 2s) goto 0x0005B0
0x0005A4:
    self.sprite_index = 735s
0x0005B0:
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x0005F0
0x0005D8:
    global.myfight = 0s
    global.mnfight = 1s
0x0005F0:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x0006C0
0x000614:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000688
0x000674:
    stog.alarm[2s] = 30s
0x000688:
    popenv 0x000674
0x00068C:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x0006C0:
    if !(== global.mnfight 2s) goto 0x0010F4
0x0006D4:
    if !(== self.attacked 0s) goto 0x0010F4
0x0006E8:
    global.turntimer = 160s
    if !(> global.hp 2s) goto 0x00071C
0x000708:
    push (< self.conversation 13s)
    goto 0x000720
0x00071C:
    push 0s
0x000720:
    if !pop goto 0x000E80
0x000724:
    push -5s
    if !(== 6s:flag 0s) goto 0x000AE0
0x000740:
    if !(>= self.mycommand 0s) goto 0x000768
0x000754:
    push (<= self.mycommand 20s)
    goto 0x00076C
0x000768:
    push 0s
0x00076C:
    if !pop goto 0x0007C8
0x000770:
    global.turntimer = 140s
    global.firingrate = 5s
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 7s
    stog.bullettype* = (int32 self.gen)
0x0007C8:
    if !(> self.mycommand 20s) goto 0x0007F0
0x0007DC:
    push (<= self.mycommand 40s)
    goto 0x0007F4
0x0007F0:
    push 0s
0x0007F4:
    if !pop goto 0x000850
0x0007F8:
    global.turntimer = 140s
    global.firingrate = 2s
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 8s
    stog.bullettype* = (int32 self.gen)
0x000850:
    if !(> self.mycommand 80s) goto 0x000878
0x000864:
    push (<= self.mycommand 100s)
    goto 0x00087C
0x000878:
    push 0s
0x00087C:
    if !pop goto 0x00090C
0x000880:
    global.turntimer = 200s
    global.firingrate = 2s
    push (var 614s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 2s:idealborder 5s) -5s (- 0s:idealborder 45s))
    if !(> global.hp 6s) goto 0x00090C
0x0008F4:
    push 5s
    stog.dmg* = (int32 self.gen)
0x00090C:
    if !(> self.mycommand 60s) goto 0x000934
0x000920:
    push (<= self.mycommand 80s)
    goto 0x000938
0x000934:
    push 0s
0x000938:
    if !pop goto 0x000A54
0x00093C:
    global.turntimer = 200s
    global.firingrate = 2s
    push (var 614s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 2s:idealborder 5s) -5s (- 0s:idealborder 45s))
    push 1s
    stog.x1* = (int32 self.gen)
    if !(> global.hp 6s) goto 0x0009E0
0x0009C8:
    push 5s
    stog.dmg* = (int32 self.gen)
0x0009E0:
    push (var 615s)
    push -5s
    self.gen2 = (instance_create[]:int32 (- 3s:idealborder 15s) -5s (+ 1s:idealborder 5s))
    if !(> global.hp 6s) goto 0x000A54
0x000A3C:
    push 5s
    stog.dmg* = (int32 self.gen2)
0x000A54:
    if !(> self.mycommand 40s) goto 0x000A7C
0x000A68:
    push (<= self.mycommand 60s)
    goto 0x000A80
0x000A7C:
    push 0s
0x000A80:
    if !pop goto 0x000ADC
0x000A84:
    global.turntimer = 140s
    global.firingrate = 6s
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 10s
    stog.bullettype* = (int32 self.gen)
0x000ADC:
    goto 0x000E7C
0x000AE0:
    if !(>= self.mycommand 0s) goto 0x000B08
0x000AF4:
    push (<= self.mycommand 20s)
    goto 0x000B0C
0x000B08:
    push 0s
0x000B0C:
    if !pop goto 0x000B68
0x000B10:
    global.turntimer = 160s
    global.firingrate = 4s
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 7s
    stog.bullettype* = (int32 self.gen)
0x000B68:
    if !(> self.mycommand 20s) goto 0x000B90
0x000B7C:
    push (<= self.mycommand 40s)
    goto 0x000B94
0x000B90:
    push 0s
0x000B94:
    if !pop goto 0x000BF0
0x000B98:
    global.turntimer = 160s
    global.firingrate = 1s
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 8s
    stog.bullettype* = (int32 self.gen)
0x000BF0:
    if !(> self.mycommand 80s) goto 0x000C18
0x000C04:
    push (<= self.mycommand 100s)
    goto 0x000C1C
0x000C18:
    push 0s
0x000C1C:
    if !pop goto 0x000CAC
0x000C20:
    global.turntimer = 200s
    global.firingrate = 1s
    push (var 614s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 2s:idealborder 5s) -5s (- 0s:idealborder 45s))
    if !(> global.hp 6s) goto 0x000CAC
0x000C94:
    push 6s
    stog.dmg* = (int32 self.gen)
0x000CAC:
    if !(> self.mycommand 60s) goto 0x000CD4
0x000CC0:
    push (<= self.mycommand 80s)
    goto 0x000CD8
0x000CD4:
    push 0s
0x000CD8:
    if !pop goto 0x000DF4
0x000CDC:
    global.turntimer = 200s
    global.firingrate = 1s
    push (var 614s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 2s:idealborder 5s) -5s (- 0s:idealborder 45s))
    push 1s
    stog.x1* = (int32 self.gen)
    if !(> global.hp 6s) goto 0x000D80
0x000D68:
    push 6s
    stog.dmg* = (int32 self.gen)
0x000D80:
    push (var 615s)
    push -5s
    self.gen2 = (instance_create[]:int32 (- 3s:idealborder 15s) -5s (+ 1s:idealborder 5s))
    if !(> global.hp 6s) goto 0x000DF4
0x000DDC:
    push 6s
    stog.dmg* = (int32 self.gen2)
0x000DF4:
    if !(> self.mycommand 40s) goto 0x000E1C
0x000E08:
    push (<= self.mycommand 60s)
    goto 0x000E20
0x000E1C:
    push 0s
0x000E20:
    if !pop goto 0x000E7C
0x000E24:
    global.turntimer = 160s
    global.firingrate = 5s
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 10s
    stog.bullettype* = (int32 self.gen)
0x000E7C:
    goto 0x000F50
0x000E80:
    push -5s
    if !(> (int32 self.myself):monsterhp 150s) goto 0x000EC0
0x000EA4:
    stog.monsterdef[(int32 self.myself)] = -15s
0x000EC0:
    global.turntimer = 140s
    global.firingrate = 2s
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    if !(< self.conversation 13s) goto 0x000F38
0x000F14:
    call (instance_create[]:int32 (var 700s) self.y self.x)
0x000F38:
    push 9s
    stog.bullettype* = (int32 self.gen)
0x000F50:
    if !(> self.conversation 13s) goto 0x000F8C
0x000F64:
    global.turntimer = 1s
    stog.monsterdef[(int32 self.myself)] = -2000s
0x000F8C:
    push -5s
    if !(>= 202s:flag 20s) goto 0x000FC4
0x000FA8:
    stog.monsterdef[(int32 self.myself)] = -9999s
0x000FC4:
    push self.myself
    stog.myself* = (int32 self.gen)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x001038
0x001020:
    stog.msg[0s] = "* Toriel prepares a magical&  attack."
0x001038:
    if !(>= self.mycommand 30s) goto 0x001064
0x00104C:
    stog.msg[0s] = "* Toriel looks through you."
0x001064:
    if !(>= self.mycommand 70s) goto 0x001090
0x001078:
    stog.msg[0s] = "* Toriel is acting aloof."
0x001090:
    if !(>= self.mycommand 90s) goto 0x0010BC
0x0010A4:
    stog.msg[0s] = "* Toriel takes a deep breath."
0x0010BC:
    if !(> self.conversation 13s) goto 0x0010E8
0x0010D0:
    stog.msg[0s] = "* ..."
0x0010E8:
    self.attacked = 1s
0x0010F4:
    if !(== self.whatiheard 3s) goto 0x001124
0x001108:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001128
0x001124:
    push 0s
0x001128:
    if !pop goto 0x001160
0x00112C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001160
0x001154:
    call (instance_destroy[]:int32 )
0x001160:
    if !(== global.myfight 2s) goto 0x00147C
0x001174:
    if !(!= self.whatiheard -1s) goto 0x00147C
0x001188:
    if !(== global.heard 0s) goto 0x00147C
0x00119C:
    if !(== self.whatiheard 0s) goto 0x001238
0x0011B0:
    global.msc = 0s
    stog.msg[0s] = "* TORIEL - ATK 80 DEF 80&* Knows best for you./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x001234
0x001228:
    self.halt = 0s
0x001234:
    popenv 0x001228
0x001238:
    if !(== self.whatiheard 3s) goto 0x001470
0x00124C:
    self.tt = (+ self.tt 1s)
    global.msc = 0s
    stog.msg[0s] = "* You couldn't think of&  any conversation&  topics./^"
    call (ini_open[]:int32 (var "undertale.ini"))
    self.TK = (ini_read_real[]:int32 (var 0s) (var "TK") (var "Toriel"))
    call (ini_close[]:int32 )
    if !(> self.tt 1s) goto 0x001308
0x0012F0:
    stog.msg[0s] = "* You tried to think&  of something to say&  again^1, but.../^"
0x001308:
    if !(> self.tt 2s) goto 0x001334
0x00131C:
    stog.msg[0s] = "* Ironically^1, talking does not&  seem to be the solution&  to this situation./^"
0x001334:
    if !(> self.TK 0s) goto 0x001390
0x001348:
    stog.msg[0s] = "* You thought about telling&  Toriel that you saw&  her die./"
    stog.msg[1s] = "* But...&* That's creepy./"
    stog.msg[2s] = "* Can you show mercy without&  fighting or running&  away...?/^"
0x001390:
    if !(> self.TK 0s) goto 0x0013B8
0x0013A4:
    push (> self.tt 1s)
    goto 0x0013BC
0x0013B8:
    push 0s
0x0013BC:
    if !pop goto 0x0013D8
0x0013C0:
    stog.msg[0s] = "* Can you show mercy&  without running away...?/^"
0x0013D8:
    push -5s
    if !(>= 202s:flag 20s) goto 0x00140C
0x0013F4:
    stog.msg[0s] = "* Not worth talking to./^"
0x00140C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x00146C
0x001460:
    self.halt = 0s
0x00146C:
    popenv 0x001460
0x001470:
    global.heard = 1s
0x00147C:
    if !(== global.myfight 4s) goto 0x0014D8
0x001490:
    if !(== global.mercyuse 0s) goto 0x0014D8
0x0014A4:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x0014D8
0x0014CC:
    call (instance_destroy[]:int32 )
0x0014D8:
    if !(== self.destroyed 1s) goto 0x00164C
0x0014EC:
    if !(== global.faceemotion 0s) goto 0x001518
0x001500:
    self.sprite_index = 737s
    global.typer = 12s
0x001518:
    if !(== global.faceemotion 1s) goto 0x001544
0x00152C:
    self.sprite_index = 740s
    global.typer = 13s
0x001544:
    if !(== global.faceemotion 2s) goto 0x001570
0x001558:
    self.sprite_index = 741s
    global.typer = 14s
0x001570:
    if !(== global.faceemotion 3s) goto 0x00159C
0x001584:
    self.sprite_index = 738s
    global.typer = 15s
0x00159C:
    if !(== global.faceemotion 4s) goto 0x0015E0
0x0015B0:
    self.sprite_index = 742s
    self.image_speed = 0s
    self.image_index = 0s
    global.typer = 13s
0x0015E0:
    if !(== global.faceemotion 5s) goto 0x001600
0x0015F4:
    self.image_index = 1s
0x001600:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x001640
0x001618:
    pushenv 782s 0x00163C
0x001620:
    call (script_execute[]:int32 global.typer (var 150s))
0x00163C:
    popenv 0x001620
0x001640:
    global.facechange = 1s
0x00164C:
    if !(== self.conversation 99s) goto 0x00167C
0x001660:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001680
0x00167C:
    push 0s
0x001680:
    if !pop goto 0x001800
0x001684:
    if !(bool (instance_exists[]:int32 (var 784s))) goto 0x0016BC
0x00169C:
    pushenv (int32 self.blconwd) 0x0016B8
0x0016AC:
    call (instance_destroy[]:int32 )
0x0016B8:
    popenv 0x0016AC
0x0016BC:
    if !(bool (instance_exists[]:int32 (var 186s))) goto 0x0016F4
0x0016D4:
    pushenv (int32 self.blcon) 0x0016F0
0x0016E4:
    call (instance_destroy[]:int32 )
0x0016F0:
    popenv 0x0016E4
0x0016F4:
    if !(bool (instance_exists[]:int32 (var 187s))) goto 0x001724
0x00170C:
    pushenv 187s 0x001720
0x001714:
    call (instance_destroy[]:int32 )
0x001720:
    popenv 0x001714
0x001724:
    push -5s
    if !(== 6s:flag 0s) goto 0x0017A8
0x001740:
    [obj_battlecontroller].runaway = 1s
    self.conversation = 56s
    stog.flag[45s] = 5s
    stog.alarm[2s] = 20s
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    goto 0x001800
0x0017A8:
    self.tr = (instance_create[]:int32 (var 601s) self.y self.x)
    push 735s
    stog.sprite_index* = (int32 self.tr)
    self.visible = 0s
    self.conversation = -20s
0x001800:
    exit
