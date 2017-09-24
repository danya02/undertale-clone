0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "%%"
    if !(== self.room 7s) goto 0x000080
0x000068:
    stog.msg[0s] = "* Only the fearless may proceed.&* Brave ones, foolish ones.&* Both walk not the middle road./%%"
0x000080:
    if !(== self.room 8s) goto 0x0000AC
0x000094:
    stog.msg[0s] = "* Stay on the path./%%"
0x0000AC:
    if !(== self.room 10s) goto 0x0000D8
0x0000C0:
    stog.msg[0s] = "* The western room is the&  eastern room's blueprint./%%"
0x0000D8:
    if !(== self.room 15s) goto 0x000104
0x0000EC:
    stog.msg[0s] = "* Three out of four grey rocks&  recommend you push them./%%"
0x000104:
    if !(== self.room 21s) goto 0x000130
0x000118:
    stog.msg[0s] = "* (There's an ant-sized frog in&  a crack in the wall...^1)&* (It waves at you.)/%%"
0x000130:
    if !(== self.room 22s) goto 0x00015C
0x000144:
    stog.msg[0s] = "* There is just one switch./%%"
0x00015C:
    if !(== self.room 23s) goto 0x000188
0x000170:
    stog.msg[0s] = "* The far door is not an exit^1.&* It simply marks a rotation&  in perspective./%%"
0x000188:
    if !(== self.room 24s) goto 0x0001B4
0x00019C:
    stog.msg[0s] = "* If you can read this^1,&  press the blue switch./%%"
0x0001B4:
    if !(== self.room 25s) goto 0x0001E0
0x0001C8:
    stog.msg[0s] = "* If you can read this^1,&  press the red switch./%%"
0x0001E0:
    if !(== self.room 26s) goto 0x00020C
0x0001F4:
    stog.msg[0s] = "* If you can read this^1,&  press the green switch./%%"
0x00020C:
    if !(== self.room 32s) goto 0x000238
0x000220:
    stog.msg[0s] = "* These books are worn...&* They must have been read&  many times./%%"
0x000238:
    if !(== self.room 220s) goto 0x000290
0x00024C:
    stog.msg[0s] = "* (There's an old calendar from&  the end of 201X.^1)&* (A date is circled on it.)/%%"
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x000290
0x000278:
    stog.msg[0s] = "\\R* (The date I came here.)/%%"
0x000290:
    if !(== self.room 33s) goto 0x0002BC
0x0002A4:
    stog.msg[0s] = "* The ends of the tools have&  been filed down to&  make them safer./%%"
0x0002BC:
    if !(== self.room 221s) goto 0x0002E8
0x0002D0:
    stog.msg[0s] = "* Seems like gardening tools./%%"
0x0002E8:
    if !(== self.room 36s) goto 0x000314
0x0002FC:
    stog.msg[0s] = "* Look at these cool toys^2!&* They don't interest you&  at all./%%"
0x000314:
    if !(== self.room 224s) goto 0x000340
0x000328:
    stog.msg[0s] = "* (Dusty toys.)/%%"
0x000340:
    if !(== self.room 232s) goto 0x00036C
0x000354:
    stog.msg[0s] = "* Throne Room/%%"
0x00036C:
    if !(== self.room 234s) goto 0x000470
0x000380:
    stog.msg[0s] = "* (It's a coffin.^1)&* (There's a name engraved on&  it.)/"
    stog.msg[1s] = (+ (+ "* (\"" global.charname) ".\")/")
    stog.msg[2s] = "* (It's empty.)/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000444
0x0003FC:
    stog.msg[0s] = "* (The coffin is empty...?)/"
    stog.msg[1s] = "* (You didn't notice before^1,&  but there's something like...)/"
    stog.msg[2s] = "* (... mummy wrappings at the&  bottom of it.)/%%"
0x000444:
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x000470
0x000458:
    stog.msg[0s] = "\\R* (It's as comfortable as it&  looks.)/%%"
0x000470:
    if !(== self.room 35s) goto 0x000558
0x000484:
    global.msc = 524s
    if !(> self.x 192s) goto 0x000558
0x0004A4:
    global.msc = 0s
    stog.msg[0s] = "* You peek inside..^2.&* Scandalous!/"
    stog.msg[1s] = "* It's TORIEL's sock&  collection./%%"
    if !(> self.read 0s) goto 0x00050C
