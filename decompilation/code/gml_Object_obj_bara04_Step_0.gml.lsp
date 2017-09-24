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
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0002C4
0x00026C:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0002A8
0x000288:
    push 758.x
    push (== -5s 0s:idealborder)
    goto 0x0002AC
0x0002A8:
    push 0s
0x0002AC:
    if !pop goto 0x0002C4
0x0002B0:
    stog.alarm[5s] = 2s
0x0002C4:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000328
0x0002E8:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000328:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000448
0x00034C:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x0003A0
0x00038C:
    stog.alarm[2s] = 15s
0x0003A0:
    popenv 0x00038C
0x0003A4:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000418
0x0003C8:
    push 0s
    stog.pause* = (int32 self.mypart1)
    stog.hurtanim[(int32 self.myself)] = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000448
0x000418:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000448:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000518
0x00046C:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0004E0
0x0004CC:
    stog.alarm[2s] = 30s
0x0004E0:
    popenv 0x0004CC
0x0004E4:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000518:
    if !(== global.mnfight 2s) goto 0x00091C
0x00052C:
    push 759.y
    if !(> -5s 2s:idealborder) goto 0x000574
0x00054C:
    [obj_heart].y = (/ (+ 759.y 761.y) (double 2s))
0x000574:
    self.pop = (scr_monstersum[]:int32 )
    if !(== self.attacked 0s) goto 0x0005AC
0x000598:
    push (== self.pop 1s)
    goto 0x0005B0
0x0005AC:
    push 0s
0x0005B0:
    if !pop goto 0x00091C
0x0005B4:
    global.turntimer = 180s
    if !(== (instance_exists[]:int32 (var 311s)) 0s) goto 0x000724
0x0005DC:
    if !(>= self.mycommand 0s) goto 0x000604
0x0005F0:
    push (<= self.mycommand 50s)
    goto 0x000608
0x000604:
    push 0s
0x000608:
    if !pop goto 0x00068C
