0x000000:
    if !(== self.con 1s) goto 0x000060
0x000014:
    call (caster_pause[]:int32 global.currentsong)
    self.con = 2s
    push -1s
    self.curview = 0s:view_yview
    stog.alarm[4s] = 30s
0x000060:
    if !(== self.con 3s) goto 0x0000D8
0x000074:
    global.facing = 0s
    push -1s
    stog.view_yview[(+ 0s:view_yview 1s)] = 0s
    push -1s
    if !(> 0s:view_yview (+ self.curview 60s)) goto 0x0000D8
0x0000CC:
    self.con = 4s
0x0000D8:
    if !(== self.con 4s) goto 0x000114
0x0000EC:
    self.con = 4.1d
    stog.alarm[4s] = 20s
0x000114:
    if !(== self.con 5.1d) goto 0x0001E8
0x000130:
    self.con = 4.2d
    push -1s
    self.rememberxview = (int32 self.view_current):view_xview
    push -1s
    self.rememberyview = (int32 self.view_current):view_yview
    self.xdiff = 130s
    push 192s
    self.ydiff = (- -1s (int32 self.view_current):view_yview)
    stog.view_object[(int32 self.view_current)] = -4s
    stog.alarm[4s] = 12s
0x0001E8:
    if !(== self.con 4.2d) goto 0x0003E4
0x000204:
    push -1s
    if !(< 0s:view_xview 130s) goto 0x000254
0x000220:
    push -1s
    stog.view_xview[(+ 0s:view_xview (/ self.xdiff (double 10s)))] = 0s
0x000254:
    push -1s
    if !(> 0s:view_xview 130s) goto 0x000284
0x000270:
    stog.view_xview[0s] = 130s
0x000284:
    push -1s
    if !(< 0s:view_yview 192s) goto 0x0002D4
0x0002A0:
    push -1s
    stog.view_yview[(+ 0s:view_yview (/ self.ydiff (double 10s)))] = 0s
0x0002D4:
    push -1s
    if !(> 0s:view_yview 192s) goto 0x000304
0x0002F0:
    stog.view_yview[0s] = 192s
0x000304:
    push -1s
    if !(> 0s:view_hview 120s) goto 0x000344
0x000320:
    push -1s
    stog.view_hview[(- 0s:view_hview 12s)] = 0s
0x000344:
    push -1s
    if !(< 0s:view_hview 120s) goto 0x000374
0x000360:
    stog.view_hview[0s] = 120s
0x000374:
    push -1s
    if !(> 0s:view_wview 160s) goto 0x0003B4
0x000390:
    push -1s
    stog.view_wview[(- 0s:view_wview 16s)] = 0s
0x0003B4:
    push -1s
    if !(< 0s:view_wview 160s) goto 0x0003E4
0x0003D0:
    stog.view_wview[0s] = 160s
0x0003E4:
    if !(== self.con 5.2d) goto 0x000420
0x000400:
    self.con = 5s
    stog.alarm[4s] = 10s
0x000420:
    if !(== self.con 6s) goto 0x0004D8
0x000434:
    push 1574s
    stog.sprite_index* = (int32 self.dummy)
    call (caster_play[]:int32 (var 0.8d) (var 1s) self.shock)
    self.con = 6.3d
    self.remx = (int32 self.dummy):x
    self.remy = (int32 self.dummy):y
    stog.alarm[4s] = 60s
0x0004D8:
    if !(== self.con 6.2d) goto 0x000564
0x0004F4:
    push (+ (- self.remx 2s) (random[]:int32 (var 4s)))
    stog.x* = (int32 self.dummy)
    push (+ (- self.remy 2s) (random[]:int32 (var 4s)))
    stog.y* = (int32 self.dummy)
0x000564:
    if !(== self.con 7.1d) goto 0x0005A8
0x000580:
    stog.alarm[4s] = 30s
    self.con = 6.2d
0x0005A8:
    if !(== self.con 7.2d) goto 0x00060C
0x0005C4:
    pushenv (int32 self.dummy) 0x0005E8
0x0005D4:
    call (event_user[]:int32 (var 1s))
0x0005E8:
    popenv 0x0005D4
