0x000000:
    if !(== global.mnfight 3s) goto 0x000038
0x000014:
    self.attacked = 0s
    pushenv 699s 0x000034
0x000028:
    call (instance_destroy[]:int32 )
0x000034:
    popenv 0x000028
0x000038:
    push -1s
    if !(> 5s:alarm 0s) goto 0x0001E0
0x000054:
    push -5s
    if !(== 0s:monster 1s) goto 0x0000D8
0x000070:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0000D8
0x0000A8:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0000D8:
    push -5s
    if !(== 1s:monster 1s) goto 0x00015C
0x0000F4:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x00015C
0x00012C:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x00015C:
    push -5s
    if !(== 2s:monster 1s) goto 0x0001E0
0x000178:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0001E0
0x0001B0:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0001E0:
    if !(== global.mnfight 1s) goto 0x000248
0x0001F4:
    if !(== self.talked 0s) goto 0x000248
0x000208:
    stog.alarm[5s] = 110s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000248:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0002B8
0x000260:
    push -1s
    if !(> 5s:alarm 5s) goto 0x00029C
0x00027C:
    push 758.x
    push (== -5s 0s:idealborder)
    goto 0x0002A0
0x00029C:
    push 0s
0x0002A0:
    if !pop goto 0x0002B8
0x0002A4:
    stog.alarm[5s] = 2s
0x0002B8:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x00031C
0x0002DC:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x00031C:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x00043C
0x000340:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x000394
0x000380:
    stog.alarm[2s] = 15s
0x000394:
    popenv 0x000380
0x000398:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x00040C
0x0003BC:
    push 0s
    stog.pause* = (int32 self.mypart1)
    stog.hurtanim[(int32 self.myself)] = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x00043C
0x00040C:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x00043C:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x00050C
0x000460:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0004D4
0x0004C0:
    stog.alarm[2s] = 30s
0x0004D4:
    popenv 0x0004C0
0x0004D8:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x00050C:
    if !(== global.mnfight 2s) goto 0x0009FC
0x000520:
    push 759.y
    if !(> -5s 2s:idealborder) goto 0x000568
0x000540:
    [obj_heart].y = (/ (+ 759.y 761.y) (double 2s))
0x000568:
    if !(== self.attacked 0s) goto 0x0009FC
0x00057C:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 180s
    if !(== (instance_exists[]:int32 (var 699s)) 0s) goto 0x0007F8
0x0005B4:
    if !(== self.whatiheard 1s) goto 0x0005F0
0x0005C8:
    if !(== self.con 0s) goto 0x0005F0
0x0005DC:
    push (> self.pop 1s)
    goto 0x0005F4
0x0005F0:
    push 0s
0x0005F4:
    if !pop goto 0x000604
0x0005F8:
    self.mycommand = 80s
0x000604:
    if !(>= self.mycommand 0s) goto 0x00062C
0x000618:
    push (<= self.mycommand 50s)
    goto 0x000630
0x00062C:
    push 0s
0x000630:
    if !pop goto 0x000698
