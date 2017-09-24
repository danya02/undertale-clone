0x000000:
    self.x = (- (int32 self.mypart1):x 60s)
    self.y = (int32 self.mypart1):y
    if !(== global.mnfight 3s) goto 0x00006C
0x000054:
    self.attacked = 0s
    global.hope = 0s
0x00006C:
    push -1s
    if !(> 5s:alarm 0s) goto 0x000214
0x000088:
    push -5s
    if !(== 0s:monster 1s) goto 0x00010C
0x0000A4:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x00010C
0x0000DC:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x00010C:
    push -5s
    if !(== 1s:monster 1s) goto 0x000190
0x000128:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000190
0x000160:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000190:
    push -5s
    if !(== 2s:monster 1s) goto 0x000214
0x0001AC:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000214
0x0001E4:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000214:
    if !(== global.mnfight 1s) goto 0x00036C
0x000228:
    if !(== self.talked 0s) goto 0x00036C
0x00023C:
    if !(== (int32 self.mypart1):specialnormal 0s) goto 0x000274
0x00025C:
    stog.alarm[6s] = 16s
    goto 0x000288
0x000274:
    stog.alarm[6s] = 1s
0x000288:
    pushenv (int32 self.mypart1) 0x0002EC
0x000298:
    if !(== self.specialnormal 0s) goto 0x0002EC
0x0002AC:
    call (snd_play[]:int32 (var 13s))
    self.s_s = 0s
    if !(== self.aligncon 0s) goto 0x0002EC
0x0002E0:
    self.aligncon = 1s
0x0002EC:
    popenv 0x000298
0x0002F0:
    if (== self.turns 2s) goto 0x00032C
0x000304:
    if (== self.turns 6s) goto 0x00032C
0x000318:
    push (== self.turns 10s)
    goto 0x000330
0x00032C:
    push 1s
0x000330:
    if !pop goto 0x000354
0x000334:
    pushenv (int32 self.mypart1) 0x000350
0x000344:
    self.s_s = 1s
0x000350:
    popenv 0x000344
0x000354:
    self.talked = 1s
    global.heard = 0s
0x00036C:
    if !(== self.say 1s) goto 0x0003BC
0x000380:
    if !(== (instance_exists[]:int32 self.blconwd) 0s) goto 0x0003BC
0x00039C:
    call (event_user[]:int32 (var 1s))
    self.say = 0s
0x0003BC:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000420
0x0003E0:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000420:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000510
0x000444:
    pushenv (int32 self.dmgwriter) 0x000468
0x000454:
    stog.alarm[2s] = 15s
0x000468:
    popenv 0x000454
0x00046C:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x0004E0
0x000490:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000510
0x0004E0:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000510:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x0005E0
0x000534:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0005A8
0x000594:
    stog.alarm[2s] = 30s
0x0005A8:
    popenv 0x000594
0x0005AC:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x0005E0:
    if !(== global.mnfight 2s) goto 0x000D38
0x0005F4:
    if !(== self.attacked 0s) goto 0x000CFC
0x000608:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 150s
    global.firingrate = 10s
    if !(== self.pop 3s) goto 0x000664
0x000644:
    global.firingrate = (* global.firingrate 2.5d)
0x000664:
    if !(== self.pop 2s) goto 0x000698
0x000678:
    global.firingrate = (* global.firingrate 1.8d)
0x000698:
    if !(== (int32 self.mypart1):specialnormal 1s) goto 0x0007D8
0x0006B8:
    global.turntimer = 140s
    global.firingrate = 6s
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push self.myself
    stog.myself* = (int32 self.gen)
    push 8s
    stog.dmg* = (int32 self.gen)
    if !(== global.hope 1s) goto 0x000774
0x000740:
    push 6s
    stog.dmg* = (int32 self.gen)
    stog.monsteratk[(int32 self.myself)] = 6s
0x000774:
    if !(== global.hope 0s) goto 0x0007BC
0x000788:
    push 8s
    stog.dmg* = (int32 self.gen)
    stog.monsteratk[(int32 self.myself)] = 8s
0x0007BC:
    push 7s
    stog.bullettype* = (int32 self.gen)
    goto 0x000A74
0x0007D8:
    if !(>= self.turns 8s) goto 0x000804
0x0007EC:
    push 1s
    stog.h_mode* = (int32 self.mypart1)
0x000804:
    if (== self.turns 0s) goto 0x000840
0x000818:
    if (== self.turns 4s) goto 0x000840
0x00082C:
    push (== self.turns 9s)
    goto 0x000844