0x0005EC:
    self.con = 7s
    stog.alarm[4s] = 10s
0x00060C:
    if !(== self.con 7.3d) goto 0x000650
0x000628:
    self.con = 6.4d
    stog.alarm[4s] = 14s
0x000650:
    if !(== self.con 6.4d) goto 0x000898
0x00066C:
    push -1s
    if !(> (int32 self.view_current):view_xview 0s) goto 0x0006CC
0x000690:
    push -1s
    stog.view_xview[(- (int32 self.view_current):view_xview (/ self.xdiff (double 10s)))] = (int32 self.view_current)
0x0006CC:
    push -1s
    if !(< 0s:view_xview 0s) goto 0x0006FC
0x0006E8:
    stog.view_xview[0s] = 0s
0x0006FC:
    push -1s
    if !(> (int32 self.view_current):view_yview self.rememberyview) goto 0x000760
0x000724:
    push -1s
    stog.view_yview[(- (int32 self.view_current):view_yview (/ self.ydiff (double 10s)))] = (int32 self.view_current)
0x000760:
    push -1s
    if !(< 0s:view_yview self.rememberyview) goto 0x000798
0x000780:
    stog.view_yview[0s] = self.rememberyview
0x000798:
    push -1s
    if !(< (int32 self.view_current):view_hview 240s) goto 0x0007E8
0x0007BC:
    push -1s
    stog.view_hview[(+ (int32 self.view_current):view_hview 12s)] = (int32 self.view_current)
0x0007E8:
    push -1s
    if !(> 0s:view_hview 240s) goto 0x000818
0x000804:
    stog.view_hview[0s] = 240s
0x000818:
    push -1s
    if !(< (int32 self.view_current):view_wview 320s) goto 0x000868
0x00083C:
    push -1s
    stog.view_wview[(+ (int32 self.view_current):view_wview 16s)] = (int32 self.view_current)
0x000868:
    push -1s
    if !(> 0s:view_wview 320s) goto 0x000898
0x000884:
    stog.view_wview[0s] = 320s
0x000898:
    if !(== self.con 7.4d) goto 0x0008F8
0x0008B4:
    stog.view_object[(int32 self.view_current)] = 1570s
    self.con = 6.2d
    stog.alarm[4s] = 25s
0x0008F8:
    if !(== self.con 8s) goto 0x000980
0x00090C:
    push -1s
    stog.view_yview[(- 0s:view_yview 6s)] = 0s
    push -1s
    if !(<= 0s:view_yview (- self.curview 20s)) goto 0x000980
0x000958:
    self.con = 7.5d
    stog.alarm[4s] = 10s
0x000980:
    if !(== self.con 8.5d) goto 0x000A3C
0x00099C:
    global.facing = 2s
    push 180s
    stog.x* = (int32 self.dummy)
    push 80s
    stog.y* = (int32 self.dummy)
    pushenv (int32 self.dummy) 0x000A10
0x0009E8:
    call (event_user[]:int32 (var 0s))
    call (event_user[]:int32 (var 1s))
0x000A10:
    popenv 0x0009E8
0x000A14:
    self.con = 7.6d
    stog.alarm[4s] = 16s
0x000A3C:
    if !(== self.con 8.6d) goto 0x000A64
0x000A58:
    self.con = 9s
0x000A64:
    if !(== self.con 9s) goto 0x0010A4
0x000A78:
    global.facing = 2s
    push 0s
    stog.vspeed* = (int32 self.dummy)
    self.con = 10s
    call (caster_loop[]:int32 (var 1s) (var 0.8d) self.predummy)
    push -5s
    if !(== 355s:flag 0s) goto 0x000B08
0x000AF0:
    stog.msg[0s] = "* Hahaha..^1.&* It's just like you to&  run away./"
0x000B08:
    push -5s
    if !(== 355s:flag 1s) goto 0x000B3C
0x000B24:
    stog.msg[0s] = "* FOOL^1!&* You think you can hurt&  ME???/"
0x000B3C:
    push -5s
    if !(== 355s:flag 2s) goto 0x000B70
0x000B58:
    stog.msg[0s] = "* Hahaha..^1.&* Too intimidated to fight&  me^1, huh!?/"
