0x000000:
    if !(== self.con 1s) goto 0x000194
0x000014:
    self.m = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.03d
    stog.fadespeed* = (int32 self.m)
    push -1s
    self.remx = 0s:view_xview
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
    [obj_mainchara].x = 800s
    self.con = 0.5d
    self.ss = 0s
    stog.alarm[4s] = 60s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.sf2 = (ini_read_real[]:int32 (var 0s) (var "F") (var "Sans"))
    call (ini_close[]:int32 )
    if !(>= self.sf2 3s) goto 0x000150
0x00013C:
    push (== self.murder 1s)
    goto 0x000154
0x000150:
    push 0s
0x000154:
    if !pop goto 0x000194
0x000158:
    pushenv (int32 self.m) 0x00017C
0x000168:
    self.fadespeed = 0.1d
0x00017C:
    popenv 0x000168
0x000180:
    stog.alarm[4s] = 5s
0x000194:
    if !(== self.con 1.5d) goto 0x0001BC
0x0001B0:
    self.con = 2s
0x0001BC:
    if !(== self.con 2s) goto 0x000308
0x0001D0:
    push -1s
    stog.view_xview[(+ 0s:view_xview 1s)] = 0s
    push -1s
    if !(>= 0s:view_xview 680s) goto 0x000224
0x000210:
    push (== self.ss 0s)
    goto 0x000228
0x000224:
    push 0s
0x000228:
    if !pop goto 0x000278
0x00022C:
    self.ss = 1s
    self.sans = (scr_marker[]:int32 (var 1366s) 1570.y (var 920s))
    push 1500s
    stog.depth* = (int32 self.sans)
0x000278:
    if !(>= self.sf2 3s) goto 0x0002A0
0x00028C:
    push (== self.murder 1s)
    goto 0x0002A4
0x0002A0:
    push 0s
0x0002A4:
    if !pop goto 0x0002CC
0x0002A8:
    push -1s
    stog.view_xview[(+ 0s:view_xview 3s)] = 0s
0x0002CC:
    push -1s
    if !(>= 0s:view_xview 750s) goto 0x000308
0x0002E8:
    self.con = 3s
    stog.view_xview[0s] = 750s
0x000308:
    if !(== self.con 3s) goto 0x0003A8
0x00031C:
    pushenv (int32 self.m) 0x000338
0x00032C:
    call (instance_destroy[]:int32 )
0x000338:
    popenv 0x00032C
0x00033C:
    self.con = 3.1d
    stog.alarm[4s] = 40s
    if !(>= self.sf2 3s) goto 0x00038C
0x000378:
    push (== self.murder 1s)
    goto 0x000390
0x00038C:
    push 0s
0x000390:
    if !pop goto 0x0003A8
0x000394:
    stog.alarm[4s] = 10s
0x0003A8:
    if !(== self.con 4.1d) goto 0x000544
0x0003C4:
    if !(== self.murder 0s) goto 0x000538
0x0003D8:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.endmet = (ini_read_real[]:int32 (var 0s) (var "EndMet") (var "Sans"))
    call (ini_close[]:int32 )
    if !(== self.endmet 0s) goto 0x0004A8
0x000440:
    self.ch = (caster_load[]:int32 (var "music/churchbell.ogg"))
    call (caster_play[]:int32 (var 1s) (var 0.8d) self.ch)
    self.con = 4s
    stog.alarm[4s] = 310s
0x0004A8:
    if !(== self.endmet 1s) goto 0x000534
0x0004BC:
    self.ch = (caster_load[]:int32 (var "music/churchbell.ogg"))
    call (caster_play[]:int32 (var 1.5d) (var 0.8d) self.ch)
    self.con = 4s
    stog.alarm[4s] = 206.666666666667d
0x000534:
    goto 0x000544
0x000538:
    self.con = 100s
0x000544:
    if !(== self.con 5s) goto 0x000958
0x000558:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.endmet = (ini_read_real[]:int32 (var 0s) (var "EndMet") (var "Sans"))
    call (ini_write_real[]:int32 (var 1s) (var "EndMet") (var "Sans"))
    self.ml1 = (ini_read_real[]:int32 (var 0s) (var "MeetLv1") (var "Sans"))
    self.pass = (ini_read_real[]:int32 (var 0s) (var "Pass") (var "Sans"))
    call (ini_close[]:int32 )
    global.typer = 10s
    if !(== self.endmet 1s) goto 0x000664
0x000658:
    global.typer = 100s