0x0004F4:
    stog.msg[0s] = "* You can't stop looking&  at the socks./%%"
0x00050C:
    push -5s
    if !(== 7s:flag 1s) goto 0x000558
0x000528:
    stog.msg[0s] = "* (You came all the way&  back here to look at&  Toriel's socks.)/"
    stog.msg[1s] = "* (You have great priorities&  in life.)/%%"
0x000558:
    if !(== self.room 223s) goto 0x0005F4
0x00056C:
    stog.msg[0s] = "* It's a clothes drawer^1.&* There are robes^1, button-up&  shirts.../"
    stog.msg[1s] = "* ... and a pink^1, hand-knit&  sweater that says&  \"Mr. Dad Guy.\"/%%"
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x0005C8
0x0005B0:
    stog.msg[0s] = "\\R* Still has that sweater./%%"
0x0005C8:
    if !(> self.y 120s) goto 0x0005F4
0x0005DC:
    stog.msg[0s] = "* (It's just a chair.)/%%"
0x0005F4:
    if !(== self.room 235s) goto 0x000620
0x000608:
    stog.msg[0s] = "* (It's a throne.)/%%"
0x000620:
    if !(== self.room 34s) goto 0x00064C
0x000634:
    stog.msg[0s] = "* \"Room under renovations.\"/%%"
0x00064C:
    if !(== self.room 222s) goto 0x000678
0x000660:
    stog.msg[0s] = "* \"Room under renovations.\"/%%"
0x000678:
    if !(== self.room 37s) goto 0x0006A4
0x00068C:
    stog.msg[0s] = "* For some reason^1, there&  is a brand-name chocolate&  bar in the fridge./%%"
0x0006A4:
    if !(== self.room 225s) goto 0x0006FC
0x0006B8:
    stog.msg[0s] = "* (The fridge is full of&  unopened containers of&  snails.)/%%"
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x0006FC
0x0006E4:
    stog.msg[0s] = "\\R* No chocolate./%%"
0x0006FC:
    if !(== self.room 44s) goto 0x000728
0x000710:
    stog.msg[0s] = "* ...!^1?&* There's a camera hidden&  in the bushes./%%"
0x000728:
    if !(== self.room 54s) goto 0x000754
0x00073C:
    stog.msg[0s] = "* (His.)/%%"
0x000754:
    if !(== self.room 57s) goto 0x00083C
0x000768:
    if !(<= global.plot 48s) goto 0x000794
0x00077C:
    stog.msg[0s] = "* There's a switch hidden&  in the snow^1.&* Click!/%%"
0x000794:
    if !(> global.plot 48s) goto 0x0007C0
0x0007A8:
    stog.msg[0s] = "* The switch is stuck now./%%"
0x0007C0:
    push -5s
    if !(== 64s:flag 0s) goto 0x0007F0
0x0007DC:
    stog.flag[64s] = 1s
0x0007F0:
    if !(<= global.plot 48s) goto 0x000810
0x000804:
    global.plot = 49s
0x000810:
    if !(>= (scr_murderlv[]:int32 ) 3s) goto 0x00083C
0x000824:
    stog.msg[0s] = "* There's a switch here^1.&* It's been depressed with&  vines./%%"
0x00083C:
    if !(== self.room 61s) goto 0x000868
0x000850:
    stog.msg[0s] = "* On the floor inside is&  a box of pomeraisins./%%"
0x000868:
    if !(== self.room 9999999) goto 0x0009B8
0x000880:
    stog.msg[0s] = "* (It's a school report about&  monster funerals.)/"
    stog.msg[1s] = "* Monster funerals^1, technically&  speaking^2, are super crap./"
    stog.msg[2s] = "* When monsters die^1, their&  bodies turn into dust./"
    stog.msg[3s] = "* One time this kid at my school&  went missing for a week and&  everyone thought he was dead.../"
    stog.msg[4s] = "* But then he came back!!!/"
    stog.msg[5s] = "* Turns out he was visiting his&  girlfriend in Hotland and&  and didn't tell anyone!/"
    stog.msg[6s] = "* To be scientific^1, it sucks&  that no one ever knows&  if anyone's dead or alive./"
    stog.msg[7s] = "* So yeah^1, what do we do at&  funerals^1, anyway?/"
    stog.msg[8s] = "* Professionally speaking:/"
    stog.msg[9s] = "* DUH!!!/"
    stog.msg[10s] = "* We pour the dust on whatever&  that person liked./"
    stog.msg[11s] = "* Then they will live on..^1.&  ... in that object...&  ... symbolically.../"
    stog.msg[12s] = "* Uhhh^1, did I reach the page&  minimum yet^1?&* I'm kinda sick of writing./%%"
