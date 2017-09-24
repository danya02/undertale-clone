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
    if !(== global.mnfight 1s) goto 0x0002B4
0x0001DC:
    if !(== self.talked 2s) goto 0x000208
0x0001F0:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x00020C
0x000208:
    push 0s
0x00020C:
    if !pop goto 0x00021C
0x000210:
    call (scr_textskip[]:int32 )
0x00021C:
    if !(== self.talked 2s) goto 0x00024C
0x000230:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000250
0x00024C:
    push 0s
0x000250:
    if !pop goto 0x000274
0x000254:
    call (event_user[]:int32 (var 2s))
    self.talked = 3s
0x000274:
    if !(== self.talked 0s) goto 0x0002B4
0x000288:
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x0002B4:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000318
0x0002D8:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000318:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000450
0x00033C:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    if !(>= self.hitplot 10s) goto 0x00039C
0x000380:
    stog.monsterhp[(int32 self.myself)] = 0s
0x00039C:
    pushenv (int32 self.dmgwriter) 0x0003C0
0x0003AC:
    stog.alarm[2s] = 15s
0x0003C0:
    popenv 0x0003AC
0x0003C4:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000438
0x0003E8:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000450
0x000438:
    global.myfight = 0s
    global.mnfight = 1s
0x000450:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000520
0x000474:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 10s))
    pushenv 189s 0x0004E8
0x0004D4:
    stog.alarm[2s] = 30s
0x0004E8:
    popenv 0x0004D4
0x0004EC:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000520:
    if !(== global.mnfight 2s) goto 0x000A40
0x000534:
    if !(== self.attacked 0s) goto 0x000A04
0x000548:
    if !(== self.talked 3s) goto 0x000568
0x00055C:
    self.talked = 0s
0x000568:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 180s
    global.firingrate = 10s
    if !(== self.p_mode 0s) goto 0x00083C
0x0005A4:
    if (== self.myplot 0s) goto 0x0005CC
0x0005B8:
    push (== self.myplot 1s)
    goto 0x0005D0
0x0005CC:
    push 1s
0x0005D0:
    if !pop goto 0x000630
0x0005D4:
    pushenv (int32 self.mypart1) 0x00062C
0x0005E4:
    global.turntimer = 170s
    self.back = 1s
    self.tailtype = 1s
    self.armtype = 0s
    self.tail_t = 0s
    self.tailsiner = 8s
0x00062C:
    popenv 0x0005E4
0x000630:
    if !(== self.myplot 2s) goto 0x00069C
0x000644:
    pushenv (int32 self.mypart1) 0x000698
0x000654:
    self.back = 1s
    self.tailtype = 1s
    self.armtype = 0s
    self.tail_t = 0.3d
    self.tailsiner = 8s
0x000698:
    popenv 0x000654
0x00069C:
    if !(== self.myplot 3s) goto 0x000724
0x0006B0:
    pushenv (int32 self.mypart1) 0x000720
0x0006C0:
    global.turntimer = 240s
    self.intense = 0s
    self.back = 1s
    self.tailtype = 0s
    self.armtype = 1s
    self.tail_t = 0s
    self.tailsiner = 0s
    self.diff = 3s
0x000720:
    popenv 0x0006C0
0x000724:
    if !(== self.myplot 4s) goto 0x0007AC
0x000738:
    pushenv (int32 self.mypart1) 0x0007A8
0x000748:
    global.turntimer = 240s
    self.intense = 1s
    self.back = 1s
    self.tailtype = 0s
    self.armtype = 1s
    self.tail_t = 0s
    self.tailsiner = 0s
    self.diff = 3s
0x0007A8:
    popenv 0x000748
0x0007AC:
    if !(>= self.myplot 5s) goto 0x00083C
0x0007C0:
    pushenv (int32 self.mypart1) 0x000838
0x0007D0:
    global.turntimer = 270s
    self.intense = 0s
    self.back = 1s
    self.tailtype = 1s
    self.armtype = 1s
    self.tail_t = -0.2d
    self.tailsiner = 8s
    self.diff = 3s
0x000838:
    popenv 0x0007D0
0x00083C:
    if !(>= self.mycommand 0s) goto 0x000868
0x000850:
    stog.msg[0s] = "* The enemy looks nervous."
0x000868:
    if !(>= self.mycommand 20s) goto 0x000894
0x00087C:
    stog.msg[0s] = "* The enemy looks anxious."
0x000894:
    if !(>= self.mycommand 40s) goto 0x0008C0
0x0008A8:
    stog.msg[0s] = "* The enemy taps his fingers&  together like jackhammers."
0x0008C0:
    if !(>= self.mycommand 60s) goto 0x0008EC
0x0008D4:
    stog.msg[0s] = "* The enemy looks perturbed."
0x0008EC:
    if !(>= self.mycommand 72s) goto 0x000918
0x000900:
    stog.msg[0s] = "* The enemy tries to copy your&  movements so it fits in."
