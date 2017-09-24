0x000000:
    if !(== self.con 20s) goto 0x000224
0x000014:
    self.con = 21s
    global.facing = 3s
    self.sans = (scr_marker[]:int32 (var 1363s) 1570.y (- 1570.x 86s))
    push 800s
    stog.depth* = (int32 self.sans)
    push 0s
    stog.image_speed* = (int32 self.sans)
    pushenv 1570s 0x000124
0x000094:
    push self.x
    stog.view_xview[0s] = (round[]:int32 (+ (- -1s (/ 0s:view_wview (double 2s))) 10s))
    push self.y
    stog.view_yview[0s] = (round[]:int32 (+ (- -1s (/ 0s:view_hview (double 2s))) 10s))
0x000124:
    popenv 0x000094
0x000128:
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
    push -1s
    self.idealx = 0s:view_xview
    push -1s
    stog.view_xview[(- 0s:view_xview 40s)] = 0s
    if !(== global.interact 0s) goto 0x0001A4
0x000198:
    global.interact = 1s
0x0001A4:
    global.msc = 0s
    global.facechoice = 3s
    global.faceemotion = 0s
    global.typer = 17s
    call (caster_free[]:int32 (var -3s))
    global.currentsong = (caster_load[]:int32 (var "music/sansdate.ogg"))
    self.con = 21s
    stog.alarm[4s] = 30s
0x000224:
    if !(== self.con 22s) goto 0x0002AC
0x000238:
    call (caster_loop[]:int32 (var 1s) (var 0.8d) global.currentsong)
    self.con = 30s
    stog.msg[0s] = "* well^1, here we are./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0002AC:
    if !(== self.con 30s) goto 0x0002DC
0x0002C0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0002E0
0x0002DC:
    push 0s
0x0002E0:
    if !pop goto 0x0003EC
0x0002E4:
    stog.msg[0s] = "* so./"
    stog.msg[1s] = "* your journey's&  almost over^1, huh?/"
    stog.msg[2s] = "\\E0* you must really&  wanna go home./"
    stog.msg[3s] = "\\E1* hey^1.&* i know the feeling^1,&  buddo./"
    stog.msg[4s] = "\\E0* though.../"
    stog.msg[5s] = "\\E1* maybe sometimes it's&  better to take what's&  given to you./"
    stog.msg[6s] = "\\E0* down here you've&  already got food^1,&  drink^1, friends.../"
    stog.msg[7s] = "* is what you have&  to do.../"
    stog.msg[8s] = "\\E1* really worth it?/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 31s
0x0003EC:
    if !(== self.con 31s) goto 0x00041C
0x000400:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000420
0x00041C:
    push 0s
0x000420:
    if !pop goto 0x00045C
0x000424:
    push 1362s
    stog.sprite_index* = (int32 self.sans)
    self.con = 32s
    stog.alarm[4s] = 80s
0x00045C:
    if !(== self.con 33s) goto 0x00048C
0x000470:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000490
0x00048C:
    push 0s
0x000490:
    if !pop goto 0x000530
0x000494:
    push 1363s
    stog.sprite_index* = (int32 self.sans)
    global.faceemotion = 3s
    stog.msg[0s] = "* .../"
    stog.msg[1s] = "\\E1* ah^1, forget it./"
    stog.msg[2s] = "\\E0* i'm rootin' for&  ya^1, kid./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 34s
0x000530:
    if !(== self.con 34s) goto 0x000560
0x000544:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000564
0x000560:
    push 0s
0x000564:
    if !pop goto 0x0005A8
0x000568:
    push 1362s
    stog.sprite_index* = (int32 self.sans)
    self.con = 34.5d
    stog.alarm[4s] = 80s
0x0005A8:
    if !(== self.con 35.5d) goto 0x0005E0
0x0005C4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0005E4
0x0005E0:
    push 0s
0x0005E4:
    if !pop goto 0x000984
