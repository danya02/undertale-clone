0x000000:
    if !(== self.con 0s) goto 0x000034
0x000014:
    self.con = 1s
    call (snd_play[]:int32 (var 104s))
0x000034:
    if !(== self.con 1s) goto 0x0004E8
0x000048:
    global.faceemotion = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.msc = 0s
    stog.msg[0s] = "* (Ring^1, ring...)/"
    call (scr_sansface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* heya./"
    stog.msg[3s] = "\\E1* is anyone there...?/"
    stog.msg[4s] = "\\E2* well^1, i'll just leave&  a message.../%%"
    call (scr_itemcheck[]:int32 (var 16s))
    if !(== self.haveit 1s) goto 0x000138
0x00011C:
    push -5s
    push (!= 67s:flag 1s)
    goto 0x00013C
0x000138:
    push 0s
0x00013C:
    if !pop goto 0x0001A0
0x000140:
    stog.msg[3s] = "\\E1* is anyone there...?/"
    stog.msg[4s] = "\\E2* well..^1. just calling&  to say./"
    stog.msg[5s] = "\\E1* you made a snowman&  really happy./"
    stog.msg[6s] = "\\E2* ... guess i should&  say something else^1,&  too./%%"
0x0001A0:
    if !(== (file_exists[]:int32 (var "file0")) 0s) goto 0x0001DC
0x0001C0:
    push -5s
    push (!= 67s:flag 1s)
    goto 0x0001E0
0x0001DC:
    push 0s
0x0001E0:
    if !pop goto 0x000244
0x0001E4:
    stog.msg[2s] = "* heya./"
    stog.msg[4s] = "\\E2* well..^1. just calling&  to say./"
    stog.msg[5s] = "\\E1* it's been a while^1.&* shouldn't you SAVE?/"
    stog.msg[6s] = "\\E2* ... guess i should&  say something else^1,&  too./%%"
0x000244:
    if !(== global.armor 4s) goto 0x000274
0x000258:
    push -5s
    push (!= 67s:flag 1s)
    goto 0x000278
0x000274:
    push 0s
0x000278:
    if !pop goto 0x0002DC
0x00027C:
    stog.msg[3s] = "\\E1* is anyone there...?/"
    stog.msg[4s] = "\\E2* well..^1. just calling&  to ask./"
    stog.msg[5s] = "\\E1* did you ever take&  off that gross&  bandage...?/"
    stog.msg[6s] = "\\E2* ... guess i should&  say something else^1,&  too./%%"
0x0002DC:
    push -5s
    if !(== 260s:flag 0s) goto 0x000314
0x0002F8:
    push -5s
    push (!= 67s:flag 1s)
    goto 0x000318
0x000314:
    push 0s
0x000318:
    if !pop goto 0x00037C
0x00031C:
    stog.msg[3s] = "\\E1* is anyone there...?/"
    stog.msg[4s] = "\\E2* well..^1. just calling&  to ask./"
    stog.msg[5s] = "\\E1* did you ever get&  something to eat?/"
    stog.msg[6s] = "\\E2* ... guess i should&  say something else^1,&  too./%%"
0x00037C:
    push -5s
    if !(== 260s:flag 0s) goto 0x0003DC
0x000398:
    if !(== global.lv 1s) goto 0x0003DC
0x0003AC:
    if !(== global.armor 4s) goto 0x0003DC
0x0003C0:
    push -5s
    push (!= 67s:flag 1s)
    goto 0x0003E0
0x0003DC:
    push 0s
0x0003E0:
    if !pop goto 0x000474
0x0003E4:
    stog.msg[3s] = "\\E1* is anyone there...?/"
    stog.msg[4s] = "\\E2* well..^1. just calling&  to ask./"
    stog.msg[5s] = "\\E1* you really like to&  challenge yourself^1,&  huh...?/"
    stog.msg[6s] = "\\E2* well..^1. good job^1./"
    stog.msg[7s] = "\\E1* just promise not to&  brag about it^1,&  okay?/"
    stog.msg[8s] = "\\E2* ... guess i should&  say something else^1,&  too./%%"
0x000474:
    if !(== self.q 7s) goto 0x0004B8
0x000488:
    stog.msg[2s] = "* .../"
    stog.msg[3s] = "* alright^1, i've got the&  number./%%"
0x0004B8:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 2s
0x0004E8:
    if !(== self.con 2s) goto 0x000518
0x0004FC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00051C
0x000518:
    push 0s
0x00051C:
    if !pop goto 0x0006A8
0x000520:
    if !(!= self.q 3s) goto 0x000548
0x000534:
    push (!= self.q 7s)
    goto 0x00054C
0x000548:
    push 0s
0x00054C:
    if !pop goto 0x000574
0x000550:
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
0x000574:
    stog.alarm[4s] = 60s
    if !(== self.q 0s) goto 0x0005A8
0x00059C:
    self.con = 3s
0x0005A8:
    if !(== self.q 1s) goto 0x0005C8
0x0005BC:
    self.con = 20s
0x0005C8:
    if !(== self.q 2s) goto 0x0005E8
0x0005DC:
    self.con = 30s
0x0005E8:
    if !(== self.q 3s) goto 0x000608
0x0005FC:
    self.con = 40s
0x000608:
    if !(== self.q 4s) goto 0x000628
0x00061C:
    self.con = 50s
0x000628:
    if !(== self.q 5s) goto 0x000648
0x00063C:
    self.con = 60s
0x000648:
    if !(== self.q 6s) goto 0x000668
0x00065C:
    self.con = 70s
0x000668:
    if !(== self.q 7s) goto 0x000688
0x00067C:
    self.con = 90s
0x000688:
    if !(== self.q 20s) goto 0x0006A8
0x00069C:
    self.con = 80s
0x0006A8:
    if !(== self.con 4s) goto 0x00099C
0x0006BC:
    global.facechoice = 3s
    global.faceemotion = 3s
    stog.msg[0s] = "* so..^1.&* it's been a while./"
    stog.msg[1s] = "\\E0* the queen returned^1, and&  is now ruling over&  the underground./"
    stog.msg[2s] = "* she's enstated a new&  policy.../"
    stog.msg[3s] = "\\E3* all the humans who fall&  here will be treated&  not as enemies.../"
    stog.msg[4s] = "\\E0* but as friends./"
    stog.msg[5s] = "\\E1* it's probably for the&  best^1, anyway./"
    stog.msg[6s] = "\\E0* the human souls the king&  gathered.../"
    stog.msg[7s] = "\\E3* seem to have&  disappeared./"
    stog.msg[8s] = "\\E1* so^1, uh^1, that plan&  ain't happening any&  time soon./"
    stog.msg[9s] = "* but even though people&  are heartbroken over&  the king.../"
    stog.msg[10s] = "\\E1* ... and things are&  looking grim for our&  freedom.../"
    stog.msg[11s] = "\\E0* the queen's trying her&  best not to let us&  give up hope./"
    stog.msg[12s] = "\\E1* so^1, uh^1, hey.../"
    stog.msg[13s] = "\\E1* if we're not giving&  up down here.../"
    stog.msg[14s] = "\\E2* don't give up wherever&  you are^1, ok?/"
    stog.msg[15s] = "\\E3* who knows how long&  it will take.../"
    stog.msg[16s] = "\\E0* but we will get out&  of here./"
    stog.msg[17s] = "\\E2* that's a promise./"
    call (scr_papface[]:int32 (var 1s) (var 17s))
    stog.msg[18s] = "SANS!!!&WHO ARE YOU&TALKING TO???/"
    call (scr_sansface[]:int32 (var 2s) (var 19s))
    stog.msg[20s] = "* oh^1, nobody./"
    call (scr_papface[]:int32 (var 1s) (var 21s))
    stog.msg[22s] = "WHAT!^1?&NOBODY!?/"
    stog.msg[23s] = "\\E0CAN I TALK TO&THEM TOO???/"
    call (scr_sansface[]:int32 (var 1s) (var 24s))
    stog.msg[25s] = "* here^1, knock yourself&  out./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 5s
0x00099C:
    if !(== self.con 5s) goto 0x0009CC
0x0009B0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0009D0
0x0009CC:
    push 0s
0x0009D0:
    if !pop goto 0x001530
0x0009D4:
    self.con = 6s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 3s
    stog.msg[0s] = "WAIT A SECOND.../"
    stog.msg[1s] = "\\E1I RECOGNIZE THIS&NUMBER!!!/"
    stog.msg[2s] = "\\E0ATTENTION^1, HUMAN!/"
    stog.msg[3s] = "\\E2I^1, THE GREAT&PAPYRUS.../"
    stog.msg[4s] = "\\E0AM NOW CAPTAIN OF&THE ROYAL GUARD!/"
    stog.msg[5s] = "\\E2IT'S EVERYTHING I'VE&EVER DREAMED OF.../"
    stog.msg[6s] = "\\E3EXCEPT^1, INSTEAD&OF FIGHTING^1, WE&JUST WATER FLOWERS./"
    stog.msg[7s] = "\\E0SO THAT'S EVER-&SO-SLIGHTLY&DIFFERENT./"
    stog.msg[8s] = "\\E0AND^1, WE'RE HELPING&DR. ALPHYS&WITH HER RESEARCH!/"
    stog.msg[9s] = "\\E0SHE'S GONNA FIND A&WAY TO GET US OUT&OF HERE./"
    stog.msg[10s] = "UNDYNE IS HELPING&HER TOO!/"
    stog.msg[11s] = "\\E3THOUGH^1, TO BE&HONEST^1, HER METHOD&OF HELPING.../"
    stog.msg[12s] = "\\E2SEEMS KIND OF.../"
    stog.msg[13s] = "\\E3EXPLOSION-INDUCING./"
    stog.msg[14s] = "\\E0BUT I THINK ALPHYS&LIKES HAVING HER&AROUND./"
    stog.msg[15s] = "\\E5UH OH!!!/%%"
    push -5s
    if (<= 389s:flag 3s) goto 0x000BB4
0x000BA0:
    push (> global.kills 0s)
    goto 0x000BB8
0x000BB4:
    push 1s
0x000BB8:
    if !pop goto 0x00150C
0x000BBC:
    stog.msg[2s] = "\\E0HEY!!^1! HUMAN!!!/"
    stog.msg[3s] = "HOW ARE YOU DOING^1?&I'M DOING FINE!!!/"
    stog.msg[4s] = "\\E3WELL, BESIDES ONE&THING.../"
    stog.msg[5s] = "\\E3THE QUEEN&DISBANDED THE&ROYAL GUARD./"
    stog.msg[6s] = "SINCE WE DON'T&HAVE TO FIGHT&HUMANS ANYMORE./"
    stog.msg[7s] = "\\E0WOW!!!/"
    stog.msg[8s] = "\\E3I HAVE NO IDEA&WHAT TO DO&WITH MY LIFE./"
    stog.msg[9s] = "\\E0BUT^1, THAT'S&OKAY!/"
    stog.msg[10s] = "BECAUSE I'M&STILL WORKING&HARD!/"
    stog.msg[11s] = "\\E4EVEN IF IT'S&ON NOTHING AT&ALL!/"
    stog.msg[12s] = "\\E0SO DON'T FEEL&BAD!/"
    stog.msg[13s] = "PAPYRUS IS FINE!/"
    stog.msg[14s] = "\\E5UNDYNE IS THE&ONE THAT'S GOT&IT BAD!/"
    stog.msg[15s] = "\\E3SHE LOST HER&JOB.../"
    stog.msg[16s] = "THEN SHE LOST&HER HOUSE.../"
    stog.msg[17s] = "\\E2IT WAS SAD..^1.&BUT WE'RE TAKING&CARE OF HER!/"
    stog.msg[18s] = "\\E0SHE LIVES ON&OUR COUCH NOW./"
    stog.msg[19s] = "IT'S LIKE A&SLEEPOVER EVERY&NIGHT!/"
    stog.msg[20s] = "A SLEEPOVER&THERE'S NO&ESCAPE FROM./"
    stog.msg[21s] = "OH^1, WE GAVE HER&A JOB^1, TOO./"
    stog.msg[22s] = "\\E3SANS HIRED HER AT&HIS ILLEGAL HOT&DOG STAND./"
    stog.msg[23s] = "\\E5SHE HATES WORKING&THERE!/"
    stog.msg[24s] = "\\E3BUT SHE MAKES&A MEAN HOT DOG./"
    stog.msg[25s] = "\\E3.../"
    stog.msg[26s] = "\\E5OH YEAH./"
    if !(>= global.kills 1s) goto 0x000E44
0x000E28:
    push -5s
    push (> 389s:flag 0s)
    goto 0x000E48
0x000E44:
    push 0s
0x000E48:
    if !pop goto 0x0011FC
0x000E4C:
    stog.msg[27s] = "I DON'T KNOW HOW&TO PUT THIS^1,&BUT.../"
    stog.msg[28s] = "\\E3SHE^1, UM^1, REALLY&HATES YOU NOW./"
    stog.msg[29s] = "\\E6EVEN MORE THAN&SHE EVER HAS./"
    stog.msg[30s] = "IT'S BECAUSE SHE&MADE FRIENDS WITH&YOU^1, THEN.../"
    stog.msg[31s] = "\\E5SHE SAID YOU&KILLED SOMEONE?/"
    stog.msg[32s] = "\\E3I KNOW^1, THAT&SOUNDS RIDICULOUS&DOESN'T IT?/"
    stog.msg[33s] = "\\E6BUT SHE FEELS SO&HURT AND BETRAYED./"
    stog.msg[34s] = "AND ANGRY AT&HERSELF^1, TOO./"
    stog.msg[35s] = "SHE SAYS.../"
    stog.msg[36s] = "SHE DOESN'T&UNDERSTAND WHY.../"
    stog.msg[37s] = "SHE EVER LET&HERSELF BECOME&FRIENDS WITH YOU./"
    stog.msg[38s] = "THAT SHE KNEW&WHAT HUMANS WERE&LIKE.../"
    stog.msg[39s] = "\\E3AND YET SHE&STILL FAILED TO&RESIST./"
    stog.msg[40s] = "\\E6MORE PEOPLE GOT&HURT BECAUSE OF&HER MISTAKE./"
    stog.msg[41s] = "\\E5I REALLY CAN'T&UNDERSTATE./"
    stog.msg[42s] = "HOW MUCH SHE&HATES YOU./"
    stog.msg[43s] = "\\E6IT PAINS ME TO&SAY THIS^1, BUT.../"
    stog.msg[44s] = "YOU SHOULD&PROBABLY NEVER&COME BACK HERE./"
    stog.msg[45s] = "\\E3IF YOU DO^1, UNDYNE&WILL DEFINITELY&DESTROY YOU./"
    stog.msg[46s] = "\\E5NOT EVEN THE QUEEN&CAN STOP HER./"
    stog.msg[47s] = "\\E6SO^1, UH..^1.&GOODBYE FOREVER./"
    stog.msg[48s] = "I'LL MISS YOU^1,&MY FRIEND./%%"
    push -5s
    if !(== 425s:flag 1s) goto 0x0011F8
0x001078:
    stog.msg[32s] = "\\E5AND YOU MADE&ASGORE DISAPPEAR?/"
    stog.msg[33s] = "\\E3AND MADE ALPHYS&DISAPPEAR^1, TOO./"
    stog.msg[34s] = "\\E6SHE'S NOT VERY&HAPPY./"
    stog.msg[35s] = "SHE SAYS THINGS&LIKE.../"
    stog.msg[36s] = "\"I COULDN'T PROTECT&HER.../\""
    stog.msg[37s] = "IT'S HARD TO GET&HER TO DO ANYTHING&NOW./"
    stog.msg[38s] = "\\E5I EVEN SUGGESTED&WE TRY TO GET&REVENGE ON YOU./"
    stog.msg[39s] = "\\E0YOU KNOW^1, SO I&COULD SEE YOU&AGAIN./"
    stog.msg[40s] = "\\E5BUT SHE JUST&LOOKED AT ME AND&SAID.../"
    stog.msg[41s] = "\\E6REVENGE WON'T BRING&ANYBODY BACK./"
    stog.msg[42s] = "\\E3I HAVE NO IDEA&WHAT YOU DID^1,&BUT.../"
    stog.msg[43s] = "\\E5CAN YOU PLEASE&BRING BACK HER&FRIENDS?/"
    stog.msg[44s] = "IF YOU MADE THEM&DISAPPEAR?/"
    stog.msg[45s] = "\\E6PLEASE.../"
    stog.msg[46s] = "UNDYNE'S NOT&DOING VERY WELL./"
    stog.msg[47s] = "BYE./%%"
0x0011F8:
    goto 0x001500
0x0011FC:
    stog.msg[27s] = "\\E3SHE STILL BLAMES&YOU.../"
    stog.msg[28s] = "\\E3FOR THE&DISAPPEARANCE&OF ASGORE./"
    stog.msg[29s] = "\\E3.../"
    stog.msg[30s] = "\\E3SHE TALKS TO ME&A LOT.../"
    stog.msg[31s] = "\\E5ABOUT GETTING&REVENGE ON YOU./"
    stog.msg[32s] = "SHE HAS A&LUDICROUS PLAN.../"
    stog.msg[33s] = "TO CROSS THE&BARRIER AND&BEAT YOU UP./"
    stog.msg[34s] = "\\E3TO BE HONEST^1,&I THINK IT'S&IMPOSSIBLE./"
    stog.msg[35s] = "\\E0BUT I'D LIKE TO&BELIEVE IT'S&NOT!!!/"
    stog.msg[36s] = "CAUSE I WANT TO&GO WITH HER!/"
    stog.msg[37s] = "THEN I'D GET TO&SEE YOU AGAIN!/"
    stog.msg[38s] = "\\E3EVEN IF I'D HAVE&TO FIGHT YOU./"
    stog.msg[39s] = "\\E0WELL^1, KEEP YOUR&FINGERS CROSSED!/"
    stog.msg[40s] = "AND KEEP IN&TOUCH.../"
    stog.msg[41s] = "IT'LL MAKE OUR&PLANS EASIER./"
    stog.msg[42s] = "BYE!/%%"
    push -5s
    if !(== 425s:flag 1s) goto 0x001500
0x001398:
    stog.msg[29s] = "\\E5AND ALPHYS'&DISAPPEARANCE^1, TOO./"
    stog.msg[30s] = "\\E3SHE'S NOT VERY&HAPPY./"
    stog.msg[31s] = "\\E6SHE SAYS THINGS&LIKE.../"
    stog.msg[32s] = "\"I COULDN'T PROTECT&HER.../\""
    stog.msg[33s] = "IT'S HARD TO GET&HER TO DO ANYTHING&NOW./"
    stog.msg[34s] = "\\E5I EVEN SUGGESTED&WE TRY TO GET&REVENGE ON YOU./"
    stog.msg[35s] = "\\E0YOU KNOW^1, SO I&COULD SEE YOU&AGAIN./"
    stog.msg[36s] = "\\E3BUT SHE JUST&LOOKED AT ME AND&SAID.../"
    stog.msg[37s] = "\\E6REVENGE WON'T BRING&ANYBODY BACK./"
    stog.msg[38s] = "I HAVE NO IDEA&WHAT YOU DID^1,&BUT.../"
    stog.msg[39s] = "\\E5CAN YOU PLEASE&BRING BACK HER&FRIENDS?/"
    stog.msg[40s] = "IF YOU MADE THEM&DISAPPEAR?/"
    stog.msg[41s] = "\\E6PLEASE.../"
    stog.msg[42s] = "UNDYNE'S NOT&DOING VERY WELL./"
    stog.msg[43s] = "BYE./%%"
0x001500:
    self.con = 8s
0x00150C:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x001530:
    if !(== self.con 6s) goto 0x001560
0x001544:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001564
0x001560:
    push 0s
0x001564:
    if !pop goto 0x001DC0
0x001568:
    stog.flag[430s] = 0s
    self.con = 8s
    global.typer = 37s
    global.facechoice = 5s
    global.faceemotion = 2s
    stog.msg[0s] = "* Hey^1!&* What are you up&  to^1, punk!?/"
    stog.msg[1s] = "\\E1* Ngahhhh!/"
    call (scr_papface[]:int32 (var 5s) (var 2s))
    stog.msg[3s] = "PLEASE DON'T NOOGIE&THE PHONE./"
    call (scr_undface[]:int32 (var 3s) (var 4s))
    stog.msg[5s] = "\\E2* Hey^1!&* Who's in charge&  here!?/"
    call (scr_papface[]:int32 (var 5s) (var 6s))
    stog.msg[7s] = "ME./"
    call (scr_undface[]:int32 (var 6s) (var 8s))
    stog.msg[9s] = "* Oh..^1. yeah^1, that's&  right!/"
    stog.msg[10s] = "\\E0* I quit my job as&  leader of the Royal&  Guard./"
    stog.msg[11s] = "\\E4* Actually^1, since we&  won't be fighting&  anymore.../"
    stog.msg[12s] = "\\E1* The Royal Guard&  totally disbanded./"
    stog.msg[13s] = "\\E9* There's^1, uh^1, only&  one member now./"
    call (scr_papface[]:int32 (var 0s) (var 14s))
    stog.msg[15s] = "BUT HE'S EXTREMELY&GOOD./"
    call (scr_undface[]:int32 (var 6s) (var 16s))
    stog.msg[17s] = "* Yeah!^1! He is!!^1!&* C'mere!!/"
    call (scr_papface[]:int32 (var 5s) (var 18s))
    stog.msg[19s] = "PLEASE DON'T NOOGIE&THE SKELETON./"
    call (scr_undface[]:int32 (var 9s) (var 20s))
    stog.msg[21s] = "* Anyways^1, now I'm&  working as Alphy's&  lab assistant.../"
    stog.msg[22s] = "\\E2* We're gonna find a&  way out of this dump&  once and for all!!/"
    stog.msg[23s] = "\\E9* Oh^1, yeah^1, and I'm a&  gym teacher at the&  queen's new school./"
    stog.msg[24s] = "\\E6* Did you know I can&  bench-press seven&  children!?/"
    stog.msg[25s] = "\\E9* Awesome^1, right?/"
    stog.msg[26s] = "* .../"
    stog.msg[27s] = "\\E0* Hey./"
    stog.msg[28s] = "\\E4* I'm sorry about what&  happened with ASGORE./"
    stog.msg[29s] = "\\E4* You were just doing&  what you had to./"
    stog.msg[30s] = "* It's not your fault&  he.../"
    stog.msg[31s] = "* .../"
    stog.msg[32s] = "\\E7* Ah^1, darn it./"
    stog.msg[33s] = "* I miss the big guy./"
    stog.msg[34s] = "\\E7* .../"
    stog.msg[35s] = "\\E1* Come on^1, Undyne^1!&* Snap out of it!/"
    stog.msg[36s] = "\\E4* Uh^1, I guess I'll&  tell you how Alphys&  is doing./"
    stog.msg[37s] = "\\E0* Well^1, she's the&  same as ever./"
    stog.msg[38s] = "\\E4* Maybe a little more&  reclusive than&  normal./"
    stog.msg[39s] = "\\E7* Seems like something's&  really bothering&  her.../"
    stog.msg[40s] = "\\E1* But she can get&  through it!/"
    stog.msg[41s] = "\\E2* I'm there supporting&  her!!/"
    stog.msg[42s] = "\\E9* That's what friends&  are for^1, right?/"
    stog.msg[43s] = "\\E9* .../"
    stog.msg[44s] = "\\E0* Hey^1, where-ever you&  are.../"
    stog.msg[45s] = "\\E4* I hope it's better&  than here./"
    stog.msg[46s] = "\\E7* It took a lot of&  sacrifice for you&  to get there.../"
    stog.msg[47s] = "* So^1, where-ever you&  are.../"
    stog.msg[48s] = "\\E6* You have to try to&  be happy^1, okay!?/"
    stog.msg[49s] = "\\E2* For our sakes!/"
    stog.msg[50s] = "\\E0* We'll feel better&  knowing our trouble&  was worth it./"
    stog.msg[51s] = "\\E9* We're all with you^1!&* Everyone is^1!&* Even the queen!/"
    stog.msg[52s] = "\\E1* .../"
    stog.msg[53s] = "\\E2* HEYYY^1!&* WAIT a second!/"
    stog.msg[54s] = "\\E6* TORIEL^1!&* TORIEL^1!&* Do you wanna...?/"
    stog.msg[55s] = "\\E1* .../"
    stog.msg[56s] = "\\E9* Heh^1, she says&  she's busy./"
    call (scr_papface[]:int32 (var 0s) (var 57s))
    stog.msg[58s] = "BUT IF SHE KNEW&WHO WE WERE&TALKING TO.../"
    call (scr_sansface[]:int32 (var 2s) (var 59s))
    stog.msg[60s] = "* we wouldn't get the&  phone back for at&  least a few hours./"
    call (scr_papface[]:int32 (var 0s) (var 61s))
    stog.msg[62s] = "WE HAVE THE&MERCY TO SPARE&YOU FROM HER!!/"
    call (scr_undface[]:int32 (var 9s) (var 63s))
    stog.msg[64s] = "* But call back any&  time^1, ok?!&* She'd love to talk!/"
    call (scr_sansface[]:int32 (var 2s) (var 65s))
    stog.msg[66s] = "* oh^1, whoops./"
    stog.msg[67s] = "\\E0* this thing's almost&  outta batteries./"
    stog.msg[68s] = "\\E1* so^1, hate to cut this&  short^1, but.../"
    stog.msg[69s] = "\\E2* be seeing you^1, ok^1,&  buddy?/"
    call (scr_papface[]:int32 (var 0s) (var 70s))
    stog.msg[71s] = "BYE BYE FOR NOW!/"
    call (scr_undface[]:int32 (var 2s) (var 72s))
    stog.msg[73s] = "* See ya^1, punk!/%%"
    push -5s
    if !(>= 493s:flag 10s) goto 0x001D9C
0x001CF4:
    call (scr_alface[]:int32 (var 3s) (var 34s))
    stog.msg[35s] = "* H-hey^1, Undyne^1, are&  you okay...?/"
    call (scr_undface[]:int32 (var 9s) (var 36s))
    stog.msg[37s] = "* I'm fine^1.&* Why don't you talk&  for a while?/"
    call (scr_alface[]:int32 (var 3s) (var 38s))
    stog.msg[39s] = "* U..^1. uh^1, okay!/%%"
    self.con = 7s
0x001D9C:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x001DC0:
    if !(== self.con 7s) goto 0x001DF0
0x001DD4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001DF4
0x001DF0:
    push 0s
0x001DF4:
    if !pop goto 0x002308
0x001DF8:
    stog.flag[430s] = 0s
    self.con = 8s
    global.typer = 47s
    global.facechoice = 6s
    global.faceemotion = 0s
    stog.msg[0s] = "* Man^1, she's tsundere.../"
    stog.msg[1s] = "\\E1* .../"
    stog.msg[2s] = "\\E2* .../"
    stog.msg[3s] = "\\E7* Um^1, hi.../"
    stog.msg[4s] = "\\E4* S-sorry^1, I hate&  talking on the&  phone./"
    stog.msg[5s] = "\\E3* I don't really know&  what to say./"
    stog.msg[6s] = "\\E1* .../"
    stog.msg[7s] = "\\E7* Hey^1, why didn't you&  tell me the queen&  was so cute?/"
    stog.msg[8s] = "\\E3* Uh^1, I mean^1, uh.../"
    stog.msg[9s] = "\\E6* Mettaton's doing OK!/"
    stog.msg[10s] = "* And^1! Um!/"
    stog.msg[11s] = "\\E6* I'm trying to figure&  a way for us to&  get out of here!/"
    stog.msg[12s] = "\\E4* B-but I kinda have&  no idea what I'm&  doing./"
    stog.msg[13s] = "\\E0* I'll figure it out&  eventually^1, though./"
    stog.msg[14s] = "\\E3* The queen is a lot&  different from&  ASGORE.../"
    stog.msg[15s] = "\\E7* She actually checks to&  see if I'm doing&  anything./"
    stog.msg[16s] = "\\E0* She's really turned&  this whole place&  around!/"
    stog.msg[17s] = "\\E2* .../"
    stog.msg[18s] = "\\E3* Oh^1!&* Hey^1!&* Wait a second!/"
    stog.msg[19s] = "\\E0* Hey^1! TORIEL^1!&* Do you wanna talk&  to...?/"
    stog.msg[20s] = "\\E1* .../"
    stog.msg[21s] = "\\E0* Well^1, she says she's&  busy./"
    call (scr_undface[]:int32 (var 6s) (var 22s))
    stog.msg[23s] = "* Oh^1, she SAYS she's&  busy./"
    call (scr_papface[]:int32 (var 0s) (var 24s))
    stog.msg[25s] = "IF SHE KNEW WHO&WE WERE TALKING&TO.../"
    call (scr_sansface[]:int32 (var 2s) (var 26s))
    stog.msg[27s] = "* we wouldn't get the&  phone back for at&  least a few hours./"
    call (scr_papface[]:int32 (var 0s) (var 28s))
    stog.msg[29s] = "WE HAVE THE&MERCY TO SPARE&YOU FROM HER!!/"
    call (scr_alface[]:int32 (var 3s) (var 30s))
    stog.msg[31s] = "* B-but^1, if you want&  to^1, call and talk&  to her any time./"
    call (scr_undface[]:int32 (var 9s) (var 32s))
    stog.msg[33s] = "* Yeah^1!&* She'd be happy to&  hear from ya!/"
    call (scr_sansface[]:int32 (var 2s) (var 34s))
    stog.msg[35s] = "* oh^1, whoops./"
    stog.msg[36s] = "\\E0* this thing's almost&  outta batteries./"
    stog.msg[37s] = "\\E1* so^1, hate to cut this&  short^1, but.../"
    stog.msg[38s] = "\\E2* be seeing you^1, ok^1,&  buddy?/"
    call (scr_papface[]:int32 (var 0s) (var 39s))
    stog.msg[40s] = "BYE BYE FOR NOW!/"
    call (scr_undface[]:int32 (var 9s) (var 41s))
    stog.msg[42s] = "* See ya^1, punk!/"
    call (scr_alface[]:int32 (var 3s) (var 43s))
    stog.msg[44s] = "* G-good..^1.&* Good.../"
    stog.msg[45s] = "\\E4* Hey^1, why do I&  have to be the one&  to hang up?/"
    stog.msg[46s] = "\\E7* Eheheh..^1.&* I hate goodbyes.../"
    stog.msg[47s] = "\\E3* Um^1, we'll see you&  again someday!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x002308:
    if !(== self.con 8s) goto 0x002338
0x00231C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00233C
0x002338:
    push 0s
0x00233C:
    if !pop goto 0x0023F4
0x002340:
    self.con = 9s
    self.mf = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.02d
    stog.fadespeed* = (int32 self.mf)
    global.typer = 5s
    global.faceemotion = 0s
    global.facechoice = 0s
    stog.msg[0s] = "* (Click...)/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0023F4:
    if !(== self.con 9s) goto 0x002424
0x002408:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002428
0x002424:
    push 0s
0x002428:
    if !pop goto 0x00244C
0x00242C:
    self.con = 10s
    stog.alarm[4s] = 150s
0x00244C:
    if !(== self.con 11s) goto 0x002590
0x002460:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.K = (ini_read_real[]:int32 (var 0s) (var "K") (var "Flowey"))
    self.SPECIALK = (ini_read_real[]:int32 (var 0s) (var "SPECIALK") (var "Flowey"))
    call (ini_close[]:int32 )
    if (> self.K 0s) goto 0x00250C
0x0024F8:
    push (> self.SPECIALK 0s)
    goto 0x002510
0x00250C:
    push 1s
0x002510:
    if !pop goto 0x002528
0x002514:
    stog.flag[475s] = 1s
0x002528:
    push -5s
    if !(== 475s:flag 0s) goto 0x002584
0x002544:
    call (instance_create[]:int32 (var 135s) (var 0s) (var 0s))
    self.con = 14s
    call (instance_destroy[]:int32 )
    goto 0x002590
0x002584:
    call (game_restart[]:int32 )
0x002590:
    if !(== self.con 21s) goto 0x0025C0
0x0025A4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0025C4
0x0025C0:
    push 0s
0x0025C4:
    if !pop goto 0x002980
0x0025C8:
    global.facechoice = 3s
    global.faceemotion = 3s
    stog.msg[0s] = "* so..^1.&* it's been a while./"
    stog.msg[1s] = "\\E0* the queen returned^1, and&  attempted to resume&  ruling the underground./"
    stog.msg[2s] = "* she enstated a new&  policy.../"
    stog.msg[3s] = "\\E3* all the humans who fall&  here would be treated&  not as enemies.../"
    stog.msg[4s] = "\\E0* but as friends./"
    stog.msg[5s] = "\\E3* .../"
    stog.msg[6s] = "\\E1* but people REALLY&  didn't like that&  policy./"
    stog.msg[7s] = "\\E0* because of you^1, not&  only was the king&  gone.../"
    stog.msg[8s] = "\\E3* but the human souls&  had gone missing as&  well.../"
    stog.msg[9s] = "* along with the lives&  of countless citizens./"
    push -5s
    if !(== 67s:flag 1s) goto 0x002704
0x0026EC:
    stog.msg[9s] = "* along with the life&  of.../"
0x002704:
    push -5s
    if !(== 350s:flag 1s) goto 0x002738
0x002720:
    stog.msg[9s] = "* along with the life&  of undyne^1, their&  greatest hero./"
0x002738:
    if !(>= global.kills 10s) goto 0x002764
0x00274C:
    stog.msg[9s] = "* along with the lives&  of countless citizens./"
0x002764:
    stog.msg[10s] = "* nobody wanted to see&  that happen ever again./"
    stog.msg[11s] = "\\E0* so the people started&  a rebellion to&  overthrow the queen./"
    stog.msg[12s] = "\\E2* but^1, she^1, uh^1, pretty&  much gave up peacefully&  when she realized./"
    stog.msg[13s] = "\\E1* so she went back&  to the ruins./"
    stog.msg[14s] = "\\E0* the underground's&  basically an uneasy&  anarchy now./"
    stog.msg[15s] = "\\E0* everyone's trying to&  live life like they&  always have.../"
    stog.msg[16s] = "\\E3* but it's not really&  easy^1, you know?/"
    stog.msg[17s] = "* when all of your&  hope has pretty much&  been thrown away.../%%"
    stog.msg[18s] = "* .../%%"
    push -5s
    if !(!= 350s:flag 1s) goto 0x002950
0x002858:
    stog.msg[12s] = "\\E1* undyne spearheaded&  the revolution^1, of&  course./"
    push -5s
    if !(== 425s:flag 0s) goto 0x0028A8
0x00288C:
    stog.msg[13s] = "\\E3* she was pretty mad&  after what happened&  to asgore./"
    goto 0x0028C0
0x0028A8:
    stog.msg[13s] = "\\E3* she was pretty mad&  after what happened&  to asgore and alphys./"
0x0028C0:
    stog.msg[14s] = "\\E1* she threw the queen&  out of the castle&  with her strength./"
    stog.msg[15s] = "\\E0* then she became the&  empress of the&  underground.../"
    stog.msg[16s] = "* and banished the&  queen back to the&  ruins./"
    stog.msg[17s] = "\\E1* seems like undyne's..^1.&* hmmm.../"
    stog.msg[18s] = "\\E3* even more vehement&  about destroying&  humanity than ASGORE./"
    stog.msg[19s] = "\\E1* .../%%"
0x002950:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 22s
0x002980:
    if !(== self.con 22s) goto 0x0029B0
0x002994:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0029B4
0x0029B0:
    push 0s
0x0029B4:
    if !pop goto 0x002DE4
0x0029B8:
    push -5s
    if !(!= 67s:flag 1s) goto 0x002BD4
0x0029D4:
    self.con = 8s
    stog.msg[0s] = "\\E2* but hey^1!&* it's not all bad!/"
    stog.msg[1s] = "\\E0* she's not so lonely&  anymore./"
    stog.msg[2s] = "\\E1* me and papyrus go&  and visit her.../"
    stog.msg[3s] = "\\E0* we bring her books&  from the library^1,&  or play games.../"
    stog.msg[4s] = "\\E2* we've even convinced&  her to leave&  sometimes./"
    stog.msg[5s] = "\\E1* as long as me or&  papyrus stay behind&  to watch for humans./"
    stog.msg[6s] = "\\E2* but papyrus loves&  doing that./"
    call (scr_papface[]:int32 (var 0s) (var 7s))
    stog.msg[8s] = "YEAH!!^1!&I LOVE STANDING IN&FOR THE QUEEN!!!/"
    stog.msg[9s] = "I'VE BEEN PRACTICING&FOR WHEN A HUMAN&COMES./"
    stog.msg[10s] = "I'M GOING TO BE&A GREAT MOM!!!/"
    stog.msg[11s] = "\\E3BY THE WAY^1,&WHO ARE YOU&TALKING TO?/"
    call (scr_sansface[]:int32 (var 2s) (var 12s))
    stog.msg[13s] = "* oh^1, nobody./"
    call (scr_papface[]:int32 (var 0s) (var 14s))
    stog.msg[15s] = "OH, COOL^1.&TELL THEM I SAY&HI!!!/"
    call (scr_sansface[]:int32 (var 1s) (var 16s))
    stog.msg[17s] = "* papyrus says hi./"
    stog.msg[18s] = "\\E0* well^1, i hope things&  are better where&  you are./"
    stog.msg[19s] = "\\E2* later./%%"
    goto 0x002DC0
0x002BD4:
    self.con = 23s
    stog.msg[0s] = "\\E2* but hey^1!&* it's not all bad!/"
    stog.msg[1s] = "\\E1* when the queen went&  back to the ruins.../"
    stog.msg[2s] = "\\E2* i decided to go&  with her./"
    stog.msg[3s] = "\\E1* and i took out some&  books from the&  library^1, too./"
    stog.msg[4s] = "\\E1* so she won't have&  to read the same&  ones./"
    stog.msg[5s] = "\\E0* she's a good roomie^1.&* we have a lot of&  fun./"
    stog.msg[6s] = "\\E1* .../"
    stog.msg[7s] = "\\E1* you know./"
    stog.msg[8s] = "\\E1* sometimes the queen&  talks about.../"
    stog.msg[9s] = "\\E0* how she'd like to&  see you again./"
    stog.msg[10s] = "\\E1* isn't that nice?/"
    stog.msg[11s] = "\\E3* .../"
    stog.msg[12s] = "\\E3* i don't have the&  heart to tell her&  what you did./"
    stog.msg[13s] = "\\E0* do you know how she'd&  react?/"
    stog.msg[14s] = "\\E3* if i told her that&  'cause she protected&  you.../"
    stog.msg[15s] = "\\E4* ... you went on to&  kill my brother...?/"
    stog.msg[16s] = "\\E3* .../"
    stog.msg[17s] = "\\E1* anyway^1, never come&  back here./"
    stog.msg[18s] = "\\E0* you are not welcome./"
    stog.msg[19s] = "\\E2* later./%%"
0x002DC0:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x002DE4:
    if !(== self.con 23s) goto 0x002E10
0x002DF8:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x002E14
0x002E10:
    push 0s
0x002E14:
    if !pop goto 0x002E40
0x002E18:
    if !(== 782.stringno 14s) goto 0x002E40
0x002E2C:
    call (caster_stop[]:int32 global.currentsong)
0x002E40:
    if !(== self.con 23s) goto 0x002E70
0x002E54:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002E74
0x002E70:
    push 0s
0x002E74:
    if !pop goto 0x002E84
0x002E78:
    self.con = 8s
0x002E84:
    if !(== self.con 31s) goto 0x002EB4
0x002E98:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002EB8
0x002EB4:
    push 0s
0x002EB8:
    if !pop goto 0x0034CC
0x002EBC:
    global.facechoice = 3s
    global.faceemotion = 1s
    self.con = 8s
    stog.msg[0s] = "* since you left^1,&  things down here.../"
    stog.msg[1s] = "\\E3* are different./"
    stog.msg[2s] = "* with ASGORE gone.../"
    stog.msg[3s] = "\\E0* undyne became the&  ruler of the&  underground./"
    stog.msg[4s] = "\\E3* she's decided to&  destroy every human&  that comes here./"
    stog.msg[5s] = "\\E3* and since the human&  souls disappeared.../"
    stog.msg[6s] = "\\E0* she's also looking&  for a new way to&  break the barrier.../"
    stog.msg[7s] = "* and when she does^1,&  she's going to wage&  war on humanity./"
    stog.msg[8s] = "\\E1* i mean^1, that was&  asgore's plan^1, too./"
    stog.msg[9s] = "\\E2* but he was really^1,&  uh^1, bad at it./"
    stog.msg[10s] = "\\E0* undyne has also&  expanded the royal&  guard massively./"
    stog.msg[11s] = "* she says the first&  thing she'll do after&  we get out of here.../"
    stog.msg[12s] = "* is take her army.../"
    stog.msg[13s] = "\\E3* and personally hunt&  you down and destroy&  you./"
    push -5s
    if !(== 67s:flag 1s) goto 0x00311C
0x00304C:
    stog.msg[14s] = "\\E1* meanwhile.../"
    stog.msg[15s] = "* i've been knocking&  on the door to&  the RUINs.../"
    stog.msg[16s] = "\\E3* but the woman that's&  there hasn't been&  answering me./"
    stog.msg[17s] = "\\E1* maybe she's not&  feeling well?/"
    stog.msg[18s] = "\\E3* heh./"
    stog.msg[19s] = "\\E4* or maybe she's not&  feeling anything at&  all...?/"
    stog.msg[20s] = "\\E4* you'd better watch&  yourself^1, kid./"
    stog.msg[21s] = "\\E4* things are lookin&  real bad for you./%%"
    self.con = 32s
    goto 0x0034A8
0x00311C:
    stog.msg[14s] = "\\E1* meanwhile.../"
    stog.msg[15s] = "\\E3* i've been knocking on&  the door to the&  RUINS.../"
    stog.msg[16s] = "\\E3* but that woman hasn't&  been answering me.../"
    stog.msg[17s] = "\\E1* maybe she's not&  feeling well?/"
    call (scr_papface[]:int32 (var 3s) (var 18s))
    stog.msg[19s] = "HEY^1, SANS^1, WHO ARE&YOU TALKING TO?/"
    call (scr_sansface[]:int32 (var 2s) (var 20s))
    stog.msg[21s] = "* oh^1, just the human./"
    call (scr_papface[]:int32 (var 2s) (var 22s))
    stog.msg[23s] = "OH^1, COOL./"
    stog.msg[24s] = "\\E3.../"
    stog.msg[25s] = "\\E5WAIT, DID YOU&SAY THE HUMAN!?/"
    stog.msg[26s] = "\\E0CAN I TALK TO&THEM???/"
    call (scr_sansface[]:int32 (var 1s) (var 27s))
    stog.msg[28s] = "* sure^1, knock yourself&  out./"
    call (scr_papface[]:int32 (var 0s) (var 29s))
    stog.msg[30s] = "HEY!!^1!&UNDYNE'S THE&EMPRESS NOW!!/"
    stog.msg[31s] = "IT'S AMAZING!!!/"
    stog.msg[32s] = "AND SHE APPOINTED&ME TO BE.../"
    stog.msg[33s] = "THE MOST IMPORTANT&ROYAL POSITION!!!/"
    stog.msg[34s] = "\\E3.../"
    stog.msg[35s] = "\\E3THAT'S IT^1.&THAT'S LITERALLY&THE TITLE./"
    stog.msg[36s] = "\\E0WHAT DO I DO?/"
    stog.msg[37s] = "\\E3SHE TOLD ME TO^1,&UM.../"
    stog.msg[38s] = "\\E3STAND AROUND AND&LOOK CUTE./"
    stog.msg[39s] = "\\E0WELL!!^1!&THAT'S THE PERFECT&JOB FOR ME!!!/"
    stog.msg[40s] = "I DO THAT ALL THE&TIME^1, WITHOUT&TRYING!!/"
    stog.msg[41s] = "FINALLY!^1!&I'M IMPORTANT./"
    stog.msg[42s] = "AND IT'S ALL&THANKS TO YOU,/"
    stog.msg[43s] = "AND THE HORRIBLE&THINGS YOU DID./"
    stog.msg[44s] = "THANK YOU^1, HUMAN!/"
    stog.msg[45s] = "COME BACK AND&VISIT SOMETIME!!/"
    stog.msg[46s] = "\\E3WAIT..^1.&UNDYNE WOULD&PROBABLY KILL YOU./"
    stog.msg[47s] = "\\E0BUT..^1.&YOU'D GET TO&SEE ME./"
    stog.msg[48s] = "SO YOU GOTTA&RISK IT!!!/"
    stog.msg[49s] = "YOU GOTTA!!!/"
    stog.msg[50s] = "SEE YOU SOON./%%"
0x0034A8:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0034CC:
    if !(== self.con 32s) goto 0x0034F8
0x0034E0:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0034FC
0x0034F8:
    push 0s
0x0034FC:
    if !pop goto 0x003528
0x003500:
    if !(== 782.stringno 18s) goto 0x003528
0x003514:
    call (caster_stop[]:int32 global.currentsong)
0x003528:
    if !(== self.con 32s) goto 0x003558
0x00353C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00355C
0x003558:
    push 0s
0x00355C:
    if !pop goto 0x00356C
0x003560:
    self.con = 8s
0x00356C:
    if !(== self.con 41s) goto 0x0036B8
0x003580:
    global.facechoice = 3s
    global.faceemotion = 3s
    stog.msg[0s] = "* so^1, it's been a&  while./"
    stog.msg[1s] = "\\E1* since you left^1, things&  have..^1.&* gotten interesting./"
    stog.msg[2s] = "\\E0* with ASGORE gone^1, the&  people looked to&  undyne to rule.../"
    stog.msg[3s] = "\\E3* but she was nowhere&  to be found./"
    stog.msg[4s] = "\\E2* so mettaton just&  kind of..^1.&* took over?/"
    stog.msg[5s] = "\\E1* he's brainwashed&  everyone with his&  stupid TV show./"
    stog.msg[6s] = "* and made the&  underground into his&  personal paradise./"
    stog.msg[7s] = "\\E3* it's honestly..^1.&* kinda disturbing./"
    stog.msg[8s] = "\\E1* as for me^1?&* oh^1, yeah.../"
    stog.msg[9s] = "\\E2* i'm his agent./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 42s
0x0036B8:
    if !(== self.con 42s) goto 0x0036E8
0x0036CC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0036EC
0x0036E8:
    push 0s
0x0036EC:
    if !pop goto 0x003C7C
0x0036F0:
    call (caster_play[]:int32 (var 0.95d) (var 0.7d) global.currentsong)
    global.typer = 27s
    global.facechoice = 8s
    global.faceemotion = 0s
    stog.msg[0s] = "\\E0* HEY THERE^1, DARLING!/"
    stog.msg[1s] = "* THANK YOU SO MUCH FOR&  YOUR HARD WORK.../"
    stog.msg[2s] = "* THANKS TO YOU, THE&  UNDERGROUND IS MORE&  EXCITING THAN EVER!/"
    stog.msg[3s] = "\\E7* OOH LA LA...&* STATUES... MONUMENTS&  TO MY BEAUTY.../"
    stog.msg[4s] = "\\E6* FLOWERS IN THE&  ARRANGEMENT OF MY&  NAME.../"
    stog.msg[5s] = "\\E5* HEDGES IN THE SHAPE&  OF MY SMILE.../"
    stog.msg[6s] = "\\E8* UNDER MY RULE, THE&  UNDERGROUND'S PROBLEMS&  ARE OVER, BABY!/"
    stog.msg[7s] = "\\E7* CROWDING?&* DREARINESS???/"
    stog.msg[8s] = "\\E9* WHO NEEDS THE SUN&  WHEN YOU'VE GOT&  THE SPOTLIGHT!!?/"
    stog.msg[9s] = "\\E1* ECONOMIC COLLAPSE?&* EDUCATION PROBLEMS?&* WHAT!?/"
    stog.msg[10s] = "\\E8* EVERYTHING'S COVERED&  IN GOLDEN GLITTER!/"
    stog.msg[11s] = "\\E6* THERE ARE NO&  PROBLEMS, BEAUTIFUL!/"
    stog.msg[12s] = "\\E0* AND, I'VE ENSTATED&  A NEW POLICY ON&  HUMANITY./"
    stog.msg[13s] = "\\E1* IF A HUMAN FALLS DOWN&  HERE.../"
    stog.msg[14s] = "\\E6* THEY CAN JOIN MY&  FAN CLUB FOR FREE!/"
    stog.msg[15s] = "\\E1* OH, YOU MIGHT BE&  WONDERING ABOUT&  ALPHYS./"
    stog.msg[16s] = "\\E0* DON'T WORRY!/"
    stog.msg[17s] = "\\E9* I BUILT A STATUE&  OF HER, TOO./"
    stog.msg[18s] = "\\E1* .../"
    stog.msg[19s] = "\\E3* REALLY THOUGH.&* I REALIZED I WAS.../"
    stog.msg[20s] = "\\E4* NOT THE GREATEST&  TO HER./"
    stog.msg[21s] = "\\E1* SO I WENT TO&  APOLOGIZE./"
    stog.msg[22s] = "\\E9* AND, TO ASK HER&  TO HELP ME RULE./"
    stog.msg[23s] = "\\E1* .../"
    stog.msg[24s] = "\\E3* BUT I COULDN'T FIND&  HER./"
    stog.msg[25s] = "\\E4* TRUST ME.&* I LOOKED./"
    stog.msg[26s] = "\\E3* .../"
    stog.msg[27s] = "\\E1* ANYWAY./"
    stog.msg[28s] = "\\E2* I HOPE YOUR LIFE&  AFTER MEETING ME.../"
    stog.msg[29s] = "\\E7* HAS BEEN WORTH LIVING./"
    stog.msg[30s] = "\\E6* IT MUST BE A STRUGGLE./"
    stog.msg[31s] = "\\E0* PLEASE, THINK OF ME&  ALWAYS./"
    stog.msg[32s] = "\\E5* JUST CONSTANTLY.&* THINK OF ME POSING.&* BEAUTIFULLY.../"
    stog.msg[33s] = "\\E6* OH YESSSS!!!/"
    push -5s
    if !(== 67s:flag 1s) goto 0x003AB0
0x003A94:
    stog.msg[33s] = "\\E6* OH YESSSS!!!/%%"
    goto 0x003C4C
0x003AB0:
    stog.msg[34s] = "\\E2* OH^1, MY OTHER AGENT&  WANTS TO TALK./"
    call (scr_papface[]:int32 (var 0s) (var 35s))
    stog.msg[36s] = "HEY!!^1!&IT'S ME^1, PAPYRUS!!/"
    stog.msg[37s] = "\\E2IMAGINE ME WEARING&COOL GLASSES^1, AND&A SUIT./"
    stog.msg[38s] = "\\E0AND IMAGINE SANS&WEARING SUNGLASSES&BEING A BOUNCER./"
    stog.msg[39s] = "THAT'S OUR LIFE..^1.&IT'S SO COOL!!!/"
    stog.msg[40s] = "THINGS HAVE GOTTEN&WAY BETTER SINCE&YOU CAME HERE!!!/"
    stog.msg[41s] = "\\E3WELL^1, MINUS THE&FACT THAT&EVERYTHING SUCKS.../"
    stog.msg[42s] = "\\E5FOR ANYONE THAT&DOESNT WORSHIP&METTATON./"
    stog.msg[43s] = "\\E3AND MINUS THE FACT&THAT MY FRIEND&UNDYNE IS MISSING./"
    stog.msg[44s] = "WHO KNOWS WHERE&SHE WENT./"
    stog.msg[45s] = "SHE NEVER LIKED&METTATON'S SHOW./"
    stog.msg[46s] = "\\E3PEOPLE WHO DON'T&TEND TO KIND OF.../"
    stog.msg[47s] = "\\E5DISAPPEAR./"
    stog.msg[48s] = "\\E6I MISS HER A&LOT SOMETIMES./"
    stog.msg[49s] = "\\E0IF YOU SEE HER^1,&CAN YOU TELL HER&I SAID HI?/"
    stog.msg[50s] = "THANKS^1!&SEE YOU LATER!/%%"
0x003C4C:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 43s
0x003C7C:
    if !(== self.con 43s) goto 0x003CA8
0x003C90:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x003CAC
0x003CA8:
    push 0s
0x003CAC:
    if !pop goto 0x003D00
0x003CB0:
    if !(== 782.stringno 20s) goto 0x003CD8
0x003CC4:
    call (caster_pause[]:int32 global.currentsong)
0x003CD8:
    if !(== 782.stringno 27s) goto 0x003D00
0x003CEC:
    call (caster_resume[]:int32 global.currentsong)
0x003D00:
    if !(== self.con 43s) goto 0x003D30
0x003D14:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x003D34
0x003D30:
    push 0s
0x003D34:
    if !pop goto 0x003D44
0x003D38:
    self.con = 8s
0x003D44:
    if !(== self.con 51s) goto 0x00437C
0x003D58:
    global.facechoice = 3s
    global.faceemotion = 3s
    stog.msg[0s] = "\\E3* so.^1.&* it's been a while./"
    stog.msg[1s] = "* since you left.../"
    stog.msg[2s] = "\\E1* things have gotten&  really strange./"
    stog.msg[3s] = "\\E0* overnight^1, a bunch of&  people mysteriously&  disappeared./"
    stog.msg[4s] = "\\E3* as well as the&  human souls./"
    stog.msg[5s] = "\\E3* people were heart-&  broken. everyone they&  looked up to.../"
    stog.msg[6s] = "* everything they were&  relying on^1, in one&  night, disappeared./"
    stog.msg[7s] = "* everyone clamored to&  elect a new ruler as&  fast as possible./"
    stog.msg[8s] = "\\E1* so^1, uh..^1.&* by process of&  elimination.../"
    stog.msg[9s] = "\\E2* papyrus became the&  ruler?/"
    stog.msg[10s] = "\\E1* why doesn't he talk&  to you about this.../"
    call (scr_papface[]:int32 (var 0s) (var 11s))
    stog.msg[12s] = "\\E0HELLO!!^1!&HUMAN!!!/"
    stog.msg[13s] = "\\E3IT'S STRANGE./"
    stog.msg[14s] = "\\E3ASGORE^1, ALPHYS^1,&METTATON^1, AND&UNDYNE WENT AWAY./"
    stog.msg[15s] = "\\E0SANS SAYS THEY&WENT ON VACATION./"
    stog.msg[16s] = "I HOPE THEY'RE&HAVING FUN!!!/"
    stog.msg[17s] = "\\E3OH YEAH./"
    stog.msg[18s] = "\\E0I'M THE RULER OF&THE UNDERGROUND&NOW!!!/"
    stog.msg[19s] = "EVERYTHING IS&IMPROVING A LOT&HERE./"
    stog.msg[20s] = "PRODUCTIVITY IS UP!/"
    stog.msg[21s] = "BECAUSE I TELL&EVERYONE TO KEEP&WORKING./"
    stog.msg[22s] = "AND^1, NO ONE GOES&HUNGRY!!!/"
    stog.msg[23s] = "BECAUSE I COOK&EVERYONE&SPAGHETTI./"
    stog.msg[24s] = "\\E3MEANWHILE^1, MY&BROTHER HANDLES&THE PAPERWORK./"
    stog.msg[25s] = "\\E3STRANGELY..^1.&HE SEEMS TO BE&WORKING HARD?/"
    stog.msg[26s] = "\\E3THIS SOUNDS MESSED&UP..^1. BUT.../"
    stog.msg[27s] = "\\E5I'M PROUD..^1.&OF HIM???/"
    stog.msg[28s] = "OH NO!!!!/"
    stog.msg[29s] = "\\E0AS FOR OUR HUMAN&POLICY.../"
    stog.msg[30s] = "\\E3WE'VE DECIDED^1, UM./"
    stog.msg[31s] = "SANS^1, WHAT WAS IT?/"
    call (scr_sansface[]:int32 (var 2s) (var 32s))
    stog.msg[33s] = "\\E2* we can't judge&  humans to be all&  good or all bad./"
    call (scr_papface[]:int32 (var 0s) (var 34s))
    stog.msg[35s] = "\\E0RIGHT^1!&SO IT'S CASE-BY-&CASE!/"
    stog.msg[36s] = "IF THEY'RE EVIL..^1.&WE GIVE THEM&PUZZLES!/"
    stog.msg[37s] = "IF THEY'RE GOOD..^1.&WE ALSO GIVE&THEM PUZZLES!/"
    stog.msg[38s] = "THAT SEEMS TO BE&THE BEST WAY!/"
    stog.msg[39s] = "\\E0.../"
    stog.msg[40s] = "\\E3.../"
    stog.msg[41s] = "IS SANS GONE?/"
    stog.msg[42s] = "\\E6YOU KNOW.../"
    stog.msg[43s] = "DON'T TELL MY&BROTHER, BUT.../"
    stog.msg[44s] = "DESPITE THE&IMPROVEMENTS&WE'VE MADE.../"
    stog.msg[45s] = "SOMETIMES THIS JOB&IS KIND OF HARD./"
    stog.msg[46s] = "SINCE THE KING&WENT AWAY.../"
    stog.msg[47s] = "LOTS OF PEOPLE&JUST WANT TO&GIVE UP./"
    stog.msg[48s] = "SOMETIMES, EVEN MY&BEST&ENCOURAGEMENT.../"
    stog.msg[49s] = "DOESN'T WORK./"
    stog.msg[50s] = "AND^1, AND^1, I MISS&UNDYNE^1, TOO./"
    stog.msg[51s] = "SHE NEVER ANSWERS&MY PHONE CALLS.../"
    stog.msg[52s] = "\\E5SHE MUST BE& HAVING A LOT OF&FUN ON VACATION./"
    stog.msg[53s] = "\\E6I JUST WISH SHE'D&SEND A POSTCARD./"
    stog.msg[54s] = ".../"
    stog.msg[55s] = "\\E5BUT HEY!!!/"
    stog.msg[56s] = "\\E4I WON'T GIVE UP!/"
    stog.msg[57s] = "I CAN'T GIVE UP!/"
    stog.msg[58s] = "I HAVE TO MAKE&EVERYONE GIVE UP&GIVING UP!/"
    stog.msg[59s] = "\\E0WE'LL GET OUT&OF HERE^1, SLOWLY!!!/"
    stog.msg[60s] = "THEN WE CAN ALL&HANG OUT AGAIN!!!/"
    stog.msg[61s] = "\\E0NYEH HEH HEH!!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 8s
0x00437C:
    if !(== self.con 61s) goto 0x0045FC
0x004390:
    global.facechoice = 3s
    global.faceemotion = 3s
    stog.msg[0s] = "\\E3* it's been a while^1,&  huh?/"
    stog.msg[1s] = "* .../"
    stog.msg[2s] = "* things have gotten&  pretty bad here./"
    stog.msg[3s] = "\\E0* everyone considered a&  leader disappeared&  overnight./"
    stog.msg[4s] = "\\E1* it's gotten so quiet./"
    stog.msg[5s] = "\\E3* there's a bad feeling&  hanging over&  everyone./"
    stog.msg[6s] = "* like everyone's just&  going to die here^1,&  trapped in the dark.../"
    stog.msg[7s] = "\\E2* ... i bet you're&  wondering why i'm&  not the ruler./"
    stog.msg[8s] = "\\E1* eh./"
    stog.msg[9s] = "\\E1* i'm not cut out&  for something like&  that./"
    stog.msg[10s] = "\\E2* i like to take it&  easy^1, you know?/"
    stog.msg[11s] = "\\E2* .../"
    stog.msg[12s] = "\\E3* ... that's a joke./"
    stog.msg[13s] = "\\E3* this is what happens&  when people like me&  take it easy./"
    stog.msg[14s] = "* .../"
    stog.msg[15s] = "\\E4* see ya./%%"
    if !(>= global.kills 20s) goto 0x0045CC
0x00453C:
    stog.msg[15s] = "\\E0* hey^1, at least things&  are less crowded./"
    stog.msg[16s] = "\\E1* 'cause of all the&  people you killed./"
    stog.msg[17s] = "\\E2* hope that was a good&  experience for you./"
    stog.msg[18s] = "\\E3* .../"
    stog.msg[19s] = "\\E2* just kidding^1.&* i don't really hope&  that./"
    stog.msg[20s] = "\\E4* go to hell./%%"
0x0045CC:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 8s
0x0045FC:
    if !(== self.con 71s) goto 0x004748
0x004610:
    global.facechoice = 3s
    global.faceemotion = 3s
    stog.msg[0s] = "\\E3* it's been a while^1,&  huh?/"
    stog.msg[1s] = "* .../"
    stog.msg[2s] = "\\E1* it seems a number of&  important people&  disappeared overnight./"
    stog.msg[3s] = "* but no one else was&  harmed./"
    stog.msg[4s] = "\\E0* the people were&  confused^1.&* it was complete bedlam./"
    stog.msg[5s] = "\\E3* somehow^1, at the end of&  the day.../"
    stog.msg[6s] = "\\E1* a small^1, white dog&  became president of&  the underground./"
    stog.msg[7s] = "\\E0* it sleeps on the&  throne and does&  absolutely nothing./"
    stog.msg[8s] = "\\E1* strangely^1, it seems&  this is the best&  life for everyone./"
    stog.msg[9s] = "\\E2* thanks./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 8s
0x004748:
    if !(== self.con 81s) goto 0x0048C4
0x00475C:
    global.facechoice = 3s
    global.faceemotion = 3s
    stog.msg[0s] = "\\E3* it's been a while^1,&  huh?/"
    stog.msg[1s] = "* .../"
    stog.msg[2s] = "\\E1* i'll be honest./"
    stog.msg[3s] = "\\E2* i have no idea what&  happened for you&  to get here./"
    stog.msg[4s] = "\\E1* this is actually some&  sort of error-&  handling message./"
    stog.msg[5s] = "\\E3* so^1, if you're getting&  this ending.../"
    stog.msg[6s] = "\\E1* tell whoever made the&  game^1, okay?/"
    stog.msg[7s] = "\\E2* they'll fix it^1, or&  if it's a novel&  situation.../"
    stog.msg[8s] = "\\E1* they might even add&  another ending to&  the game./"
    stog.msg[9s] = "\\E3* chances are^1, though.../"
    stog.msg[10s] = "\\E4* you're just a dirty&  hacker^1, aren't you?/"
    stog.msg[11s] = "\\E1* yeah^1, get outta here./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 8s
0x0048C4:
    if !(== self.con 91s) goto 0x004CA0
0x0048D8:
    global.typer = 47s
    stog.flag[430s] = 4s
    global.facechoice = 6s
    global.faceemotion = 0s
    stog.msg[0s] = "\\E1* H..^1. hey./"
    stog.msg[1s] = "\\E0* So..^1. you're the one&  who killed all my&  friends./"
    stog.msg[2s] = "\\E1* I just called to tell&  you./"
    stog.msg[3s] = "\\E0* I hate you./"
    stog.msg[4s] = "\\E1* Yet..^1. strangely..^1.&* It's because of you^1,&  that.../"
    stog.msg[5s] = "\\E2* That I was forced to&  become a better&  person./"
    stog.msg[6s] = "\\E0* When I first saw you&  hurting people.../"
    stog.msg[7s] = "* I just sat there^1.&* Watching you./"
    stog.msg[8s] = "\\E1* I felt so guilty knowing&  I hadn't do anything&  to stop you./"
    stog.msg[9s] = "\\E3* I felt like all I&  do was.../"
    stog.msg[10s] = "\\E4* Was hope you would&  destroy me^1, too./"
    stog.msg[11s] = "\\E1* But when Undyne called^1,&  with crazed desperation&  in her voice.../"
    stog.msg[12s] = "\\E0* I..^1.&* I realized I had to do&  something./"
    stog.msg[13s] = "\\E1* Even if it meant&  everybody would.../"
    stog.msg[14s] = "* Have to learn the&  truth about me./"
    stog.msg[15s] = "\\E2* It's strange^1.&* You know?/"
    stog.msg[16s] = "\\E5* Even after all the&  bad things I did./"
    stog.msg[17s] = "* People treated me like&  a hero./"
    stog.msg[18s] = "\\E2* And then they..^1.&* Asked me to run&  everything./"
    stog.msg[19s] = "\\E5* So I'm trying my&  best^1, here./"
    stog.msg[20s] = "\\E2* I think I have some&  good policies^1, but^1,&  y-you know.../"
    stog.msg[21s] = "\\E1* Talking to people&  still makes me&  nervous./"
    stog.msg[22s] = "\\E0* I'm no ASGORE^1,&  you know?/"
    stog.msg[23s] = "\\E2* .../"
    stog.msg[24s] = "\\E4* God..^1.&* I miss everyone./"
    stog.msg[25s] = "\\E3* Now that they're&  gone^1, it.../"
    stog.msg[26s] = "* It feels so clear what&  I should have done./"
    stog.msg[27s] = "\\E3* What I should have&  said./"
    stog.msg[28s] = "\\E6* Undyne..^1.&* Asgore.../"
    stog.msg[29s] = "* Mettaton.../"
    stog.msg[30s] = "\\E5* At least Sans is&  still here./"
    stog.msg[31s] = "\\E4* He's..^1.&* He's a good guy^1.&* And with him around.../"
    stog.msg[32s] = "\\E4* I.../"
    stog.msg[33s] = "\\E2* Sigh./"
    stog.msg[34s] = "\\E1* You know^1.&* Just daydreaming here^1.&* But.../"
    stog.msg[35s] = "\\E5* I really should have&  killed you when I&  had the chance./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 8s
0x004CA0:
    exit