0x0009B8:
    if !(== self.room 74s) goto 0x000A5C
0x0009CC:
    stog.msg[0s] = "* (It's a school report about&  monster funerals.)/"
    stog.msg[1s] = "* Monster funerals^1, technically&  speaking^2, are cool as heck./"
    stog.msg[2s] = "* When monsters get old and&  kick the bucket^1, they turn&  into dust./"
    stog.msg[3s] = "* At funerals^1, we take that&  dust and spread it on that&  person's favorite thing./"
    stog.msg[4s] = "* Then their essence will live&  on in that thing.../"
    stog.msg[5s] = "* Uhhh^1, am I at the page&  minimum yet^1?&* I'm kinda sick of writing this./%%"
0x000A5C:
    if !(== self.room 71s) goto 0x000B18
0x000A70:
    stog.msg[0s] = "\\W* Mom says that sleeping&  can recover your health&  \\Yabove your maximum HP\\W./"
    stog.msg[1s] = "* ... what's maximum HP?/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000AEC
0x000ABC:
    stog.msg[0s] = "* Mom says that we can&  go to the surface world&  now!/"
    stog.msg[1s] = "* ... what's so great about&  that^1, anyway^1?&* I don't wanna move./%%"
0x000AEC:
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x000B18
0x000B00:
    stog.msg[0s] = "* (It's merely a decoy.)/%%"
0x000B18:
    if !(== self.room 97s) goto 0x000B5C
0x000B2C:
    stog.msg[0s] = "* \"The power to take their&  SOULs.\"/"
    stog.msg[1s] = "* \"This is the power that&  the humans feared.\"/%%"
0x000B5C:
    if !(== self.room 91s) goto 0x000BA0
0x000B70:
    stog.msg[0s] = "* (Ancient writing covers the&  walls..^1. you can just make&  out the words.)/"
    stog.msg[1s] = "* \"The War of Humans and&  Monsters.\"/%%"
0x000BA0:
    if !(== self.room 101s) goto 0x000BCC
0x000BB4:
    stog.msg[0s] = "* The northern room hides a&  great treasure./%%"
0x000BCC:
    if !(== self.room 126s) goto 0x000C28
0x000BE0:
    stog.msg[0s] = "* Hurt, beaten, and fearful for&  our lives, we surrendered&  to the humans./"
    stog.msg[1s] = "* Seven of their greatest&  magicians sealed us underground&  with a magic spell./"
    stog.msg[2s] = "* Anything can enter through the&  seal, but only beings with a&  powerful SOUL can leave./%%"
0x000C28:
    if !(== self.room 131s) goto 0x000C84
0x000C3C:
    stog.msg[0s] = "* However...&* There is a prophecy./"
    stog.msg[1s] = "* The Angel...&* The One Who Has Seen The&  Surface.../"
    stog.msg[2s] = "* They will return.&* And the underground will go&  empty./%%"
0x000C84:
    if !(== self.room 96s) goto 0x000CB0
0x000C98:
    stog.msg[0s] = "* The ancient glyphs have been&  painted over with a list of&  21 different flavors./%%"
0x000CB0:
    if !(== self.room 123s) goto 0x000CDC
0x000CC4:
    stog.msg[0s] = "* Achoo^1!&* Tried to catch a bug^1, but&  I just caught a cold.../%%"
0x000CDC:
    if !(== self.room 110s) goto 0x000D20
0x000CF0:
    stog.msg[0s] = "* The humans, afraid of our&  power^1, declared war on us./"
    stog.msg[1s] = "* They attacked suddenly, and&  without mercy./%%"
0x000D20:
    if !(== self.room 129s) goto 0x000D4C
0x000D34:
    stog.msg[0s] = "* Without candles or magic to&  guide them Home^1, the monsters&  used crystals to navigate./%%"
