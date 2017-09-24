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
    stog.alarm[5s] = 110s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000230:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0002BC
0x000248:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0002A0
0x000264:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x0002A0
0x000284:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x0002A4
0x0002A0:
    push 0s
0x0002A4:
    if !pop goto 0x0002BC
0x0002A8:
    stog.alarm[5s] = 2s
0x0002BC:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000320
0x0002E0:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000320:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000440
0x000344:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x000398
0x000384:
    stog.alarm[2s] = 15s
0x000398:
    popenv 0x000384
0x00039C:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000410
0x0003C0:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000440
0x000410:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000440:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000510
0x000464:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0004D8
0x0004C4:
    stog.alarm[2s] = 30s
0x0004D8:
    popenv 0x0004C4
0x0004DC:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000510:
    if !(== global.mnfight 2s) goto 0x000BA4
0x000524:
    if !(== self.attacked 0s) goto 0x000B50
0x000538:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 160s
    global.firingrate = 7s
    if !(== self.pop 3s) goto 0x000594
0x000574:
    global.firingrate = (* global.firingrate 2.4d)
0x000594:
    if !(== self.pop 2s) goto 0x0005C8
0x0005A8:
    global.firingrate = (* global.firingrate 1.7d)
0x0005C8:
    if !(== self.stare1a 1s) goto 0x0005FC
0x0005DC:
    self.mycommand = (+ (random[]:int32 (var 50s)) 50s)
0x0005FC:
    if !(== self.stare2a 1s) goto 0x000628
0x000610:
    self.mycommand = (random[]:int32 (var 49s))
0x000628:
    if !(< self.mycommand 50s) goto 0x0006C8
0x00063C:
    self.orb = (instance_create[]:int32 (var 365s) (var 100s) (var 100s))
    if !(> self.stare2 0s) goto 0x0006C4
0x000678:
    stog.dmg* = (- (int32 self.orb):dmg (* self.stare2 2s))
    push 1s
    stog.alt* = (int32 self.orb)
0x0006C4:
    push (int32 self.orb)
    goto 0x0008C4
0x0006C8:
    self.orb = (instance_create[]:int32 (var 366s) (var 100s) (var 100s))
    if !(== self.pop 2s) goto 0x00071C
0x000704:
    push 1s
    stog.zap* = (int32 self.orb)
0x00071C:
    push 1s
    stog.king* = (int32 self.orb)
    push (random[]:int32 (var 360s))
    stog.dirr* = (int32 self.orb)
    if !(> self.stare1 0s) goto 0x000780
0x00076C:
    push (== self.pop 1s)
    goto 0x000784
0x000780:
    push 0s
0x000784:
    if !pop goto 0x0008C4
0x000788:
    push (random[]:int32 (var 100s))
    stog.dirr* = (int32 self.orb)
    self.nowdirr = (int32 self.orb):dirr
    self.orb2 = (instance_create[]:int32 (var 366s) (var 100s) (var 100s))
    push (+ (+ self.nowdirr 40s) (random[]:int32 (var 80s)))
    stog.dirr* = (int32 self.orb2)
    self.orb3 = (instance_create[]:int32 (var 366s) (var 100s) (var 100s))
    push (+ (+ (int32 self.orb2):dirr 40s) (random[]:int32 (var 70s)))
    stog.dirr* = (int32 self.orb3)
    [obj_wizardorb_chaser].dmg = (- 366.dmg (* self.stare1 2s))
    [obj_wizardorb_chaser].zap = 0s
0x0008C4:
    self.stare1a = 0s
    self.stare2a = 0s
    if !(> self.confuse 0s) goto 0x000904
0x0008F0:
    push (!= 743.sprite_index 35s)
    goto 0x000908
0x000904:
    push 0s
0x000908:
    if !pop goto 0x000954
0x00090C:
    [obj_heart].confuse = 1s
    [obj_heart].sprite_index = 35s
    [obj_heart].x = (+ 743.x 8s)
    [obj_heart].y = (+ 743.y 8s)
0x000954:
    if !(>= self.mycommand 0s) goto 0x000980
0x000968:
    stog.msg[0s] = "* Madjick does a mysterious jig."
0x000980:
    if !(>= self.mycommand 25s) goto 0x0009AC
0x000994:
    stog.msg[0s] = "* Madjick flaunts its orbs&  in a menacing manner."