0x000918:
    if !(>= self.mycommand 86s) goto 0x000944
0x00092C:
    stog.msg[0s] = "* The enemy uses a hypnotizing&  3D-tush-wiggle attack."
0x000944:
    if !(>= self.mycommand 96s) goto 0x000970
0x000958:
    stog.msg[0s] = "* Smells... furry."
0x000970:
    if !(> self.mercymod 100s) goto 0x00099C
0x000984:
    stog.msg[0s] = "* Are we good here!?."
0x00099C:
    push -5s
    push (int32 self.myself):monsterhp
    if !(<= -5s (/ (int32 self.myself):monstermaxhp (double 4s))) goto 0x0009F8
0x0009E0:
    stog.msg[0s] = "* The enemy is apologizing to&  its visions of the Reaper."
0x0009F8:
    self.attacked = 1s
0x000A04:
    if !(== self.mercymod 999999) goto 0x000A34
0x000A1C:
    global.turntimer = -1s
    global.mnfight = 3s
0x000A34:
    self.whatiheard = -1s
0x000A40:
    if !(== global.myfight 2s) goto 0x000E0C
0x000A54:
    if !(!= self.whatiheard -1s) goto 0x000E0C
0x000A68:
    if !(== global.heard 0s) goto 0x000E0C
0x000A7C:
    if !(== self.whatiheard 0s) goto 0x000B24
0x000A90:
    global.msc = 0s
    stog.msg[0s] = "* SO SORRY&* This creature is definitely&  in the wrong time and space!/^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B14
0x000B08:
    self.halt = 0s
0x000B14:
    popenv 0x000B08
0x000B18:
    self.whatiheard = 9s
0x000B24:
    if !(== self.whatiheard 3s) goto 0x000CC8