0x000D4C:
    if !(== self.room 132s) goto 0x000D90
0x000D60:
    if !(bool (instance_exists[]:int32 (var 1126s))) goto 0x000D84
0x000D78:
    [obj_monsterkidtrigger7].con = 80s
0x000D84:
    self.cantalk = 0s
0x000D90:
    if !(== self.room 141s) goto 0x000E04
0x000DA4:
    stog.msg[0s] = "* (It's a beat-up figurine&  of a female human with&  cat ears.)/%%"
    if !(< global.plot 126s) goto 0x000DE4
0x000DD0:
    push (< (scr_murderlv[]:int32 ) 12s)
    goto 0x000DE8
0x000DE4:
    push 0s
0x000DE8:
    if !pop goto 0x000E04
0x000DEC:
    stog.msg[0s] = "* (It's too dark to see&  near the walls.)/%%"
0x000E04:
    if !(== self.room 142s) goto 0x000E30
0x000E18:
    stog.msg[0s] = "* (Scientific books.^1)&* (They seem very dusty.)/%%"
0x000E30:
    if !(== self.room 154s) goto 0x001014
0x000E44:
    stog.msg[0s] = "* (It's a fridge.^1)&* (It's strangely warm.)/%%"
    if !(< global.plot 134s) goto 0x000E88
0x000E70:
    stog.msg[0s] = "* (It's too dark to see&  near the walls.)/%%"
0x000E88:
    if !(bool (instance_exists[]:int32 (var 1173s))) goto 0x000EDC
0x000EA0:
    global.typer = 27s
    stog.msg[0s] = "* MILK^1? EGGS^1? IN THE FRIDGE?/"
    stog.msg[1s] = "* NO WAY^1, DARLING^1!&* THEY'D GET COLD!!!/%%"
0x000EDC:
    if !(== global.plot 134s) goto 0x001014
0x000EF0:
    call (snd_play[]:int32 (var 104s))
    global.typer = 5s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* Um^1, is it really&  a good idea to be&  getting a snack?/"
    stog.msg[3s] = "\\E8* Well^1, I guess I&  really shouldn't&  judge you.../"
    stog.msg[4s] = "\\E0* After all^1, I'm the&  one eating potato&  chips in my PJs!/"
    stog.msg[5s] = "\\E5* Uhhh^1, I mean..^1.&* H-hey^1, go over to&  the right!/%%"
    if !(> self.specialread 0s) goto 0x000FFC
0x000FB4:
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* H-hey^1!&* Head over to the&  right!/%%"
0x000FFC:
    self.specialread = (+ self.specialread 1s)
0x001014:
    if !(== self.room 118s) goto 0x001138
0x001028:
    global.typer = 37s
    global.facechoice = 5s
    global.faceemotion = 4s
    global.msc = 0s
    if !(> self.x 180s) goto 0x0010E4
0x00106C:
    stog.msg[0s] = "* I hate cold food./"
    stog.msg[1s] = "\\E0* So Alphys fixed up&  my fridge so it&  heats up food instead!/"
    stog.msg[2s] = "\\E6* Hot Fridge..^1.&* The world's greatest&  invention!/%%"
    if !(> self.read 0s) goto 0x0010E0
0x0010C8:
    stog.msg[0s] = "\\E6* Hot Fridge..^1.&* The world's greatest&  invention!/%%"
0x0010E0:
    goto 0x001138
0x0010E4:
    global.faceemotion = 0s
    stog.msg[0s] = "* This oven is some&  top-of-the-line&  MTT thing./"
    stog.msg[1s] = "\\E4* But^1, y'know^1, as much&  as technology&  advances.../"
    stog.msg[2s] = "\\E0* Nothing beats food&  home-cooked with&  fire magic./%%"
0x001138:
    if !(== self.room 170s) goto 0x00117C
0x00114C:
    stog.msg[0s] = "* (It looks like some sort of&  powerful bracelet...)/"
    stog.msg[1s] = "* (Wait.^1)&* (It's just a croissant...)/%%"
0x00117C:
    if !(== self.room 182s) goto 0x0011A8
0x001190:
    stog.msg[0s] = "* (It's just a regular wall.)/%%"
0x0011A8:
    if !(== self.room 196s) goto 0x0011D4
