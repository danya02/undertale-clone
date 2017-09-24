0x000000:
    if (== self.conversation 2s) goto 0x000028
0x000014:
    push (== self.conversation 4s)
    goto 0x00002C
0x000028:
    push 1s
0x00002C:
    if !pop goto 0x0000E0
0x000030:
    if !(== (instance_exists[]:int32 (var 779s)) 0s) goto 0x0000E0
0x00004C:
    global.interact = 1s
    stog.alarm[1s] = 150s
    if !(== self.conversation 2s) goto 0x000098
0x000080:
    call (snd_play[]:int32 (var 52s))
    goto 0x0000C0
0x000098:
    call (snd_play[]:int32 (var 86s))
    stog.alarm[1s] = 80s
0x0000C0:
    [obj_floweytalker1].image_speed = 0.25d
    self.conversation = 999s
0x0000E0:
    if !(== self.conversation 3s) goto 0x000110
0x0000F4:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x000114
0x000110:
    push 0s
0x000114:
    if !pop goto 0x000170
0x000118:
    global.interact = 1s
    [obj_floweytalker1].sprite_index = 1097s
    [obj_floweytalker1].image_speed = 0.33333334d
    [obj_floweytalker1].image_index = 0s
    stog.alarm[2s] = 240s
    self.conversation = 999s
0x000170:
    if !(== self.conversation 1s) goto 0x000DE4
0x000184:
    global.interact = 1s
    self.myinteract = 3s
    global.typer = 9s
    global.facechoice = 2s
    global.faceemotion = 0s
    global.msc = 0s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.TK = (ini_read_real[]:int32 (var 0s) (var "TK") (var "Toriel"))
    self.TS = (ini_read_real[]:int32 (var 0s) (var "TS") (var "Toriel"))
    self.FS = (ini_read_real[]:int32 (var 0s) (var "FloweyExplain1") (var "Flowey"))
    call (ini_close[]:int32 )
    stog.msg[0s] = "* Error/%%"
    push -5s
    if !(== 45s:flag 4s) goto 0x0008D8
0x0002B4:
    stog.msg[0s] = "* Hee hee hee.../"
    stog.msg[1s] = "\\E2* I hope you like your&  choice./"
    stog.msg[2s] = "* After all^1, it's not&  as if you can go&  back and change fate./"
    stog.msg[3s] = "\\E0* In this world^1, it's kill&  or be killed./"
    stog.msg[4s] = "\\E2* That old hag thought&  she could break the&  rules./"
    stog.msg[5s] = "\\E1* She tried so hard&  to save you humans./"
    stog.msg[6s] = "\\E0* But when it came&  down to it.../"
    stog.msg[7s] = "\\TF*\\E5 Hee hee.../"
    stog.msg[8s] = "\\E4* SHE COULDN'T EVEN&  SAVE HERSELF./"
    stog.msg[9s] = "* WHAT AN IDIOT!!/%%"
    self.conversation = 2s
    if !(== self.TK 2s) goto 0x000478
0x0003C4:
    stog.msg[0s] = "\\E2* Heheheheh./"
    stog.msg[1s] = "* You just can't&  get enough^1, can you!?/"
    stog.msg[2s] = "\\E4* .../"
    stog.msg[3s] = "\\E6* How many more&  times will you&  kill her?/"
    stog.msg[4s] = "* Ha ha ha ha ha.../"
    stog.msg[5s] = "\\E4*\\TF You disgusting animal./"
    stog.msg[6s] = "* You didn't even&  TRY to spare her./%%"
    self.conversation = 2s
0x000478:
    if !(> self.TK 2s) goto 0x0004C8
0x00048C:
    stog.msg[0s] = "* Wow^1, you really&  can't get enough./"
    stog.msg[1s] = "\\E5* You kind of remind&  me of myself./%%"
    self.conversation = 2s
0x0004C8:
    if !(> self.TS 0s) goto 0x0004F0
0x0004DC:
    push (> self.TK 0s)
    goto 0x0004F4
0x0004F0:
    push 0s
0x0004F4:
    if !pop goto 0x000730
0x0004F8:
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "FloweyExplain1") (var "Flowey"))
    call (ini_close[]:int32 )
    stog.msg[0s] = "* Wow^1, you're utterly&  repulsive./"
    stog.msg[1s] = "\\E6* You spared her life.../"
    stog.msg[2s] = "* Then you decided that&  just wasn't interesting&  enough for you./"
    stog.msg[3s] = "\\E7* So you murdered her&  just to see what&  would happen./"
    stog.msg[4s] = "\\E5* You killed her out&  of boredom./"
    stog.msg[5s] = "* Truly disgusting.../%%"
    if !(== self.FS 0s) goto 0x000730
0x0005EC:
    stog.msg[5s] = "* Hee hee.../"
    stog.msg[6s] = "\\E4* You naive idiot./"
    stog.msg[7s] = "* Do you think you&  are the only one&  with that power?/"
    stog.msg[8s] = "\\E4* The power to reshape&  the world.../"
    stog.msg[9s] = "* Purely by your&  own determination./"
    stog.msg[10s] = "* The ability to&  play God!/"
    stog.msg[11s] = "* The ability to \"SAVE.\"/"
    stog.msg[12s] = "\\E0* I thought I was&  the only one with&  that power^1. But.../"
    stog.msg[13s] = "\\E1* I can't SAVE anymore./"
    stog.msg[14s] = "* Apparently YOUR&  desires for this&  world override MINE./"
    stog.msg[15s] = "\\E5* Well well./"
    stog.msg[16s] = "* Enjoy that power&  while you can./"
    stog.msg[17s] = "\\E4* I'll be watching./%%"
    self.conversation = 3s
