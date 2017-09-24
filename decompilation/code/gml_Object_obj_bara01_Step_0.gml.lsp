0x000000:
    if !(== global.mnfight 3s) goto 0x000044
0x000014:
    self.attacked = 0s
    self.whatiheard = -1s
    pushenv 699s 0x000040
0x000034:
    call (instance_destroy[]:int32 )
0x000040:
    popenv 0x000034
0x000044:
    push -1s
    if !(> 5s:alarm 0s) goto 0x0001EC
0x000060:
    push -5s
    if !(== 0s:monster 1s) goto 0x0000E4
0x00007C:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0000E4
0x0000B4:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0000E4:
    push -5s
    if !(== 1s:monster 1s) goto 0x000168
0x000100:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000168
0x000138:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000168:
    push -5s
    if !(== 2s:monster 1s) goto 0x0001EC
0x000184:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0001EC
0x0001BC:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0001EC:
    if !(== global.mnfight 1s) goto 0x000254
0x000200:
    if !(== self.talked 0s) goto 0x000254
0x000214:
    stog.alarm[5s] = 110s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000254:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0002E0
0x00026C:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0002C4
0x000288:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x0002C4
0x0002A8:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x0002C8
0x0002C4:
    push 0s
0x0002C8:
    if !pop goto 0x0002E0
0x0002CC:
    stog.alarm[5s] = 2s
0x0002E0:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000344
0x000304:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000344:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000464
0x000368:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x0003BC
0x0003A8:
    stog.alarm[2s] = 15s
0x0003BC:
    popenv 0x0003A8
0x0003C0:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000434
0x0003E4:
    push 0s
    stog.pause* = (int32 self.mypart1)
    stog.hurtanim[(int32 self.myself)] = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000464
0x000434:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000464:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000534
0x000488:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0004FC
0x0004E8:
    stog.alarm[2s] = 30s
0x0004FC:
    popenv 0x0004E8
0x000500:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000534:
    if !(== global.mnfight 2s) goto 0x000938
0x000548:
    push 759.y
    if !(> -5s 2s:idealborder) goto 0x000590
0x000568:
    [obj_heart].y = (/ (+ 759.y 761.y) (double 2s))
0x000590:
    self.pop = (scr_monstersum[]:int32 )
    if !(== self.attacked 0s) goto 0x0005C8
0x0005B4:
    push (== self.pop 1s)
    goto 0x0005CC
0x0005C8:
    push 0s
0x0005CC:
    if !pop goto 0x000938
0x0005D0:
    global.turntimer = 180s
    if !(== (instance_exists[]:int32 (var 699s)) 0s) goto 0x000740
0x0005F8:
    if !(>= self.mycommand 0s) goto 0x000620
0x00060C:
    push (<= self.mycommand 50s)
    goto 0x000624
0x000620:
    push 0s
0x000624:
    if !pop goto 0x0006A8