0x000664:
    global.msc = 0s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* So you finally made it./"
    stog.msg[1s] = "* The end of your journey&  is at hand./"
    stog.msg[2s] = "* In a few moments^1, you&  will meet the king./"
    stog.msg[3s] = "* Together.../"
    stog.msg[4s] = "* You will determine the&  future of this world./"
    stog.msg[5s] = "* That's then./"
    stog.msg[6s] = "* Now./"
    stog.msg[7s] = "* You will be judged./"
    stog.msg[8s] = "* You will be judged for&  your every action./"
    stog.msg[9s] = "* You will be judged for&  every EXP you've earned./"
    stog.msg[10s] = "* What's EXP?/"
    stog.msg[11s] = "* It's an acronym./"
    stog.msg[12s] = "\\W* It stands for \"\\Rexecution&  points\\W.\"/"
    stog.msg[13s] = "* A way of quantifying the&  pain you have inflicted on&  others./"
    stog.msg[14s] = "* When you kill someone^1,&  your EXP increases./"
    stog.msg[15s] = "* When you have enough EXP^1,&  your LOVE increases./"
    stog.msg[16s] = "* LOVE^1, too^1, is an&  acronym./"
    stog.msg[17s] = "\\W* It stands for \"\\RLevel of&  Violence\\W.\"/"
    stog.msg[18s] = "* A way of measuring someone's&  capacity to hurt./"
    stog.msg[19s] = "* The more you kill^1, the&  easier it becomes to&  distance yourself./"
    stog.msg[20s] = "* The more you distance&  yourself^1, the less you&  will hurt./"
    stog.msg[21s] = "* The more easily you&  can bring yourself to&  hurt others./%%"
    self.con = 6s
    if !(> self.pass 0s) goto 0x0008E0
0x0008B8:
    if !(== global.lv 1s) goto 0x0008E0
0x0008CC:
    push (== global.kills 0s)
    goto 0x0008E4
0x0008E0:
    push 0s
0x0008E4:
    if !pop goto 0x00090C
0x0008E8:
    stog.msg[0s] = "* So you finally made it.../%%"
    self.con = 26s
0x00090C:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    if !(> global.kills 0s) goto 0x000958
0x000944:
    self.con = 5.1d
0x000958:
    if !(== self.con 5.1d) goto 0x000990
0x000974:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000994
0x000990:
    push 0s
0x000994:
    if !pop goto 0x0009C0
0x000998:
    self.con = 4.2d
    stog.alarm[4s] = 30s
0x0009C0:
    if !(== self.con 5.2d) goto 0x0009F8
0x0009DC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0009FC
0x0009F8:
    push 0s
0x0009FC:
    if !pop goto 0x000B68