0x000730:
    if !(>= (scr_murderlv[]:int32 ) 2s) goto 0x0008D4
0x000744:
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "truename") (var "Flowey"))
    call (ini_write_real[]:int32 (var 1s) (var "alter2") (var "Flowey"))
    call (ini_close[]:int32 )
    stog.msg[0s] = "* Hahaha.../"
    stog.msg[1s] = "\\E1* You're not really human^1,&  are you?/"
    stog.msg[2s] = "\\E1* No.^2 You're empty inside^2.&* \\E4Just like me^1.&* In fact.../"
    stog.msg[3s] = (+ (+ "\\E8* You're " global.charname) ",^1 right?/")
    stog.msg[4s] = "\\E0* We're still inseperable^1,&  after all these years.../"
    stog.msg[5s] = "* Listen^1.&* I have a plan to become&  all powerful./"
    stog.msg[6s] = "\\E2* Even more powerful than&  you and your stolen&  soul./"
    stog.msg[7s] = "\\E4* Let's destroy everything&  in this wretched world./"
    stog.msg[8s] = "\\E6* Everyone^1, everything in&  these \\E7worthless&  memories.../"
    stog.msg[9s] = "\\E5* Let's turn 'em all&  to dust./%%"
    self.conversation = 4s
0x0008D4:
    goto 0x000DBC
0x0008D8:
    push -5s
    if !(== 45s:flag 5s) goto 0x000DBC
0x0008F4:
    global.faceemotion = 2s
    stog.msg[0s] = "* Clever.&* Verrrryyy clever./"
    stog.msg[1s] = "* You think you're really&  smart^1, don't you?/"
    stog.msg[2s] = "\\E0* In this world^1, it's kill&  or be killed./"
    stog.msg[3s] = "\\E1* So you were able to&  play by your own&  rules./"
    stog.msg[4s] = "*\\E4 You spared the life&  of a single person./"
    stog.msg[5s] = "* Hee hee hee.../"
    if !(> global.kills 0s) goto 0x000A58
0x0009A4:
    stog.msg[6s] = "* Froggit^1, Whimsun^1.&* Vegetoid^1, Loox^1.&* Migosp^1, Moldsmal./"
    stog.msg[7s] = "* Think about those names./"
    stog.msg[8s] = "* Do you think any of&  those monsters have&  families?/"
    stog.msg[9s] = "* Do you think any of&  them have friends?/"
    stog.msg[10s] = "\\E6* Each one could have&  been someone else's&  Toriel./"
    stog.msg[11s] = "\\E7* Selfish brat./"
    stog.msg[12s] = "* Somebody is dead&  because of you./%%"
    self.conversation = 2s
0x000A58:
    if !(== global.kills 0s) goto 0x000B98
0x000A6C:
    stog.msg[6s] = "\\E2* I bet you feel&  really great./"
    stog.msg[7s] = "* You didn't kill&  anybody this time./"
    stog.msg[8s] = "\\E0* But what will you&  do if you meet a&  relentless killer?/"
    stog.msg[9s] = "* You'll die and you'll&  die and you'll&  die./"
    stog.msg[10s] = "\\E1* Until you tire of&  trying./"
    stog.msg[11s] = "\\E0* What will you do&  then?/"
    stog.msg[12s] = "\\E5* Will you kill&  out of frustration?/"
    stog.msg[13s] = "* Or will you give&  up entirely on&  this world.../"
    stog.msg[14s] = "\\E4* ... and let ME inherit&  the power to control&  it?/"
    stog.msg[15s] = "\\E5* I am the prince of&  this world's future./"
    stog.msg[16s] = "* Don't worry^1, my little&  monarch^1, my plan&  isn't regicide./"
    stog.msg[17s] = "* This is SO much&  more interesting./%%"
    self.conversation = 3s
0x000B98:
    if !(> self.TK 0s) goto 0x000BC0
0x000BAC:
    push (== self.FS 0s)
    goto 0x000BC4
0x000BC0:
    push 0s
0x000BC4:
    if !pop goto 0x000DBC
0x000BC8:
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "FloweyExplain1") (var "Flowey"))
    call (ini_close[]:int32 )
    stog.msg[6s] = "* But don't act so&  cocky./"
    stog.msg[7s] = "* I know what you did./"
    stog.msg[8s] = "\\E6* You murdered her./"
    stog.msg[9s] = "\\E7* And then you went&  back^1, because you&  regretted it./"
    stog.msg[10s] = "* Ha ha ha ha.../"
    stog.msg[11s] = "\\E5* You naive idiot./"
    stog.msg[12s] = "* Do you think you&  are the only one&  with that power?/"
    stog.msg[13s] = "\\E4* The power to reshape&  the world.../"
    stog.msg[14s] = "* Purely by your&  own determination./"
    stog.msg[15s] = "* The ability to&  play God!/"
    stog.msg[16s] = "* The ability to \"SAVE.\"/"
    stog.msg[17s] = "\\E0* I thought I was&  the only one with&  that power^1. But.../"
    stog.msg[18s] = "\\E1* I can't SAVE anymore./"
    stog.msg[19s] = "* Apparently YOUR&  desires for this&  world override MINE./"
    stog.msg[20s] = "\\E5* Well well./"
    stog.msg[21s] = "* Enjoy that power&  while you can./"
    stog.msg[22s] = "\\E4* I'll be watching./%%"
    self.conversation = 3s
0x000DBC:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000DE4:
    exit
