0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 37s
    global.facechoice = 5s
    global.faceemotion = 0s
    push -5s
    if !(== 7s:flag 0s) goto 0x000738
0x000058:
    stog.msg[0s] = "* Hey^1, punk^1!&* What's up!?/"
    stog.msg[1s] = "\\E1* A-ACHOO!/"
    stog.msg[2s] = "\\E2* Papyrus^1, how can you&  stand this cold?/"
    call (scr_papface[]:int32 (var 0s) (var 3s))
    stog.msg[4s] = "I HAVE NO SKIN./"
    call (scr_undface[]:int32 (var 9s) (var 5s))
    stog.msg[6s] = "* So why don't we&  stand in Grillby's&  instead?/"
    call (scr_papface[]:int32 (var 3s) (var 7s))
    stog.msg[8s] = "BECAUSE I HATE&GREASE./"
    call (scr_undface[]:int32 (var 2s) (var 9s))
    stog.msg[10s] = "* But you don't have&  a stomach!!/"
    call (scr_papface[]:int32 (var 0s) (var 11s))
    stog.msg[12s] = "NO^1, BUT I HAVE&STANDARDS!!!/%%"
    if !(> self.talkedto 0s) goto 0x000304
0x0001B8:
    stog.msg[0s] = "* Papyrus.../"
    stog.msg[1s] = "\\E1* Why do you live&  in an icy wasteland?/"
    call (scr_papface[]:int32 (var 0s) (var 2s))
    stog.msg[3s] = "THE RENT'S CHEAP./"
    call (scr_undface[]:int32 (var 9s) (var 4s))
    stog.msg[5s] = "* Really^1?&* Don't you live in&  a huge house?/"
    call (scr_papface[]:int32 (var 0s) (var 6s))
    stog.msg[7s] = "YEAH^1, BUT MY&BROTHER PAYS&FOR IT./"
    call (scr_undface[]:int32 (var 2s) (var 8s))
    stog.msg[9s] = "* Where's your brother&  get the money to&  pay for it...?/"
    call (scr_papface[]:int32 (var 3s) (var 10s))
    stog.msg[11s] = "OH^1, THAT'S SIMPLE./"
    stog.msg[12s] = "\\E0IT'S A MYSTERY./%%"
0x000304:
    push -5s
    if !(== 493s:flag 9s) goto 0x000514
0x000320:
    global.faceemotion = 1s
    stog.msg[0s] = "* So^1? What are you&  waiting for?/"
    stog.msg[1s] = "* The sooner you get&  it over with^1, the&  better!/%%"
    push -5s
    if (== 494s:flag 1s) goto 0x000394
0x000378:
    push -5s
    push (== 494s:flag 2s)
    goto 0x000398
0x000394:
    push 1s
0x000398:
    if !pop goto 0x000514
0x00039C:
    call (scr_itemget[]:int32 (var 57s))
    if !(== self.noroom 1s) goto 0x000404
0x0003C4:
    global.faceemotion = 1s
    stog.msg[0s] = "* Hey^1, you sure&  are carrying a&  lot of things./"
    stog.msg[1s] = "* If someone needed&  to give you a thing^1,&  they sure couldn't!/%%"
    goto 0x000514
0x000404:
    global.faceemotion = 1s
    stog.msg[0s] = "* What^1?&* You LOST the letter!?/"
    stog.msg[1s] = "* What the HECK!^1?&* How!^1? Why!?/"
    stog.msg[2s] = "\\E7* Ughhh..^1.&* This is unbelievable./"
    stog.msg[3s] = "* I should be really&  disappointed in you./"
    stog.msg[4s] = "\\E9* But^1, uh^1, to tell&  you the truth^1, I'm&  kind of relieved!/"
    stog.msg[5s] = "\\E1* While you were gone^1,&  I actually wrote&  a WAY BETTER letter!/"
    stog.msg[6s] = "\\E6* And this time^1, you&  WON'T lose it!!!/"
    stog.msg[7s] = "\\E2* I guarantee it!!!/"
    stog.msg[8s] = "\\TS \\F0 \\T0 %"
    stog.msg[9s] = "* (You got the Undyne Letter&  EX.)/%%"
    stog.flag[494s] = 3s
