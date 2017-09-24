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
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000410
0x000344:
    pushenv (int32 self.dmgwriter) 0x000368
0x000354:
    stog.alarm[2s] = 15s
0x000368:
    popenv 0x000354
0x00036C:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x0003E0
0x000390:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000410
0x0003E0:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000410:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x0004E0
0x000434:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0004A8
0x000494:
    stog.alarm[2s] = 30s
0x0004A8:
    popenv 0x000494
0x0004AC:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x0004E0:
    if !(== global.mnfight 2s) goto 0x0006A0
0x0004F4:
    if !(== self.attacked 0s) goto 0x000664
0x000508:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 150s
    global.firingrate = 10s
    if !(== self.pop 3s) goto 0x000564
0x000544:
    global.firingrate = (* global.firingrate 2.5d)
0x000564:
    if !(== self.pop 2s) goto 0x000598
0x000578:
    global.firingrate = (* global.firingrate 1.8d)
0x000598:
    global.turntimer = 10s
    if !(== self.turns 1s) goto 0x0005E8
0x0005B8:
    global.attacktype = 36s
    call (instance_create[]:int32 (var 414s) (var 0s) (var 0s))
0x0005E8:
    if !(== self.turns 0s) goto 0x000640
0x0005FC:
    stog.specialdam[1s] = 0s
    global.attacktype = 40s
    call (instance_create[]:int32 (var 414s) (var 0s) (var 0s))
0x000640:
    stog.msg[0s] = "* The Lost Soul stands there."
    self.attacked = 1s
0x000664:
    if !(== self.mercymod 999999) goto 0x000694
0x00067C:
    global.turntimer = -1s
    global.mnfight = 3s
0x000694:
    self.whatiheard = -1s
0x0006A0:
    if !(== global.myfight 2s) goto 0x000B34
0x0006B4:
    if !(!= self.whatiheard -1s) goto 0x000B34
0x0006C8:
    if !(== global.heard 0s) goto 0x000B34
0x0006DC:
    if !(== self.whatiheard 0s) goto 0x0007F8
0x0006F0:
    global.msc = 0s
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You tell the Lost Soul that&  you'll continue to&  support her./"
    stog.msg[1s] = "* Something about the way you&  said that is familiar to&  her./^"
    if !(>= self.mercyno 3s) goto 0x000788
0x000758:
    stog.msg[1s] = "* Suddenly^1, she remembers..^1.&* It's all flooding back!/%%"
    self.saved = 1s
    global.mnfight = 5s
0x000788:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0007E8
0x0007DC:
    self.halt = 0s
0x0007E8:
    popenv 0x0007DC
0x0007EC:
    self.whatiheard = 9s
0x0007F8:
    if !(== self.whatiheard 3s) goto 0x000908
0x00080C:
    global.msc = 0s
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You call the Lost Soul on&  the phone..^1.&* She starts to sweat./"
    stog.msg[1s] = "* She doesn't know why^1, but&  this all seems very&  familiar.../^"
    if !(>= self.mercyno 3s) goto 0x0008A4
0x000874:
    stog.msg[1s] = "* Suddenly^1, the memories are&  flooding back!/%%"
    self.saved = 1s
    global.mnfight = 5s
0x0008A4:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000904
0x0008F8:
    self.halt = 0s
0x000904:
    popenv 0x0008F8
0x000908:
    if !(== self.whatiheard 1s) goto 0x000A18
0x00091C:
    global.msc = 0s
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You ask the Lost Soul what&  her favorite cartoon is./"
    stog.msg[1s] = "* She can barely hold back&  from giving you an enormous&  answer.../^"
    if !(>= self.mercyno 3s) goto 0x0009B4
0x000984:
    stog.msg[1s] = "* Suddenly^1, the memories are&  flooding back!/%%"
    self.saved = 1s
    global.mnfight = 5s
0x0009B4:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A14
0x000A08:
    self.halt = 0s
0x000A14:
    popenv 0x000A08
0x000A18:
    if !(== self.whatiheard 4s) goto 0x000B28
0x000A2C:
    global.msc = 0s
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You ask the Lost Soul for&  help on a quiz question./"
    stog.msg[1s] = "* She barely holds back from&  giving you the answer.../^"
    if !(>= self.mercyno 3s) goto 0x000AC4
0x000A94:
    stog.msg[1s] = "* Suddenly^1, memories are&  flooding back!/%%"
    self.saved = 1s
    global.mnfight = 5s
0x000AC4:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B24
0x000B18:
    self.halt = 0s
0x000B24:
    popenv 0x000B18
0x000B28:
    global.heard = 1s
0x000B34:
    if !(== global.myfight 4s) goto 0x000B90
0x000B48:
    if !(== global.mercyuse 0s) goto 0x000B90
0x000B5C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000B90
0x000B84:
    call (instance_destroy[]:int32 )
0x000B90:
    if !(== self.mercymod 222s) goto 0x000BC0
0x000BA4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000BC4
0x000BC0:
    push 0s
0x000BC4:
    if !pop goto 0x000BFC
0x000BC8:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000BFC
0x000BF0:
    call (instance_destroy[]:int32 )
0x000BFC:
    if !(== global.mnfight 5s) goto 0x000C2C
0x000C10:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000C30
0x000C2C:
    push 0s
0x000C30:
    if !pop goto 0x000E84
0x000C34:
    if !(== self.saved 1s) goto 0x000CF4
0x000C48:
    if !(< global.hp global.maxhp) goto 0x000C84
0x000C60:
    global.hp = global.maxhp
    call (snd_play[]:int32 (var 155s))
0x000C84:
    pushenv 1662s 0x000C98
0x000C8C:
    call (instance_destroy[]:int32 )
0x000C98:
    popenv 0x000C8C
0x000C9C:
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    call (snd_play[]:int32 (var 30s))
    self.saved = 2s
    stog.alarm[11s] = 3s
0x000CF4:
    if !(== self.saved 3s) goto 0x000DA4
0x000D08:
    global.faceemotion = 5s
    global.msc = 0s
    global.typer = 74s
    push 1s
    stog.noanim* = (int32 self.part1)
    push 0s
    stog.spearalpha* = (int32 self.part1)
    stog.msg[0s] = " No^1, that's not true^1!& My friends like me^1!& And I like you^1,& too!/%%"
    call (scr_blcon_x[]:int32 self.y (+ self.x 110s))
    self.saved = 4s
0x000DA4:
    if !(== self.saved 4s) goto 0x000DD4
0x000DB8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000DD8
0x000DD4:
    push 0s
0x000DD8:
    if !pop goto 0x000E44
0x000DDC:
    call (instance_create[]:int32 (var 557s) (var -10s) (var -10s))
    self.saved = 5s
    call (instance_create[]:int32 (var 557s) (var 0s) (var 0s))
    stog.alarm[11s] = 34s
0x000E44:
    if !(== self.saved 6s) goto 0x000E84
0x000E58:
    global.battlegroup = 256s
    stog.flag[506s] = 1s
    call (room_restart[]:int32 )
0x000E84:
    exit