0x0005E8:
    push 1363s
    stog.sprite_index* = (int32 self.sans)
    global.faceemotion = 0s
    stog.msg[0s] = "* hey./"
    stog.msg[1s] = "\\E1* let me tell you&  a story./"
    stog.msg[2s] = "\\E0* so i'm a sentry in&  snowdin forest^1, right?/"
    stog.msg[3s] = "* i sit out there&  and watch for humans^1.&* it's kind of boring./"
    stog.msg[4s] = "\\E2* fortunately^1, deep in&  the forest.../"
    stog.msg[5s] = "\\E0* there's this HUGE&  locked door./"
    stog.msg[6s] = "* and it's perfect&  for practicing&  knock knock jokes./"
    stog.msg[7s] = "* so one day^1, i'm&  knocking 'em out^1,&  like usual./"
    stog.msg[8s] = "* i knock on the&  door and say&  \"knock knock.\"/"
    stog.msg[9s] = "* and suddenly^1, from&  the other side.../"
    stog.msg[10s] = "\\E1* i hear a woman's&  voice./"
    stog.msg[11s] = "\\Tt*\\E0 \"who is there?\" /"
    stog.msg[12s] = "\\Ts*\\E1 so^1, naturally^1, I&  respond:/"
    stog.msg[13s] = "\\E0* \"dishes.\"/"
    stog.msg[14s] = "\\Tt* \"dishes who?\"/"
    stog.msg[15s] = "\\Ts*\\E2 \"dishes a very&  bad joke.\"/"
    stog.msg[16s] = "\\E0* then she just&  howls with laughter./"
    stog.msg[17s] = "\\E1* like it's the best&  joke she's heard&  in a hundred years./"
    stog.msg[18s] = "\\E0* so I keep 'em&  coming^1, and she keeps&  laughing./"
    stog.msg[19s] = "\\E1* she's the best&  audience i've ever&  had./"
    stog.msg[20s] = "\\E0* then^1, after a&  dozen of 'em^1,&  SHE knocks and says.../"
    stog.msg[21s] = "\\Tt* \"Knock knock!\"/"
    stog.msg[22s] = "\\Ts* \\E1i say \"whos&  there?\"/"
    stog.msg[23s] = "\\Tt* \\E0\"old lady!\"/"
    stog.msg[24s] = "\\Ts*\\E1 \"old lady who?\"/"
    stog.msg[25s] = "\\Tt*\\E2 \"oh! I did not&  know you could&  yodel!\"/"
    stog.msg[26s] = "\\Ts*\\E1 wow./"
    stog.msg[27s] = "\\E2* needless to say^1,&  this woman was&  extremely good./"
    stog.msg[28s] = "\\E0* we kept telling&  each other jokes&  for hours./"
    stog.msg[29s] = "\\E0* eventually^1, i had&  to leave./"
    stog.msg[30s] = "\\E2* papyrus gets kind&  of cranky without&  his bedtime story./"
    stog.msg[31s] = "\\E0* but she told me&  to come by again^1,&  and so i did./"
    stog.msg[32s] = "\\E0* then i did again^1.&* and again^1.&* it's a thing now./"
    stog.msg[33s] = "* telling bad jokes&  through the door./"
    stog.msg[34s] = "\\E1* it rules./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 36s
0x000984:
    if !(== self.con 36s) goto 0x0009B4
0x000998:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0009B8
0x0009B4:
    push 0s
0x0009B8:
    if !pop goto 0x0009F4
0x0009BC:
    push 1362s
    stog.sprite_index* = (int32 self.sans)
    self.con = 37s
    stog.alarm[4s] = 80s
0x0009F4:
    if !(== self.con 38s) goto 0x000A24
0x000A08:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000A28
0x000A24:
    push 0s
0x000A28:
    if !pop goto 0x000BA0
0x000A2C:
    push 1363s
    stog.sprite_index* = (int32 self.sans)
    global.faceemotion = 1s
    stog.msg[0s] = "* .../"
    stog.msg[1s] = "\\E0* one day^1, though^1, i&  noticed she wasn't&  laughing very much./"
    stog.msg[2s] = "* i asked her what&  was up./"
    stog.msg[3s] = "* then she told me&  something strange./"
    stog.msg[4s] = "* \\Tt\"if a human ever&  comes through this&  door.../\""
    stog.msg[5s] = "* \"... could you please^1,&  please promise&  something?\"/"
    stog.msg[6s] = "* \"watch over them^1,&  and protect them^1,&  will you not?\"/"
    stog.msg[7s] = "\\E0*\\Ts now^1, i hate making&  promises./"
    stog.msg[8s] = "\\E1* and this woman^1,&  i don't even know&  her name./"
    stog.msg[9s] = "\\E3* but.../"
    stog.msg[10s] = "\\E1* someone who sincerely&  likes bad jokes.../"
    stog.msg[11s] = "\\E2* has an integrity&  you can't say&  \"no\" to./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 39s