0x000628:
    global.firingrate = 25s
    self.gen = (instance_create[]:int32 (var 699s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    push 8s
    push (int32 self.gen)
    stog.alarm[] = 0s
    goto 0x000724
0x0006A8:
    global.firingrate = 20s
    self.gen = (instance_create[]:int32 (var 699s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    push 8s
    push (int32 self.gen)
    stog.alarm[] = 1s
0x000724:
    push self.myself
    stog.myself* = (int32 self.gen)
0x000740:
    if !(>= self.mycommand 0s) goto 0x00076C
0x000754:
    stog.msg[0s] = "* 02 seems to be bothered by&  his outfit."
0x00076C:
    if !(>= self.mycommand 25s) goto 0x000798
0x000780:
    stog.msg[0s] = "* 01 is polishing his face."
0x000798:
    if !(>= self.mycommand 50s) goto 0x0007C4
0x0007AC:
    stog.msg[0s] = "* 01 stands guard."
0x0007C4:
    if !(>= self.mycommand 75s) goto 0x0007F0
0x0007D8:
    stog.msg[0s] = "* 02 watches your movements."
0x0007F0:
    if !(>= self.mycommand 90s) goto 0x00081C
0x000804:
    stog.msg[0s] = "* Smells like a military zoo."
0x00081C:
    self.pop = (scr_monstersum[]:int32 )
    if !(== self.pop 1s) goto 0x0008F0
0x000840:
    if !(>= self.mycommand 0s) goto 0x00086C
0x000854:
    stog.msg[0s] = "* 01 holds his head in his&  hands."
0x00086C:
    if !(>= self.mycommand 25s) goto 0x000898
0x000880:
    stog.msg[0s] = "* Anguished noises come from&  inside 01's armor."
0x000898:
    if !(>= self.mycommand 50s) goto 0x0008C4
0x0008AC:
    stog.msg[0s] = "* 01 stands still."
0x0008C4:
    if !(>= self.mycommand 75s) goto 0x0008F0
0x0008D8:
    stog.msg[0s] = "* 01 doesn't know what to do."
0x0008F0:
    push -5s
    if !(< (int32 self.myself):monsterhp 30s) goto 0x00092C
0x000914:
    stog.msg[0s] = "* 01's breathing intensifies."
0x00092C:
    self.attacked = 1s
0x000938:
    if !(== global.myfight 2s) goto 0x000BD0
0x00094C:
    if !(!= self.whatiheard -1s) goto 0x000BD0
0x000960:
    if !(== global.heard 0s) goto 0x000BD0
0x000974:
    if !(== self.whatiheard 0s) goto 0x000A6C
0x000988:
    global.msc = 0s
    stog.msg[0s] = "* RG 01 - ATK 30 DEF 20&* Royal Guard member with&  shining^1, polished armor./^"
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x0009DC
0x0009C0:
    push -5s
    push (== 27s:flag 0s)
    goto 0x0009E0
0x0009DC:
    push 0s
0x0009E0:
    if !pop goto 0x0009FC
0x0009E4:
    stog.msg[0s] = "* I see two lovers staring over&  the edge of the cauldron of&  hell./^"
0x0009FC:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A5C
0x000A50:
    self.halt = 0s
0x000A5C:
    popenv 0x000A50
0x000A60:
    self.whatiheard = 9s
0x000A6C:
    if !(== self.whatiheard 1s) goto 0x000B08
0x000A80:
    global.msc = 0s
    stog.msg[0s] = "* You attempt to touch RG 01's&  armor^1.&* Your hands slip off./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B04
0x000AF8:
    self.halt = 0s
0x000B04:
    popenv 0x000AF8
0x000B08:
    if !(== self.whatiheard 3s) goto 0x000BC4
0x000B1C:
    global.msc = 0s
    stog.msg[0s] = "* You tell RG 01 to be honest&  with his feelings./^"
    if !(== self.shake 1s) goto 0x000B60
0x000B54:
    self.toldhim = 1s
0x000B60:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BC0
0x000BB4:
    self.halt = 0s
0x000BC0:
    popenv 0x000BB4
0x000BC4:
    global.heard = 1s
0x000BD0:
    if !(== self.toldhim 1s) goto 0x000C48
0x000BE4:
    if !(> global.turntimer 1s) goto 0x000C48
0x000BF8:
    if !(< global.turntimer 5s) goto 0x000C48
0x000C0C:
    if !(== global.mnfight 2s) goto 0x000C48
0x000C20:
    if !(== self.con 0s) goto 0x000C48
0x000C34:
    push (== (scr_monstersum[]:int32 ) 2s)
    goto 0x000C4C
0x000C48:
    push 0s
0x000C4C:
    if !pop goto 0x000C8C
0x000C50:
    global.turntimer = -1s
    global.mnfight = 5s
    global.border = 0s
    [obj_heart].x = -800s
    [obj_heart].movement = -1s
0x000C8C:
    if !(== global.mnfight 5s) goto 0x0019A4
0x000CA0:
    if !(== self.con 0s) goto 0x000CC8
0x000CB4:
    push (== self.toldhim 1s)
    goto 0x000CCC
0x000CC8:
    push 0s
0x000CCC:
    if !pop goto 0x000D04
0x000CD0:
    call (caster_pause[]:int32 global.batmusic)
    self.con = 1s
    stog.alarm[4s] = 20s
0x000D04:
    if !(== self.con 2s) goto 0x000E28
0x000D18:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (+ (+ self.x self.blconx) 28s))
    global.typer = 2s
    stog.msg[0s] = "D-dude&.../"
    stog.msg[1s] = "I can't&.../"
    stog.msg[2s] = "I can't&take&this&anymore!/"
    stog.msg[3s] = "Not like&this!!/%%"
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.con = 3s
0x000E28:
    if !(== self.con 3s) goto 0x000E58
0x000E3C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000E5C
0x000E58:
    push 0s
0x000E5C:
    if !pop goto 0x000FC8
0x000E60:
    pushenv (int32 self.mypart1) 0x000E7C
0x000E70:
    self.shaker = 0s
0x000E7C:
    popenv 0x000E70
0x000E80:
    pushenv (int32 self.blcon) 0x000E9C
0x000E90:
    call (instance_destroy[]:int32 )
0x000E9C:
    popenv 0x000E90
0x000EA0:
    self.conmusic = (caster_load[]:int32 (var "music/confession.ogg"))
    call (caster_loop[]:int32 (var 0.9d) (var 0.8d) self.conmusic)
    self.con = 4s
    global.msc = 0s
    global.typer = 2s
    stog.msg[0s] = "Like^1, 02!&I like.../"
    stog.msg[1s] = "I like^1, LIKE you^1,&bro!/"
    stog.msg[2s] = "The way you fight..^1.&The way you talk.../"
    stog.msg[3s] = "I love doing team&attacks with you./"
    stog.msg[4s] = "I love standing here&with you^1, bouncing&and waving our&weapons in sync.../"
    stog.msg[5s] = "02..^1.&I^1, like^1, want to stay&like this forever.../%%"
    call (scr_blcon_x[]:int32 self.blcony (+ self.blconx 50s))
0x000FC8:
    if !(== self.con 4s) goto 0x000FF8
0x000FDC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000FFC
0x000FF8:
    push 0s
0x000FFC:
    if !pop goto 0x001120
0x001000:
    call (caster_pause[]:int32 self.conmusic)
    self.con = 5s
    pushenv 310s 0x00111C
0x001028:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (- self.x self.blconx))
    [obj_bara01].blcon = self.blcon
    push 20s
    stog.sprite_index* = (int32 self.blcon)
    global.typer = 2s
    stog.msg[0s] = "^1.^1../"
    stog.msg[1s] = "^1.^1.^1.^1./%%"
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
0x00111C:
    popenv 0x001028
0x001120:
    if !(== self.con 5s) goto 0x001150
0x001134:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001154
0x001150:
    push 0s
0x001154:
    if !pop goto 0x001314
0x001158:
    pushenv (int32 self.mypart1) 0x00117C
0x001168:
    call (event_user[]:int32 (var 2s))
0x00117C:
    popenv 0x001168
0x001180:
    pushenv (int32 self.blcon) 0x00119C
0x001190:
    call (instance_destroy[]:int32 )
0x00119C:
    popenv 0x001190
0x0011A0:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (+ (+ self.x self.blconx) 28s))
    global.typer = 2s
    stog.msg[0s] = "Uh.../"
    stog.msg[1s] = "I mean,&uh.../"
    stog.msg[2s] = "Psyche!&Gotcha,&bro!!!&Haha!/%%"
    push -5s
    if !(== 401s:flag 1s) goto 0x0012B8
0x001258:
    stog.msg[2s] = "Whew,&bro!&That&human,/"
    stog.msg[3s] = "Put me&under,&uh, mind&control!/"
    stog.msg[4s] = "What was&I just&saying?/"
    stog.msg[5s] = "It's all&a blur,&dude!!&Whoops!/%%"
0x0012B8:
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.con = 6s
0x001314:
    if !(== self.con 6s) goto 0x001344
0x001328:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001348
0x001344:
    push 0s
0x001348:
    if !pop goto 0x001460
0x00134C:
    pushenv (int32 self.blcon) 0x001368
0x00135C:
    call (instance_destroy[]:int32 )
0x001368:
    popenv 0x00135C
0x00136C:
    self.con = 7s
    pushenv 310s 0x00145C
0x001380:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (- self.x self.blconx))
    [obj_bara01].blcon = self.blcon
    push 20s
    stog.sprite_index* = (int32 self.blcon)
    global.typer = 2s
    stog.msg[0s] = "... 01./%%"
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
0x00145C:
    popenv 0x001380
