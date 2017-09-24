0x000000:
    if !(== self.conversation 0s) goto 0x00022C
0x000014:
    if !(>= self.x (- 1570.x 23s)) goto 0x00022C
0x000034:
    self.x = (- 1570.x 23s)
    self.hspeed = 0s
    self.image_speed = 0s
    self.conversation = 1s
    global.typer = 21s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.msc = 0s
    self.image_index = 0s
    if !(bool (instance_exists[]:int32 (var 89s))) goto 0x0000DC
0x0000C4:
    pushenv 89s 0x0000D8
0x0000CC:
    call (instance_destroy[]:int32 )
0x0000D8:
    popenv 0x0000CC
0x0000DC:
    stog.msg[0s] = "* Human./"
    stog.msg[1s] = "* Don't you know how&  to greet a new pal?/"
    stog.msg[2s] = "* Turn around and shake&  my hand./%%"
    call (ini_open[]:int32 (var "undertale.ini"))
    self.M1 = (ini_read_real[]:int32 (var 0s) (var "M1") (var "Sans"))
    call (ini_write_real[]:int32 (+ self.M1 1s) (var "M1") (var "Sans"))
    call (ini_close[]:int32 )
    if !(> self.M1 0s) goto 0x000208
0x0001C0:
    stog.msg[0s] = "* Human./"
    stog.msg[1s] = " %"
    stog.msg[2s] = " %%"
0x000208:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x00022C:
    if !(== self.conversation 1s) goto 0x00025C
0x000240:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000260
0x00025C:
    push 0s
0x000260:
    if !pop goto 0x0002B4
0x000264:
    global.interact = 1s
    [obj_mainchara].sprite_index = 1043s
    [obj_mainchara].facing = 0s
    global.facing = 0s
    stog.alarm[2s] = 50s
    self.conversation = 2s
0x0002B4:
    if !(== self.sprite_index 1364s) goto 0x0002F0
0x0002C8:
    if !(== self.conversation 4s) goto 0x0002F0
0x0002DC:
    push (== self.image_index 2s)
    goto 0x0002F4
0x0002F0:
    push 0s
0x0002F4:
    if !pop goto 0x000348
0x0002F8:
    call (caster_play[]:int32 (var 1s) (var 1s) self.fsound)
    stog.alarm[4s] = 180s
    self.image_speed = 0s
    self.conversation = 5s
0x000348:
    if !(== self.conversation 6s) goto 0x000378
0x00035C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00037C
0x000378:
    push 0s
0x00037C:
    if !pop goto 0x000404
0x000380:
    [obj_mainchara].visible = 0s
    self.mainact = (instance_create[]:int32 (var 1355s) 1570.y 1570.x)
    push 4s
    stog.hspeed* = (int32 self.mainact)
    [obj_mainchara].hspeed = 4s
    self.hspeed = 4s
    self.image_speed = 0.25d
    self.conversation = 7s
0x000404:
    if !(== self.conversation 7s) goto 0x00042C
0x000418:
    push (>= self.x 2440s)
    goto 0x000430
0x00042C:
    push 0s
0x000430:
    if !pop goto 0x0004F0
0x000434:
    self.hspeed = 0s
    self.image_index = 0s
    self.image_speed = 0s
    [obj_mainchara_actor].hspeed = 0s
    [obj_mainchara_actor].image_speed = 0s
    [obj_mainchara_actor].image_index = 0s
    [obj_mainchara].hspeed = 0s
    stog.msg[0s] = "* quick^1, behind that&  conveniently-shaped&  lamp./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 8s
    if !(== self.murder 1s) goto 0x0004F0
0x0004E4:
    self.conversation = 50s
0x0004F0:
    if !(== self.conversation 8s) goto 0x000520
0x000504:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000524
0x000520:
    push 0s
0x000524:
    if !pop goto 0x00054C
0x000528:
    [obj_mainchara_actor].vspeed = -1s
    [obj_mainchara].vspeed = -1s
    self.conversation = 9s
