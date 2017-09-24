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
    stog.alarm[5s] = 10s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000230:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000294
0x000254:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000294:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x0003B4
0x0002B8:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x00030C
0x0002F8:
    stog.alarm[2s] = 15s
0x00030C:
    popenv 0x0002F8
0x000310:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000384
0x000334:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x0003B4
0x000384:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x0003B4:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000464
0x0003D8:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) self.x)
    pushenv 189s 0x00042C
0x000418:
    stog.alarm[2s] = 30s
0x00042C:
    popenv 0x000418
0x000430:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000464:
    if !(== global.mnfight 2s) goto 0x001488
0x000478:
    if !(== self.attacked 0s) goto 0x00144C
0x00048C:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 180s
    global.firingrate = 10s
    if !(== self.pop 3s) goto 0x0004E8
0x0004C8:
    global.firingrate = (* global.firingrate 2.5d)
0x0004E8:
    if !(== self.pop 2s) goto 0x00051C
0x0004FC:
    global.firingrate = (* global.firingrate 1.8d)
0x00051C:
    if !(== self.turns 1s) goto 0x00057C
0x000530:
    global.turntimer = 110s
    self.gen = (instance_create[]:int32 (var 460s) (var 0s) (var 0s))
    push 1s
    stog.type* = (int32 self.gen)
0x00057C:
    if !(== self.turns 2s) goto 0x0005DC
0x000590:
    global.turntimer = 160s
    self.gen = (instance_create[]:int32 (var 464s) (var 0s) (var 0s))
    push 1s
    stog.t* = (int32 self.gen)
0x0005DC:
    if !(== self.turns 3s) goto 0x000624
0x0005F0:
    global.turntimer = 180s
    self.gen = (instance_create[]:int32 (var 467s) (var 0s) (var 0s))
0x000624:
    if !(== self.turns 4s) goto 0x000684
0x000638:
    global.turntimer = 9999s
    self.gen = (instance_create[]:int32 (var 476s) (var 0s) (var 0s))
    push 0s
    stog.diff* = (int32 self.gen)
0x000684:
    if !(== self.turns 5s) goto 0x0006E4
0x000698:
    global.turntimer = 175s
    self.gen = (instance_create[]:int32 (var 459s) (var 0s) (var 0s))
    push 40s
    stog.factor* = (int32 self.gen)
0x0006E4:
    if !(== self.turns 6s) goto 0x000744
0x0006F8:
    global.turntimer = 190s
    self.gen = (instance_create[]:int32 (var 470s) (var 0s) (var 0s))
    push 0s
    stog.diff* = (int32 self.gen)
0x000744:
    if !(== self.turns 7s) goto 0x0007BC
0x000758:
    global.turntimer = 160s
    self.gen = (instance_create[]:int32 (var 462s) (var 0s) (var 0s))
    push 0s
    stog.diff* = (int32 self.gen)
    push 1s
    stog.lv* = (int32 self.gen)
0x0007BC:
    if !(== self.turns 8s) goto 0x00081C
0x0007D0:
    global.turntimer = 9999s
    self.gen = (instance_create[]:int32 (var 476s) (var 0s) (var 0s))
    push 1s
    stog.diff* = (int32 self.gen)
0x00081C:
    if !(== self.turns 9s) goto 0x00087C
0x000830:
    global.turntimer = 145s
    self.gen = (instance_create[]:int32 (var 464s) (var 0s) (var 0s))
    push 2s
    stog.t* = (int32 self.gen)
0x00087C:
    if !(== self.turns 10s) goto 0x0008DC
0x000890:
    global.turntimer = 190s
    self.gen = (instance_create[]:int32 (var 459s) (var 0s) (var 0s))
    push 35s
    stog.factor* = (int32 self.gen)
0x0008DC:
    if !(== self.turns 11s) goto 0x00093C
0x0008F0:
    global.turntimer = 180s
    self.gen = (instance_create[]:int32 (var 470s) (var 0s) (var 0s))
    push 1s
    stog.diff* = (int32 self.gen)
0x00093C:
    if !(== self.turns 12s) goto 0x00099C
0x000950:
    global.turntimer = 9999s
    self.gen = (instance_create[]:int32 (var 476s) (var 0s) (var 0s))
    push 1s
    stog.diff* = (int32 self.gen)
0x00099C:
    if !(== self.turns 13s) goto 0x0009FC
0x0009B0:
    global.turntimer = 140s
    self.gen = (instance_create[]:int32 (var 462s) (var 0s) (var 0s))
    push 2s
    stog.lv* = (int32 self.gen)