0x00060C:
    global.firingrate = 25s
    self.gen = (instance_create[]:int32 (var 314s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    push 8s
    push (int32 self.gen)
    stog.alarm[] = 0s
    goto 0x000708
0x00068C:
    global.firingrate = 20s
    self.gen = (instance_create[]:int32 (var 313s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    push 8s
    push (int32 self.gen)
    stog.alarm[] = 1s
0x000708:
    push self.myself
    stog.myself* = (int32 self.gen)
0x000724:
    if !(>= self.mycommand 0s) goto 0x000750
0x000738:
    stog.msg[0s] = "* 03 rubs her glove quietly."
0x000750:
    if !(>= self.mycommand 25s) goto 0x00077C
0x000764:
    stog.msg[0s] = "* 04 hums and looks the other&  way."
0x00077C:
    if !(>= self.mycommand 50s) goto 0x0007A8
0x000790:
    stog.msg[0s] = "* 03 stands guard."
0x0007A8:
    if !(>= self.mycommand 75s) goto 0x0007D4
0x0007BC:
    stog.msg[0s] = "* 04's twitches her tail."
0x0007D4:
    if !(>= self.mycommand 90s) goto 0x000800
0x0007E8:
    stog.msg[0s] = "* Smells like a military zoo."
0x000800:
    self.pop = (scr_monstersum[]:int32 )
    if !(== self.pop 1s) goto 0x0008D4
0x000824:
    if !(>= self.mycommand 0s) goto 0x000850
0x000838:
    stog.msg[0s] = "* 04 holds her head in her&  hands."
0x000850:
    if !(>= self.mycommand 25s) goto 0x00087C
0x000864:
    stog.msg[0s] = "*Sad mews emerge from&  04's armor."
0x00087C:
    if !(>= self.mycommand 50s) goto 0x0008A8
0x000890:
    stog.msg[0s] = "* 04 is thunderstruck."
0x0008A8:
    if !(>= self.mycommand 75s) goto 0x0008D4
0x0008BC:
    stog.msg[0s] = "* 04 does nothing."
0x0008D4:
    push -5s
    if !(< (int32 self.myself):monsterhp 30s) goto 0x000910
0x0008F8:
    stog.msg[0s] = "* 04's breathing intensifies."
0x000910:
    self.attacked = 1s
0x00091C:
    if !(== global.myfight 2s) goto 0x000BFC
0x000930:
    if !(!= self.whatiheard -1s) goto 0x000BFC
0x000944:
    if !(== global.heard 0s) goto 0x000BFC
0x000958:
    if !(== self.whatiheard 0s) goto 0x000A60
0x00096C:
    global.msc = 0s
    push "* RG 04 "
    push (+ (+ -5s (string[]:int32 (int32 self.myself):monsteratk)) " ATK ")
    stog.msg[0s] = (+ (+ -5s (string[]:int32 (int32 self.myself):monsterdef)) " DEF&* Royal Guard member.&* Protective of her armor./^")
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A50
0x000A44:
    self.halt = 0s
0x000A50:
    popenv 0x000A44
0x000A54:
    self.whatiheard = 9s
0x000A60:
    if !(== self.whatiheard 1s) goto 0x000B34
0x000A74:
    global.msc = 0s
    stog.msg[0s] = "* You attempt to touch RG 04's&  glove^1.&* She bats your hand away./^"
    if !(== self.shake 1s) goto 0x000AD0
0x000AAC:
    stog.msg[0s] = "* You touch RG 04's glove softly.&* She nods and begins to&  take it off./^"
    self.toldhim = 1s
0x000AD0:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B30
0x000B24:
    self.halt = 0s
0x000B30:
    popenv 0x000B24
0x000B34:
    if !(== self.whatiheard 3s) goto 0x000BF0
0x000B48:
    global.msc = 0s
    stog.msg[0s] = "* You tell RG 04 to remember&  what being friends is about./^"
    if !(== self.shake 1s) goto 0x000B8C
0x000B80:
    self.toldhim = 1s
0x000B8C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BEC
0x000BE0:
    self.halt = 0s
0x000BEC:
    popenv 0x000BE0
0x000BF0:
    global.heard = 1s
0x000BFC:
    if !(== self.toldhim 1s) goto 0x000C60
0x000C10:
    if !(> global.turntimer 6s) goto 0x000C60
0x000C24:
    if !(< global.turntimer 12s) goto 0x000C60
0x000C38:
    if !(== global.mnfight 2s) goto 0x000C60
0x000C4C:
    push (== self.con 0s)
    goto 0x000C64
0x000C60:
    push 0s
0x000C64:
    if !pop goto 0x000CB0
0x000C68:
    global.turntimer = -1s
    self.fuckyou = 1s
    global.mnfight = 5s
    global.border = 0s
    [obj_heart].x = -800s
    [obj_heart].movement = -1s
0x000CB0:
    if !(== self.fuckyou 1s) goto 0x000CD0
0x000CC4:
    global.mnfight = 5s
0x000CD0:
    if !(== global.mnfight 5s) goto 0x0018BC
0x000CE4:
    if !(== self.con 0s) goto 0x000D0C
0x000CF8:
    push (== self.toldhim 1s)
    goto 0x000D10
0x000D0C:
    push 0s
0x000D10:
    if !pop goto 0x000D50
0x000D14:
    call (caster_pause[]:int32 global.batmusic)
    self.con = 0.1d
    stog.alarm[4s] = 20s
0x000D50:
    if !(== self.con 1.1d) goto 0x000DC0
0x000D6C:
    call (snd_play[]:int32 (var 47s))
    pushenv (int32 self.mypart1) 0x000D9C
0x000D90:
    self.hand1pic = 357s
0x000D9C:
    popenv 0x000D90
0x000DA0:
    self.con = 1s
    stog.alarm[4s] = 40s
0x000DC0:
    if !(== self.con 2s) goto 0x000EB8
0x000DD4:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (+ self.x self.blconx))
    global.typer = 2s
    global.msc = 0s
    stog.msg[0s] = "Actually&.../"
    stog.msg[1s] = "I still&wear&mine&too./%%"
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.con = 3s
0x000EB8:
    if !(== self.con 3s) goto 0x000EE8
0x000ECC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000EEC
0x000EE8:
    push 0s
0x000EEC:
    if !pop goto 0x001094
0x000EF0:
    pushenv (int32 self.mypart1) 0x000F0C
0x000F00:
    self.shaker = 0s
0x000F0C:
    popenv 0x000F00
0x000F10:
    pushenv (int32 self.blcon) 0x000F2C
0x000F20:
    call (instance_destroy[]:int32 )
0x000F2C:
    popenv 0x000F20
0x000F30:
    self.conmusic = (caster_load[]:int32 (var "music/confession.ogg"))
    call (caster_loop[]:int32 (var 0.9d) (var 0.8d) self.conmusic)
    self.con = 4s
    global.msc = 0s
    global.typer = 2s
    pushenv 311s 0x001090
0x000FAC:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (- (- self.x self.blconx) 100s))
    [obj_bara04].blcon = self.blcon
    push 30s
    stog.sprite_index* = (int32 self.blcon)
    global.typer = 2s
    stog.msg[0s] = "Our friendship&bracelets from&high school./%%"
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
0x001090:
    popenv 0x000FAC
0x001094:
    if !(== self.con 4s) goto 0x0010C4
0x0010A8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0010C8
0x0010C4:
    push 0s
0x0010C8:
    if !pop goto 0x0011F0
0x0010CC:
    pushenv (int32 self.blcon) 0x0010E8
0x0010DC:
    call (instance_destroy[]:int32 )
0x0010E8:
    popenv 0x0010DC
0x0010EC:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (- (+ self.x self.blconx) 5s))
    push 29s
    stog.sprite_index* = (int32 self.blcon)
    global.typer = 2s
    global.msc = 0s
    stog.msg[0s] = "03, I'm sorry.&I thought you hated&me, after what&happened.../"
    stog.msg[1s] = "We did some pretty&nasty things to&each other, because&of.../%%"
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    self.con = 5s
0x0011F0:
    if !(== self.con 5s) goto 0x001220
0x001204:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001224
0x001220:
    push 0s
0x001224:
    if !pop goto 0x0013A4
0x001228:
    pushenv (int32 self.blcon) 0x001244
0x001238:
    call (instance_destroy[]:int32 )
0x001244:
    popenv 0x001238
0x001248:
    self.con = 6s
    global.msc = 0s
    global.typer = 2s
    pushenv 311s 0x0013A0
0x001274:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (- (- self.x self.blconx) 100s))
    [obj_bara04].blcon = self.blcon
    push 30s
    stog.sprite_index* = (int32 self.blcon)
    global.typer = 2s
    stog.msg[0s] = "That old drama?&Forget about it./"
    stog.msg[1s] = "To tell you the&truth, I requested&to be partners&with you./"
    stog.msg[2s] = "I wanted to become&friends with you&again.../"
    stog.msg[3s] = "But I didn't know&how to breach the&topic./%%"
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
0x0013A0:
    popenv 0x001274