0x0011BC:
    stog.msg[0s] = "* (East...)&* (The End.)/%%"
0x0011D4:
    if !(== self.room 198s) goto 0x001200
0x0011E8:
    stog.msg[0s] = "* (Solve this puzzle,&  and The End will open.)/%%"
0x001200:
    if !(== self.room 200s) goto 0x00122C
0x001214:
    stog.msg[0s] = "* (Traverse the northern&  room^1, and The End will&  open.)/%%"
0x00122C:
    if !(== self.room 202s) goto 0x001270
0x001240:
    stog.msg[0s] = "* (I cannot fight.)&* (I cannot think.)/"
    stog.msg[1s] = "* (But^1, with patience^1,&  I will make my way&  through.)/%%"
0x001270:
    if !(== self.room 204s) goto 0x00129C
0x001284:
    stog.msg[0s] = "* (Get lost...)&* (And stay that way.)/%%"
0x00129C:
    if !(== self.room 206s) goto 0x0012C8
0x0012B0:
    stog.msg[0s] = "* (Why not relax and have&  a nice snack?)/%%"
0x0012C8:
    if !(== self.room 207s) goto 0x0012F4
0x0012DC:
    stog.msg[0s] = "* (Get lost...)&* (And stay that way.)/%%"
0x0012F4:
    if !(== self.room 211s) goto 0x001354
0x001308:
    stog.msg[0s] = "* (It's completely trashed.^1)&* (There's no way it could&  ever be repaired.)/%%"
    push -5s
    if !(== 425s:flag 0s) goto 0x001354
0x00133C:
    stog.msg[0s] = "* (It's out of batteries.)/%%"
0x001354:
    if !(== self.room 245s) goto 0x0013FC
0x001368:
    stog.msg[0s] = "* ENTRY NUMBER 1/"
    stog.msg[1s] = "* This is it..^1.&* Time to do what the King&  has asked me to do./"
    stog.msg[2s] = "* I will create the power to&  free us all./"
    stog.msg[3s] = "* I will unleash the power of&  the SOUL./%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x0013FC
0x0013E4:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x0013FC:
    if !(== self.room 246s) goto 0x00145C
0x001410:
    stog.msg[0s] = "* POWER ROOM/%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x00145C
0x001444:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x00145C:
    if !(== self.room 247s) goto 0x00154C
0x001470:
    stog.msg[0s] = "* ENTRY NUMBER 6/"
    stog.msg[1s] = "* ASGORE asked everyone&  outside the city for monsters&  that had \"fallen down.\"/"
    stog.msg[2s] = "* Their bodies came in today./"
    stog.msg[3s] = "* They're still comatose..^1.&* And soon^1, they'll all&  turn into dust./"
    stog.msg[4s] = "* But what happens if I&  inject \"determination\" into&  them?/"
    stog.msg[5s] = "* If their SOULS persist&  after they perish^1, then.../"
    stog.msg[6s] = "* Freedom might be closer&  than we all thought./%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x00154C
0x001534:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x00154C:
    if !(== self.room 248s) goto 0x001624
0x001560:
    stog.msg[0s] = "* ENTRY NUMBER 9/"
    stog.msg[1s] = "* things aren't going well./"
    stog.msg[2s] = "* none of the bodies have&  turned into dust^1, so I&  can't get the SOULs./"
    stog.msg[3s] = "* i told the families that&  i would give them the&  dust back for the funerals./"
    stog.msg[4s] = "* people are starting to&  ask me what's happening./"
    stog.msg[5s] = "* what do i do?/%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x001624
0x00160C:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x001624:
    if !(== self.room 250s) goto 0x0016CC
0x001638:
    stog.msg[0s] = "* ENTRY NUMBER 12/"
    stog.msg[1s] = "* nothing is happening^1.&* i don't know what to do./"
    stog.msg[2s] = "* i'll just keep injecting&  everything with& \"determination.\"/"
    stog.msg[3s] = "* i want this to work./%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x0016CC
0x0016B4:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x0016CC:
    if !(== self.room 251s) goto 0x00178C
0x0016E0:
    stog.msg[0s] = "* ENTRY NUMBER 14/"
    stog.msg[1s] = "* Everyone that had fallen&  down.../"
    stog.msg[2s] = "* ... has woken up./"
    stog.msg[3s] = "* They're all walking around&  and talking like nothing&  is wrong./"
    stog.msg[4s] = "* I thought they were&  goners...?/%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x00178C