0x0009FC:
    if !(== self.turns 14s) goto 0x000A44
0x000A10:
    global.turntimer = 190s
    self.gen = (instance_create[]:int32 (var 468s) (var 0s) (var 0s))
0x000A44:
    if !(== self.turns 15s) goto 0x000AA4
0x000A58:
    global.turntimer = 175s
    self.gen = (instance_create[]:int32 (var 470s) (var 0s) (var 0s))
    push 2s
    stog.diff* = (int32 self.gen)
0x000AA4:
    if !(== self.turns 16s) goto 0x000B04
0x000AB8:
    global.turntimer = 9999s
    self.gen = (instance_create[]:int32 (var 476s) (var 0s) (var 0s))
    push 2s
    stog.diff* = (int32 self.gen)
0x000B04:
    if !(== self.turns 17s) goto 0x000B64
0x000B18:
    global.turntimer = 173s
    self.gen = (instance_create[]:int32 (var 459s) (var 0s) (var 0s))
    push 30s
    stog.factor* = (int32 self.gen)
0x000B64:
    if !(== self.turns 18s) goto 0x000BC4
0x000B78:
    global.turntimer = 188s
    self.gen = (instance_create[]:int32 (var 470s) (var 0s) (var 0s))
    push 3s
    stog.diff* = (int32 self.gen)
0x000BC4:
    if !(== self.turns 19s) goto 0x000C24
0x000BD8:
    global.turntimer = 130s
    self.gen = (instance_create[]:int32 (var 462s) (var 0s) (var 0s))
    push 3s
    stog.lv* = (int32 self.gen)
0x000C24:
    if !(== self.turns 20s) goto 0x000C84
0x000C38:
    global.turntimer = 9999s
    self.gen = (instance_create[]:int32 (var 476s) (var 0s) (var 0s))
    push 3s
    stog.diff* = (int32 self.gen)
0x000C84:
    if (== self.turns 21s) goto 0x000CAC
0x000C98:
    push (== self.turns 22s)
    goto 0x000CB0
0x000CAC:
    push 1s
0x000CB0:
    if !pop goto 0x000F04
0x000CB4:
    push -5s
    if !(> (int32 self.myself):monsterdef -90s) goto 0x000D04
0x000CD8:
    push -5s
    stog.monsterdef[(- (int32 self.myself):monsterdef 5s)] = (int32 self.myself)
0x000D04:
    self.ch = (choose[]:int32 (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    if !(== self.ch 0s) goto 0x000D9C
0x000D50:
    global.turntimer = 188s
    self.gen = (instance_create[]:int32 (var 470s) (var 0s) (var 0s))
    push 3s
    stog.diff* = (int32 self.gen)
0x000D9C:
    if !(== self.ch 1s) goto 0x000DFC
0x000DB0:
    global.turntimer = 130s
    self.gen = (instance_create[]:int32 (var 462s) (var 0s) (var 0s))
    push 3s
    stog.lv* = (int32 self.gen)
0x000DFC:
    if !(== self.ch 2s) goto 0x000E5C
0x000E10:
    global.turntimer = 173s
    self.gen = (instance_create[]:int32 (var 459s) (var 0s) (var 0s))
    push 30s
    stog.factor* = (int32 self.gen)
0x000E5C:
    if !(== self.ch 3s) goto 0x000EA4
0x000E70:
    global.turntimer = 190s
    self.gen = (instance_create[]:int32 (var 468s) (var 0s) (var 0s))
0x000EA4:
    if !(== self.ch 4s) goto 0x000F04
0x000EB8:
    global.turntimer = 145s
    self.gen = (instance_create[]:int32 (var 464s) (var 0s) (var 0s))
    push 2s
    stog.t* = (int32 self.gen)
0x000F04:
    if !(>= self.turns 20s) goto 0x000F68
0x000F18:
    push -5s
    if !(> (int32 self.myself):monsterdef -120s) goto 0x000F68
0x000F3C:
    push -5s
    stog.monsterdef[(- (int32 self.myself):monsterdef 10s)] = (int32 self.myself)
0x000F68:
    if !(== self.turns 23s) goto 0x000FD4
0x000F7C:
    global.turntimer = 9999s
    self.gen = (instance_create[]:int32 (var 476s) (var 0s) (var 0s))
    push 3s
    stog.diff* = (int32 self.gen)
    self.turns = 20s
0x000FD4:
    self.turnoff = 1s
    self.toriel = 0s
    if !(== self.toriel 1s) goto 0x00139C
0x001000:
    if !(>= self.mycommand 0s) goto 0x001028
0x001014:
    push (<= self.mycommand 20s)
    goto 0x00102C
0x001028:
    push 0s
0x00102C:
    if !pop goto 0x001088
0x001030:
    global.turntimer = 140s
    global.firingrate = 5s
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 7s
    stog.bullettype* = (int32 self.gen)
0x001088:
    if !(> self.mycommand 20s) goto 0x0010B0
0x00109C:
    push (<= self.mycommand 40s)
    goto 0x0010B4
0x0010B0:
    push 0s
0x0010B4:
    if !pop goto 0x001110
0x0010B8:
    global.turntimer = 140s
    global.firingrate = 2s
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 8s
    stog.bullettype* = (int32 self.gen)
0x001110:
    if !(> self.mycommand 80s) goto 0x001138
0x001124:
    push (<= self.mycommand 100s)
    goto 0x00113C
0x001138:
    push 0s
0x00113C:
    if !pop goto 0x0011CC
0x001140:
    global.turntimer = 200s
    global.firingrate = 2s
    push (var 614s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 2s:idealborder 5s) -5s (- 0s:idealborder 45s))
    if !(> global.hp 6s) goto 0x0011CC
0x0011B4:
    push 5s
    stog.dmg* = (int32 self.gen)
0x0011CC:
    if !(> self.mycommand 60s) goto 0x0011F4
0x0011E0:
    push (<= self.mycommand 80s)
    goto 0x0011F8
0x0011F4:
    push 0s
0x0011F8:
    if !pop goto 0x001314
0x0011FC:
    global.turntimer = 200s
    global.firingrate = 2s
    push (var 614s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 2s:idealborder 5s) -5s (- 0s:idealborder 45s))
    push 1s
    stog.x1* = (int32 self.gen)
    if !(> global.hp 6s) goto 0x0012A0