0x000840:
    push 1s
0x000844:
    if !pop goto 0x000874
0x000848:
    pushenv (int32 self.mypart1) 0x000870
0x000858:
    self.starcon = 1s
    self.type = 0s
0x000870:
    popenv 0x000858
0x000874:
    if (== self.turns 1s) goto 0x0008C4
0x000888:
    if (== self.turns 3s) goto 0x0008C4
0x00089C:
    if (== self.turns 8s) goto 0x0008C4
0x0008B0:
    push (== self.turns 12s)
    goto 0x0008C8
0x0008C4:
    push 1s
0x0008C8:
    if !pop goto 0x0008F8
0x0008CC:
    pushenv (int32 self.mypart1) 0x0008F4
0x0008DC:
    self.starcon = 1s
    self.type = 1s
0x0008F4:
    popenv 0x0008DC
0x0008F8:
    if (== self.turns 2s) goto 0x000934
0x00090C:
    if (== self.turns 6s) goto 0x000934
0x000920:
    push (== self.turns 10s)
    goto 0x000938
0x000934:
    push 1s
0x000938:
    if !pop goto 0x000968
0x00093C:
    pushenv (int32 self.mypart1) 0x000964
0x00094C:
    self.bladecon = 1s
    self.type = 1s
0x000964:
    popenv 0x00094C
0x000968:
    if (== self.turns 5s) goto 0x0009A4
0x00097C:
    if (== self.turns 7s) goto 0x0009A4
0x000990:
    push (== self.turns 11s)
    goto 0x0009A8
0x0009A4:
    push 1s
0x0009A8:
    if !pop goto 0x0009D8
0x0009AC:
    pushenv (int32 self.mypart1) 0x0009D4
0x0009BC:
    self.guncon = 1s
    self.type = 1s
0x0009D4:
    popenv 0x0009BC
0x0009D8:
    if !(== self.turns 13s) goto 0x000A24
0x0009EC:
    pushenv (int32 self.mypart1) 0x000A20
0x0009FC:
    self.gonercon = 1s
    self.type = 1s
    global.hope = 2s
0x000A20:
    popenv 0x0009FC
0x000A24:
    self.turns = (+ self.turns 1s)
    push -5s
    if !(< 504s:flag self.turns) goto 0x000A74
0x000A5C:
    stog.flag[504s] = self.turns
0x000A74:
    if (== self.turns 0s) goto 0x000A9C
0x000A88:
    push (== self.turns 4s)
    goto 0x000AA0
0x000A9C:
    push 1s
0x000AA0:
    if !pop goto 0x000ABC
0x000AA4:
    stog.msg[0s] = "* Asriel readies \"STAR BLAZING.\""
0x000ABC:
    if (== self.turns 1s) goto 0x000AE4
0x000AD0:
    push (== self.turns 3s)
    goto 0x000AE8
0x000AE4:
    push 1s
0x000AE8:
    if !pop goto 0x000B04
0x000AEC:
    stog.msg[0s] = "* Asriel charges \"SHOCKER&  BREAKER.\""
0x000B04:
    if (== self.turns 2s) goto 0x000B2C
0x000B18:
    push (== self.turns 6s)
    goto 0x000B30
0x000B2C:
    push 1s
0x000B30:
    if !pop goto 0x000B4C
0x000B34:
    stog.msg[0s] = "* Asriel calls on \"CHAOS SABER.\""
0x000B4C:
    if (== self.turns 5s) goto 0x000B74
0x000B60:
    push (== self.turns 7s)
    goto 0x000B78
0x000B74:
    push 1s
0x000B78:
    if !pop goto 0x000B94
0x000B7C:
    stog.msg[0s] = "* Asriel readies \"CHAOS BUSTER.\""
0x000B94:
    if !(== self.turns 9s) goto 0x000BC0
0x000BA8:
    stog.msg[0s] = "* Asriel readies \"GALACTA&  BLAZING.\""
0x000BC0:
    if !(== self.turns 10s) goto 0x000BEC
0x000BD4:
    stog.msg[0s] = "* Asriel calls on \"CHAOS SLICER.\""
0x000BEC:
    if (== self.turns 8s) goto 0x000C14
0x000C00:
    push (== self.turns 12s)
    goto 0x000C18
0x000C14:
    push 1s
0x000C18:
    if !pop goto 0x000C34
0x000C1C:
    stog.msg[0s] = "* Asriel readies \"SHOCKER&  BREAKER II.\""
