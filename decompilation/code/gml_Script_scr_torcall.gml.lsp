0x000000:
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    push -5s
    if !(== 286s:flag 0s) goto 0x000148
0x000040:
    stog.msg[0s] = "* (Noticed you received a&  text from Toriel.)/"
    stog.msg[1s] = "* Dear Frisk,/"
    stog.msg[2s] = "* Sans and Alphys are teaching&  me how to text^1.&* I am learning so much./"
    stog.msg[3s] = "* For example:&* Do you know what a&  \"smiley\" is?/"
    stog.msg[4s] = "* Please look at this:/"
    stog.msg[5s] = "  ]: )/"
    stog.msg[6s] = "* Now turn your head to the&  left./"
    stog.msg[7s] = "* It is a picture of me&  smiling at you^1!&* Can you see it?/"
    stog.msg[8s] = "* L-O-L^1!&* (That stands for Lots of&  Laughter.)/"
    stog.msg[9s] = "* Sincerely^1, Toriel/"
    stog.msg[10s] = "* (That's all for now.^1)&* (Maybe in the next room^1, you&  will receive another.)/%%"
0x000148:
    push -5s
    if !(== 286s:flag 1s) goto 0x0001F4
0x000164:
    stog.msg[0s] = "* (TORIEL sent you a message.)&* Dear Frisk,/"
    stog.msg[1s] = "* How are you^1? You have been&  wandering around for&  quite some time now./"
    stog.msg[2s] = "* I hope you are not getting&  into trouble./"
    stog.msg[3s] = "* Only kidding^1.&* L-O-L!/"
    stog.msg[4s] = "* Sincerly^1, Toriel/"
    stog.msg[5s] = "* PS - Do not get into trouble./%%"
0x0001F4:
    push -5s
    if !(== 286s:flag 2s) goto 0x000270
0x000210:
    stog.msg[0s] = "* (TORIEL sent you a message.)&* Excuse me,/"
    stog.msg[1s] = "* I did not mean to write&  \"sincerly.\"&* I meant to say \"sincerely.\"/"
    stog.msg[2s] = "* It is difficult to use this&  with large hands./"
    stog.msg[3s] = "* Perhaps I should ask Sans&  to transcribe for me./%%"
0x000270:
    push -5s
    if !(== 286s:flag 3s) goto 0x0002A4
0x00028C:
    stog.msg[0s] = "* (TORIEL sent you a message.^1)&* Sans will be typing from&  now on./%%"
0x0002A4:
    push -5s
    if !(== 286s:flag 4s) goto 0x000320
0x0002C0:
    stog.msg[0s] = "* (TORIEL sent you a message.)/"
    stog.msg[1s] = "* hey frisk^1.&* it's torrrrrieellll/"
    stog.msg[2s] = "* i just baked 1000000 pies.&* do you want any?/"
    stog.msg[3s] = "* make sure to brush your&  teeth before crossing&  the street^1, frisk/%%"
0x000320:
    push -5s
    if !(== 286s:flag 5s) goto 0x00036C
0x00033C:
    stog.msg[0s] = "* (TORIEL sent you a message.)/"
    stog.msg[1s] = "* I did not say any of that./%%"
0x00036C:
    push -5s
    if !(== 286s:flag 6s) goto 0x0003D0
0x000388:
    stog.msg[0s] = "* (TORIEL sent you a message.)/"
    stog.msg[1s] = "* Greetings^1.&* This is Sans^1.&* I love my brother very much./"
    stog.msg[2s] = "* help im being slandered/%%"
0x0003D0:
    push -5s
    if !(== 286s:flag 7s) goto 0x000464
0x0003EC:
    stog.msg[0s] = "* (TORIEL sent you a message.)/"
    stog.msg[1s] = "* This is Sans^1.&* Frisk^1, did you know that I&  love to \"get owned?\"/"
    stog.msg[2s] = "* I also think Toriel is very&  good and fhfjkehfeaufsisf/"
    stog.msg[3s] = "* Excuse me/"
    stog.msg[4s] = "* ./%%"
0x000464:
    push -5s
    if !(== 286s:flag 8s) goto 0x0004C8
0x000480:
    stog.msg[0s] = "* (TORIEL sent you a message&  titled \"Cat Video.\")/"
    stog.msg[1s] = "* (Inside^1, she meticulously&  describes a video she saw&  of a small^1, white animal.)/"
    stog.msg[2s] = "* (There is no link or&  attachment to watch it.)/%%"
