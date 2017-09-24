0x000000:
    self.myinteract = 3s
    global.msc = 0s
    stog.msg[0s] = "* Do not worry about&  me./"
    stog.msg[1s] = "* Someone has to take&  care of these flowers./%%"
    global.typer = 4s
    global.facechoice = 1s
    global.faceemotion = 0s
    push -5s
    if !(== 7s:flag 1s) goto 0x000A20
0x000088:
    global.typer = 89s
    global.facechoice = 9s
    stog.msg[0s] = "* Don't worry about&  me./"
    stog.msg[1s] = "* Someone has to take&  care of these flowers./%%"
    global.faceemotion = 0s
    push -5s
    if !(== 511s:flag 1s) goto 0x000134
0x0000F8:
    stog.msg[0s] = "* Frisk^1, please leave&  me alone./"
    stog.msg[1s] = "\\E3* I can't come back^1.&* I just can't^1, OK?/%%"
    global.faceemotion = 7s
0x000134:
    push -5s
    if !(== 511s:flag 2s) goto 0x00018C
0x000150:
    stog.msg[0s] = "\\E7* I don't want to break&  their hearts all over&  again./"
    stog.msg[1s] = "* It's better if they&  never see me./%%"
    global.faceemotion = 7s
0x00018C:
    push -5s
    if !(== 511s:flag 3s) goto 0x00034C
0x0001A8:
    stog.msg[0s] = "\\E7* ... why are you still&  here?/"
    stog.msg[1s] = "* Are you trying to keep&  me company?/"
    stog.msg[2s] = "\\E0* Frisk.../"
    stog.msg[3s] = "* .../"
    stog.msg[4s] = "\\E7* Hey./"
    stog.msg[5s] = "\\E0* Let me ask you a&  question./"
    stog.msg[6s] = "* Frisk..^1.&* Why did you come&  here?/"
    stog.msg[7s] = "* Everyone knows the&  legend^1, right...?/"
    stog.msg[8s] = "* \"Travellers who climb&  Mt. Ebott are said&  to disappear.\"/"
    stog.msg[9s] = "\\E7* .../"
    stog.msg[10s] = "* Frisk./"
    stog.msg[11s] = "*\\E0 Why would you ever&  climb a mountain&  like that?/"
    stog.msg[12s] = "\\E7* Was it foolishness?/"
    stog.msg[13s] = "\\E0* Was it fate?/"
    stog.msg[14s] = "\\E1* Or was it..^1.&* Because you...?/"
    stog.msg[15s] = "\\E7* Well./"
    stog.msg[16s] = "\\E0* Only you know the&  answer^1, don't you...?/%%"
    global.faceemotion = 7s
0x00034C:
    push -5s
    if !(== 511s:flag 4s) goto 0x000434
0x000368:
    stog.msg[0s] = (+ (+ "\\E2* I know why " global.charname) "&  climbed the mountain./")
    stog.msg[1s] = "\\E7* It wasn't for a&  very happy reason./"
    stog.msg[2s] = "\\E2* Frisk^1.&* I'll be honest with&  you./"
    stog.msg[3s] = (+ (+ "\\E7 * " global.charname) " hated humanity./")
    stog.msg[4s] = "\\E2* Why they did^1, they&  never talked about&  it./"
    stog.msg[5s] = "\\E1* But they felt very&  strongly about&  that./%%"
    global.faceemotion = 2s
0x000434:
    push -5s
    if !(== 511s:flag 5s) goto 0x000564
0x000450:
    stog.msg[0s] = (+ (+ "\\E2* Frisk..^1.&* You really ARE different&  from " global.charname) "./")
    stog.msg[1s] = "\\E0* In fact^1, though you&  have similar^1, uh^1,&  fashion choices.../"
    stog.msg[2s] = "* I don't know why I&  ever acted like you&  were the same person./"
    stog.msg[3s] = "\\E7* Maybe..^1.&* The truth is.../"
    stog.msg[4s] = (+ (+ "\\E1* " global.charname) " wasn't really&  the greatest person./")
    stog.msg[5s] = "\\E7* While^1, Frisk.../"
    stog.msg[6s] = "\\E0* You're the type of&  friend I wish I&  always had./"
    stog.msg[7s] = "\\E7* So maybe I was kind&  of projecting a&  little bit./"
    stog.msg[8s] = "\\E0* Let's be honest^1.&* I did some weird&  stuff as a flower./%%"
    global.faceemotion = 2s