0x000514:
    push -5s
    if !(== 493s:flag 8s) goto 0x000738
0x000530:
    call (scr_itemget[]:int32 (var 56s))
    if !(== self.noroom 1s) goto 0x000598
0x000558:
    global.faceemotion = 9s
    stog.msg[0s] = "* Hey^1, I have something&  to give you.../"
    stog.msg[1s] = "\\E2* But you're carrying&  way too much!!!/%%"
    goto 0x000738
0x000598:
    global.faceemotion = 9s
    stog.msg[0s] = "* Um^1, so^1, I have a&  favor to ask you./"
    stog.msg[1s] = "\\E0* Uuuuh^1, I..^1.&* I need you to deliver&  this letter./"
    stog.msg[2s] = "\\E9* To Dr. Alphys./"
    stog.msg[3s] = "\\E1* Huh!^1?&* Why don't I do it&  myself...?/"
    stog.msg[4s] = "\\E8* ... um^1.&* W-well.../"
    stog.msg[5s] = "\\E9* I-it's kind of&  personal^1, but we're&  friends..^1. so.../"
    stog.msg[6s] = "\\E8* I'll t-tell you.../"
    stog.msg[7s] = "\\E6* Hotland SUUUUCKS!!^1!&* I don't wanna have&  to go over there!!!/"
    stog.msg[8s] = "\\E3* So here you go./"
    stog.msg[9s] = "\\TS \\F0 \\T0 %"
    stog.msg[10s] = "* (You got the Undyne's Letter.)/"
    call (scr_undface[]:int32 (var 9s) (var 11s))
    stog.msg[12s] = "* Oh^1, and if you&  read it.../"
    stog.msg[13s] = "\\E2* I'll KILL you./"
    stog.msg[14s] = "\\E9* Thanks so much^1!&* You're the best!!/%%"
    stog.flag[493s] = 9s
    stog.flag[8s] = 1s
0x000738:
    push -5s
    if !(== 7s:flag 1s) goto 0x000900
0x000754:
    push -5s
    if !(== 193s:flag 0s) goto 0x00077C
0x000770:
    global.msc = 806s
0x00077C:
    push -5s
    if !(== 193s:flag 1s) goto 0x000860
0x000798:
    stog.msg[0s] = "* Hey^1, Alphys^1!&* Alphys!/"
    stog.msg[1s] = "\\E1* Do you think we&  can watch something&  with fighting next?/"
    stog.msg[2s] = "\\E9* Oh^1, and then...&* Something..^1.&* With princesses!?/"
    stog.msg[3s] = "\\E2* Or FIGHTING&  princesses!?/"
    call (scr_alface[]:int32 (var 5s) (var 4s))
    stog.msg[5s] = "\\E5* I-I'll see if I&  can manage to find&  any like that^1, Undyne./"
    call (scr_undface[]:int32 (var 6s) (var 6s))
    stog.msg[7s] = "\\E6* Yayyyyy!/%%"
0x000860:
    push -5s
    if !(>= 193s:flag 2s) goto 0x0008DC
0x00087C:
    stog.msg[0s] = "\\E0* Hey Frisk^1, why don't&  you go say hi to&  Napstablook?/"
    stog.msg[1s] = "\\E1* Oh^1, tell them I&  said hi^1, too!/%%"
    push -5s
    if !(== 194s:flag 0s) goto 0x0008DC
0x0008C8:
    stog.flag[194s] = 1s
0x0008DC:
    push -5s
    stog.flag[(+ 193s:flag 1s)] = 193s
0x000900:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000940:
    exit