0x000B70:
    stog.msg[1s] = "* I am a ghost that lives&  inside a DUMMY./"
    stog.msg[2s] = "* My cousin used to live&  inside a DUMMY^1, too^1.&* Until.../"
    push -5s
    if !(== 14s:flag 0s) goto 0x000C7C
0x000BBC:
    stog.msg[3s] = "* YOU CAME ALONG!/"
    stog.msg[4s] = "* They were a shy sort^1.&* Living a lonely life in&  the RUINS.../"
    stog.msg[5s] = "* They saw you and hoped you&  might TALK to them./"
    stog.msg[6s] = "* Perhaps strike up a&  friendly conversation./"
    stog.msg[7s] = "* But NO!!!/"
    stog.msg[8s] = "* You ran away..^1.&* And broke their little&  ethereal heart./"
    stog.msg[9s] = "* Despicable^1.&* Despicable^1!&* DESPICABLE!/"
    stog.msg[10s] = "* HUMAN^1!&* I'll show you what REAL&  heartbreak is!/%%"
0x000C7C:
    push -5s
    if !(== 14s:flag 1s) goto 0x000D70
0x000C98:
    stog.msg[3s] = "* YOU DESTROYED THEIR HOME!/"
    stog.msg[4s] = "* Us ghosts spend our whole&  lives looking for a&  proper vessel./"
    stog.msg[5s] = "* Slowly^1, slowly^1, we grow&  closer to our new&  bodies.../"
    stog.msg[6s] = "* Until one day^1, we too&  may become corporeal&  beings./"
    stog.msg[7s] = "* Beings able to laugh^1,&  love^1, and dance like&  any other.../"
    stog.msg[8s] = "* But YOU!!!^1!&* My cousin's future...^1!&* You took it all away!/"
    stog.msg[9s] = "* Despicable^1.&* Despicable^1!&* DESPICABLE!/"
    stog.msg[10s] = "* HUMAN^1!&* I hope you're not too&  attached to YOUR body.../"
    stog.msg[11s] = "* Because your SOUL's about&  to get EVICTED!!!/%%"
0x000D70:
    push -5s
    if !(== 14s:flag 2s) goto 0x000E1C
0x000D8C:
    stog.msg[3s] = "* YOU CAME ALONG!/"
    stog.msg[4s] = "* When you talked to them^1,&  they thought they were&  in for a nice chat.../"
    stog.msg[5s] = "* But the things you&  SAID...!/"
    stog.msg[6s] = "* Horrible^1.&* Shocking^1!&* UNBELIEVABLE!/"
    stog.msg[7s] = "* It spooked them right&  out of their dummy!/"
    stog.msg[8s] = "* HUMAN^1!&* I'll scare your SOUL&  out of your body!/%%"
0x000E1C:
    push -5s
    if !(== 14s:flag 3s) goto 0x000EF8
0x000E38:
    stog.msg[3s] = "* YOU...!/"
    stog.msg[4s] = "* You.../"
    stog.msg[5s] = "* Shucks^1!&* You were really boring!/"
    stog.msg[6s] = "* They got annoyed and flew&  away like any self-&  respecting spectre./"
    stog.msg[7s] = "* Well then^1.&* Well then!&* WELL THEN!/"
    stog.msg[8s] = "* Boring people are crumbs&  sticking to the face&  of this world./"
    stog.msg[9s] = "* Human!/"
    stog.msg[10s] = "* I'll wipe you away with&  the dainty handkerchief&  of vengeance!/%%"
0x000EF8:
    if !(== self.murder 1s) goto 0x001074
0x000F0C:
    push -5s
    if !(== 355s:flag 0s) goto 0x000F40
0x000F28:
    stog.msg[0s] = "* Hahaha..^1.&* It's just like you to&  run away./"
0x000F40:
    push -5s
    if !(== 355s:flag 1s) goto 0x000F74
0x000F5C:
    stog.msg[0s] = "* FOOL^1!&* You think you can hurt&  ME???/"
0x000F74:
    push -5s
    if !(== 355s:flag 2s) goto 0x000FA8
0x000F90:
    stog.msg[0s] = "* Hahaha..^1.&* Too intimidated to fight&  me^1, huh!?/"
