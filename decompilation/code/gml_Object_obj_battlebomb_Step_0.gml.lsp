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
    stog.alarm[5s] = 70s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000230:
    if !(== global.myfight 1s) goto 0x00031C
0x000244:
    self.gotimer = (- self.gotimer 1s)
    if !(== (int32 self.mypart1):got 1s) goto 0x000290
0x00027C:
    push (> self.gotimer 0s)
    goto 0x000294
0x000290:
    push 0s
0x000294:
    if !pop goto 0x00031C
0x000298:
    if !(!= (int32 self.mypart1):type 99s) goto 0x0002D4
0x0002B8:
    self.remtype = (int32 self.mypart1):type
0x0002D4:
    push 99s
    stog.type* = (int32 self.mypart1)
    push 0s
    stog.hspeed* = (int32 self.mypart1)
    push 0s
    stog.vspeed* = (int32 self.mypart1)
0x00031C:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000444
0x000340:
    if !(== (int32 self.mypart1):got 1s) goto 0x000428
0x000360:
    if !(!= (int32 self.mypart1):type 99s) goto 0x00039C
0x000380:
    self.remtype = (int32 self.mypart1):type
0x00039C:
    push 99s
    stog.type* = (int32 self.mypart1)
    push 0s
    stog.hspeed* = (int32 self.mypart1)
    push 0s
    stog.vspeed* = (int32 self.mypart1)
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
    goto 0x000444
0x000428:
    stog.hurtanim[(int32 self.myself)] = 2s
0x000444:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000508
0x000468:
    if !(== self.defuse 0s) goto 0x0004CC
0x00047C:
    push self.bombtype
    stog.type* = (int32 self.mypart1)
    stog.hurtanim[(int32 self.myself)] = 0s
    global.myfight = 0s
    global.mnfight = 1s
0x0004CC:
    if !(== self.defuse 1s) goto 0x000508
0x0004E0:
    self.con = 999s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000508:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x00057C
0x00052C:
    push self.bombtype
    stog.type* = (int32 self.mypart1)
    stog.hurtanim[(int32 self.myself)] = 0s
    global.myfight = 0s
    global.mnfight = 1s
0x00057C:
    if !(== global.mnfight 2s) goto 0x00062C
0x000590:
    if !(== self.attacked 0s) goto 0x000620
0x0005A4:
    self.gotimer = 3s
    if !(>= self.mycommand 0s) goto 0x0005DC
0x0005C4:
    stog.msg[0s] = "* The bomb is still active!"
0x0005DC:
    if !(== self.bombtype 1s) goto 0x000608
0x0005F0:
    stog.msg[0s] = "* The dog is still active!"
0x000608:
    global.turntimer = -1s
    global.mnfight = 3s
0x000620:
    self.whatiheard = -1s
0x00062C:
    if !(== global.myfight 2s) goto 0x0009BC
0x000640:
    if !(!= self.whatiheard -1s) goto 0x0009BC
0x000654:
    if !(== global.heard 0s) goto 0x0009BC
0x000668:
    if !(== self.whatiheard 0s) goto 0x000818
0x00067C:
    global.msc = 0s
    stog.msg[0s] = "* BOMB&* Could blow at any moment./^"
    if !(== self.bombtype 1s) goto 0x0006CC
0x0006B4:
    stog.msg[0s] = "* ANNOYING DOG-BOMB&* It's blissfully unaware of&  its circumstances./^"
0x0006CC:
    if !(== self.bombtype 2s) goto 0x0006F8
0x0006E0:
    stog.msg[0s] = "* EXTREMELY AGILE G.O.W.&* All things considered^1, it's an&  extremely agile glass of water./^"
0x0006F8:
    if !(== self.bombtype 3s) goto 0x000724
0x00070C:
    stog.msg[0s] = "* SCRIPT BOMB&* Like all modern blockbusters^1,&  it's full of explosions./^"
0x000724:
    if !(== self.bombtype 4s) goto 0x000750
0x000738:
    stog.msg[0s] = "* BASKET BOMB&* Even if you explode^1, you'll&  at least look good./^"
0x000750:
    if !(== self.bombtype 5s) goto 0x00077C
0x000764:
    stog.msg[0s] = "* PRESENT BOMB&* Regardless^1, you'll have to&  write a thank-you letter./^"
0x00077C:
    if !(== self.bombtype 6s) goto 0x0007A8
0x000790:
    stog.msg[0s] = "* GAME BOMB&* You really should have rented&  it first./^"
0x0007A8:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000808
0x0007FC:
    self.halt = 0s
0x000808:
    popenv 0x0007FC
0x00080C:
    self.whatiheard = 9s
0x000818:
    if !(== self.whatiheard 3s) goto 0x0009BC
0x00082C:
    global.msc = 0s
    stog.msg[0s] = "* Defuse failed^1!&* Aim for DEFUSE ZONE!/^"
    push 1s
    stog.flash* = (int32 self.mypart1)
    if !(== (int32 self.mypart1):got 1s) goto 0x00094C
0x000888:
    stog.msg[0s] = "* Bomb defused!"
    if !(== self.bombtype 1s) goto 0x0008CC
0x0008B4:
    stog.msg[0s] = "* Dog defused!"
0x0008CC:
    push 99s
    stog.type* = (int32 self.mypart1)
    push 1s
    stog.defuse* = (int32 self.mypart1)
    push 0s
    stog.vspeed* = (int32 self.mypart1)
    push 0s
    stog.hspeed* = (int32 self.mypart1)
    self.con = 1000s
    stog.alarm[4s] = 45s
0x00094C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0009AC
0x0009A0:
    self.halt = 0s
0x0009AC:
    popenv 0x0009A0
0x0009B0:
    global.heard = 1s
0x0009BC:
    if !(== global.myfight 4s) goto 0x000A18
0x0009D0:
    if !(== global.mercyuse 0s) goto 0x000A18
0x0009E4:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000A18
0x000A0C:
    call (instance_destroy[]:int32 )
0x000A18:
    if !(== self.mercymod 222s) goto 0x000A48
0x000A2C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000A4C
0x000A48:
    push 0s
0x000A4C:
    if !pop goto 0x000A84
0x000A50:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000A84
0x000A78:
    call (instance_destroy[]:int32 )
0x000A84:
    if !(== self.con 999s) goto 0x000AB8
0x000A98:
    self.con = 1000s
    stog.alarm[4s] = 30s
0x000AB8:
    if !(== self.con 1001s) goto 0x000B10
0x000ACC:
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    self.con = 1002s
    stog.alarm[4s] = 12s
0x000B10:
    if !(== self.con 1003s) goto 0x000B5C
0x000B24:
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    call (room_goto[]:int32 global.currentroom)
0x000B5C:
    exit
