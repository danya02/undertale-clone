0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Yo^1!&* You're a kid too^1, right?/"
    stog.msg[1s] = "* I can tell 'cause you're&  wearing a striped shirt./%%"
    if !(> self.talkedto 0s) goto 0x000098
0x000080:
    stog.msg[0s] = "* I wonder if that weird skeleton&  is an adult or a kid./%%"
0x000098:
    push -5s
    if !(== 7s:flag 1s) goto 0x0002AC
0x0000B4:
    push -5s
    if !(== 98s:flag 0s) goto 0x00015C
0x0000D0:
    stog.msg[0s] = "* Yo..^1.&* There you are!/"
    stog.msg[1s] = "* I've been kinda worried&  about you since you&  ran away./"
    stog.msg[2s] = "* ... but now I'm just kinda&  mad^1, ha ha./"
    stog.msg[3s] = "* If Undyne hadn't saved me^1,&  that woulda been bad.../%%"
    if !(> self.talkedto 0s) goto 0x00015C
0x000144:
    stog.msg[0s] = "* .../%%"
0x00015C:
    push -5s
    if !(== 98s:flag 2s) goto 0x0001D4
0x000178:
    stog.msg[0s] = "* Yo..^1.&* Uh.../"
    stog.msg[1s] = "* Don't talk to me./%%"
    if !(> self.talkedto 0s) goto 0x0001D4
0x0001BC:
    stog.msg[0s] = "* .../%%"
0x0001D4:
    push -5s
    if !(== 98s:flag 1s) goto 0x0002AC
0x0001F0:
    stog.msg[0s] = "* Yo!!^1!&* What's up!?/"
    stog.msg[1s] = "* I've been kinda^1, doing&  some thinking.../"
    stog.msg[2s] = "* Maybe Undyne...&* Isn't actually as cool as&  we thought./"
    stog.msg[3s] = "* She's just kinda..^1. mean./"
    stog.msg[4s] = "* But YO!!^1!&* I just found out about&  someone WAYYY cooler!!!/"
    stog.msg[5s] = "* Nyeh heh heh!!!/%%"
    if !(> self.talkedto 0s) goto 0x0002AC
0x000294:
    stog.msg[0s] = "* Nyeh heh heh^1, dude./%%"
0x0002AC:
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x000308
0x0002C0:
    stog.msg[0s] = "* Yo^1, everyone ran away and&  hid somewhere./"
    stog.msg[1s] = "* Man^1, adults can be so&  dumb sometimes^1, haha.../"
    stog.msg[2s] = "* Don't they know we've&  got Undyne to protect us!?/%%"
0x000308:
    if !(== self.room 83s) goto 0x000468
0x00031C:
    stog.msg[0s] = "* Yo^1!&* Are you sneaking out to&  see her^1, too?/"
    stog.msg[1s] = "* Awesome..^1.&* She's the coolest^1, right!?/"
    stog.msg[2s] = "* I wanna be just like her&  when I grow up.../"
    stog.msg[3s] = "* Hey^1, don't tell my parents&  I'm here^1.&* Ha ha./%%"
    if !(> self.talkedto 0s) goto 0x0003A8
0x000390:
    stog.msg[0s] = "* OK^1, I'm ready when you&  are./%%"
0x0003A8:
    if !(> self.talkedto 0s) goto 0x0003D0
0x0003BC:
    push (== self.con 2s)
    goto 0x0003D4
0x0003D0:
    push 0s
0x0003D4:
    if !pop goto 0x000408
0x0003D8:
    stog.msg[0s] = "* Yo^1!&* Where were you going...?/"
    stog.msg[1s] = "* My parents didn't tell you&  to come here^1, did they?/%%"
0x000408:
    if !(== self.con 1s) goto 0x000430
0x00041C:
    push (> self.talkedto 0s)
    goto 0x000434
0x000430:
    push 0s
0x000434:
    if !pop goto 0x000468
0x000438:
    stog.msg[0s] = "* You know where you're&  going^1, right...?/"
    stog.msg[1s] = "* I was just gonna follow&  you..^1.&* Ha ha./%%"
0x000468:
    if !(== self.room 109s) goto 0x0005B4
0x00047C:
    if !(== self.talkedto 0s) goto 0x0004CC
0x000490:
    stog.msg[0s] = "* Yo^1, this ledge is way&  too steep.../%%"
    if !(bool (instance_exists[]:int32 (var 1125s))) goto 0x0004CC
0x0004C0:
    [obj_monsterkidtrigger6].con = 4s
0x0004CC:
    if !(> self.talkedto 0s) goto 0x0004F8
0x0004E0:
    stog.msg[0s] = "* Hmmm..../%%"
0x0004F8:
    if !(== global.plot 112s) goto 0x0005B4
0x00050C:
    push -5s
    if !(== 85s:flag 0s) goto 0x000558
0x000528:
    self.myinteract = 0s
    if !(bool (instance_exists[]:int32 (var 1125s))) goto 0x000558
0x00054C:
    [obj_monsterkidtrigger6].con = 10s
0x000558:
    push -5s
    if !(== 85s:flag 1s) goto 0x0005B4
0x000574:
    stog.msg[0s] = "* Yo^1, you aren't going to&  be able to climb with&  an umbrella./%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0005B4:
    if !(!= global.plot 112s) goto 0x0005F0
0x0005C8:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0005F0:
    self.talkedto = (+ self.talkedto 1s)
0x000608:
    exit