0x001774:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x00178C:
    if !(== self.room 252s) goto 0x001864
0x0017A0:
    stog.msg[0s] = "* ENTRY NUMBER 7/"
    stog.msg[1s] = "* We'll need a vessel to&  wield the monster SOULs&  when the time comes./"
    stog.msg[2s] = "* After all^1, a monster&  cannot absorb the SOULs&  of other monsters./"
    stog.msg[3s] = "* Just as a human cannot&  absorb a human SOUL.../"
    stog.msg[4s] = "* So then.../"
    stog.msg[5s] = "* What about something that's&  neither human nor monster?/%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x001864
0x00184C:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x001864:
    if !(== self.room 254s) goto 0x00193C
0x001878:
    stog.msg[0s] = "* ENTRY NUMBER 15/"
    stog.msg[1s] = "* Seems like this research&  was a dead end.../"
    stog.msg[2s] = "* But at least we got a&  happy ending out of it...?/"
    stog.msg[3s] = "* I sent the SOULS back to&  ASGORE^1, returned the&  vessel to his garden..../"
    stog.msg[4s] = "* And I called all of the&  families and told them&  everyone's alive./"
    stog.msg[5s] = "* I'll send everyone back&  tomorrow. :) /%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x00193C
0x001924:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x00193C:
    if !(== self.room 256s) goto 0x0019E4
0x001950:
    stog.msg[0s] = "* ENTRY NUMBER 17/"
    stog.msg[1s] = "* monsters' physical forms&  can't handle \"determination\"&  like humans' can./"
    stog.msg[2s] = "* with too much determination^1,&  our bodies begin to break&  down./"
    stog.msg[3s] = "* everyone's melted together.../%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x0019E4
0x0019CC:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x0019E4:
    if !(== self.room 256s) goto 0x001A44
0x0019F8:
    stog.msg[0s] = "* DT EXTRACTION MACHINE&* STATUS: INACTIVE/%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x001A44
0x001A2C:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x001A44:
    if !(== self.room 257s) goto 0x001B04
0x001A58:
    stog.msg[0s] = "* ENTRY NUMBER 4/"
    stog.msg[1s] = "* I've been researching humans&  to see if I can find any&  info about their SOULS./"
    stog.msg[2s] = "* I ended up snooping around&  the castle...&* And found these weird tapes./"
    stog.msg[3s] = "* I don't feel like ASGORE's&  watched them.../"
    stog.msg[4s] = "* I don't think he should./%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x001B04
0x001AEC:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x001B04:
    if !(== self.room 260s) goto 0x001B24
0x001B18:
    global.msc = 780s
0x001B24:
    if !(== self.room 258s) goto 0x001C00
0x001B38:
    stog.msg[0s] = "* ENTRY NUMBER 19/"
    stog.msg[1s] = "* the families keep calling&  me to ask when everyone&  is coming home./"
    stog.msg[2s] = "* what am i supposed to say?/"
    stog.msg[3s] = "* i don't even answer the&  phone anymore./%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x001BCC
0x001BB4:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x001BCC:
    push -5s
    if !(== 490s:flag 0s) goto 0x001C00
0x001BE8:
    stog.msg[0s] = "* (It's too dark to see near&  the walls.)/%%"
0x001C00:
    if !(== self.room 262s) goto 0x001D20
0x001C14:
    stog.msg[0s] = "* (Seems to be turned off.)/%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x001D20
0x001C48:
    stog.msg[0s] = "* ENTRY NUMBER 8/"
    stog.msg[1s] = "* I've chosen a candidate./"
    stog.msg[2s] = "* I haven't told ASGORE yet^1,&  because I want to surprise&  him with it.../"
    stog.msg[3s] = "* In the center of his&  garden^1, there's something&  special./"
    stog.msg[4s] = "* The first golden flower^1,&  that grew before all the&  others./"
    stog.msg[5s] = "* The flower from the outside&  world./"
    stog.msg[6s] = "* It appeared just before&  the queen left./"
    stog.msg[7s] = "* I wonder.../"
    stog.msg[8s] = "* What happens when something&  without a SOUL gains&  the will to live?/%%"
0x001D20:
    if !(== self.room 243s) goto 0x001D4C