0x000C34:
    if !(== self.turns 11s) goto 0x000C60
0x000C48:
    stog.msg[0s] = "* Asriel readies \"CHAOS&  BLASTER.\""
0x000C60:
    if !(== self.turns 13s) goto 0x000C8C
0x000C74:
    stog.msg[0s] = "* Asriel readies \"HYPER GONER.\""
0x000C8C:
    if !(== self.turns 14s) goto 0x000CB8
0x000CA0:
    stog.msg[0s] = "* Asriel is glowing with a&  strange power."
0x000CB8:
    if !(== (int32 self.mypart1):specialnormal 1s) goto 0x000CF0
0x000CD8:
    stog.msg[0s] = "* It's the end."
0x000CF0:
    self.attacked = 1s
0x000CFC:
    if !(== self.mercymod 999999) goto 0x000D2C
0x000D14:
    global.turntimer = -1s
    global.mnfight = 3s
0x000D2C:
    self.whatiheard = -1s
0x000D38:
    if !(== global.myfight 2s) goto 0x0011F8
0x000D4C:
    if !(!= self.whatiheard -1s) goto 0x0011F8
0x000D60:
    if !(== global.heard 0s) goto 0x0011F8
0x000D74:
    if !(== self.whatiheard 0s) goto 0x000E74
0x000D88:
    global.msc = 0s
    if !(== (int32 self.mypart1):specialnormal 1s) goto 0x000DCC
0x000DB4:
    stog.msg[0s] = "* ASRIEL DREEMURR \\z4   ATK \\z4   DEF&* Legendary being made of every&  SOUL in the underground./^"
0x000DCC:
    if !(== (int32 self.mypart1):specialnormal 0s) goto 0x000E04
0x000DEC:
    stog.msg[0s] = "* ASRIEL DREEMURR \\z4   ATK \\z4   DEF&* The Absolute GOD of Hyperdeath!/^"
0x000E04:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000E64
0x000E58:
    self.halt = 0s
0x000E64:
    popenv 0x000E58
0x000E68:
    self.whatiheard = 9s
0x000E74:
    if !(== self.whatiheard 3s) goto 0x000FA4
0x000E88:
    global.msc = 0s
    global.hope = 1s
    stog.msg[0s] = "* You held on to your hopes..^1.&* You reduced how much DAMAGE&  you'll take this turn!/^"
    if !(> self.hoped 0s) goto 0x000EE4
0x000ECC:
    stog.msg[0s] = "* You kept holding on^1.&* DAMAGE reduced!/^"
0x000EE4:
    self.hoped = (+ self.hoped 1s)
    if !(< global.hp global.maxhp) goto 0x000F40
0x000F14:
    global.hp = (+ global.hp 1s)
    call (snd_play[]:int32 (var 155s))
0x000F40:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000FA0
0x000F94:
    self.halt = 0s
0x000FA0:
    popenv 0x000F94
0x000FA4:
    if !(== self.whatiheard 1s) goto 0x001150
0x000FB8:
    global.msc = 0s
    if (<= 8s 0) goto 0x001008
0x000FDC:
    push 8s
    call (scr_itemget[]:int32 (var 55s))
    if (bool (- pop 1)) goto 0x000FDC
0x001008:
    push (- pop 1)
    pop
    stog.msg[0s] = "* You think about why you're&  here now.../"
    stog.msg[1s] = "* You can feel the empty&  space in your inventory&  get smaller and smaller!/^"
    if !(> self.dreamed 0s) goto 0x001068
0x001050:
    stog.msg[0s] = "* Your items fill up with&  dreams./^"
0x001068:
    if !(< global.hp global.maxhp) goto 0x0010D4
0x001080:
    global.hp = (+ global.hp 4s)
    if !(> global.hp global.maxhp) goto 0x0010C0
0x0010B0:
    global.hp = global.maxhp
0x0010C0:
    call (snd_play[]:int32 (var 155s))
0x0010D4:
    self.dreamed = (+ self.dreamed 1s)
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x00114C
0x001140:
    self.halt = 0s
0x00114C:
    popenv 0x001140
0x001150:
    if !(== self.whatiheard 4s) goto 0x0011EC
0x001164:
    global.msc = 0s
    stog.msg[0s] = "* You execute some action./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0011E8
0x0011DC:
    self.halt = 0s
0x0011E8:
    popenv 0x0011DC
0x0011EC:
    global.heard = 1s
0x0011F8:
    if !(== global.myfight 4s) goto 0x001254
0x00120C:
    if !(== global.mercyuse 0s) goto 0x001254