0x000A00:
    global.currentsong = (caster_load[]:int32 (var "music/chokedup.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    global.typer = 10s
    if !(== self.endmet 1s) goto 0x000A6C
0x000A60:
    global.typer = 100s
0x000A6C:
    global.msc = 0s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Now^1, you understand./"
    stog.msg[1s] = "* It's time to begin your&  judgment./"
    stog.msg[2s] = "* Look inside yourself./"
    stog.msg[3s] = "* Have you really done the&  right thing?/"
    stog.msg[4s] = "* And^1, considering what&  you've done.../"
    stog.msg[5s] = "* What will you do now?/"
    stog.msg[6s] = "* Take a moment to think&  about this./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 10s
0x000B68:
    if !(== self.con 6s) goto 0x000B98
0x000B7C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000B9C
0x000B98:
    push 0s
0x000B9C:
    if !pop goto 0x000FC4
0x000BA0:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.ml1 = (ini_read_real[]:int32 (var 0s) (var "MeetLv1") (var "Sans"))
    call (ini_write_real[]:int32 (+ self.ml1 1s) (var "MeetLv1") (var "Sans"))
    call (ini_close[]:int32 )
    global.currentsong = (caster_load[]:int32 (var "music/chokedup.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    global.facechoice = 3s
    global.faceemotion = 3s
    global.typer = 10s
    stog.msg[0s] = "\\TS* .../"
    stog.msg[1s] = "\\Ts*\\E0 ... but you^1.&* you never gained&  any LOVE./"
    stog.msg[2s] = "\\E1* 'course^1, that doesn't&  mean you're completely&  innocent or naive./"
    stog.msg[3s] = "\\E0* just that you kept&  a certain tenderness&  in your heart./"
    stog.msg[4s] = "* no matter the struggles&  or hardships you&  faced.../"
    stog.msg[5s] = "* you strived to do the&  right thing./"
    stog.msg[6s] = "* you refused to hurt&  anyone./"
    stog.msg[7s] = "* even when you ran&  away^1, you did it&  with a smile./"
    stog.msg[8s] = "* you never gained LOVE^1,&  but you gained love./"
    stog.msg[9s] = "* does that make sense?/"
    stog.msg[10s] = "* maybe not./"
    stog.msg[11s] = "\\E3* ..^1.&* now./"
    stog.msg[12s] = "\\E0* you're about to face&  the greatest challenge&  of your entire journey./"
    stog.msg[13s] = "* your actions here.../"
    stog.msg[14s] = "* will determine the&  fate of the entire&  world./"
    stog.msg[15s] = "* if you refuse to&  fight.../"
    stog.msg[16s] = "* asgore will take&  your soul and&  destroy humanity./"
    stog.msg[17s] = "* but if you kill&  asgore and go&  home.../"
    stog.msg[18s] = "* monsters will remain&  trapped underground./"
    stog.msg[19s] = "* what will you do?/"
    stog.msg[20s] = "\\E3* .../"
    stog.msg[21s] = "* well^1, if i were you^1,&  i would have thrown&  in the towel by now./"
    stog.msg[22s] = "\\E1* but you didn't get&  this far by giving&  up^1, did you?/"
    stog.msg[23s] = "\\E0* that's right./"
    stog.msg[24s] = "* you have something&  called \"determination.\"/"
    stog.msg[25s] = "* so as long as you&  hold on.../"
    stog.msg[26s] = "* so as long as you&  do what's in your&  heart.../"
    stog.msg[27s] = "* i believe you can do&  the right thing./"
    stog.msg[28s] = "\\E3* alright./"
    stog.msg[29s] = "\\E0* we're all counting&  on you, kid./"
    stog.msg[30s] = "\\E2* good luck./%%"
    self.con = 7s
    if !(> self.ml1 0s) goto 0x000FA0
0x000F94:
    self.con = 26s
0x000FA0:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000FC4:
    if !(== self.con 7s) goto 0x000FF4
0x000FD8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000FF8
0x000FF4:
    push 0s
0x000FF8:
    if !pop goto 0x001088
0x000FFC:
    push -1s
    stog.view_xview[(- 0s:view_xview 1s)] = 0s
    push -1s
    if !(< 0s:view_xview 681s) goto 0x00105C
0x00103C:
    pushenv (int32 self.sans) 0x001058
0x00104C:
    call (instance_destroy[]:int32 )
0x001058:
    popenv 0x00104C
0x00105C:
    push -1s
    if !(<= 0s:view_xview self.remx) goto 0x001088
0x00107C:
    self.con = 8s
0x001088:
    if !(== self.con 8s) goto 0x0010EC
0x00109C:
    stog.view_object[0s] = 1570s
    [obj_mainchara].cutscene = 0s
    self.con = 9s
    global.plot = 201s
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x0010EC:
    if !(== self.con 10s) goto 0x00111C
0x001100:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001120
0x00111C:
    push 0s
0x001120:
    if !pop goto 0x001234
0x001124:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.ml2 = (ini_read_real[]:int32 (var 0s) (var "MeetLv2") (var "Sans"))
    call (ini_write_real[]:int32 (+ self.ml2 1s) (var "MeetLv2") (var "Sans"))
    call (ini_close[]:int32 )
    global.interact = 1s
    push -5s
    if (== 67s:flag 1s) goto 0x0011E8
0x0011D4:
    push (== self.ml2 0s)
    goto 0x0011EC
0x0011E8:
    push 1s
0x0011EC:
    if !pop goto 0x001214
0x0011F0:
    self.con = 11s
    stog.alarm[4s] = 300s
    goto 0x001234
0x001214:
    self.con = 22s
    stog.alarm[4s] = 60s
0x001234:
    if !(== self.con 12s) goto 0x001264
0x001248:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001268
0x001264:
    push 0s
0x001268:
    if !pop goto 0x00136C
0x00126C:
    global.facechoice = 3s
    global.faceemotion = 3s
    global.typer = 10s
    global.msc = 0s
    stog.msg[0s] = "\\TS* .../"
    stog.msg[1s] = "\\Ts*\\E0 truthfully^1, it doesn't&  really matter what you&  said./"
    stog.msg[2s] = "\\E0* all that's important is&  that you were honest&  with yourself./"
    stog.msg[3s] = "* what happens now.../"
    stog.msg[4s] = "* we leave up to you./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 7s
    push -5s
    if !(== 67s:flag 1s) goto 0x00136C
0x001360:
    self.con = 15s
0x00136C:
    if !(== self.con 15s) goto 0x00139C
0x001380:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0013A0
0x00139C:
    push 0s
0x0013A0:
    if !pop goto 0x00141C
0x0013A4:
    global.facechoice = 3s
    global.faceemotion = 3s
    global.typer = 17s
    global.msc = 835s
    stog.msg[0s] = "pepis/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 16s
0x00141C:
    if !(== self.con 20s) goto 0x00144C
0x001430:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001450
0x00144C:
    push 0s
0x001450:
    if !pop goto 0x0014E0
0x001454:
    global.msc = 0s
    global.faceemotion = 4s
    global.facechoice = 3s
    global.typer = 21s
    stog.msg[0s] = "* Then why'd you&  kill my&  brother?/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    call (caster_free[]:int32 (var -3s))
    self.con = 7s
0x0014E0:
    if !(== self.con 21s) goto 0x001510
0x0014F4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001514
0x001510:
    push 0s
0x001514:
    if !pop goto 0x0015A4
0x001518:
    global.msc = 0s
    global.faceemotion = 4s
    global.facechoice = 3s
    global.typer = 21s
    stog.msg[0s] = "* You dirty brother&  killer./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    call (caster_free[]:int32 (var -3s))
    self.con = 7s
0x0015A4:
    if !(== self.con 23s) goto 0x0015D4
0x0015B8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0015D8
0x0015D4:
    push 0s
0x0015D8:
    if !pop goto 0x001C4C
0x0015DC:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.ml = (ini_read_real[]:int32 (var 0s) (var "MeetLv") (var "Sans"))
    call (ini_write_real[]:int32 global.lv (var "MeetLv") (var "Sans"))
    call (ini_close[]:int32 )
    global.facechoice = 3s
    global.faceemotion = 1s
    global.typer = 17s
    stog.msg[0s] = "* huh^1?&* you look bored./"
    stog.msg[1s] = "\\E1* i get the feeling&  you aren't gonna learn&  anything from this./"
    stog.msg[2s] = "\\E0* well^1, guess I gotta&  judge you then./"
    stog.msg[3s] = "* come on^1.&* really?/%%"
    if !(== global.lv 2s) goto 0x001784
0x0016F4:
    stog.msg[3s] = "* lv2..^1.&* seems like you messed&  up the slightest amount./"
    stog.msg[4s] = "\\E1* welp^1.&* that's pretty sad./"
    stog.msg[5s] = "\\E3* you probably weren't&  even aware of what you&  were doing.../"
    stog.msg[6s] = "* and when you learned^1,&  it was too late./"
    stog.msg[7s] = "\\E2* nah^1, just kidding./"
    stog.msg[8s] = "\\E1* who gets to lv2 on&  accident^1?&* get outta here./%%"
0x001784:
    if !(== global.lv 3s) goto 0x0017F8
0x001798:
    stog.msg[3s] = "\\E3* lv3.../"
    stog.msg[4s] = "\\E1* 3's just an ok number^1,&  i guess./"
    stog.msg[5s] = "\\E2* i'll give you a C+./"
    stog.msg[6s] = "\\E1* you can do better^1,&  right?/%%"
0x0017F8:
    if !(>= global.lv 4s) goto 0x0018B4
0x00180C:
    stog.msg[3s] = "\\E3* hmmm..^1.&* over lv3^1, huh./"
    stog.msg[4s] = "\\E0* you killed some people&  on purpose^1, didn't you?/"
    stog.msg[5s] = "\\E1* that's probably bad./"
    stog.msg[6s] = "\\E3* though^1, maybe some&  of it was in self-&  defense.../"
    stog.msg[7s] = "\\E1* i don't know^1.&* help me out here./"
    stog.msg[8s] = "* i wasn't watching./"
    stog.msg[9s] = "\\E2* anyways^1, don't do that./%%"
0x0018B4:
    if !(>= global.lv 10s) goto 0x0019A0
0x0018C8:
    stog.msg[3s] = "\\E3* hmmm..^1.&* over lv9^1, huh./"
    stog.msg[4s] = "\\E0* that's over halfway to&  lv20^1, the maximum./"
    stog.msg[5s] = "\\E1* but don't think that&  means you're still 50-&  percent good./"
    stog.msg[6s] = "\\E3* 50-percent^1, 20-percent./"
    stog.msg[7s] = "\\E4* those are both still&  failing grades./"
    stog.msg[8s] = "\\E1* besides^1.&* chances are.../"
    stog.msg[9s] = "* i've already tried to&  steer you in the right&  direction./"
    stog.msg[10s] = "\\E0* so what can i say?/"
    stog.msg[11s] = "\\E3* what can i say that&  will change the mind of&  a being like you...?/%%"
0x0019A0:
    if !(>= global.lv 15s) goto 0x001B04
0x0019B4:
    stog.msg[3s] = "\\E3* hmmm..^1.&* over lv14^1, huh./"
    stog.msg[4s] = "\\E1* well^1, hmmm..^1.&* judgment-wise.../"
    stog.msg[5s] = "\\E4* you're a pretty bad&  person./"
    stog.msg[6s] = "* you wander around^1,&  looking for people.../"
    stog.msg[7s] = "* killing them to take&  their money./"
    stog.msg[8s] = "\\E3* that's just plain&  messed up./"
    stog.msg[9s] = "\\E1* and what's worse^1, is&  that as bad as you&  are.../"
    stog.msg[10s] = "\\E2* you aren't anywhere near&  as bad as you could&  be./"
    stog.msg[11s] = "\\E1* you pretty much suck&  at being evil./"
    stog.msg[12s] = "\\E1* honestly^1, it's super&  embarrassing./"
    stog.msg[13s] = "\\E2* but maybe you'd be&  better.../"
    stog.msg[14s] = "\\E1* at not killing anyone?/"
    stog.msg[15s] = "\\E2* crazy idea^1, huh?/"
    stog.msg[16s] = "\\E0* let me know how that&  one goes./%%"
0x001B04:
    if !(== global.lv (+ self.ml 1s)) goto 0x001BC0
0x001B24:
    global.faceemotion = 1s
    stog.msg[3s] = "* ... huh?/"
    stog.msg[4s] = "\\E0* what's with that look&  in your eye?/"
    stog.msg[5s] = "\\E3* did you go through and&  kill someone.../"
    stog.msg[6s] = "\\E3* just to see what i'd&  say about it?/"
    stog.msg[7s] = "\\E1* wow^1./"
    stog.msg[8s] = "\\E2* you're a pretty gross&  person^1, huh?/%%"
0x001BC0:
    if !(== global.lv self.ml) goto 0x001C08
0x001BD8:
    stog.msg[3s] = "\\E1* huh^1?&* you STILL look bored./"
    stog.msg[4s] = "\\E2* okay then^1, consider&  our session over./%%"
0x001C08:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    call (caster_free[]:int32 (var -3s))
    self.con = 7s
0x001C4C:
    if !(== self.con 26s) goto 0x001C7C
0x001C60:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001C80
0x001C7C:
    push 0s
0x001C80:
    if !pop goto 0x00234C
0x001C84:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.ml1 = (ini_read_real[]:int32 (var 0s) (var "MeetLv1") (var "Sans"))
    call (ini_write_real[]:int32 (+ self.ml1 1s) (var "MeetLv1") (var "Sans"))
    self.pass = (ini_read_real[]:int32 (var 0s) (var "Pass") (var "Sans"))
    call (ini_close[]:int32 )
    global.facechoice = 3s
    global.faceemotion = 1s
    global.typer = 17s
    stog.msg[0s] = "\\E3* .../"
    stog.msg[1s] = "\\E1* wait a second./"
    stog.msg[2s] = "\\E1* that look on your&  face while i was&  talking.../"
    stog.msg[3s] = "\\E2* you've already heard&  my spiel^1, haven't you?/"
    stog.msg[4s] = "\\E3* i suspected something&  like this./"
    stog.msg[5s] = "\\E3* you're always acting&  like you know what's&  going to happen./"
    stog.msg[6s] = "\\E1* like you've seen it&  all before./"
    stog.msg[7s] = "\\E3* so..^1.&* i have a request for&  you./"
    stog.msg[8s] = "\\W*\\E1 i kind of have a&  \\Ysecret codeword\\W &  that only i know./"
    stog.msg[9s] = "\\E0* so i know if someone&  tells it to me.../"
    stog.msg[10s] = "\\E1* they'll have to be a&  time traveller./"
    stog.msg[11s] = "\\E2* crazy^1, right?/"
    stog.msg[12s] = "\\E1* anyway^1, here it is.../"
    stog.msg[13s] = "\\E3* (whisper^1, whisper)/"
    stog.msg[14s] = "\\E2* i'm counting on you to&  come back here and&  tell me that./"
    stog.msg[15s] = "\\E1* see you later./%%"
    if !(== self.pass 1s) goto 0x002074
0x001EF4:
    stog.msg[0s] = "\\E0* .../"
    stog.msg[1s] = "\\E1* huh^1?&* do you have something&  to say to me?/"
    stog.msg[2s] = "\\E2* what^1? a codeword^1?&* can you speak a&  little louder?/"
    stog.msg[3s] = "\\E3* .../"
    stog.msg[4s] = "* did you.../"
    stog.msg[5s] = "\\E2* ... just say \"i'm a&  stupid doodoo butt?\"/"
    stog.msg[6s] = "\\E1* wow^1.&* i can't believe you&  would say that./"
    stog.msg[7s] = "\\E3* not only is that&  completely infantile.../"
    stog.msg[8s] = "\\E2* but it's also my&  secret codeword./"
    stog.msg[9s] = "\\E3* that^1, however^1, isn't&  good enough./"
    stog.msg[10s] = "\\W*\\E1 what you need is the&  \\Ysecret\\W secret codeword./"
    stog.msg[11s] = "\\E2* it's only for people&  that know the secret&  codeword./"
    stog.msg[12s] = "\\E0* anyway^1, here it is.../"
    stog.msg[13s] = "\\E4* (whimsper^1, whimsper).../"
    stog.msg[14s] = "\\E2* i'm counting on you to&  come back here and&  tell me that./"
    stog.msg[15s] = "\\E1* see you later./%%"
0x002074:
    if !(== self.pass 2s) goto 0x00227C
0x002088:
    stog.msg[0s] = "\\E0* .../"
    stog.msg[1s] = "\\E1* huh^1?&* do you have something&  to say to me?/"
    stog.msg[2s] = "\\E2* what^1? a codeword^1?&* can you speak a&  little louder?/"
    stog.msg[3s] = "\\E3* .../"
    stog.msg[4s] = "* did you.../"
    stog.msg[5s] = "\\E2* ... just say \"i'm the&  legendary fartmaster?\"/"
    stog.msg[6s] = "\\E1* wow./"
    stog.msg[7s] = "\\E1* that's..^1. uh..^1.&* really childish./"
    stog.msg[8s] = "\\E2* why would you think&  that was a secret&  secret codeword?/"
    stog.msg[9s] = "\\E1* whoever told you that&  is a dirty liar./"
    stog.msg[10s] = "\\E2* i don't have a secret&  secret codeword./"
    stog.msg[11s] = "\\E3* however./"
    stog.msg[12s] = "\\E2* i do have a secret&  secret triple-secret&  codeword./"
    stog.msg[13s] = "\\E1* which you just said./"
    stog.msg[14s] = "\\E2* so^1, i guess you're&  qualified./"
    stog.msg[15s] = "\\E2* here's the key to my&  room./"
    stog.msg[16s] = "\\E3* it's time.../"
    stog.msg[17s] = "* you learned the truth./"
    stog.msg[18s] = "\\TS \\F0 \\T0 %"
    stog.msg[19s] = "* (When you looked^1, the key was&  already on your keychain.)/%%"
    stog.flag[497s] = 1s
0x00227C:
    if !(== self.pass 3s) goto 0x00231C
0x002290:
    stog.msg[0s] = "\\E0* .../"
    stog.msg[1s] = "\\E1* huh^1?&* triple secret codeword?/"
    stog.msg[2s] = "\\E2* nah^1, i'm out of&  material./"
    stog.msg[3s] = "\\TS \\F0 \\T0 %"
    stog.msg[4s] = "* (You felt something on your&  keychain.)/%%"
    stog.flag[497s] = 1s
0x00231C:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 30s
0x00234C:
    if !(== self.con 30s) goto 0x00237C
0x002360:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x002380
0x00237C:
    push 0s
0x002380:
    if !pop goto 0x002504
0x002384:
    if !(== 782.stringno 13s) goto 0x0023AC
0x002398:
    push (== self.pass 0s)
    goto 0x0023B0
0x0023AC:
    push 0s
0x0023B0:
    if !pop goto 0x002404
0x0023B4:
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "Pass") (var "Sans"))
    call (ini_close[]:int32 )
0x002404:
    if !(== 782.stringno 13s) goto 0x00242C
0x002418:
    push (== self.pass 1s)
    goto 0x002430
0x00242C:
    push 0s
0x002430:
    if !pop goto 0x002484
0x002434:
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 2s) (var "Pass") (var "Sans"))
    call (ini_close[]:int32 )