0x00054C:
    if !(== self.conversation 9s) goto 0x00061C
0x000560:
    if !(<= 1570.y 989.y) goto 0x00061C
0x000578:
    [obj_mainchara_actor].vspeed = 0s
    [obj_mainchara].vspeed = 0s
    [obj_mainchara].y = 989.y
    [obj_mainchara_actor].y = 989.y
    [obj_mainchara].hspeed = 1s
    [obj_mainchara_actor].hspeed = 1s
    self.hh = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.01d
    stog.fadespeed* = (int32 self.hh)
    self.conversation = 10s
0x00061C:
    if !(== self.conversation 10s) goto 0x000734
0x000630:
    if !(>= 1570.x 989.x) goto 0x000734
0x000648:
    [obj_mainchara].hspeed = 0s
    [obj_mainchara_actor].hspeed = 0s
    [obj_mainchara_actor].image_speed = 0s
    [obj_mainchara_actor].image_index = 0s
    [obj_mainchara].x = 989.x
    [obj_mainchara_actor].x = 989.x
    [obj_mainchara].y = (+ 1570.y 60s)
    self.pap = (instance_create[]:int32 (var 1031s) (- self.y 12s) self.room_width)
    push 1336s
    stog.sprite_index* = (int32 self.pap)
    push 180s
    stog.direction* = (int32 self.pap)
    push 4s
    stog.speed* = (int32 self.pap)
    self.conversation = 11s
0x000734:
    if !(== self.conversation 11s) goto 0x0008D8
0x000748:
    if !(<= 1031.x (- 1031.xstart 140s)) goto 0x0008D8