0x001460:
    if !(== self.con 7s) goto 0x001490
0x001474:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001494
0x001490:
    push 0s
0x001494:
    if !pop goto 0x0015A0
0x001498:
    pushenv (int32 self.mypart1) 0x0014B4
0x0014A8:
    self.shaker = 2s
0x0014B4:
    popenv 0x0014A8
0x0014B8:
    pushenv (int32 self.blcon) 0x0014D4
0x0014C8:
    call (instance_destroy[]:int32 )
0x0014D4:
    popenv 0x0014C8
0x0014D8:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (+ (+ self.x self.blconx) 28s))
    global.typer = 2s
    stog.msg[0s] = "Y-yeah,&bro??/%%"
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.con = 8s
0x0015A0:
    if !(== self.con 8s) goto 0x0015D0
0x0015B4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0015D4
0x0015D0:
    push 0s
0x0015D4:
    if !pop goto 0x001754
0x0015D8:
    pushenv (int32 self.mypart1) 0x0015F4
0x0015E8:
    self.shaker = 0s
0x0015F4:
    popenv 0x0015E8
0x0015F8:
    pushenv (int32 self.blcon) 0x001614
0x001608:
    call (instance_destroy[]:int32 )
0x001614:
    popenv 0x001608
0x001618:
    self.con = 9s
    pushenv 310s 0x001750
