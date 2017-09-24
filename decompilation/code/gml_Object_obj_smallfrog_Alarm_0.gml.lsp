0x000000:
    self.myinteract = 3s
    global.msc = 0s
    stog.msg[0s] = "* Ribbit^1, ribbit^1.&* (Excuse me^1, human.)/"
    stog.msg[1s] = "* (I have some advice&  for you about battling&  monsters.)/"
    stog.msg[2s] = "\\W* (If you \\YACT\\W a certain way&  or \\YFIGHT\\W until you&  almost defeat them...)/"
    stog.msg[3s] = "* (They might not want to&  battle you anymore.)/"
    stog.msg[4s] = "* (If a monster does not&  want to fight you^1, please...)/"
    stog.msg[5s] = "\\W* (Use some \\YMERCY^1,\\W human.^1)&* Ribbit./%%"
    push -5s
    if !(== 6s:flag 1s) goto 0x00013C
0x0000C4:
    stog.msg[0s] = "* Ribbit^1, ribbit^1.&* (Excuse me^1, human.)/"
    stog.msg[1s] = "* (I have some advice&  for you about battling&  monsters.)/"
    stog.msg[2s] = "* (The monsters in this world&  are very dangerous and&  aggressive.)/"
    stog.msg[3s] = "* (In this place^1, running away&  will not work on the&  first turn.)/"
    stog.msg[4s] = "* (It may be better to try&  another option.^1)&* Ribbit./%%"
0x00013C:
    push -5s
    if !(== 7s:flag 1s) goto 0x0001B8
0x000158:
    stog.msg[0s] = "* Ribbit^1, ribbit^1.&* (Excuse me^1, human.)/"
    stog.msg[1s] = "* (You seem like you have&  grown into a thoughtful and&  conscientious person.)/"
    stog.msg[2s] = "* (Whether that was from my&  advice or not...^1)&* (I'm quite proud.)/"
    stog.msg[3s] = "* Ribbit./%%"
0x0001B8:
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if !(== self.room 29s) goto 0x000378
0x0001F0:
    stog.msg[0s] = "* Ribbit^1, ribbit^1.&* (Just between you and me...)/"
    stog.msg[1s] = "\\W* (I saw \\BTORIEL\\W come out of&  here just a little&  while ago.)/"
    stog.msg[2s] = "* (She was carrying some&  groceries.)/"
    stog.msg[3s] = "* (I didn't ask what they&  were for...)/"
    stog.msg[4s] = "* (We're all too intimidated&  to talk to her.^1)&* Ribbit./%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0002E4
0x000284:
    stog.msg[0s] = "* Ribbit^1, ribbit^1.&* (Seems like the RUINS have&  finally opened up.)/"
    stog.msg[1s] = "* (Maybe we should finally&  go out to the rest of&  the underground.)/"
    stog.msg[2s] = "* (Huh^1? The barrier's open^1,&  too...?)/"
    stog.msg[3s] = "* (... let's just take this&  one step at a time^1, OK?)/%%"
0x0002E4:
    push -5s
    if !(== 6s:flag 1s) goto 0x000378
0x000300:
    stog.msg[0s] = "* Ribbit^1, ribbit^1.&* (Just between you and me...)/"
    stog.msg[1s] = "\\W* (I saw \\BTORIEL\\W come out of&  here just a little&  while ago.)/"
    stog.msg[2s] = "* (Normally^1, she carries&  groceries out of here.)/"
    stog.msg[3s] = "* (But this time^1, she wasn't&  carrying anything.)/"
    stog.msg[4s] = "* (She looked disappointed.^1)&* Ribbit./%%"
0x000378:
    if !(== self.room 21s) goto 0x0003B4
0x00038C:
    if !(> self.x 300s) goto 0x0003B4
0x0003A0:
    push (< self.x 400s)
    goto 0x0003B8
0x0003B4:
    push 0s
0x0003B8:
    if !pop goto 0x00045C
0x0003BC:
    global.msc = 0s
    stog.msg[0s] = "* Ribbit ribbit^1.&* (I heard using \"F4\" can make&  you have a \"full screen.\")/"
    stog.msg[1s] = "* (But what does \"F4\" stand for?^1)&* (\"Four frogs\"?)/"
    stog.msg[2s] = "* (I have only seen a maximum of&  three frogs in this room...)/"
    stog.msg[3s] = "* (This is troubling^1, to say&  the least.^1)&* Ribbit./%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x00045C
0x000444:
    stog.msg[0s] = "* Ribbit ribbit^1.&* (Did you ever find this&  room's fourth frog?)/%%"
0x00045C:
    if !(== self.room 21s) goto 0x000484
0x000470:
    push (> self.x 400s)
    goto 0x000488
0x000484:
    push 0s
0x000488:
    if !pop goto 0x000610
0x00048C:
    push -5s
    if !(== 22s:flag 0s) goto 0x0004B4
0x0004A8:
    global.msc = 748s
0x0004B4:
    push -5s
    if !(== 22s:flag 1s) goto 0x0004DC
0x0004D0:
    global.msc = 751s
0x0004DC:
    push -5s
    if !(== 22s:flag 2s) goto 0x000504
0x0004F8:
    global.msc = 753s
0x000504:
    push -5s
    if !(== 7s:flag 1s) goto 0x000610
0x000520:
    global.msc = 0s
    push -5s
    if !(== 22s:flag 0s) goto 0x000578
0x000548:
    stog.msg[0s] = "* Ribbit ribbit^1.&* (Yellow names were nice for&  a while.)/"
    stog.msg[1s] = "* (Next time^1, we should try a&  relaxing shade of green.)/%%"
0x000578:
    push -5s
    if !(== 22s:flag 1s) goto 0x0005C4
0x000594:
    stog.msg[0s] = "* Ribbit ribbit^1.&* (How was your adventure?)/"
    stog.msg[1s] = "* (It must have been difficult&  without being able to tell&  the enemy's feelings.)/%%"
0x0005C4:
    push -5s
    if !(== 22s:flag 2s) goto 0x000610
0x0005E0:
    stog.msg[0s] = "* Ribbit ribbit^1.&* (Finally^1, we can all remove&  these aging pink names.)/"
    stog.msg[1s] = "* (Everyone gave you a big favor&  today.^1)&* (Try to respect that!)/%%"
0x000610:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000660
0x00062C:
    global.interact = 1s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000660:
    exit