0x000564:
    push -5s
    if !(== 511s:flag 6s) goto 0x0007FC
0x000580:
    stog.msg[0s] = "\\E2* There's one last&  thing I feel like&  I should tell you./"
    stog.msg[1s] = (+ (+ "* Frisk^1, when " global.charname) "&  and I combined our&  SOULs together.../")
    stog.msg[2s] = "* The control over our&  body was actually split&  between us./"
    stog.msg[3s] = "* They were the one&  that picked up their&  own empty body./"
    stog.msg[4s] = "* And then^1, when we&  got to the village.../"
    stog.msg[5s] = "\\E2* They were the one&  that wanted to.../"
    stog.msg[6s] = "\\E1* ... to use our full&  power./"
    stog.msg[7s] = "\\E2* I was the one that&  resisted./"
    stog.msg[8s] = "\\E7* And then^1, because of&  me^1, we.../"
    stog.msg[9s] = "\\E1* Well^1, that's why I&  ended up a flower./"
    stog.msg[10s] = "\\E2* Frisk.../"
    stog.msg[11s] = "* This whole time^1, I've&  blamed myself for&  that decision./"
    stog.msg[12s] = "* That's why I adopted&  that horrible view&  of the world./"
    stog.msg[13s] = "* \"Kill or be killed.\"/"
    stog.msg[14s] = "\\E7* But now..^1.&* After meeting you.../"
    stog.msg[15s] = "\\E0* Frisk^1, I don't regret&  that decision anymore./"
    stog.msg[16s] = "\\E4* I did the right&  thing./"
    stog.msg[17s] = "* If I killed those&  humans.../"
    stog.msg[18s] = "* We would have had to&  wage war against all&  of humanity./"
    stog.msg[19s] = "\\E0* And in the end^1,&  everyone went free^1,&  right?/"
    stog.msg[20s] = "\\E7* I still feel kind&  of sad knowing how&  long it took.../"
    stog.msg[21s] = "\\E0* ... so maybe it&  wasn't a perfect&  decision./"
    stog.msg[22s] = "* But you can't regret&  hard choices your&  whole life^1, right?/"
    stog.msg[23s] = "\\E7* Well^1, not that I&  have much of a life&  left./"
    stog.msg[24s] = "\\E0* But that's besides&  the point./%%"
    global.faceemotion = 2s
0x0007FC:
    push -5s
    if !(== 511s:flag 7s) goto 0x0009A4
0x000818:
    stog.msg[0s] = "* Frisk^1, thank you&  for listening to me./"
    stog.msg[1s] = "* You should really go&  be with your friends&  now^1, OK?/"
    stog.msg[2s] = "* Oh^1, and^1, please.../"
    stog.msg[3s] = "\\E7* In the future^1, if you&  uh^1, see me.../"
    stog.msg[4s] = "* Don't think of it as&  me^1, OK?/"
    stog.msg[5s] = "\\E0* I just want you to&  remember me like this./"
    stog.msg[6s] = "\\E0* Someone that was your&  friend for a little&  while./"
    stog.msg[7s] = "\\E2* Oh^1, and Frisk.../"
    stog.msg[8s] = "\\E0* Be careful in the&  outside world^1, OK?/"
    stog.msg[9s] = "* Despite what everyone&  thinks^1, it's not as&  nice as it is here./"
    stog.msg[10s] = "\\E7* There are a lot of&  Floweys out there./"
    stog.msg[11s] = "\\E2* And not everything can&  be resolved by just&  being nice./"
    stog.msg[12s] = "\\E0* Frisk.../"
    stog.msg[13s] = "* Don't kill^1, and&  don't be killed^1,&  alright?/"
    stog.msg[14s] = "* That's the best you&  can strive for./"
    stog.msg[15s] = "* Well^1, see you./%%"
    global.faceemotion = 0s
0x0009A4:
    push -5s
    if !(>= 511s:flag 8s) goto 0x0009FC
0x0009C0:
    stog.msg[0s] = "\\E7* Frisk.../"
    stog.msg[1s] = "\\E6* Don't you have&  anything better to&  do?/%%"
    global.faceemotion = 0s
0x0009FC:
    push -5s
    stog.flag[(+ 511s:flag 1s)] = 511s
0x000A20:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000A60:
    exit