0x0004C8:
    push -5s
    if !(== 286s:flag 9s) goto 0x000514
0x0004E4:
    stog.msg[0s] = "* (TORIEL sent you a message.)/"
    stog.msg[1s] = "* Fwd: send this 2 some1 u&  care about... or a skeleton&  will rattle his bones at u/%%"
0x000514:
    push -5s
    if !(== 286s:flag 10s) goto 0x000578
0x000530:
    stog.msg[0s] = "* (TORIEL sent you a message.)&* Dear Frisk,/"
    stog.msg[1s] = "* Thought you might enjoy this^1.&* ]: )/"
    stog.msg[2s] = "* (It's ASCII art of a snail.)/%%"
0x000578:
    push -5s
    if !(== 286s:flag 11s) goto 0x0005F4
0x000594:
    stog.msg[0s] = "* (TORIEL sent you a message.)&* Dear Frisk,/"
    stog.msg[1s] = "* Undyne and Papyrus want to&  cook something together&  with me./"
    stog.msg[2s] = "* Sans is telling me that they&  are excellent chefs./"
    stog.msg[3s] = "* I am excited. ]: )&* Maybe if you are lucky^1, you&  can have some!/%%"
0x0005F4:
    push -5s
    if !(== 286s:flag 12s) goto 0x000670
0x000610:
    stog.msg[0s] = "* (TORIEL sent you a message.)&* Dear Frisk,/"
    stog.msg[1s] = "* If Sans and I started a&  band^1, do you know what&  we could call it?/"
    stog.msg[2s] = "* \"Dreemurr\" and \"Femur.^1\"&* L-O-L!/"
    stog.msg[3s] = "* PS - That is only a joke^1.&* Do not refer to me as&  Dreemurr./%%"
0x000670:
    push -5s
    if !(== 286s:flag 13s) goto 0x000704
0x00068C:
    stog.msg[0s] = "* (TORIEL sent you a message.)&* Dear Frisk,/"
    stog.msg[1s] = "* Undyne is very strong./"
    stog.msg[2s] = "* Papyrus made a bet with her&  that she could not lift&  everyone here up./"
    stog.msg[3s] = "* She could./"
    stog.msg[4s] = "* The only trouble is that&  she did not know how to&  put everyone down./%%"
0x000704:
    push -5s
    if !(== 286s:flag 14s) goto 0x000780
0x000720:
    stog.msg[0s] = "* (TORIEL sent you a message.)&* Dear Frisk,/"
    stog.msg[1s] = "* Alphys is telling me many&  interesting facts about&  the human world./"
    stog.msg[2s] = "* Quite a few of them are&  wrong^1, though./"
    stog.msg[3s] = "* Frisk^1, you did not tell&  her anything funny^1, did you^1?&* ]: )/%%"
0x000780:
    push -5s
    if !(== 286s:flag 15s) goto 0x0007FC
0x00079C:
    stog.msg[0s] = "* (TORIEL sent you a message.)&* Dear Frisk,/"
    stog.msg[1s] = "* I heard that using the&  computer for too long&  is bad for you./"
    stog.msg[2s] = "* However^1, I have not seen&  you use the computer at all./"
    stog.msg[3s] = "* You must be very healthy^1!&* How nice./%%"
0x0007FC:
    push -5s
    if !(== 286s:flag 16s) goto 0x0008A8
0x000818:
    stog.msg[0s] = "* (TORIEL sent you a message.)&* Dear Frisk,/"
    stog.msg[1s] = "* I think I may have to turn&  off the phone for now./"
    stog.msg[2s] = "* Your friends are all very&  lovely people!/"
    stog.msg[3s] = "* I think I will spend this&  time getting to know&  them better./"
    stog.msg[4s] = "* Be good^1, alright?/"
    stog.msg[5s] = "* Sincerely^1, Toriel./%%"
0x0008A8:
    push -5s
    if !(>= 286s:flag 17s) goto 0x0008DC
0x0008C4:
    stog.msg[0s] = "* (Toriel has not sent any&  more messages.)/%%"
0x0008DC:
    push -5s
    push 286s:flag
    if !(== -5s 287s:flag) goto 0x00091C
0x000904:
    stog.msg[0s] = "* (Toriel has not sent any&  more messages.)/%%"
0x00091C:
    push -5s
    push 286s:flag
    if !(< -5s 287s:flag) goto 0x000968
0x000944:
    push -5s
    stog.flag[(+ 286s:flag 1s)] = 286s
0x000968:
    exit