0x00162C:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (- self.x self.blconx))
    [obj_bara01].blcon = self.blcon
    push 20s
    stog.sprite_index* = (int32 self.blcon)
    global.typer = 2s
    stog.msg[0s] = ".../"
    stog.msg[1s] = "... do&you want&to.../"
    stog.msg[2s] = "... get&some ice&cream.../"
    stog.msg[3s] = "...&after&this?/%%"
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
0x001750:
    popenv 0x00162C
0x001754:
    if !(== self.con 9s) goto 0x001784
0x001768:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001788
0x001784:
    push 0s
0x001788:
    if !pop goto 0x0018AC
0x00178C:
    pushenv (int32 self.mypart1) 0x0017A8
0x00179C:
    self.shaker = 0s
0x0017A8:
    popenv 0x00179C
0x0017AC:
    pushenv (int32 self.blcon) 0x0017C8
0x0017BC:
    call (instance_destroy[]:int32 )
0x0017C8:
    popenv 0x0017BC
0x0017CC:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (+ (+ self.x self.blconx) 28s))
    global.typer = 2s
    stog.msg[0s] = "Like.../"
    stog.msg[0s] = "Sure,&dude!&Haha!/%%"
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.con = 10s
0x0018AC:
    if !(== self.con 10s) goto 0x0018DC
0x0018C0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0018E0
0x0018DC:
    push 0s
0x0018E0:
    if !pop goto 0x0019A4
0x0018E4:
    pushenv (int32 self.blcon) 0x001900
0x0018F4:
    call (instance_destroy[]:int32 )
0x001900:
    popenv 0x0018F4
0x001904:
    global.mnfight = 3s
    self.con = 11s
    self.mercymod = 999s
    stog.monsterdef[(int32 self.myself)] = -999s
    pushenv 310s 0x001974
0x00194C:
    self.mercymod = 999s
    stog.monsterdef[(int32 self.myself)] = -999s
0x001974:
    popenv 0x00194C
0x001978:
    call (caster_free[]:int32 self.conmusic)
    stog.msg[0s] = "* 01 and 02 are looking at&  each other happily."
0x0019A4:
    if !(== global.myfight 4s) goto 0x001A00
0x0019B8:
    if !(== global.mercyuse 0s) goto 0x001A00
0x0019CC:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001A00
0x0019F4:
    call (instance_destroy[]:int32 )
0x001A00:
    if !(== self.mercymod 222s) goto 0x001A30
0x001A14:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001A34
0x001A30:
    push 0s
0x001A34:
    if !pop goto 0x001A6C
0x001A38:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001A6C
0x001A60:
    call (instance_destroy[]:int32 )
0x001A6C:
    exit