0x001288:
    push 5s
    stog.dmg* = (int32 self.gen)
0x0012A0:
    push (var 615s)
    push -5s
    self.gen2 = (instance_create[]:int32 (- 3s:idealborder 15s) -5s (+ 1s:idealborder 5s))
    if !(> global.hp 6s) goto 0x001314
0x0012FC:
    push 5s
    stog.dmg* = (int32 self.gen2)
0x001314:
    if !(> self.mycommand 40s) goto 0x00133C
0x001328:
    push (<= self.mycommand 60s)
    goto 0x001340
0x00133C:
    push 0s
0x001340:
    if !pop goto 0x00139C
0x001344:
    global.turntimer = 140s
    global.firingrate = 6s
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 10s
    stog.bullettype* = (int32 self.gen)
0x00139C:
    push self.myself
    stog.myself* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x0013E4
0x0013CC:
    stog.msg[0s] = "* ..."
0x0013E4:
    push -5s
    push (int32 self.myself):monsterhp
    if !(<= -5s (/ (int32 self.myself):monstermaxhp (double 4s))) goto 0x001440
0x001428:
    stog.msg[0s] = "* Asgore has low HP."
0x001440:
    self.attacked = 1s
0x00144C:
    if !(== self.mercymod 999999) goto 0x00147C
0x001464:
    global.turntimer = -1s
    global.mnfight = 3s
0x00147C:
    self.whatiheard = -1s
0x001488:
    if !(== global.myfight 2s) goto 0x001A68
0x00149C:
    if !(!= self.whatiheard -1s) goto 0x001A68
0x0014B0:
    if !(== global.heard 0s) goto 0x001A68
0x0014C4:
    if !(== self.whatiheard 0s) goto 0x00156C
0x0014D8:
    global.msc = 0s
    stog.msg[0s] = "* ASGORE 80 ATK 80 DEF /^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x00155C
0x001550:
    self.halt = 0s
0x00155C:
    popenv 0x001550
0x001560:
    self.whatiheard = 9s
0x00156C:
    if !(== self.whatiheard 3s) goto 0x001A5C
0x001580:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.ky = (ini_read_real[]:int32 (var 0s) (var "KillYou") (var "Asgore"))
    call (ini_close[]:int32 )
    global.msc = 0s
    stog.msg[0s] = "* But there was nothing to&  say./^"
    if !(== global.kills 0s) goto 0x0017BC
0x00160C:
    if !(== self.talk_x 0s) goto 0x001650
0x001620:
    stog.msg[0s] = "* You quietly tell ASGORE&  you don't want to fight&  him./"
    stog.msg[1s] = "* His hands tremble for a&  moment./^"