0x000FA8:
    stog.msg[1s] = "* I am a ghost that lives&  inside a DUMMY./"
    stog.msg[2s] = "* My cousin used to live&  inside a DUMMY^1, too^1.&* Until.../"
    stog.msg[3s] = "* YOU CAME ALONG!/"
    stog.msg[4s] = "* Not only did YOUR actions&  cause them to leave their&  home.../"
    stog.msg[5s] = "* But now all of their neighbors&  are gone^1, too!/"
    stog.msg[6s] = "* Despicable^1.&* Despicable^1!&* DESPICABLE!!!/"
    stog.msg[7s] = "* You're the worst person I've&  ever met^1!&* I've NEVER been more mad!!!/"
    stog.msg[8s] = "* Guooooohhhh!!!^1!&* My mannequin levels are&  going OFF THE CHARTS!!!/%%"
    self.con = 30s
0x001074:
    call (scr_regulartext[]:int32 )
    if !(bool (instance_exists[]:int32 (var 779s))) goto 0x0010A4
0x001098:
    [obj_dialoguer].side = 1s
0x0010A4:
    if !(== self.con 10s) goto 0x0010D4
0x0010B8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0010D8
0x0010D4:
    push 0s
0x0010D8:
    if !pop goto 0x001188
0x0010DC:
    call (caster_free[]:int32 self.shock)
    call (caster_free[]:int32 self.predummy)
    call (snd_play[]:int32 (var 30s))
    push 1577s
    stog.sprite_index* = (int32 self.dummy)
    push 0s
    stog.image_index* = (int32 self.dummy)
    push 0.45d
    stog.image_speed* = (int32 self.dummy)
    self.con = 11s
    stog.alarm[4s] = 30s
0x001188:
    if !(== self.con 12s) goto 0x001204
0x00119C:
    self.con = 13s
    global.battlegroup = 45s
    global.mercy = 1s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.talkedto = 0s
    stog.alarm[4s] = 32s
0x001204:
    if !(== self.con 14s) goto 0x00129C
0x001218:
    [obj_mainchara].cutscene = 0s
    stog.view_object[0s] = 1570s
    global.interact = 1s
    if !(== global.interact 0s) goto 0x001264
0x001258:
    global.interact = 1s
0x001264:
    push 1128s
    stog.sprite_index* = (int32 self.dummy)
    self.con = 15s
    stog.alarm[4s] = 15s
0x00129C:
    if !(== self.con 15s) goto 0x0012DC
0x0012B0:
    global.mercy = 0s
    if !(== global.interact 0s) goto 0x0012DC
0x0012D0:
    global.interact = 1s
0x0012DC:
    if !(== self.con 16s) goto 0x001474
0x0012F0:
    global.border = 0s
    stog.msg[0s] = "* well..^1.&* i'm going to head home&  now.../"
    stog.msg[1s] = "* oh..^1. umm..^1.&* feel free to \"come&  with\" if you want.../"
    stog.msg[2s] = "* but no pressure.../"
    stog.msg[3s] = "* i understand if you're&  busy.../"
    stog.msg[4s] = "* it's fine.../"
    stog.msg[5s] = "* no worries.../"
    stog.msg[6s] = "* just thought i'd&  offer.../%%"
    push -5s
    if !(== 36s:flag 0s) goto 0x001420
0x0013C0:
    stog.msg[0s] = "* well..^1.&* i'm going to head home&  now.../"
    stog.msg[1s] = "* just warning you.../"
    stog.msg[2s] = "* so you don't accidentally&  follow me to my&  house.../"
    stog.msg[3s] = "* you probably wouldn't&  like that.../%%"
0x001420:
    call (scr_regulartext[]:int32 )
    if !(bool (instance_exists[]:int32 (var 779s))) goto 0x001450
0x001444:
    [obj_dialoguer].side = 1s
0x001450:
    global.plot = 116s
    self.greg = 1s
    self.con = 17s
0x001474:
    if !(== self.con 17s) goto 0x0014A4
0x001488:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0014A8
0x0014A4:
    push 0s
0x0014A8:
    if !pop goto 0x001554