0x000B38:
    global.msc = 0s
    self.ch = 0s
    self.ch = (choose[]:int32 (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    if !(== self.ch 0s) goto 0x000BB4
0x000B9C:
    stog.msg[0s] = "* You wave^1.&* They're a bit preoccupied./^"
0x000BB4:
    if !(== self.ch 1s) goto 0x000BE0
0x000BC8:
    stog.msg[0s] = "* You say hello^1.&* They're a bit preoccupied./^"
0x000BE0:
    if !(== self.ch 2s) goto 0x000C0C
0x000BF4:
    stog.msg[0s] = "* You smile^1.&* They're a bit preoccupied./^"
0x000C0C:
    if !(== self.ch 3s) goto 0x000C38
0x000C20:
    stog.msg[0s] = "* You cough^1.&* They're a bit preoccupied./^"
0x000C38:
    if !(== self.ch 4s) goto 0x000C64
0x000C4C:
    stog.msg[0s] = "* You weep^1.&* They're a bit preoccupied./^"
0x000C64:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000CC4
0x000CB8:
    self.halt = 0s
0x000CC4:
    popenv 0x000CB8
0x000CC8:
    if !(== self.whatiheard 1s) goto 0x000D64
0x000CDC:
    global.msc = 0s
    stog.msg[0s] = "* You execute some action./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000D60
0x000D54:
    self.halt = 0s
0x000D60:
    popenv 0x000D54
0x000D64:
    if !(== self.whatiheard 4s) goto 0x000E00
0x000D78:
    global.msc = 0s
    stog.msg[0s] = "* You execute some action./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000DFC
0x000DF0:
    self.halt = 0s
0x000DFC:
    popenv 0x000DF0
0x000E00:
    global.heard = 1s
0x000E0C:
    if !(== global.myfight 4s) goto 0x000E68
0x000E20:
    if !(== global.mercyuse 0s) goto 0x000E68
0x000E34:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000E68
0x000E5C:
    call (instance_destroy[]:int32 )
0x000E68:
    if !(== self.n_con 1s) goto 0x000E98
0x000E7C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000E9C
0x000E98:
    push 0s
0x000E9C:
    if !pop goto 0x000EF4
0x000EA0:
    global.border = 0s
    global.typer = 1s
    [obj_heart].x = -200s
    [obj_heart].y = 900s
    [obj_heart].visible = 0s
    global.myfight = -5s
    global.mnfight = 0s
0x000EF4:
    if !(== self.mercymod 222s) goto 0x000F24
0x000F08:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000F28
0x000F24:
    push 0s
0x000F28:
    if !pop goto 0x000F38
0x000F2C:
    call (instance_destroy[]:int32 )
0x000F38:
    if !(<= global.turntimer 0s) goto 0x000F60
0x000F4C:
    push (== global.mnfight 2s)
    goto 0x000F64
0x000F60:
    push 0s
0x000F64:
    if !pop goto 0x000F94
0x000F68:
    global.mnfight = 3s
    pushenv (int32 self.mypart1) 0x000F90
0x000F84:
    self.back = 0s
0x000F90:
    popenv 0x000F84
0x000F94:
    if !(== self.d_con 1s) goto 0x000FC4
0x000FA8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000FC8
0x000FC4:
    push 0s
0x000FC8:
    if !pop goto 0x001090
0x000FCC:
    global.faceemotion = 4s
    stog.flag[20s] = 0s
    pushenv (int32 self.mypart1) 0x001008
0x000FFC:
    self.pause = 1s
0x001008:
    popenv 0x000FFC
0x00100C:
    pushenv (int32 self.mypart1) 0x001028
0x00101C:
    self.intense = 0s
0x001028:
    popenv 0x00101C
0x00102C:
    pushenv (int32 self.mypart1) 0x001048
0x00103C:
    self.hspeed = -2s
0x001048:
    popenv 0x00103C
0x00104C:
    self.hspeed = -1s
    self.d_con = 2s
    stog.alarm[10s] = 80s
    pushenv 454s 0x00108C
0x001080:
    call (instance_destroy[]:int32 )
0x00108C:
    popenv 0x001080
0x001090:
    if !(== self.d_con 2s) goto 0x0010D0
0x0010A4:
    pushenv 453s 0x0010CC
0x0010AC:
    self.image_alpha = (- self.image_alpha 0.02d)
0x0010CC:
    popenv 0x0010AC
0x0010D0:
    if !(== self.d_con 3s) goto 0x001130
0x0010E4:
    self.hspeed = 0s
    pushenv (int32 self.mypart1) 0x00110C
0x001100:
    self.hspeed = 0s
0x00110C:
    popenv 0x001100
0x001110:
    stog.alarm[10s] = 30s
    self.d_con = 4s
0x001130:
    if !(== self.d_con 5s) goto 0x001238
0x001144:
    call (audio_stop_sound[]:int32 global.batmusic)
    global.msc = 0s
    global.typer = 33s
    stog.msg[0s] = "\\E0Oh^1, and.../"
    stog.msg[1s] = "\\E1About all this./"
    stog.msg[2s] = "\\E4Um./"
    stog.msg[3s] = "\\E2Sorry./%%"
    call (scr_blcon_x[]:int32 (+ self.y 20s) (+ self.x 170s))
    push -1500s
    stog.depth* = (int32 self.blcon)
    push -1600s
    stog.depth* = (int32 self.writer)
    self.d_con = 6s
0x001238:
    if !(== self.d_con 6s) goto 0x001268
0x00124C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00126C
0x001268:
    push 0s
0x00126C:
    if !pop goto 0x00133C
0x001270:
    self.visible = 0s
    self.sprite_index = 576s
    self.killed = 1s
    self.x = (+ self.x 19s)
    self.x = (- self.x 70s)
    self.y = (- self.y 24s)
    global.border = 0s
    global.typer = 1s
    [obj_heart].x = -200s
    [obj_heart].y = 900s
    [obj_heart].visible = 0s
    global.myfight = -5s
    global.mnfight = 0s
    call (instance_destroy[]:int32 )
0x00133C:
    if !(== self.p_con 2s) goto 0x001420
0x001350:
    stog.monstertype[1s] = 81s
    stog.monstertype[2s] = 81s
    stog.monsterinstance[1s] = (instance_create[]:int32 (var 454s) (var 88s) (var 26s))
    stog.monsterinstance[2s] = (instance_create[]:int32 (var 454s) (var 88s) (var 526s))
    push -5s
    pushenv (int32 2s:monsterinstance) 0x0013FC
0x0013F0:
    self.specialmessage = 1s
0x0013FC:
    popenv 0x0013F0
0x001400:
    self.p_con = 3s
    stog.alarm[4s] = 50s
0x001420:
    if !(== self.p_con 1s) goto 0x001450
0x001434:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001454
0x001450:
    push 0s
0x001454:
    if !pop goto 0x0014D0
0x001458:
    global.faceemotion = 1s
    call (snd_play[]:int32 (var 30s))
    self.fl = (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    push -2000s
    stog.depth* = (int32 self.fl)
    self.p_con = 2s
    global.mnfight = -6s
0x0014D0:
    if !(== self.p_con 4s) goto 0x001570
0x0014E4:
    stog.msg[0s] = "\\E1Uuuuhhhh, oh no!!&That's a little too&real!/%%"
    global.typer = 111s
    call (scr_blcon_x[]:int32 (+ self.y 20s) (+ self.x 170s))
    push -1500s
    stog.depth* = (int32 self.blcon)
    push -1600s
    stog.depth* = (int32 self.writer)
    self.p_con = 5s
0x001570:
    if !(== self.p_con 5s) goto 0x0015A0
0x001584:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0015A4
0x0015A0:
    push 0s
0x0015A4:
    if !pop goto 0x0015D4
0x0015A8:
    stog.flag[20s] = 0s
    self.p_con = 0s
    global.mnfight = 2s
0x0015D4:
    exit