0x001220:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001254
0x001248:
    call (instance_destroy[]:int32 )
0x001254:
    if !(== self.mercymod 222s) goto 0x001284
0x001268:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001288
0x001284:
    push 0s
0x001288:
    if !pop goto 0x0012C0
0x00128C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x0012C0
0x0012B4:
    call (instance_destroy[]:int32 )
0x0012C0:
    if !(== global.mnfight 5s) goto 0x0018AC
0x0012D4:
    if !(== self.trcon 0s) goto 0x001410
0x0012E8:
    self.blcon = (instance_create[]:int32 (var 187s) self.y (+ self.x 120s))
    stog.msg[0s] = "\\E0... even after that&attack^1, you're still&standing in my way...?/"
    stog.msg[1s] = "\\M1W\\E0ow..^1.&You really ARE&something special./"
    stog.msg[2s] = "\\M0B\\E3ut don't get&cocky./"
    stog.msg[3s] = "\\E0Up until now^1, I've&only been using&a fraction of my&REAL power!/"
    stog.msg[4s] = "\\E2Let's see what good&your DETERMINATION&is against THIS!!/%%"
    global.msc = 0s
    global.typer = 68s
    global.typer = 86s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    self.trcon = 1s
0x001410:
    if !(== self.trcon 1s) goto 0x00173C
0x001424:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x001514
0x00143C:
    if !(== 782.stringno 1s) goto 0x001474
0x001450:
    call (caster_set_volume[]:int32 (var 0.75d) global.currentsong)
0x001474:
    if !(== 782.stringno 2s) goto 0x0014AC
0x001488:
    call (caster_set_volume[]:int32 (var 0.5d) global.currentsong)
0x0014AC:
    if !(== 782.stringno 3s) goto 0x0014E4
0x0014C0:
    call (caster_set_volume[]:int32 (var 0.25d) global.currentsong)
0x0014E4:
    if !(== 782.stringno 4s) goto 0x001514
0x0014F8:
    call (caster_set_volume[]:int32 (var 0s) global.currentsong)
0x001514:
    if !(== (instance_exists[]:int32 self.blconwd) 0s) goto 0x00173C
0x001530:
    pushenv 569s 0x001544
0x001538:
    self.transform = 1s
0x001544:
    popenv 0x001538
0x001548:
    call (caster_free[]:int32 (var -3s))
    self.bright = (caster_load[]:int32 (var "music/sfx/sfx_spellcast.ogg"))
    call (caster_play[]:int32 (var 0.2d) (var 0.24d) self.bright)
    call (caster_play[]:int32 (var 0.3d) (var 0.24d) self.bright)
    call (caster_play[]:int32 (var 0.4d) (var 0.24d) self.bright)
    call (caster_play[]:int32 (var 0.5d) (var 0.24d) self.bright)
    call (caster_play[]:int32 (var 0.6d) (var 0.24d) self.bright)
    call (caster_play[]:int32 (var 0.65d) (var 0.24d) self.bright)
    self.shakeamt = 0s
    self.trcon = 2s
    stog.alarm[10s] = 67s
    pushenv (int32 self.blcon) 0x0016F8
0x0016EC:
    call (instance_destroy[]:int32 )
0x0016F8:
    popenv 0x0016EC
0x0016FC:
    self.sw = (instance_create[]:int32 (var 557s) (var 0s) (var 0s))
    push 1s
    stog.ex* = (int32 self.sw)
0x00173C:
    if !(== self.trcon 2s) goto 0x0017FC
0x001750:
    if !(< self.shakeamt 9s) goto 0x001784
0x001764:
    self.shakeamt = (+ self.shakeamt 0.25d)
0x001784:
    stog.view_xview[0s] = (- (+ 0s (random[]:int32 self.shakeamt)) (random[]:int32 self.shakeamt))
    stog.view_yview[0s] = (- (+ 0s (random[]:int32 self.shakeamt)) (random[]:int32 self.shakeamt))
0x0017FC:
    if !(== self.trcon 3s) goto 0x001858
0x001810:
    stog.view_xview[0s] = 0s
    stog.view_yview[0s] = 0s
    self.trcon = 6s
    stog.alarm[10s] = 150s
0x001858:
    if !(== self.trcon 7s) goto 0x0018AC
0x00186C:
    call (caster_free[]:int32 (var -3s))
    stog.flag[15s] = 1s
    global.battlegroup = 256s
    call (room_restart[]:int32 )
0x0018AC:
    exit