0x002484:
    if !(== 782.stringno 19s) goto 0x0024AC
0x002498:
    push (== self.pass 2s)
    goto 0x0024B0
0x0024AC:
    push 0s
0x0024B0:
    if !pop goto 0x002504
0x0024B4:
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 3s) (var "Pass") (var "Sans"))
    call (ini_close[]:int32 )
0x002504:
    if !(== self.con 30s) goto 0x002534
0x002518:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002538
0x002534:
    push 0s
0x002538:
    if !pop goto 0x002548
0x00253C:
    self.con = 7s
0x002548:
    if !(== self.con 100s) goto 0x002EF8
0x00255C:
    [obj_mainchara].visible = 0s
    self.mc = (scr_marker[]:int32 (var 1045s) 1570.y 1570.x)
    push 1570.depth
    stog.depth* = (int32 self.mc)
    push 0s
    stog.image_blend* = (int32 self.mc)
    global.msc = 0s
    global.facechoice = 3s
    global.faceemotion = 0s
    global.typer = 17s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.sansf = (ini_read_real[]:int32 (var 0s) (var "F") (var "Sans"))
    self.sansk = (ini_read_real[]:int32 (var 0s) (var "SK") (var "Sans"))
    call (ini_close[]:int32 )
    stog.msg[0s] = "\\E0* heya./"
    stog.msg[1s] = "\\E1* you've been busy^1,&  huh?/"
    stog.msg[2s] = "* .../"
    stog.msg[3s] = "\\E0* so^1, i've got a&  question for ya./"
    stog.msg[4s] = "\\E3* do you think even&  the worst person can&  change...?/"
    stog.msg[5s] = "\\E3* that everybody can be&  a good person^1, if&  they just try?/%%"
    self.con = 101s
    if !(== self.sansf 1s) goto 0x00277C