0x000BA0:
    if !(== self.con 39s) goto 0x000BD0
0x000BB4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000BD4
0x000BD0:
    push 0s
0x000BD4:
    if !pop goto 0x000C40
0x000BD8:
    push 1362s
    stog.sprite_index* = (int32 self.sans)
    self.con = 40s
    stog.alarm[4s] = 83s
    self.vol = (caster_get_volume[]:int32 global.currentsong)
    self.vol2 = (caster_get_volume[]:int32 global.currentsong)
0x000C40:
    if !(== self.con 40s) goto 0x000CA4
0x000C54:
    if !(> self.vol 0s) goto 0x000C88
0x000C68:
    self.vol = (- self.vol 0.01d)
0x000C88:
    call (caster_set_volume[]:int32 self.vol global.currentsong)
0x000CA4:
    if !(== self.con 41s) goto 0x000CD4
0x000CB8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000CD8
0x000CD4:
    push 0s
0x000CD8:
    if !pop goto 0x000DA4
0x000CDC:
    push 1363s
    stog.sprite_index* = (int32 self.sans)
    call (caster_pause[]:int32 global.currentsong)
    global.faceemotion = 1s
    stog.msg[0s] = "\\E1* do you get what&  i'm saying?/"
    stog.msg[1s] = "\\E0* that promise i made&  to her.../"
    stog.msg[2s] = "\\E1* you know what would&  have happened if she&  hadn't said anything?/"
    stog.msg[3s] = "\\E3* ... buddy./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 42s
0x000DA4:
    if !(== self.con 42s) goto 0x000DD4
0x000DB8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000DD8
0x000DD4:
    push 0s
0x000DD8:
    if !pop goto 0x000E14
0x000DDC:
    push 1362s
    stog.sprite_index* = (int32 self.sans)
    self.con = 43s
    stog.alarm[4s] = 60s
0x000E14:
    if !(== self.con 44s) goto 0x000E44
0x000E28:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000E48
0x000E44:
    push 0s
0x000E48:
    if !pop goto 0x000EAC
0x000E4C:
    global.faceemotion = 4s
    global.typer = 21s
    stog.msg[0s] = "* ... You'd be dead&  where you stand./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 45s
0x000EAC:
    if !(== self.con 45s) goto 0x000EDC
0x000EC0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000EE0
0x000EDC:
    push 0s
0x000EE0:
    if !pop goto 0x000F18
0x000EE4:
    call (caster_resume[]:int32 global.currentsong)
    self.con = 46s
    stog.alarm[4s] = 60s
0x000F18:
    if !(== self.con 46s) goto 0x000F80
0x000F2C:
    if !(< self.vol self.vol2) goto 0x000F64
0x000F44:
    self.vol = (+ self.vol 0.01d)
0x000F64:
    call (caster_set_volume[]:int32 self.vol global.currentsong)
0x000F80:
    if !(== self.con 47s) goto 0x000FB0
0x000F94:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000FB4
0x000FB0:
    push 0s
0x000FB4:
    if !pop goto 0x00117C
0x000FB8:
    push 1363s
    stog.sprite_index* = (int32 self.sans)
    global.faceemotion = 1s
    global.typer = 17s
    stog.msg[0s] = "\\E3* .../"
    stog.msg[1s] = "\\E1* hey^1, lighten up^1,&  bucko!/"
    stog.msg[2s] = "\\E2* i'm just joking&  with you./"
    stog.msg[3s] = "\\E1* besides.../"
    stog.msg[4s] = "\\E0* haven't i done a&  great job protecting&  you?/"
    stog.msg[5s] = "* i mean^1, look at&  yourself./"
    stog.msg[6s] = "\\E2* you haven't died&  a single time./"
    call (ini_open[]:int32 (var "undertale.ini"))
    self.ddd = (ini_read_real[]:int32 (var 0s) (var "Gameover") (var "General"))
    stog.msg[7s] = "\\E0* that's right^1, isn't&  it?/"
    stog.msg[8s] = "\\E2* well^1, chalk it&  up to my great&  skills./%%"
    if !(> self.ddd 0s) goto 0x00114C