0x000768:
    global.currentsong = global.currentsong2
    call (caster_loop[]:int32 (var 1s) (var 0.5d) global.currentsong)
    [obj_papyrus_actor_mad].speed = 0s
    [obj_papyrus_actor_mad].image_speed = 0s
    [obj_papyrus_actor_mad].sprite_index = 1337s
    stog.msg[0s] = "* sup^1, bro?/"
    call (scr_papface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "YOU KNOW WHAT&\"SUP,^1\" BROTHER!/"
    stog.msg[3s] = "IT'S BEEN EIGHT&DAYS AND YOU&STILL HAVEN'T.../"
    stog.msg[4s] = "RECALIBRATED^1.&YOUR^1.&PUZZLES^1!/"
    stog.msg[5s] = "YOU JUST HANG&AROUND OUTSIDE&YOUR STATION!/"
    stog.msg[6s] = "WHAT ARE YOU&EVEN DOING?!?/"
    call (scr_sansface[]:int32 (var 0s) (var 7s))
    stog.msg[8s] = "* staring at this lamp^1.&* it's really cool^1.&* do you wanna look?/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 12s
0x0008D8:
    if !(== self.conversation 12s) goto 0x000908
0x0008EC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00090C
0x000908:
    push 0s
0x00090C:
    if !pop goto 0x000A08
0x000910:
    [obj_papyrus_actor_mad].fun = 1s
    [obj_papyrus_actor_mad].sprite_index = 1308s
    [obj_papyrus_actor_mad].image_speed = 0.2d
    self.conversation = 13s
    global.typer = 18s
    global.faceemotion = 1s
    global.facechoice = 4s
    stog.msg[0s] = "NO!^1!&I DON'T HAVE&TIME FOR THAT!!/"
    stog.msg[1s] = "WHAT IF A HUMAN&COMES THROUGH&HERE!?!/"
    stog.msg[2s] = "I WANT TO BE&READY!!!/"
    stog.msg[3s] = "I WILL BE THE ONE!&I MUST BE THE ONE!/"
    stog.msg[4s] = "I WILL CAPTURE A&HUMAN!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000A08:
    if !(== self.conversation 13s) goto 0x000A38
0x000A1C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000A3C
0x000A38:
    push 0s
0x000A3C:
    if !pop goto 0x000B44
0x000A40:
    [obj_papyrus_actor_mad].fun = 1s
    [obj_papyrus_actor_mad].sprite_index = 1310s
    [obj_papyrus_actor_mad].image_speed = 0.25d
    self.conversation = 14s
    global.faceemotion = 0s
    global.facechoice = 4s
    stog.msg[0s] = "THEN^1, I^1, THE&GREAT PAPYRUS.../"
    stog.msg[1s] = "WILL GET&ALL THE THINGS I&UTTERLY DESERVE!/"
    stog.msg[2s] = "RESPECT..^1.&RECOGNITION.../"
    stog.msg[3s] = "I WILL FINALLY&BE ABLE TO JOIN&THE ROYAL GUARD!/"
    stog.msg[4s] = "PEOPLE WILL ASK^1,&TO^1, BE MY^1,&\"FRIEND?\"/"
    stog.msg[5s] = "\\E2I WILL BATHE IN A&SHOWER OF KISSES&EVERY MORNING./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000B44:
    if !(== self.conversation 14s) goto 0x000B74
0x000B58:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000B78
0x000B74:
    push 0s
0x000B78:
    if !pop goto 0x000C24
0x000B7C:
    [obj_papyrus_actor_mad].fun = 0s
    [obj_papyrus_actor_mad].sprite_index = 1334s
    [obj_papyrus_actor_mad].image_speed = 0s
    self.conversation = 15s
    global.faceemotion = 0s
    global.facechoice = 3s
    global.typer = 17s
    stog.msg[0s] = "* hmm.../"
    stog.msg[1s] = "\\E1* maybe this lamp will&  help you./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000C24:
    if !(== self.conversation 15s) goto 0x000C54
0x000C38:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000C58
0x000C54:
    push 0s
0x000C58:
    if !pop goto 0x000D70
0x000C5C:
    [obj_papyrus_actor_mad].fun = 1s
    [obj_papyrus_actor_mad].sprite_index = 1309s
    [obj_papyrus_actor_mad].image_speed = 0.4d
    self.conversation = 16s
    global.faceemotion = 1s
    global.facechoice = 4s
    global.typer = 18s
    stog.msg[0s] = "SANS!^1! YOU ARE&NOT HELPING!^1!&YOU LAZYBONES!!/"
    stog.msg[1s] = "ALL YOU DO IS SIT&AND BOONDOGGLE!/"
    stog.msg[2s] = "YOU GET LAZIER&AND LAZIER&EVERY DAY!!!/"
    call (scr_sansface[]:int32 (var 0s) (var 3s))
    stog.msg[4s] = "\\W* hey^1, take it easy^1.&* i've gotten a \\Yton\\W &  of work done today./"
    stog.msg[5s] = "\\W*\\E2 a skele-\\Yton\\W./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000D70:
    if !(== self.conversation 16s) goto 0x000DA0
0x000D84:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000DA4
0x000DA0:
    push 0s
0x000DA4:
    if !pop goto 0x000E30
0x000DA8:
    self.conversation = 18s
    stog.alarm[6s] = 10s
    push -1s
    self.rememberxview = (int32 self.view_current):view_xview
    push -1s
    self.rememberyview = (int32 self.view_current):view_yview
    stog.view_object[(int32 self.view_current)] = -4s
    [obj_mainchara].cutscene = 1s
0x000E30:
    if !(== self.conversation 17s) goto 0x000E44
0x000E44:
    if !(== self.conversation 18s) goto 0x000FEC
0x000E58:
    push (+ self.x (/ self.sprite_width (double 2s)))
    push -1s
    if !(> (int32 self.view_current):view_xview (+ -1s (/ (int32 self.view_current):view_wview (double 2s)))) goto 0x000EEC
0x000EC0:
    push -1s
    stog.view_xview[(+ (int32 self.view_current):view_xview 3s)] = (int32 self.view_current)
0x000EEC:
    push (+ self.y (/ self.sprite_height (double 2s)))
    push -1s
    if !(> (int32 self.view_current):view_yview (+ -1s (/ (int32 self.view_current):view_hview (double 2s)))) goto 0x000F80
0x000F54:
    push -1s
    stog.view_yview[(+ (int32 self.view_current):view_yview 9s)] = (int32 self.view_current)
0x000F80:
    push -1s
    stog.view_hview[(- (int32 self.view_current):view_hview 12s)] = (int32 self.view_current)
    push -1s
    stog.view_wview[(- (int32 self.view_current):view_wview 16s)] = (int32 self.view_current)
    stog.alarm[7s] = 30s
0x000FEC:
    if !(== self.conversation 20s) goto 0x001100
0x001000:
    push -1s
    if !(> (int32 self.view_current):view_xview self.rememberxview) goto 0x001054
0x001028:
    push -1s
    stog.view_xview[(- (int32 self.view_current):view_xview 3s)] = (int32 self.view_current)
0x001054:
    push -1s
    if !(> (int32 self.view_current):view_yview self.rememberyview) goto 0x0010A8
0x00107C:
    push -1s
    stog.view_yview[(- (int32 self.view_current):view_yview 9s)] = (int32 self.view_current)
0x0010A8:
    push -1s
    stog.view_hview[(+ (int32 self.view_current):view_hview 12s)] = (int32 self.view_current)
    push -1s
    stog.view_wview[(+ (int32 self.view_current):view_wview 16s)] = (int32 self.view_current)
0x001100:
    if !(== self.conversation 21s) goto 0x0012A0
0x001114:
    [obj_papyrus_actor_mad].fun = 0s
    [obj_papyrus_actor_mad].sprite_index = 1337s
    self.conversation = 16s
    self.sprite_index = 1363s
    global.faceemotion = 1s
    global.facechoice = 4s
    global.typer = 18s
    stog.msg[0s] = "SANS!!!/"
    call (scr_sansface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "\\E1* come on^1.&* you're smiling./"
    call (scr_papface[]:int32 (var 4s) (var 3s))
    stog.msg[4s] = "I AM AND I HATE IT!/"
    stog.msg[5s] = "\\E3SIGH.../"
    stog.msg[6s] = "\\E2WHY DOES SOMEONE&AS GREAT AS ME.../"
    stog.msg[7s] = "\\E3HAVE TO DO SO MUCH&JUST TO GET SOME&RECOGNITION.../"
    call (scr_sansface[]:int32 (var 1s) (var 8s))
    stog.msg[9s] = "* wow^1, sounds like&  you're really working&  yourself.../"
    stog.msg[10s] = "\\E2* down to the bone./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0012A0:
    if !(== self.conversation 23s) goto 0x0013BC
0x0012B4:
    self.sprite_index = 1363s
    [obj_papyrus_actor_mad].fun = 0s
    [obj_papyrus_actor_mad].sprite_index = 1337s
    global.faceemotion = 1s
    global.facechoice = 4s
    global.typer = 18s
    stog.msg[0s] = "UGH!!!/"
    stog.msg[1s] = "I WILL ATTEND TO&MY PUZZLES.../"
    stog.msg[2s] = "\\E3AS FOR YOUR WORK?/"
    stog.msg[3s] = "PUT A LITTLE MORE,/"
    stog.msg[4s] = "\\E4\"BACKBONE\" INTO&IT!!!!/"
    stog.msg[5s] = "\\E2NYEHEHEHEHEHE&HEHEHEHEHEHE!!!/%%"
    self.conversation = 24s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0013BC:
    if !(== self.conversation 24s) goto 0x0013EC
0x0013D0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0013F0
0x0013EC:
    push 0s
0x0013F0:
    if !pop goto 0x001430
0x0013F4:
    [obj_papyrus_actor_mad].image_speed = 0.5d
    [obj_papyrus_actor_mad].sprite_index = 1031.rsprite
    [obj_papyrus_actor_mad].hspeed = 4s
    self.conversation = 25s
0x001430:
    if !(== self.conversation 25s) goto 0x001494
0x001444:
    if !(> 1031.x (+ 1031.xstart 5s)) goto 0x001494
0x001464:
    [obj_papyrus_actor_mad].sprite_index = 1330s
    [obj_papyrus_actor_mad].hspeed = -1s
    [obj_papyrus_actor_mad].image_speed = 0s
    self.conversation = 26s
0x001494:
    if !(== self.conversation 26s) goto 0x001558
0x0014A8:
    if !(< 1031.x (- 1031.xstart 50s)) goto 0x001558
0x0014C8:
    [obj_papyrus_actor_mad].hspeed = 0s
    [obj_papyrus_actor_mad].sprite_index = 1334s
    [obj_papyrus_actor_mad].image_index = 0s
    global.faceemotion = 2s
    global.facechoice = 4s
    global.typer = 18s
    stog.msg[0s] = "HEH!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 27s
0x001558:
    if !(== self.conversation 27s) goto 0x001588
0x00156C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00158C
0x001588:
    push 0s
0x00158C:
    if !pop goto 0x0015FC
0x001590:
    [obj_papyrus_actor_mad].hspeed = 1s
    [obj_papyrus_actor_mad].sprite_index = 1328s
    self.conversation = 28s
    self.hh = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.01d
    stog.fadespeed* = (int32 self.hh)
0x0015FC:
    if !(== self.conversation 28s) goto 0x0016BC
0x001610:
    if !(> 1031.x 1031.xstart) goto 0x0016BC
0x001628:
    global.faceemotion = 0s
    global.facechoice = 3s
    global.typer = 17s
    stog.msg[0s] = "* ok^1, you can come out&  now./%%"
    stog.view_object[(int32 self.view_current)] = 1570s
    [obj_mainchara].cutscene = 0s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 29s
0x0016BC:
    if !(== self.conversation 29s) goto 0x0016EC
0x0016D0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0016F0
0x0016EC:
    push 0s
0x0016F0:
    if !pop goto 0x001740
0x0016F4:
    [obj_mainchara].y = (- 1570.y 60s)
    self.rememberx = 1570.x
    [obj_mainchara].hspeed = -2s
    [obj_mainchara_actor].hspeed = -2s
    self.conversation = 30s
0x001740:
    if !(== self.conversation 30s) goto 0x00176C
0x001754:
    push (bool (instance_exists[]:int32 (var 1570s)))
    goto 0x001770
0x00176C:
    push 0s
0x001770:
    if !pop goto 0x00189C
0x001774:
    if !(< 1570.x (- self.rememberx 30s)) goto 0x00189C
0x001794:
    [obj_mainchara].facing = 0s
    global.facing = 0s
    [obj_mainchara].hspeed = 0s
    pushenv 1355s 0x0017CC
0x0017C0:
    call (instance_destroy[]:int32 )
0x0017CC:
    popenv 0x0017C0
0x0017D0:
    [obj_mainchara].visible = 1s
    global.plot = 36s
    global.interact = 0s
    call (instance_create[]:int32 (var 1339s) (var 160s) (var 80s))
    call (instance_create[]:int32 (var 1021s) self.y self.x)
    call (instance_create[]:int32 (var 991s) (var 0s) (var 2380s))
    call (instance_create[]:int32 (var 991s) (var 0s) (var 2680s))
    self.conversation = 32s
    call (instance_destroy[]:int32 )
0x00189C:
    if !(== self.conversation 50s) goto 0x0018CC
0x0018B0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0018D0
0x0018CC:
    push 0s
0x0018D0:
    if !pop goto 0x001948
0x0018D4:
    self.hh = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.01d
    stog.fadespeed* = (int32 self.hh)
    global.interact = 1s
    self.conversation = 51s
    stog.alarm[9s] = 90s
0x001948:
    if !(== self.conversation 52s) goto 0x0019F8
0x00195C:
    self.sprite_index = 1363s
    global.faceemotion = 0s
    global.facechoice = 3s
    global.typer = 17s
    global.msc = 0s
    stog.msg[0s] = "* .../"
    stog.msg[1s] = "\\E1* uh^1, ok^1, i guess you&  don't have to./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 53s
0x0019F8:
    if !(== self.conversation 53s) goto 0x001A28
0x001A0C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001A2C
0x001A28:
    push 0s
0x001A2C:
    if !pop goto 0x001AC0
0x001A30:
    self.sprite_index = 1363s
    self.pap = (instance_create[]:int32 (var 1031s) (- self.y 12s) self.room_width)
    push 1336s
    stog.sprite_index* = (int32 self.pap)
    push 180s
    stog.direction* = (int32 self.pap)
    push 4s
    stog.speed* = (int32 self.pap)
    self.conversation = 54s
0x001AC0:
    if !(== self.conversation 54s) goto 0x001C68
0x001AD4:
    if !(<= 1031.x (- 1031.xstart 180s)) goto 0x001C68
0x001AF4:
    global.currentsong = global.currentsong2
    call (caster_loop[]:int32 (var 1s) (var 0.5d) global.currentsong)
    [obj_papyrus_actor_mad].speed = 0s
    [obj_papyrus_actor_mad].image_speed = 0s
    [obj_papyrus_actor_mad].sprite_index = 1337s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.typer = 5s
    global.msc = 0s
    call (scr_papface[]:int32 (var 1s) (var 0s))
    stog.msg[1s] = "SANS!!^1!&HAVE YOU FOUND A&HUMAN YET!??!/"
    call (scr_sansface[]:int32 (var 2s) (var 2s))
    stog.msg[3s] = "* yeah./"
    call (scr_papface[]:int32 (var 0s) (var 4s))
    stog.msg[5s] = "REALLY!?!^1?&WOWIE!!!/"
    stog.msg[6s] = "GUESS THAT'S&SETTLED!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 55s
0x001C68:
    if !(== self.conversation 55s) goto 0x001C98
0x001C7C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001C9C
0x001C98:
    push 0s
0x001C9C:
    if !pop goto 0x001D20
0x001CA0:
    [obj_papyrus_actor_mad].image_speed = 0.5d
    [obj_papyrus_actor_mad].sprite_index = 1328s
    [obj_papyrus_actor_mad].hspeed = 4s
    self.hh = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.02d
    stog.fadespeed* = (int32 self.hh)
    self.conversation = 56s
0x001D20:
    if !(== self.conversation 56s) goto 0x001DE0
0x001D34:
    if !(> 1031.x 1031.xstart) goto 0x001DE0
0x001D4C:
    global.faceemotion = 0s
    global.facechoice = 3s
    global.typer = 17s
    stog.msg[0s] = "* that worked out^1, huh?/%%"
    stog.view_object[(int32 self.view_current)] = 1570s
    [obj_mainchara].cutscene = 0s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 58s
0x001DE0:
    if !(== self.conversation 58s) goto 0x001E10
0x001DF4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001E14
0x001E10:
    push 0s
0x001E14:
    if !pop goto 0x001F20
0x001E18:
    [obj_mainchara].facing = 0s
    global.facing = 0s
    [obj_mainchara].hspeed = 0s
    pushenv 1355s 0x001E50
0x001E44:
    call (instance_destroy[]:int32 )
0x001E50:
    popenv 0x001E44
0x001E54:
    [obj_mainchara].visible = 1s
    global.plot = 36s
    global.interact = 0s
    call (instance_create[]:int32 (var 1339s) (var 160s) (var 80s))
    call (instance_create[]:int32 (var 1021s) self.y self.x)
    call (instance_create[]:int32 (var 991s) (var 0s) (var 2380s))
    call (instance_create[]:int32 (var 991s) (var 0s) (var 2680s))
    self.conversation = 59s
    call (instance_destroy[]:int32 )
0x001F20:
    exit