0x001D34:
    stog.msg[0s] = "* (None of the buttons work.^1)&* (It seems to have lost power.)/%%"
0x001D4C:
    if !(== self.room 216s) goto 0x001D78
0x001D60:
    stog.msg[0s] = "* (The door is jammed shut&  with vines.)/%%"
0x001D78:
    if !(== self.room 261s) goto 0x001DA4
0x001D8C:
    stog.msg[0s] = "* (Seems like another elevator&  has lost its power.)/%%"
0x001DA4:
    if !(== self.room 73s) goto 0x001DD0
0x001DB8:
    stog.msg[0s] = "* (The jukebox is broken.)/%%"
0x001DD0:
    if !(== self.room 119s) goto 0x001DFC
0x001DE4:
    stog.msg[0s] = "* (It's locked.)/%%"
0x001DFC:
    if !(== self.room 78s) goto 0x001E28
0x001E10:
    stog.msg[0s] = "* (It's a worn mattress.^1)&* (The sheets are bunched up in a&  weird^1, creasy ball.)/%%"
0x001E28:
    if !(== self.room 80s) goto 0x001F94
0x001E3C:
    stog.msg[0s] = "* (There's a photo album inside&  the drawer.)/"
    stog.msg[1s] = "* (There are photos of Sans with&  a lot of people you don't&  recognize.)/"
    stog.msg[2s] = "* (He looks happy.)/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x001F00
0x001EA0:
    stog.msg[0s] = "* (There's a photo album inside&  the drawer.)/"
    stog.msg[1s] = "* (There are photos of Sans with&  a lot of people you don't&  recognize.)/"
    stog.msg[2s] = "* (... and^1, one photo of you&  standing with Sans and all&  your friends.)/"
    stog.msg[3s] = "* (He looks happy.)/%%"
0x001F00:
    push -5s
    if !(== 279s:flag 1s) goto 0x001F94
0x001F1C:
    stog.msg[0s] = "* (There's a photo album inside&  the drawer.)/"
    stog.msg[1s] = "* (There are photos of..^1. Huh?)/"
    stog.msg[2s] = "* (A card is sticking out from&  the back flap of the binder.)/"
    stog.msg[3s] = "* (It's a poorly drawn picture&  of three smiling people.^1)&* (Written on it...)/"
    stog.msg[4s] = "* \"don't forget.\"/%%"
0x001F94:
    if !(== self.room 178s) goto 0x001FF0
0x001FA8:
    stog.msg[0s] = "* (It's a poster for Mettaton's&  latest stage performance.)/"
    stog.msg[1s] = "* (A tragic tale of two star-&  crossed lovers^1, kept apart&  by the tides of fate...)/"
    stog.msg[2s] = "* (Looks like it's almost time&  for the performance.)/%%"
0x001FF0:
    if !(== self.room 185s) goto 0x00201C
0x002004:
    stog.msg[0s] = "* (It's locked from the inside.)/%%"
0x00201C:
    if !(== self.room 183s) goto 0x002060
0x002030:
    stog.msg[0s] = "* (There's an inscription on&  this fountain.)/"
    stog.msg[1s] = "* Royal Memorial Fountain&* Built 201X&* (Mettaton Added Last Week)/%%"
0x002060:
    if !(== self.room 184s) goto 0x0020BC
0x002074:
    stog.msg[0s] = "* (It's a Wall of Fame full of&  quotes and photos from visiting&  celebrities.)/"
    stog.msg[1s] = "* \"The food is to die for!^1\"&* \"Gorgeous style and fragrance!^1\"&* \"My face tastes beautiful!\"/"
    stog.msg[2s] = "* (... these are all Mettaton.)/%%"
0x0020BC:
    if !(== self.room 186s) goto 0x002100
0x0020D0:
    stog.msg[0s] = "* (It's a lamp.^1)&* (There's no lightswitch.)/"
    stog.msg[1s] = "* (It says that stars make&  their own light...)/%%"
0x002100:
    if !(== self.room 128s) goto 0x00212C
0x002114:
    stog.msg[0s] = "* (Rich history of Tem.)/%%"
0x00212C:
    self.read = (+ self.read 1s)
    if !(== self.cantalk 1s) goto 0x002180
0x002158:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x002180:
    exit