0x002728:
    stog.msg[0s] = "\\E0* heya./"
    stog.msg[1s] = "\\E1* you look frustrated&  about something./"
    stog.msg[2s] = "\\E4* guess i'm pretty good&  at my job^1, huh?/%%"
    self.con = 111s
0x00277C:
    if !(== self.sansf 2s) goto 0x002814
0x002790:
    stog.msg[0s] = "\\E0* hmm^1.&* that expression.../"
    stog.msg[1s] = "\\E1* that's the expression&  of someone who's died&  twice in a row./"
    stog.msg[2s] = "\\E2* suffice to say^1, you&  look really..^1.&* unsatisfied./"
    stog.msg[3s] = "\\E3* all right./"
    stog.msg[4s] = "\\E4* how 'bout we make it&  a third?/%%"
    self.con = 111s
0x002814:
    if !(== self.sansf 3s) goto 0x0028AC
0x002828:
    stog.msg[0s] = "\\E0* hmm^1.&* that expression.../"
    stog.msg[1s] = "\\E1* that's the expression&  of someone who's died&  thrice in a row./"
    stog.msg[2s] = "\\E3* .../"
    stog.msg[3s] = "\\E1* hey^1, what comes after&  \"thrice^1,\" anyway?/"
    stog.msg[4s] = "\\E4* wanna help me find out?/%%"
    self.con = 111s