0x000634:
    global.firingrate = 25s
    self.gen = (instance_create[]:int32 (var 314s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    goto 0x0007DC
0x000698:
    global.firingrate = 20s
    if !(== self.whatiheard 1s) goto 0x0006E0
0x0006B8:
    if !(== self.con 0s) goto 0x0006E0
0x0006CC:
    push (> self.pop 1s)
    goto 0x0006E4
0x0006E0:
    push 0s
0x0006E4:
    if !pop goto 0x000740
0x0006E8:
    call (instance_create[]:int32 (var 308s) (- (/ self.room_height (double 2s)) 80s) (- (/ self.room_width (double 2s)) 15s))
    global.firingrate = 35s
0x000740:
    self.gen = (instance_create[]:int32 (var 313s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    push 8s
    push (int32 self.gen)
    stog.alarm[] = 1s
    if !(> self.con 6s) goto 0x0007DC
0x0007C4:
    push 1s
    stog.shake* = (int32 self.gen)
0x0007DC:
    push self.myself
    stog.myself* = (int32 self.gen)
0x0007F8:
    if !(>= self.mycommand 0s) goto 0x000824
0x00080C:
    stog.msg[0s] = "* 03 rubs her glove quietly."
0x000824:
    if !(>= self.mycommand 25s) goto 0x000850
0x000838:
    stog.msg[0s] = "* 04 hums and looks the other&  way."
0x000850:
    if !(>= self.mycommand 50s) goto 0x00087C
0x000864:
    stog.msg[0s] = "* 03 stands guard."
0x00087C:
    if !(>= self.mycommand 75s) goto 0x0008A8
0x000890:
    stog.msg[0s] = "* 04's twitches her tail."
0x0008A8:
    if !(>= self.mycommand 90s) goto 0x0008D4
0x0008BC:
    stog.msg[0s] = "* Smells like a military zoo."
0x0008D4:
    self.pop = (scr_monstersum[]:int32 )
    if !(== self.pop 1s) goto 0x0009A8
0x0008F8:
    if !(>= self.mycommand 0s) goto 0x000924
0x00090C:
    stog.msg[0s] = "* 03 is trembling."
0x000924:
    if !(>= self.mycommand 25s) goto 0x000950
0x000938:
    stog.msg[0s] = "* 03 is holding her face in&  her hands."
0x000950:
    if !(>= self.mycommand 50s) goto 0x00097C
0x000964:
    stog.msg[0s] = "* 03 stands still."
0x00097C:
    if !(>= self.mycommand 75s) goto 0x0009A8
0x000990:
    stog.msg[0s] = "* 03 seems sick."
0x0009A8:
    push -5s
    if !(< (int32 self.myself):monsterhp 30s) goto 0x0009E4
0x0009CC:
    stog.msg[0s] = "* 03's breathing intensifies."
0x0009E4:
    self.attacked = 1s
    self.whatiheard = -1s
0x0009FC:
    if !(== global.myfight 2s) goto 0x000CD4
0x000A10:
    if !(!= self.whatiheard -1s) goto 0x000CD4
0x000A24:
    if !(== global.heard 0s) goto 0x000CD4
0x000A38:
    if !(== self.whatiheard 0s) goto 0x000B40
0x000A4C:
    global.msc = 0s
    push "* RG 03 "
    push (+ (+ -5s (string[]:int32 (int32 self.myself):monsteratk)) " ATK ")
    stog.msg[0s] = (+ (+ -5s (string[]:int32 (int32 self.myself):monsterdef)) " DEF&* Royal Guard member with&  stuffy armor./^")
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
    self.whatiheard = 9s
0x000B40:
    if !(== self.whatiheard 1s) goto 0x000C2C
0x000B54:
    global.msc = 0s
    stog.msg[0s] = "* You touch RG 03's glove^1.&* It starts to come loose./^"
    if !(== self.shirtless 1s) goto 0x000BC8
0x000B8C:
    stog.msg[0s] = "* You shake RG 03's claw./^"
    if !(bool (instance_exists[]:int32 (var 309s))) goto 0x000BC8
0x000BBC:
    [obj_bara01].whatiheard = 12s
0x000BC8:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000C28
0x000C1C:
    self.halt = 0s
0x000C28:
    popenv 0x000C1C
0x000C2C:
    if !(== self.whatiheard 3s) goto 0x000CC8
0x000C40:
    global.msc = 0s
    stog.msg[0s] = "* You tell RG 03 that she&  should stand up for herself./^"
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
    global.heard = 1s
0x000CD4:
    if !(== self.alphaup 1s) goto 0x000CFC
0x000CE8:
    push (< self.image_alpha 1s)
    goto 0x000D00
0x000CFC:
    push 0s
0x000D00:
    if !pop goto 0x000D24
0x000D04:
    self.image_alpha = (+ self.image_alpha 0.05d)
0x000D24:
    if !(== global.myfight 4s) goto 0x000D80
0x000D38:
    if !(== global.mercyuse 0s) goto 0x000D80
0x000D4C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000D80
0x000D74:
    call (instance_destroy[]:int32 )
0x000D80:
    if !(== self.mercymod 222s) goto 0x000DB0
0x000D94:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000DB4
0x000DB0:
    push 0s
0x000DB4:
    if !pop goto 0x000DEC
0x000DB8:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000DEC
0x000DE0:
    call (instance_destroy[]:int32 )
0x000DEC:
    if !(== self.fuckyou 1s) goto 0x000E0C
0x000E00:
    global.mnfight = 5s
0x000E0C:
    if !(== global.mnfight 5s) goto 0x001514
0x000E20:
    if !(== self.con 0s) goto 0x000E84
0x000E34:
    self.fuckyou = 1s
    [obj_heart].x = -800s
    [obj_heart].movement = -1s
    global.border = 0s
    stog.alarm[4s] = 15s
    self.con = 1s
0x000E84:
    if !(== self.con 2s) goto 0x000F70
0x000E98:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (- self.x self.blconx))
    push 20s
    stog.sprite_index* = (int32 self.blcon)
    global.typer = 2s
    stog.msg[0s] = "My glove&...!/%%"
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.con = 3s
0x000F70:
    if !(== self.con 3s) goto 0x000FA0
0x000F84:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000FA4
0x000FA0:
    push 0s
0x000FA4:
    if !pop goto 0x00101C
0x000FA8:
    pushenv (int32 self.blcon) 0x000FC4
0x000FB8:
    call (instance_destroy[]:int32 )
0x000FC4:
    popenv 0x000FB8
0x000FC8:
    call (snd_play[]:int32 (var 47s))
    pushenv (int32 self.mypart1) 0x000FF8
0x000FEC:
    self.hand1pic = 358s
0x000FF8:
    popenv 0x000FEC
0x000FFC:
    self.con = 4s
    stog.alarm[4s] = 60s
0x00101C:
    if !(== self.con 5s) goto 0x00104C
0x001030:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001050
0x00104C:
    push 0s
0x001050:
    if !pop goto 0x001138
0x001054:
    if !(bool (instance_exists[]:int32 (var 312s))) goto 0x00112C
0x00106C:
    pushenv 312s 0x001128
0x001074:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (+ self.x self.blconx))
    global.typer = 2s
    stog.msg[0s] = "03...&Is that&...?/%%"
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
0x001128:
    popenv 0x001074
0x00112C:
    self.con = 6s
0x001138:
    if !(== self.con 6s) goto 0x001168
0x00114C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00116C
0x001168:
    push 0s
0x00116C:
    if !pop goto 0x0012A4
0x001170:
    if !(bool (instance_exists[]:int32 (var 312s))) goto 0x0011B4
0x001188:
    pushenv 312s 0x0011B0
0x001190:
    pushenv (int32 self.blcon) 0x0011AC
0x0011A0:
    call (instance_destroy[]:int32 )
0x0011AC:
    popenv 0x0011A0
0x0011B0:
    popenv 0x001190
0x0011B4:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (- self.x self.blconx))
    push 20s
    stog.sprite_index* = (int32 self.blcon)
    global.typer = 2s
    stog.msg[0s] = "Yes.&It is./"
    stog.msg[1s] = "Go&ahead.&Laugh at&me./%%"
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.con = 7s
0x0012A4:
    if !(== self.con 7s) goto 0x0012D4
0x0012B8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0012D8
0x0012D4:
    push 0s
0x0012D8:
    if !pop goto 0x0013E0
0x0012DC:
    pushenv (int32 self.blcon) 0x0012F8
0x0012EC:
    call (instance_destroy[]:int32 )
0x0012F8:
    popenv 0x0012EC
0x0012FC:
    if !(bool (instance_exists[]:int32 (var 312s))) goto 0x0013D4
0x001314:
    pushenv 312s 0x0013D0
0x00131C:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (+ self.x self.blconx))
    global.typer = 2s
    stog.msg[0s] = "No, I.../%%"
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
0x0013D0:
    popenv 0x00131C
0x0013D4:
    self.con = 8s
0x0013E0:
    if !(== self.con 8s) goto 0x001410
0x0013F4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001414
0x001410:
    push 0s
0x001414:
    if !pop goto 0x00145C
0x001418:
    if !(bool (instance_exists[]:int32 (var 312s))) goto 0x001450
0x001430:
    pushenv (int32 312.blcon) 0x00144C
0x001440:
    call (instance_destroy[]:int32 )
0x00144C:
    popenv 0x001440
0x001450:
    self.con = 9s
0x00145C:
    if !(== self.con 9s) goto 0x00148C
0x001470:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001490
0x00148C:
    push 0s
0x001490:
    if !pop goto 0x001514
0x001494:
    self.fuckyou = 0s
    self.shirtless = 1s
    pushenv (int32 self.blcon) 0x0014C8
0x0014BC:
    call (instance_destroy[]:int32 )
0x0014C8:
    popenv 0x0014BC
0x0014CC:
    stog.msg[0s] = "* RG 04 is looking at her own&  glove."
    self.con = 10s
    global.mnfight = 3s
    [obj_bara04].shake = 1s
    [obj_heart].movement = 1s
0x001514:
    exit