0x0014AC:
    global.interact = 0s
    push -3s
    stog.vspeed* = (int32 self.dummy)
    if !(> self.greg 0s) goto 0x001504
0x0014E4:
    self.greg = (- self.greg 0.04d)
0x001504:
    if !(== (int32 self.dummy):image_alpha self.greg) goto 0x001534
0x001528:
    self.solid = 0s
0x001534:
    self.con = 18s
    stog.alarm[4s] = 30s
0x001554:
    if !(== self.con 19s) goto 0x001594
0x001568:
    pushenv (int32 self.dummy) 0x001584
0x001578:
    call (instance_destroy[]:int32 )
0x001584:
    popenv 0x001578
0x001588:
    call (instance_destroy[]:int32 )
0x001594:
    if !(== self.con 30s) goto 0x001694
0x0015A8:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x001628
0x0015C0:
    if !(== 782.stringno 7s) goto 0x001624
0x0015D4:
    push 1577s
    stog.sprite_index* = (int32 self.dummy)
    push 0s
    stog.image_index* = (int32 self.dummy)
    push 0.45d
    stog.image_speed* = (int32 self.dummy)
0x001624:
    goto 0x001694
0x001628:
    call (caster_free[]:int32 (var -3s))
    call (snd_play[]:int32 (var 30s))
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    self.con = 31s
    stog.alarm[4s] = 2s
0x001694:
    if !(== self.con 32s) goto 0x0016E8
0x0016A8:
    pushenv (int32 self.dummy) 0x0016C4
0x0016B8:
    self.sprite_index = 1575s
0x0016C4:
    popenv 0x0016B8
0x0016C8:
    self.con = 33s
    stog.alarm[4s] = 45s
0x0016E8:
    if !(== self.con 34s) goto 0x001784
0x0016FC:
    global.msc = 0s
    stog.msg[0s] = "* ...?/"
    stog.msg[1s] = "* This..^1.&* This feeling...?/%%"
    self.d = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.d)
    self.con = 35s
0x001784:
    if !(== self.con 35s) goto 0x0017B4
0x001798:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0017B8
0x0017B4:
    push 0s
0x0017B8:
    if !pop goto 0x0018B8
0x0017BC:
    pushenv (int32 self.dummy) 0x0017D8
0x0017CC:
    self.sprite_index = 1576s
0x0017D8:
    popenv 0x0017CC
0x0017DC:
    stog.msg[0s] = "* Eureka^1.&* Eureka^1!&* EUREKA!/"
    stog.msg[1s] = "* Human^1.&* That moment of unbridled&  emotion./"
    stog.msg[2s] = "* It allowed me to finally&  fuse with my body!/"
    stog.msg[3s] = "* I'm fully corporeal now^1!&* My lifelong dream^1, realized!/"
    stog.msg[4s] = "* In return^1, I guess I&  won't stomp you./"
    stog.msg[5s] = "* How's that sound?/%%"
    self.d = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.d)
    self.con = 36s
0x0018B8:
    if !(== self.con 36s) goto 0x0018E8
0x0018CC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0018EC
0x0018E8:
    push 0s
0x0018EC:
    if !pop goto 0x00196C
0x0018F0:
    self.con = 37s
    global.battlegroup = 93s
    stog.flag[200s] = 204s
    global.mercy = 1s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.talkedto = 0s
    stog.alarm[4s] = 32s
0x00196C:
    if !(== self.con 38s) goto 0x001A0C
0x001980:
    pushenv (int32 self.dummy) 0x00199C
0x001990:
    call (instance_destroy[]:int32 )
0x00199C:
    popenv 0x001990
0x0019A0:
    [obj_mainchara].cutscene = 0s
    stog.view_object[0s] = 1570s
    global.interact = 1s
    if !(== global.interact 0s) goto 0x0019EC
0x0019E0:
    global.interact = 1s
0x0019EC:
    self.con = 39s
    stog.alarm[4s] = 4s
0x001A0C:
    if !(== self.con 40s) goto 0x001A5C
0x001A20:
    global.mercy = 0s
    global.plot = 117s
    global.interact = 0s
    call (instance_destroy[]:int32 )
    self.con = 41s
0x001A5C:
    exit