0x0028AC:
    if !(== self.sansf 4s) goto 0x00292C
0x0028C0:
    stog.msg[0s] = "\\E0* hmm^1.&* that expression.../"
    stog.msg[1s] = "\\E1* that's the expression&  of someone who's died&  quice in a row./"
    stog.msg[2s] = "\\E1* quice^1?&* frice?/"
    stog.msg[3s] = "\\E4* welp^1, won't have to&  use it again anyways./%%"
    self.con = 111s
0x00292C:
    if !(== self.sansf 5s) goto 0x0029C4
0x002940:
    stog.msg[0s] = "\\E0* hmm^1.&* that expression.../"
    stog.msg[1s] = "\\E1* that's the expression&  of someone who's died&  five times in a row./"
    stog.msg[2s] = "\\E2* convenient^1, huh^1?&* that's one for each&  finger./"
    stog.msg[3s] = "\\E3* but soon.../%%"
    stog.msg[4s] = "\\E4* you'll need a cool&  mutant hand to count&  all of your deaths./%%"
    self.con = 111s
0x0029C4:
    if !(== self.sansf 6s) goto 0x002A5C
0x0029D8:
    stog.msg[0s] = "\\E0* hmm^1.&* that expression.../"
    stog.msg[1s] = "\\E1* that's the expression&  of someone who's died&  six times in a row./"
    stog.msg[2s] = "\\E2* that's the number of&  fingers on a mutant&  hand./"
    stog.msg[3s] = "\\E3* but soon.../%%"
    stog.msg[4s] = "\\E4* you'll need to find&  a mutant hand with&  even more fingers./%%"
    self.con = 111s