0x001650:
    if !(== self.talk_x 1s) goto 0x001694
0x001664:
    stog.msg[0s] = "* You tell ASGORE that you&  don't want to fight him./"
    stog.msg[1s] = "* His breathing gets funny&  for a moment./^"
0x001694:
    if !(== self.talk_x 2s) goto 0x001748
0x0016A8:
    stog.msg[0s] = "* You firmly tell ASGORE to&  STOP fighting./"
    stog.msg[1s] = "* Recollection flashes in his&  eyes.../"
    stog.msg[2s] = "* ASGORE's ATTACK dropped^1!&* ASGORE's DEFENSE dropped!/^"
    push -5s
    stog.monsteratk[(- (int32 self.myself):monsteratk 1s)] = (int32 self.myself)
    push -5s
    stog.monsterdef[(- (int32 self.myself):monsterdef 10s)] = (int32 self.myself)
0x001748:
    if !(>= self.talk_x 3s) goto 0x001770
0x00175C:
    push (!= self.talk_x 8s)
    goto 0x001774
0x001770:
    push 0s
0x001774:
    if !pop goto 0x001790
0x001778:
    stog.msg[0s] = "* Seems talking won't do any&  more good./^"
0x001790:
    if !(== self.talk_x 8s) goto 0x0017BC
0x0017A4:
    stog.msg[0s] = "* All you can do is FIGHT./^"
0x0017BC:
    if !(== self.talk_x 0s) goto 0x0017E4
0x0017D0:
    push (> self.ky 0s)
    goto 0x0017E8
0x0017E4:
    push 0s
0x0017E8:
    if !pop goto 0x0019E0
0x0017EC:
    self.vari = "too many times&  to count"
    if !(== self.ky 1s) goto 0x001820
0x001810:
    self.vari = "once before"
0x001820:
    if !(== self.ky 2s) goto 0x001844
0x001834:
    self.vari = "twice before"
0x001844:
    if !(== self.ky 3s) goto 0x001868
0x001858:
    self.vari = "three times"
0x001868:
    if !(== self.ky 4s) goto 0x00188C
0x00187C:
    self.vari = "four times"
0x00188C:
    if !(== self.ky 5s) goto 0x0018B0
0x0018A0:
    self.vari = "five times"
0x0018B0:
    if !(== self.ky 6s) goto 0x0018D4
0x0018C4:
    self.vari = "six times"
0x0018D4:
    if !(== self.ky 7s) goto 0x0018F8
0x0018E8:
    self.vari = "seven times"
0x0018F8:
    if !(== self.ky 8s) goto 0x00191C
0x00190C:
    self.vari = "eight times"
0x00191C:
    if !(== self.ky 9s) goto 0x001940
0x001930:
    self.vari = "nine times"
0x001940:
    stog.msg[0s] = (+ (+ "* You tell ASGORE that he's&  killed you " self.vari) "./")
    stog.msg[1s] = "* He nods sadly./^"
    if !(> self.ky 4s) goto 0x0019B4
0x00199C:
    stog.msg[1s] = "* He nods grievously./^"
0x0019B4:
    if !(> self.ky 9s) goto 0x0019E0
0x0019C8:
    stog.msg[1s] = "* He nods pitifully./^"
0x0019E0:
    self.talk_x = (+ self.talk_x 1s)
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x001A58
0x001A4C:
    self.halt = 0s
0x001A58:
    popenv 0x001A4C
0x001A5C:
    global.heard = 1s
0x001A68:
    if !(== global.myfight 4s) goto 0x001AC4
0x001A7C:
    if !(== global.mercyuse 0s) goto 0x001AC4
0x001A90:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001AC4
0x001AB8:
    call (instance_destroy[]:int32 )
0x001AC4:
    if !(== self.mercymod 222s) goto 0x001AF4
0x001AD8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001AF8
0x001AF4:
    push 0s
0x001AF8:
    if !pop goto 0x001B30
0x001AFC:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001B30
0x001B24:
    call (instance_destroy[]:int32 )
0x001B30:
    push -5s
    self.curatk = (int32 self.myself):monsteratk
    if !(== self.turnoff 1s) goto 0x001B78
0x001B64:
    push (<= global.turntimer 0s)
    goto 0x001B7C
0x001B78:
    push 0s
0x001B7C:
    if !pop goto 0x001BBC
0x001B80:
    self.dont = 0s
    global.turntimer = -1s
    self.turnoff = 0s
    global.mnfight = 3s
    global.myfight = -1s
0x001BBC:
    exit