0x0013A4:
    if !(== self.con 6s) goto 0x0013D4
0x0013B8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0013D8
0x0013D4:
    push 0s
0x0013D8:
    if !pop goto 0x001518
0x0013DC:
    pushenv (int32 self.blcon) 0x0013F8
0x0013EC:
    call (instance_destroy[]:int32 )
0x0013F8:
    popenv 0x0013EC
0x0013FC:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (- (+ self.x self.blconx) 5s))
    push 29s
    stog.sprite_index* = (int32 self.blcon)
    global.typer = 2s
    global.msc = 0s
    stog.msg[0s] = "03!/"
    stog.msg[1s] = "After this.../"
    stog.msg[2s] = "Do you want to get&some ice-cream?/%%"
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    self.con = 7s
0x001518:
    if !(== self.con 7s) goto 0x001548
0x00152C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00154C
0x001548:
    push 0s
0x00154C:
    if !pop goto 0x00167C
0x001550:
    pushenv (int32 self.blcon) 0x00156C
0x001560:
    call (instance_destroy[]:int32 )
0x00156C:
    popenv 0x001560
0x001570:
    self.con = 8s
    global.msc = 0s
    global.typer = 2s
    pushenv 311s 0x001678
0x00159C:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (- self.x self.blconx))
    [obj_bara04].blcon = self.blcon
    push 20s
    stog.sprite_index* = (int32 self.blcon)
    global.typer = 2s
    stog.msg[0s] = "Salmon-&flavor?/%%"
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
0x001678:
    popenv 0x00159C
0x00167C:
    if !(== self.con 8s) goto 0x0016AC
0x001690:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0016B0
0x0016AC:
    push 0s
0x0016B0:
    if !pop goto 0x0017B8
0x0016B4:
    pushenv (int32 self.blcon) 0x0016D0
0x0016C4:
    call (instance_destroy[]:int32 )
0x0016D0:
    popenv 0x0016C4
0x0016D4:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (+ self.x self.blconx))
    push 18s
    stog.sprite_index* = (int32 self.blcon)
    global.typer = 2s
    global.msc = 0s
    stog.msg[0s] = "You know&it!/%%"
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.con = 10s
0x0017B8:
    if !(== self.con 10s) goto 0x0017E8
0x0017CC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0017EC
0x0017E8:
    push 0s
0x0017EC:
    if !pop goto 0x0018BC
0x0017F0:
    self.fuckyou = 0s
    pushenv (int32 self.blcon) 0x001818
0x00180C:
    call (instance_destroy[]:int32 )
0x001818:
    popenv 0x00180C
0x00181C:
    global.mnfight = 3s
    self.con = 11s
    self.mercymod = 999s
    stog.monsterdef[(int32 self.myself)] = -999s
    pushenv 311s 0x00188C
0x001864:
    self.mercymod = 999s
    stog.monsterdef[(int32 self.myself)] = -999s
0x00188C:
    popenv 0x001864
0x001890:
    call (caster_free[]:int32 self.conmusic)
    stog.msg[0s] = "* 03 and 04 are planning all&  sorts of things to do&  together."
0x0018BC:
    if !(== global.myfight 4s) goto 0x001918
0x0018D0:
    if !(== global.mercyuse 0s) goto 0x001918
0x0018E4:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001918
0x00190C:
    call (instance_destroy[]:int32 )
0x001918:
    if !(== self.mercymod 222s) goto 0x001948
0x00192C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00194C
0x001948:
    push 0s
0x00194C:
    if !pop goto 0x001984
0x001950:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001984
0x001978:
    call (instance_destroy[]:int32 )
0x001984:
    exit
