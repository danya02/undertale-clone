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
    if !(== global.mnfight 2s) goto 0x000560
0x0004F4:
    if !(== self.attacked 0s) goto 0x000524
0x000508:
    self.pop = (scr_monstersum[]:int32 )
    self.attacked = 1s
0x000524:
    if !(== self.mercymod 999999) goto 0x000554
0x00053C:
    global.turntimer = -1s
    global.mnfight = 3s
0x000554:
    self.whatiheard = -1s
0x000560:
    if !(== global.myfight 2s) goto 0x000BC4
0x000574:
    if !(!= self.whatiheard -1s) goto 0x000BC4
0x000588:
    if !(== global.heard 0s) goto 0x000BC4
0x00059C:
    if !(== self.whatiheard 0s) goto 0x00072C
0x0005B0:
    global.msc = 0s
    pushenv 605s 0x0005DC
0x0005C4:
    self.totalmercy = (+ self.totalmercy 1s)
0x0005DC:
    popenv 0x0005C4
0x0005E0:
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You tell the Lost Soul that&  you're going to save&  everyone./"
    stog.msg[1s] = "* Something stirs deep within&  him./^"
    if !(>= self.totalmercy 4s) goto 0x0006BC
0x00063C:
    stog.msg[1s] = "* Something stirs within him..^1.&* It's all flooding back!/%%"
    pushenv 562s 0x000668
0x00065C:
    self.saved = 1s
0x000668:
    popenv 0x00065C
0x00066C:
    global.mnfight = 5s
    if !(== 562.mercyno 0s) goto 0x0006BC
0x00068C:
    stog.msg[1s] = "* Suddenly^1, his memories are&  flooding back!/"
    stog.msg[2s] = "* Seeing how nice you are^1, the&  female Lost Soul's memories&  returned^1, too!/%%"
0x0006BC:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x00071C
0x000710:
    self.halt = 0s
0x00071C:
    popenv 0x000710
0x000720:
    self.whatiheard = 9s
0x00072C:
    if !(== self.whatiheard 3s) goto 0x0008B0
0x000740:
    global.msc = 0s
    pushenv 605s 0x00076C
0x000754:
    self.totalmercy = (+ self.totalmercy 1s)
0x00076C:
    popenv 0x000754
0x000770:
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You tell the Lost Soul that&  you won't hurt him^1, no&  matter what./"
    stog.msg[1s] = "* Something about this&  is so familiar to him.../^"
    if !(>= self.totalmercy 4s) goto 0x00084C
0x0007CC:
    stog.msg[1s] = "* Suddenly^1, the memories are&  flooding back!/%%"
    pushenv 562s 0x0007F8
0x0007EC:
    self.saved = 1s
0x0007F8:
    popenv 0x0007EC
0x0007FC:
    global.mnfight = 5s
    if !(== 562.mercyno 0s) goto 0x00084C
0x00081C:
    stog.msg[1s] = "* Suddenly^1, his memories are&  flooding back!/"
    stog.msg[2s] = "* Seeing how nice you are^1, the&  female Lost Soul's memories&  returned^1, too!/%%"
0x00084C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0008AC
0x0008A0:
    self.halt = 0s
0x0008AC:
    popenv 0x0008A0
0x0008B0:
    if !(== self.whatiheard 1s) goto 0x000A34
0x0008C4:
    global.msc = 0s
    pushenv 605s 0x0008F0
0x0008D8:
    self.totalmercy = (+ self.totalmercy 1s)
0x0008F0:
    popenv 0x0008D8
0x0008F4:
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You stare deep into the&  eyes of the Lost Soul./"
    stog.msg[1s] = "* He remembers the gaze of&  humans past.../^"
    if !(>= self.totalmercy 4s) goto 0x0009D0
0x000950:
    stog.msg[1s] = "* Suddenly^1, the memories are&  flooding back!/%%"
    pushenv 562s 0x00097C
0x000970:
    self.saved = 1s
0x00097C:
    popenv 0x000970
0x000980:
    global.mnfight = 5s
    if !(== 562.mercyno 0s) goto 0x0009D0
0x0009A0:
    stog.msg[1s] = "* Suddenly^1, his memories are&  flooding back!/"
    stog.msg[2s] = "* Seeing how nice you are^1, the&  female Lost Soul's memories&  returned^1, too!/%%"
0x0009D0:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A30
0x000A24:
    self.halt = 0s
0x000A30:
    popenv 0x000A24
0x000A34:
    if !(== self.whatiheard 4s) goto 0x000BB8
0x000A48:
    global.msc = 0s
    pushenv 605s 0x000A74
0x000A5C:
    self.totalmercy = (+ self.totalmercy 1s)
0x000A74:
    popenv 0x000A5C
0x000A78:
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You hug the Lost Soul./"
    stog.msg[1s] = "* It seems like his aggression&  is slowly melting away.../^"
    if !(>= self.totalmercy 4s) goto 0x000B54
0x000AD4:
    stog.msg[1s] = "* Suddenly^1, his memories&  are flooding back!/%%"
    pushenv 562s 0x000B00
0x000AF4:
    self.saved = 1s
0x000B00:
    popenv 0x000AF4
0x000B04:
    global.mnfight = 5s
    if !(== 562.mercyno 0s) goto 0x000B54
0x000B24:
    stog.msg[1s] = "* Suddenly^1, his memories are&  flooding back!/"
    stog.msg[2s] = "* Seeing how nice you are^1, the&  female Lost Soul's memories&  returned^1, too!/%%"
0x000B54:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BB4
0x000BA8:
    self.halt = 0s
0x000BB4:
    popenv 0x000BA8
0x000BB8:
    global.heard = 1s
0x000BC4:
    if !(== global.myfight 4s) goto 0x000C20
0x000BD8:
    if !(== global.mercyuse 0s) goto 0x000C20
0x000BEC:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000C20
0x000C14:
    call (instance_destroy[]:int32 )
0x000C20:
    if !(== self.mercymod 222s) goto 0x000C50
0x000C34:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000C54
0x000C50:
    push 0s
0x000C54:
    if !pop goto 0x000C8C
0x000C58:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000C8C
0x000C80:
    call (instance_destroy[]:int32 )
0x000C8C:
    exit