0x00111C:
    stog.msg[7s] = "\\E0* hey^1, what's that&  look supposed to&  mean?/"
    stog.msg[8s] = "\\E1* am i wrong...?/%%"
0x00114C:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 48s
0x00117C:
    if !(== self.con 48s) goto 0x0011AC
0x001190:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0011B0
0x0011AC:
    push 0s
0x0011B0:
    if !pop goto 0x0011EC
0x0011B4:
    push 1362s
    stog.sprite_index* = (int32 self.sans)
    self.con = 49s
    stog.alarm[4s] = 90s
0x0011EC:
    if !(== self.con 50s) goto 0x00126C
0x001200:
    push 1363s
    stog.sprite_index* = (int32 self.sans)
    global.faceemotion = 3s
    stog.msg[0s] = "* heh./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 51s
0x00126C:
    if !(== self.con 51s) goto 0x00129C
0x001280:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0012A0
0x00129C:
    push 0s
0x0012A0:
    if !pop goto 0x0012E4
0x0012A4:
    push 1362s
    stog.sprite_index* = (int32 self.sans)
    self.con = 51.1d
    stog.alarm[4s] = 40s
0x0012E4:
    if !(== self.con 51.1d) goto 0x001348
0x001300:
    push 0.2d
    stog.image_speed* = (int32 self.sans)
    stog.y* = (- (int32 self.sans):y 2s)
0x001348:
    push (int32 self.sans)
    if !(== self.con 52.1d) goto 0x0013BC
0x001364:
    push 0s
    stog.image_speed* = (int32 self.sans)
    push 0s
    stog.image_index* = (int32 self.sans)
    self.con = 51.2d
    stog.alarm[4s] = 20s
0x0013BC:
    if !(== self.con 52.2d) goto 0x001418
0x0013D8:
    push 1363s
    stog.sprite_index* = (int32 self.sans)
    self.con = 51.3d
    stog.alarm[4s] = 20s
0x001418:
    if !(== self.con 52.3d) goto 0x00146C
0x001434:
    push 1353s
    stog.sprite_index* = (int32 self.sans)
    self.con = 52s
    stog.alarm[4s] = 30s
0x00146C:
    if !(== self.con 53s) goto 0x001504
0x001480:
    global.faceemotion = 2s
    stog.msg[0s] = "* well^1, that's all./"
    stog.msg[1s] = "\\E1* take care of&  yourself^1, kid./"
    stog.msg[2s] = "\\E0* 'cause someone really&  cares about you./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 54s
0x001504:
    if !(== self.con 54s) goto 0x001534
0x001518:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001538
0x001534:
    push 0s
0x001538:
    if !pop goto 0x0015AC
0x00153C:
    push 1367s
    stog.sprite_index* = (int32 self.sans)
    push 0.2d
    stog.image_speed* = (int32 self.sans)
    push -3s
    stog.hspeed* = (int32 self.sans)
    self.con = 55s
    stog.alarm[4s] = 80s
0x0015AC:
    if !(== self.con 56s) goto 0x0015E0
0x0015C0:
    self.con = 57s
    stog.alarm[4s] = 40s
0x0015E0:
    if !(== self.con 57s) goto 0x001618
0x0015F4:
    push -1s
    stog.view_xview[(+ 0s:view_xview 1s)] = 0s
0x001618:
    if !(== self.con 58s) goto 0x0016A8
0x00162C:
    stog.view_xview[0s] = self.idealx
    global.facing = 0s
    stog.view_object[0s] = 1570s
    [obj_mainchara].cutscene = 0s
    global.interact = 0s
    self.con = 59s
    stog.flag[413s] = 2s
    call (instance_destroy[]:int32 )
0x0016A8:
    exit