0x0009AC:
    if !(>= self.mycommand 50s) goto 0x0009D8
0x0009C0:
    stog.msg[0s] = "* Madjick whispers arcane&  swear words."
0x0009D8:
    if !(>= self.mycommand 75s) goto 0x000A04
0x0009EC:
    stog.msg[0s] = "* Madjick peers at you with&  strange eyes."
0x000A04:
    if !(>= self.mycommand 90s) goto 0x000A30
0x000A18:
    stog.msg[0s] = "* Smells like magic."
0x000A30:
    if !(== self.mercymod 140s) goto 0x000A5C
0x000A44:
    stog.msg[0s] = "* Madjick is distracted by its&  own voice."
0x000A5C:
    if !(> self.confuse 0s) goto 0x000A88
0x000A70:
    stog.msg[0s] = "* You still feel confused."
0x000A88:
    if !(> self.confuse 0s) goto 0x000AB0
0x000A9C:
    push (== self.mercymod 140s)
    goto 0x000AB4
0x000AB0:
    push 0s
0x000AB4:
    if !pop goto 0x000AD0
0x000AB8:
    stog.msg[0s] = "* Madjick is distracted.&* You still feel confused."
0x000AD0:
    if !(> self.stare1 0s) goto 0x000AF8
0x000AE4:
    push (> self.stare2 0s)
    goto 0x000AFC
0x000AF8:
    push 0s
0x000AFC:
    if !pop goto 0x000B18
0x000B00:
    stog.msg[0s] = "* Madjick's orbs are&  incapacitated."
0x000B18:
    if !(> self.mercymod 280s) goto 0x000B44
0x000B2C:
    stog.msg[0s] = "* Madjick believes you are&  a fellow wizard."
0x000B44:
    self.attacked = 1s
0x000B50:
    if !(> self.criticize 0s) goto 0x000B78
0x000B64:
    push (== self.pop 1s)
    goto 0x000B7C
0x000B78:
    push 0s
0x000B7C:
    if !pop goto 0x000B98
0x000B80:
    global.turntimer = -1s
    global.mnfight = 3s
0x000B98:
    self.whatiheard = -1s
0x000BA4:
    if !(== global.myfight 2s) goto 0x0012B8
0x000BB8:
    if !(!= self.whatiheard -1s) goto 0x0012B8
0x000BCC:
    if !(== global.heard 0s) goto 0x0012B8
0x000BE0:
    if !(== self.whatiheard 0s) goto 0x000C88
0x000BF4:
    global.msc = 0s
    stog.msg[0s] = "* MADJICK - ATK 29 DEF 24 &* This magical mercenary only&  says magic words./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000C78
0x000C6C:
    self.halt = 0s
0x000C78:
    popenv 0x000C6C
0x000C7C:
    self.whatiheard = 9s
0x000C88:
    if !(== self.whatiheard 3s) goto 0x000E58
0x000C9C:
    global.msc = 0s
    if !(> self.confuse 0s) goto 0x000CD0
0x000CBC:
    push (== self.clear 0s)
    goto 0x000CD4
0x000CD0:
    push 0s
0x000CD4:
    if !pop goto 0x000D14
0x000CD8:
    stog.msg[0s] = "* You can't get a word&  in edgewise^1.&* Its words dizzy you.../^"
    [obj_heart].confuse = 1s
    self.confuse = 1s
    [obj_heart].sprite_index = 35s
0x000D14:
    if !(== self.confuse 0s) goto 0x000D3C
0x000D28:
    push (== self.clear 0s)
    goto 0x000D40
0x000D3C:
    push 0s
0x000D40:
    if !pop goto 0x000DBC
0x000D44:
    stog.msg[0s] = "* Madjick interrupts you by&  chattering to itself./"
    stog.msg[1s] = "* Its gibberish dizzies you...&* Your DEFENSE drops by 1./^"
    self.confuse = (+ self.confuse 1s)
    [obj_heart].confuse = 1s
    [obj_heart].sprite_index = 35s
    global.df = (- global.df 1s)
0x000DBC:
    if !(> self.clear 0s) goto 0x000DE8
0x000DD0:
    stog.msg[0s] = "* Magick interrupts you by&  chattering to itself^1.&* It seems satisfied./^"
0x000DE8:
    self.mercymod = 190s
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000E54
0x000E48:
    self.halt = 0s
