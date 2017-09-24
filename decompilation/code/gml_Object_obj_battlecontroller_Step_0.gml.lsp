0x000000:
    call (SCR_BORDERSETUP[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.currentplace = global.bmenuno
    push -5s
    if !(== 0s:monster 0s) goto 0x0003A8
0x000060:
    push -5s
    if !(== 1s:monster 0s) goto 0x0003A8
0x00007C:
    push -5s
    if !(== 2s:monster 0s) goto 0x0003A8
0x000098:
    if !(== self.won 0s) goto 0x0003A8
0x0000AC:
    self.won = 1s
    push global.xp
    global.xp = (+ -5s 3s:xpreward)
    push global.gold
    global.gold = (+ -5s 3s:goldreward)
    self.tlvl = global.lv
    call (script_execute[]:int32 (var 55s))
    push -5s
    if !(== 15s:flag 0s) goto 0x000168
0x000140:
    call (caster_stop[]:int32 global.batmusic)
    call (caster_free[]:int32 global.batmusic)
0x000168:
    stog.msg[0s] = "* YOU WON!&* You earned "
    push -5s
    push 0s
    stog.msg[0s:msg] = (+ -5s (+ (string[]:int32 3s:xpreward) " XP and "))
    push -5s
    push 0s
    stog.msg[0s:msg] = (+ -5s (+ (string[]:int32 3s:goldreward) " gold."))
    if !(!= self.tlvl global.lv) goto 0x00025C
0x000220:
    push -5s
    stog.msg[(+ 0s:msg "&* Your LOVE increased.")] = 0s
    call (snd_play[]:int32 (var 49s))
0x00025C:
    push -5s
    stog.msg[(+ 0s:msg "/%")] = 0s
    if !(== global.extraintro 2s) goto 0x000364
0x000298:
    global.typer = 5s
    call (caster_free[]:int32 global.currentsong)
    call (audio_stop_sound[]:int32 (var 234s))
    global.currentsong = (caster_load[]:int32 (var "music/toomuch.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    stog.flag[221s] = 1s
    push -5s
    stog.msg[0s] = 2s:msg
    global.myfight = 0s
    global.mnfight = 2s
    [obj_heart].x = -200s
0x000364:
    global.msc = 0s
    push (var 782s)
    push -5s
    call (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    exit
0x0003A8:
    global.inv = 30s
    if !(bool (instance_exists[]:int32 (var 282s))) goto 0x0003E4
0x0003CC:
    global.inv = (- 30s global.lv)
0x0003E4:
    if !(bool (instance_exists[]:int32 (var 360s))) goto 0x000410
0x0003FC:
    push (!= global.armor 44s)
    goto 0x000414
0x000410:
    push 0s
0x000414:
    if !pop goto 0x000430
0x000418:
    global.inv = (+ global.inv 20s)
0x000430:
    if !(== global.armor 44s) goto 0x00045C
0x000444:
    global.inv = (+ global.inv 30s)
0x00045C:
    if !(== global.armor 64s) goto 0x000488
0x000470:
    global.inv = (+ global.inv 15s)
0x000488:
    if !(== global.weapon 45s) goto 0x0004B4
0x00049C:
    global.inv = (+ global.inv 15s)
0x0004B4:
    if !(< global.inv 15s) goto 0x0004D4
0x0004C8:
    global.inv = 15s
0x0004D4:
    if (== global.armor 46s) goto 0x0004FC
0x0004E8:
    push (== global.armor 64s)
    goto 0x000500
0x0004FC:
    push 1s
0x000500:
    if !pop goto 0x0005CC
0x000504:
    if !(== global.mnfight 0s) goto 0x00052C
0x000518:
    push (== global.myfight 0s)
    goto 0x000530
0x00052C:
    push 0s
0x000530:
    if !pop goto 0x0005C0
0x000534:
    if !(== (% (+ global.turn 1s) 2s) 0s) goto 0x0005BC
0x000558:
    if !(== self.healed 0s) goto 0x0005BC
0x00056C:
    self.healed = 1s
    if !(< global.hp global.maxhp) goto 0x0005A8
0x000590:
    global.hp = (+ global.hp 1s)
0x0005A8:
    call (snd_play[]:int32 (var 109s))
0x0005BC:
    goto 0x0005CC
0x0005C0:
    self.healed = 0s
0x0005CC:
    if !(== global.mnfight 0s) goto 0x0005F4
0x0005E0:
    push (== global.myfight 0s)
    goto 0x0005F8
0x0005F4:
    push 0s
0x0005F8:
    if !pop goto 0x001594
0x0005FC:
    global.typer = 1s
    if !(== self.active 1s) goto 0x000FC4
0x00061C:
    if !(== (keyboard_multicheck_pressed[]:int32 (var 16s)) 0s) goto 0x000FC4
0x000638:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x000FC4
0x000650:
    if !(== global.bmenuno 0s) goto 0x000B48
0x000664:
    global.talked = -1s
    stog.bmenucoord[2s] = 0s
    push -5s
    global.bmenuno = (+ 0s:bmenucoord 1s)
    if !(bool (instance_exists[]:int32 (var 751s))) goto 0x000808
0x0006BC:
    if !(== 751.spec 1s) goto 0x000808
0x0006D0:
    if !(== global.bmenuno 2s) goto 0x000808
0x0006E4:
    push -5s
    global.rmsg = 0s:msg
    global.mytarget = 0s
    pushenv 782s 0x00071C
0x000710:
    self.halt = 3s
0x00071C:
    popenv 0x000710
0x000720:
    pushenv 785s 0x000734
0x000728:
    self.halt = 3s
0x000734:
    popenv 0x000728
0x000738:
    global.bmenuno = 10s
    push 1000s
    global.msc = (+ -5s (int32 global.mytarget):monstertype)
    push (var 785s)
    push -5s
    call (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    call (keyboard_clear[]:int32 (var 13s))
    call (SCR_TEXT[]:int32 global.msc)
    if !(== (int32 2s:bmenucoord[Altar.Decomp.Expression[]]):choices 0s) goto 0x000808
0x0007F4:
    stog.bmenucoord[2s] = 0s
0x000808:
    if (== global.bmenuno 1s) goto 0x000844
0x00081C:
    if (== global.bmenuno 2s) goto 0x000844
0x000830:
    push (== global.bmenuno 11s)
    goto 0x000848
0x000844:
    push 1s
0x000848:
    if !pop goto 0x000A0C
0x00084C:
    global.msc = 3s
    if !(== (int32 1s:bmenucoord[Altar.Decomp.Expression[]]):monster 0s) goto 0x0008A8
0x000884:
    push -5s
    stog.bmenucoord[(+ 1s:bmenucoord 1s)] = 1s
0x0008A8:
    if !(== (int32 1s:bmenucoord[Altar.Decomp.Expression[]]):monster 0s) goto 0x0008F8
0x0008D4:
    push -5s
    stog.bmenucoord[(+ 1s:bmenucoord 1s)] = 1s
0x0008F8:
    push -5s
    if !(== 0s:monster 0s) goto 0x000930
0x000914:
    push -5s
    push (== 2s:monster 0s)
    goto 0x000934
0x000930:
    push 0s
0x000934:
    if !pop goto 0x00094C
0x000938:
    stog.bmenucoord[1s] = 1s
0x00094C:
    push -5s
    if !(> 1s:bmenucoord 2s) goto 0x000A0C
0x000968:
    stog.bmenucoord[1s] = 0s
    push -5s
    if !(== 0s:monster 0s) goto 0x0009AC
0x000998:
    stog.bmenucoord[1s] = 1s
0x0009AC:
    push -5s
    if !(== 1s:monster 0s) goto 0x0009DC
0x0009C8:
    stog.bmenucoord[1s] = 2s
0x0009DC:
    push -5s
    if !(== 2s:monster 0s) goto 0x000A0C
0x0009F8:
    stog.bmenucoord[1s] = 0s
0x000A0C:
    if !(== global.bmenuno 3s) goto 0x000A80
0x000A20:
    push -5s
    if !(!= 0s:item 0s) goto 0x000A74
0x000A3C:
    stog.bmenucoord[3s] = 0s
    call (script_execute[]:int32 (var 75s))
    global.msc = 9s
    goto 0x000A80
0x000A74:
    global.bmenuno = 0s
0x000A80:
    if !(== global.bmenuno 4s) goto 0x000AA0
0x000A94:
    global.msc = 7s
0x000AA0:
    push -5s
    global.tmsg = 0s:msg
    call (snd_play[]:int32 (var 111s))
    pushenv 782s 0x000AE0
0x000AD4:
    self.halt = 3s
0x000AE0:
    popenv 0x000AD4
0x000AE4:
    pushenv 785s 0x000AF8
0x000AEC:
    self.halt = 3s
0x000AF8:
    popenv 0x000AEC
0x000AFC:
    push (var 785s)
    push -5s
    call (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    call (keyboard_clear[]:int32 (var 13s))
    exit
0x000B48:
    if !(== global.bmenuno 1s) goto 0x000BE0
0x000B5C:
    push -5s
    global.mytarget = 1s:bmenucoord
    [OBJ_WRITER].halt = 3s
    [OBJ_INSTAWRITER].halt = 3s
    global.myfight = 1s
    [obj_heart].x = -200s
    call (snd_play[]:int32 (var 111s))
    call (script_execute[]:int32 (var 161s))
    call (keyboard_clear[]:int32 (var 13s))
0x000BE0:
    if !(== global.bmenuno 10s) goto 0x000CA8
0x000BF4:
    push -5s
    global.talked = 2s:bmenucoord
    push -5s
    global.mntrg = (int32 global.mytarget):monsterinstance
    pushenv (int32 global.mntrg) 0x000C4C
0x000C3C:
    self.whatiheard = global.talked
0x000C4C:
    popenv 0x000C3C
0x000C50:
    [OBJ_WRITER].halt = 3s
    [OBJ_INSTAWRITER].halt = 3s
    call (snd_play[]:int32 (var 111s))
    global.myfight = 2s
    [obj_heart].x = -200s
    call (keyboard_clear[]:int32 (var 13s))
0x000CA8:
    if !(== global.bmenuno 2s) goto 0x000DBC
0x000CBC:
    push -5s
    global.mytarget = 1s:bmenucoord
    [OBJ_WRITER].halt = 3s
    [OBJ_INSTAWRITER].halt = 3s
    global.bmenuno = 10s
    push 1000s
    global.msc = (+ -5s (int32 global.mytarget):monstertype)
    push (var 785s)
    push -5s
    call (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    call (keyboard_clear[]:int32 (var 13s))
    call (SCR_TEXT[]:int32 global.msc)
    if !(== (int32 2s:bmenucoord[Altar.Decomp.Expression[]]):choices 0s) goto 0x000DBC
0x000DA8:
    stog.bmenucoord[2s] = 0s
0x000DBC:
    if (== global.bmenuno 3s) goto 0x000DEC
0x000DD0:
    push (== global.bmenuno 3.5d)
    goto 0x000DF0
0x000DEC:
    push 1s
0x000DF0:
    if !pop goto 0x000F04
0x000DF4:
    if !(== (keyboard_check[]:int32 (var 39s)) 0s) goto 0x000E2C
0x000E10:
    push (== (keyboard_check[]:int32 (var 37s)) 0s)
    goto 0x000E30
0x000E2C:
    push 0s
0x000E30:
    if !pop goto 0x000EF0
0x000E34:
    [OBJ_WRITER].halt = 3s
    push -5s
    self.itempos = (+ 3s:bmenucoord (* (- global.bmenuno 3s) 8s))
    push -5s
    self.thisitemid = (int32 self.itempos):item
    call (script_execute[]:int32 self.thisitemid self.itempos (var 73s))
    global.talked = 91s
    global.myfight = 4s
    [obj_heart].x = -200s
    call (snd_play[]:int32 (var 111s))
0x000EF0:
    call (keyboard_clear[]:int32 (var 13s))
0x000F04:
    if !(== global.bmenuno 4s) goto 0x000FC4
0x000F18:
    [OBJ_WRITER].halt = 3s
    push -5s
    global.mercyuse = 4s:bmenucoord
    if !(== global.mercyuse 1s) goto 0x000F70
0x000F50:
    call (script_execute[]:int32 (var 166s))
    global.talked = 90s
0x000F70:
    if !(== self.runaway 0s) goto 0x000F98
0x000F84:
    call (snd_play[]:int32 (var 111s))
0x000F98:
    global.myfight = 4s
    [obj_heart].x = -200s
    call (keyboard_clear[]:int32 (var 13s))
0x000FC4:
    if !(== self.active 1s) goto 0x001254
0x000FD8:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 16s))) goto 0x001254
0x000FF0:
    if !(!= global.bmenuno 0s) goto 0x001018
0x001004:
    push (< global.bmenuno 6s)
    goto 0x00101C
0x001018:
    push 0s
0x00101C:
    if !pop goto 0x0010BC
0x001020:
    [OBJ_WRITER].halt = 3s
    [OBJ_INSTAWRITER].halt = 3s
    global.bmenuno = 0s
    global.typer = 1s
    stog.msg[0s] = global.tmsg
    global.msc = 0s
    push (var 782s)
    push -5s
    call (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    call (keyboard_clear[]:int32 (var 16s))
0x0010BC:
    if !(== global.bmenuno 10s) goto 0x0011BC
0x0010D0:
    [OBJ_WRITER].halt = 3s
    [OBJ_INSTAWRITER].halt = 3s
    global.bmenuno = 2s
    global.typer = 1s
    global.msc = 3s
    if !(bool (instance_exists[]:int32 (var 751s))) goto 0x001174
0x001124:
    if !(== 751.spec 1s) goto 0x001174
0x001138:
    global.bmenuno = 0s
    global.typer = 1s
    stog.msg[0s] = global.rmsg
    global.msc = 0s
0x001174:
    push (var 785s)
    push -5s
    call (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    call (keyboard_clear[]:int32 (var 16s))
0x0011BC:
    if !(== global.bmenuno 11s) goto 0x001254
0x0011D0:
    [OBJ_WRITER].halt = 3s
    [OBJ_INSTAWRITER].halt = 3s
    global.bmenuno = 3s
    global.typer = 1s
    global.msc = 0s
    push (var 785s)
    push -5s
    call (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    call (keyboard_clear[]:int32 (var 16s))
0x001254:
    if (== global.bmenuno 1s) goto 0x001290
0x001268:
    if (== global.bmenuno 2s) goto 0x001290
0x00127C:
    push (== global.bmenuno 11s)
    goto 0x001294
0x001290:
    push 1s
0x001294:
    if !pop goto 0x0012F4
0x001298:
    push -5s
    [obj_heart].x = (+ 0s:idealborder 32s)
    push -5s
    push (+ 2s:idealborder 28s)
    [obj_heart].y = (+ -5s (* 1s:bmenucoord 32s))
0x0012F4:
    if !(== global.bmenuno 10s) goto 0x001408
0x001308:
    push -5s
    if !(<= 2s:bmenucoord 2s) goto 0x001348
0x001324:
    push -5s
    [obj_heart].x = (+ 0s:idealborder 32s)
    goto 0x001368
0x001348:
    push -5s
    [obj_heart].x = (+ 0s:idealborder 292s)
0x001368:
    push -5s
    if !(<= 2s:bmenucoord 2s) goto 0x0013C4
0x001384:
    push -5s
    push (+ 2s:idealborder 28s)
    [obj_heart].y = (+ -5s (* 2s:bmenucoord 32s))
    goto 0x001408
0x0013C4:
    push -5s
    push (+ 2s:idealborder 28s)
    [obj_heart].y = (+ -5s (* (- 2s:bmenucoord 3s) 32s))
0x001408:
    if (== global.bmenuno 3s) goto 0x001438
0x00141C:
    push (== global.bmenuno 3.5d)
    goto 0x00143C
0x001438:
    push 1s
0x00143C:
    if !pop goto 0x001524
0x001440:
    push -5s
    if !(<= 3s:bmenucoord 1s) goto 0x001480
0x00145C:
    push -5s
    [obj_heart].y = (+ 2s:idealborder 28s)
    goto 0x0014A0
0x001480:
    push -5s
    [obj_heart].y = (+ 2s:idealborder 60s)
0x0014A0:
    push -5s
    if (== 3s:bmenucoord 0s) goto 0x0014D8
0x0014BC:
    push -5s
    push (== 3s:bmenucoord 2s)
    goto 0x0014DC
0x0014D8:
    push 1s
0x0014DC:
    if !pop goto 0x001504
0x0014E0:
    push -5s
    [obj_heart].x = (+ 0s:idealborder 32s)
    goto 0x001524
0x001504:
    push -5s
    [obj_heart].x = (+ 0s:idealborder 280s)
0x001524:
    if !(== global.bmenuno 4s) goto 0x001594
0x001538:
    push -5s
    [obj_heart].x = (+ 0s:idealborder 32s)
    push -5s
    push (+ 2s:idealborder 28s)
    [obj_heart].y = (+ -5s (* 4s:bmenucoord 32s))
0x001594:
    if !(== self.active 1s) goto 0x001640
0x0015A8:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 16s))) goto 0x001640
0x0015C0:
    if !(== global.mnfight 0s) goto 0x0015F0
0x0015D4:
    push -5s
    push (== 21s:flag 0s)
    goto 0x0015F4
0x0015F0:
    push 0s
0x0015F4:
    if !pop goto 0x001640
0x0015F8:
    if !(> (instance_number[]:int32 (var 782s)) 0s) goto 0x00162C
0x001614:
    [OBJ_WRITER].stringpos = (string_length[]:int32 782.originalstring)
0x00162C:
    call (keyboard_clear[]:int32 (var 16s))
0x001640:
    if (== global.myfight 1s) goto 0x00167C
0x001654:
    if (== global.myfight 2s) goto 0x00167C
0x001668:
    push (== global.mnfight 3s)
    goto 0x001680
0x00167C:
    push 1s
0x001680:
    if !pop goto 0x001690
0x001684:
    [obj_heart].x = -400s
0x001690:
    if !(== global.mnfight 3s) goto 0x001778
0x0016A4:
    global.border = 0s
    call (script_execute[]:int32 (var 168s))
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x001778
0x0016E4:
    global.typer = 1s
    global.msc = 0s
    push (var 782s)
    push -5s
    call (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    global.bmenuno = 0s
    global.myfight = 0s
    global.mnfight = 0s
    global.turn = (+ global.turn 1s)
    global.mercyuse = -1s
0x001778:
    if !(== global.myfight 3s) goto 0x0018B0
0x00178C:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x0018B0
0x0017A4:
    if !(> 782.halt 0s) goto 0x0018B0
0x0017B8:
    push -5s
    push (+ 0s:idealborder 32s)
    [obj_heart].x = (+ -5s (* 6s:bmenucoord 252s))
    push -5s
    [obj_heart].y = (+ 2s:idealborder 92s)
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0018B0
0x00182C:
    global.heard = 0s
    push 6s
    global.talked = (+ -5s 6s:bmenucoord)
    push -5s
    pushenv (int32 (int32 global.mytarget):monsterinstance) 0x001888
0x001878:
    self.whatiheard = global.talked
0x001888:
    popenv 0x001878
0x00188C:
    [obj_heart].x = -200s
    [OBJ_WRITER].halt = 3s
    global.myfight = 2s
0x0018B0:
    if !(== global.myfight 4s) goto 0x00192C
0x0018C4:
    if !(== self.runaway 0s) goto 0x00192C
0x0018D8:
    [obj_heart].x = -200s
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x00192C
0x001900:
    global.myfight = 0s
    global.mnfight = 1s
    call (keyboard_clear[]:int32 (var 13s))
0x00192C:
    if !(<= global.hp 0s) goto 0x001954
0x001940:
    call (script_execute[]:int32 (var 158s))
0x001954:
    if !(< self.currentplace global.bmenuno) goto 0x00199C
0x00196C:
    if !(!= (snd_isplaying[]:int32 (var 111s)) 1s) goto 0x00199C
0x001988:
    call (snd_play[]:int32 (var 111s))
0x00199C:
    if !(== global.debug 1s) goto 0x0019CC
0x0019B0:
    push (== (keyboard_multicheck_pressed[]:int32 (var 32s)) 1s)
    goto 0x0019D0
0x0019CC:
    push 0s
0x0019D0:
    if !pop goto 0x0019E0
0x0019D4:
    global.turntimer = 2s
0x0019E0:
    exit
