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
    if !(== global.mnfight 2s) goto 0x00079C
0x000524:
    if !(== self.attacked 0s) goto 0x000760
0x000538:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 100s
    global.firingrate = 10s
    if !(== self.pop 3s) goto 0x000594
0x000574:
    global.firingrate = (* global.firingrate 2.5d)
0x000594:
    if !(== self.pop 2s) goto 0x0005C8
0x0005A8:
    global.firingrate = (* global.firingrate 1.8d)
0x0005C8:
    self.gen = (instance_create[]:int32 (var 531s) self.y self.x)
    if !(>= self.mycommand 0s) goto 0x00061C
0x000604:
    stog.msg[0s] = "* It's so cold."
0x00061C:
    if !(>= self.mycommand 25s) goto 0x000648
0x000630:
    stog.msg[0s] = "* It's so cold."
0x000648:
    if !(>= self.mycommand 50s) goto 0x000674
0x00065C:
    stog.msg[0s] = "* It's so cold."
0x000674:
    if !(>= self.mycommand 75s) goto 0x0006A0
0x000688:
    stog.msg[0s] = "* It's so cold."
0x0006A0:
    if !(>= self.mycommand 90s) goto 0x0006CC
0x0006B4:
    stog.msg[0s] = "* Smells like salty slush."
0x0006CC:
    if !(> self.mercymod 100s) goto 0x0006F8
0x0006E0:
    stog.msg[0s] = "* Seems calmed down."
0x0006F8:
    push -5s
    push (int32 self.myself):monsterhp
    if !(<= -5s (/ (int32 self.myself):monstermaxhp (double 4s))) goto 0x000754
0x00073C:
    stog.msg[0s] = "* Monster has low HP."
0x000754:
    self.attacked = 1s
0x000760:
    if !(== self.mercymod 999999) goto 0x000790
0x000778:
    global.turntimer = -1s
    global.mnfight = 3s
0x000790:
    self.whatiheard = -1s
0x00079C:
    if !(== global.myfight 2s) goto 0x000B90
0x0007B0:
    if !(!= self.whatiheard -1s) goto 0x000B90
0x0007C4:
    if !(== global.heard 0s) goto 0x000B90
0x0007D8:
    if !(== self.whatiheard 0s) goto 0x000880
0x0007EC:
    global.msc = 0s
    stog.msg[0s] = "* AMALGAMATE - ATK -12 DEF -5&* Seems like it's losing itself./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000870
0x000864:
    self.halt = 0s
0x000870:
    popenv 0x000864
0x000874:
    self.whatiheard = 9s
0x000880:
    if !(== self.whatiheard 3s) goto 0x00096C
0x000894:
    global.msc = 0s
    stog.msg[0s] = "* You laugh^1, and keep laughing^1.&* It's SO funny^1, you can't stop^1.&* Tears run down your face./"
    stog.msg[1s] = "* ... what^1?&* You didn't do that?/^"
    if !(== self.xlaugh 1s) goto 0x0008FC
0x0008E4:
    stog.msg[0s] = "* But it's not funny./^"
0x0008FC:
    self.xlaugh = 1s
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000968
0x00095C:
    self.halt = 0s
0x000968:
    popenv 0x00095C
0x00096C:
    if !(== self.whatiheard 1s) goto 0x000A58
0x000980:
    global.msc = 0s
    stog.msg[0s] = "* You said something like..^1.&* \"You look horrible.^1\"&* \"Why are you even alive?^1\"/"
    stog.msg[1s] = "* ... what^1?&* You didn't say that?/^"
    if !(== self.xheckle 1s) goto 0x0009E8
0x0009D0:
    stog.msg[0s] = "* You call this a performance?/^"
0x0009E8:
    self.xheckle = 1s
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A54
0x000A48:
    self.halt = 0s
0x000A54:
    popenv 0x000A48
0x000A58:
    if !(== self.whatiheard 4s) goto 0x000B84
0x000A6C:
    global.msc = 0s
    if !(== self.joke 0s) goto 0x000AA4
0x000A8C:
    stog.msg[0s] = "* You told a bad pun about&  snow^1.&* Her expression starts to shift./^"
0x000AA4:
    if !(== self.joke 1s) goto 0x000AD0
0x000AB8:
    stog.msg[0s] = "* You told a bad pun about&  snow^1.&* Her expression changes more./^"
0x000AD0:
    if !(== self.joke 2s) goto 0x000B08
0x000AE4:
    stog.msg[0s] = "* You told a bad pun about&  snow^1.&* She's completely calmed down./^"
    self.mercymod = 22222s
0x000B08:
    self.joke = (+ self.joke 1s)
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B80
0x000B74:
    self.halt = 0s
0x000B80:
    popenv 0x000B74
0x000B84:
    global.heard = 1s
0x000B90:
    if !(== global.myfight 4s) goto 0x000BEC
0x000BA4:
    if !(== global.mercyuse 0s) goto 0x000BEC
0x000BB8:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000BEC
0x000BE0:
    call (instance_destroy[]:int32 )
0x000BEC:
    if !(== self.mercymod 22222s) goto 0x000C1C
0x000C00:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000C20
0x000C1C:
    push 0s
0x000C20:
    if !pop goto 0x000C58
0x000C24:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000C58
0x000C4C:
    call (instance_destroy[]:int32 )
0x000C58:
    if !(== self.sinepitcher 1s) goto 0x000CD0
0x000C6C:
    self.siner = (+ self.siner 1s)
    call (caster_set_pitch[]:int32 (+ self.pitch (* (sin[]:int32 (/ self.siner (double 2s))) 0.01d)) global.batmusic)
0x000CD0:
    exit