0x002A5C:
    if !(== self.sansf 7s) goto 0x002AF4
0x002A70:
    stog.msg[0s] = "\\E0* hmm^1.&* that expression.../"
    stog.msg[1s] = "\\E1* that's the expression&  of someone who's died&  seven times in a row./"
    stog.msg[2s] = "\\E0* hey^1, that's good^1.&* seven's supposed to be&  a lucky number./"
    stog.msg[3s] = "\\E2* who knows^1, maybe&  you'll hit the&  jackpot.../%%"
    stog.msg[4s] = "\\E4* and that number will&  multiply tenfold./%%"
    self.con = 111s
0x002AF4:
    if !(== self.sansf 8s) goto 0x002B8C
0x002B08:
    stog.msg[0s] = "\\E0* hmm^1.&* that expression.../"
    stog.msg[1s] = "\\E1* that's the expression&  of someone who's died&  eight times in a row./"
    stog.msg[2s] = "\\E2* that's the number of&  fingers on a spider./"
    stog.msg[3s] = "\\E3* but soon.../%%"
    stog.msg[4s] = "\\E1* wait^1, don't spiders&  have legs?/%%"
    self.con = 111s
0x002B8C:
    if !(== self.sansf 9s) goto 0x002C24
0x002BA0:
    stog.msg[0s] = "\\E0* hmm^1.&* that expression.../"
    stog.msg[1s] = "\\E1* that's the expression&  of someone who's died&  seven times in a row./"
    stog.msg[2s] = "\\E1* .../"
    stog.msg[3s] = "\\E2* nope^1, wait^1, that's&  definitely nine^1, sorry./"
    stog.msg[4s] = "\\E4* or was it ten?/%%"
    self.con = 111s
0x002C24:
    if !(== self.sansf 10s) goto 0x002CEC
0x002C38:
    stog.msg[0s] = "\\E0* hmm^1.&* that expression.../"
    stog.msg[1s] = "\\E1* that's the expression&  of someone who's died&  ten times in a row./"
    stog.msg[2s] = "\\E2* hey^1, congrats^1!&* the big one-oh!/"
    stog.msg[3s] = "\\E1* let's invite all your&  friends over for a&  big shindig./"
    stog.msg[4s] = "\\E2* we can have pie^1, and&  hot dogs^1, and.../"
    stog.msg[5s] = "\\E3* hmmm..^1. wait^1.&* something's not right./"
    stog.msg[6s] = "\\E4* you don't have any&  friends./%%"
    self.con = 111s
0x002CEC:
    if !(== self.sansf 11s) goto 0x002DB4