0x000E54:
    popenv 0x000E48
0x000E58:
    if !(== self.whatiheard 1s) goto 0x000F18
0x000E6C:
    global.msc = 0s
    global.typer = 1s
    global.myfight = 3s
    global.bmenuno = 6s
    stog.msg[0s] = "* Where to stare?             &                            &   Chaser Orb      Corner Orb\\C"
    [OBJ_WRITER].halt = 3s
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000F14
0x000F08:
    self.halt = 0s
0x000F14:
    popenv 0x000F08
0x000F18:
    if !(== self.whatiheard 4s) goto 0x00106C
0x000F2C:
    global.msc = 0s
    self.clear = 1s
    if !(== self.confuse 0s) goto 0x000F88
0x000F58:
    stog.msg[0s] = "* You ignore Madjick and think&  of pollen and sunshine^1.&* Your DEFENSE increased by 1./^"
    global.df = (+ global.df 5s)
0x000F88:
    if !(> self.confuse 0s) goto 0x000FFC
0x000F9C:
    stog.msg[0s] = "* You think of pollen and&  sunshine./"
    stog.msg[1s] = "* Your confusion abates^1.&* Your DEFENSE increased by 2./^"
    global.df = (+ global.df 10s)
    [obj_heart].confuse = 0s
    self.confuse = 0s
0x000FFC:
    pushenv 782s 0x001010
0x001004:
    self.halt = 3s
0x001010:
    popenv 0x001004
0x001014:
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x001068
0x00105C:
    self.halt = 0s
0x001068:
    popenv 0x00105C
0x00106C:
    if !(== self.whatiheard 6s) goto 0x00117C
0x001080:
    pushenv 782s 0x001094
0x001088:
    call (instance_destroy[]:int32 )
0x001094:
    popenv 0x001088
0x001098:
    self.stare1 = (+ self.stare1 1s)
    self.stare1a = 1s
    global.msc = 0s
    global.typer = 1s
    stog.msg[0s] = "* The unrelenting \"Chaser Orb\"&  was weakened by your glare./^"
    if !(> self.stare1 1s) goto 0x001118
0x001100:
    stog.msg[0s] = "* The destitute \"Chaser Orb\" was&  weakened further by your glare./^"
0x001118:
    if !(< self.mercymod 200s) goto 0x001144
0x00112C:
    self.mercymod = (+ self.mercymod 100s)
0x001144:
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
0x00117C:
    if !(== self.whatiheard 7s) goto 0x0012AC
0x001190:
    pushenv 782s 0x0011A4
0x001198:
    call (instance_destroy[]:int32 )
0x0011A4:
    popenv 0x001198
0x0011A8:
    self.stare2 = (+ self.stare2 1s)
    self.stare2a = 1s
    global.msc = 0s
    global.typer = 1s
    stog.msg[0s] = "* The intimidating \"Corner Orb\"&  was weakened by your glare./^"
    if !(> self.stare2 1s) goto 0x001228
0x001210:
    stog.msg[0s] = "* The homely \"Corner Orb\" was&  weakened further by your glare./^"
0x001228:
    if !(< self.mercymod 200s) goto 0x001254
0x00123C:
    self.mercymod = (+ self.mercymod 100s)
0x001254:
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0012A8
0x00129C:
    self.halt = 0s
0x0012A8:
    popenv 0x00129C
0x0012AC:
    global.heard = 1s
0x0012B8:
    if !(== global.mnfight 0s) goto 0x0012E0
0x0012CC:
    push (== global.myfight 0s)
    goto 0x0012E4
0x0012E0:
    push 0s
0x0012E4:
    if !pop goto 0x001300
0x0012E8:
    [obj_heart].sprite_index = 34s
    [obj_heart].image_angle = 0s
0x001300:
    if !(== global.myfight 4s) goto 0x00135C
0x001314:
    if !(== global.mercyuse 0s) goto 0x00135C
0x001328:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x00135C
0x001350:
    call (instance_destroy[]:int32 )
0x00135C:
    if !(== self.mercymod 222s) goto 0x00138C
0x001370:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001390
0x00138C:
    push 0s
0x001390:
    if !pop goto 0x0013C8
0x001394:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x0013C8
0x0013BC:
    call (instance_destroy[]:int32 )
0x0013C8:
    exit