0x002D00:
    stog.msg[0s] = "\\E0* hmm^1.&* that expression.../"
    stog.msg[1s] = "\\E1* that's the expression&  of someone who's died&  eleven times in a row./"
    stog.msg[2s] = "\\E2* well^1, give or take./"
    stog.msg[3s] = "\\E1* there's nuance to&  this stuff./"
    stog.msg[4s] = "\\E2* don't think i'll be&  able to count very&  well from here./"
    stog.msg[5s] = "\\E1* count for me^1, ok?/"
    stog.msg[6s] = "\\E4* we'll start from 12./%%"
    self.con = 111s
0x002DB4:
    if !(>= self.sansf 12s) goto 0x002DEC
0x002DC8:
    stog.msg[0s] = "\\E0* let's just get to&  the point./%%"
    self.con = 111s
0x002DEC:
    if !(> self.sansk 0s) goto 0x002E60
0x002E00:
    stog.msg[0s] = "\\E0* .../"
    stog.msg[1s] = "\\E1* that expression that&  you're wearing.../"
    stog.msg[2s] = "\\E3* .../"
    stog.msg[3s] = "\\E4* well^1, i won't grace&  it with a description./%%"
0x002E60:
    if !(> self.sansk 1s) goto 0x002ED4
0x002E74:
    stog.msg[0s] = "\\E0* .../"
    stog.msg[1s] = "\\E1* that expression that&  you're wearing.../"
    stog.msg[2s] = "\\E3* .../"
    stog.msg[3s] = "\\E4* you're really kind&  of a freak^1, huh?/%%"
0x002ED4:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x002EF8:
    if !(== self.con 101s) goto 0x002F28
0x002F0C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002F2C
0x002F28:
    push 0s
0x002F2C:
    if !pop goto 0x002F88
0x002F30:
    push 1s
    stog.image_index* = (int32 self.mc)
    push 0.5d
    stog.hspeed* = (int32 self.mc)
    self.con = 102s
    stog.alarm[4s] = 10s
0x002F88:
    if !(== self.con 103s) goto 0x002FEC
0x002F9C:
    push 0s
    stog.hspeed* = (int32 self.mc)
    push 0s
    stog.image_index* = (int32 self.mc)
    self.con = 104s
    stog.alarm[4s] = 30s
0x002FEC:
    if !(== self.con 105s) goto 0x0030C0
0x003000:
    stog.msg[0s] = "\\E3* heh heh heh heh.../"
    stog.msg[1s] = "\\E1* all right./"
    stog.msg[2s] = "\\E3* well^1, here's a better&  question./"
    stog.msg[3s] = "\\E4* do you wanna have&  a bad time?/"
    stog.msg[4s] = "\\E3* 'cause if you take&  another step&  forward.../"
    stog.msg[5s] = "\\E4* you are REALLY not&  going to like what&  happens next./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 106s
0x0030C0:
    if !(== self.con 106s) goto 0x0030F0
0x0030D4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0030F4
0x0030F0:
    push 0s
0x0030F4:
    if !pop goto 0x003150
0x0030F8:
    push 1s
    stog.image_index* = (int32 self.mc)
    push 0.5d
    stog.hspeed* = (int32 self.mc)
    self.con = 107s
    stog.alarm[4s] = 10s
0x003150:
    if !(== self.con 108s) goto 0x0031B4
0x003164:
    push 0s
    stog.hspeed* = (int32 self.mc)
    push 0s
    stog.image_index* = (int32 self.mc)
    self.con = 109s
    stog.alarm[4s] = 30s
0x0031B4:
    if !(== self.con 110s) goto 0x003240
0x0031C8:
    stog.msg[0s] = "\\E3* welp./"
    stog.msg[1s] = "\\E3* sorry^1, old lady./"
    stog.msg[2s] = "* this is why i never&  make promises./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 111s
0x003240:
    if !(== self.con 111s) goto 0x003270
0x003254:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x003274
0x003270:
    push 0s
0x003274:
    if !pop goto 0x0032D4
0x003278:
    global.battlegroup = 95s
    global.mercy = 1s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.con = 112s
    stog.alarm[4s] = 32s
0x0032D4:
    if !(== self.con 113s) goto 0x00337C
0x0032E8:
    pushenv (int32 self.sans) 0x003304
0x0032F8:
    call (instance_destroy[]:int32 )
0x003304:
    popenv 0x0032F8
0x003308:
    global.interact = 0s
    pushenv 1570s 0x003328
0x00331C:
    self.cutscene = 0s
0x003328:
    popenv 0x00331C
0x00332C:
    stog.view_object[0s] = 1570s
    pushenv (int32 self.mc) 0x00335C
0x003350:
    call (instance_destroy[]:int32 )
0x00335C:
    popenv 0x003350
0x003360:
    [obj_mainchara].visible = 1s
    call (instance_destroy[]:int32 )
    exit
0x00337C:
    exit
