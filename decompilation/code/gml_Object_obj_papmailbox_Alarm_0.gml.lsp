0x000000:
    self.myinteract = 3s
    global.msc = 565s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if (bool (instance_exists[]:int32 (var 1026s))) goto 0x00006C
0x000054:
    push (bool (instance_exists[]:int32 (var 1029s)))
    goto 0x000070
0x00006C:
    push 1s
0x000070:
    if !pop goto 0x000324
0x000074:
    global.facechoice = 4s
    global.typer = 19s
    global.faceemotion = 0s
    global.msc = 0s
    stog.msg[0s] = "HOW NICE OF YOU&TO CHECK MY MAIL&FOR ME./"
    stog.msg[1s] = "\\E3WAIT^1, NO^1.&THAT'S VERY&STRANGE./%%"
    if !(> self.talkedto 0s) goto 0x000118
0x0000E8:
    stog.msg[0s] = "\\E3STOP LOOKING IN&MY EMPTY&MAILBOX./"
    stog.msg[1s] = "\\E0THAT'S MY&EMPTINESS^1, NOT&YOURS./%%"
0x000118:
    if !(bool (instance_exists[]:int32 (var 1313s))) goto 0x000324
0x000130:
    self.h = 0s
    call (scr_itemcheck[]:int32 (var 56s))
    if !(== self.haveit 1s) goto 0x000170
0x000164:
    self.h = 1s
0x000170:
    call (scr_itemcheck[]:int32 (var 57s))
    if !(== self.haveit 1s) goto 0x0001A4
0x000198:
    self.h = 1s
0x0001A4:
    if !(== self.h 1s) goto 0x000324
0x0001B8:
    global.facechoice = 5s
    global.typer = 37s
    global.faceemotion = 1s
    stog.msg[0s] = "* Oh my god^1!&* The letter's not&  to PAPYRUS!!!/"
    call (scr_papface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "YEAH^1, UNDYNE'S&GOT A POINT!/"
    stog.msg[3s] = "\\E0WHY DIDN'T SHE&WRITE A LETTER&TO ME INSTEAD?/"
    call (scr_undface[]:int32 (var 1s) (var 4s))
    stog.msg[5s] = "* Fine^1, you want a&  letter!?/"
    stog.msg[6s] = "* I'll give you a&  letter!!!/"
    stog.msg[7s] = "\\E6* YOU GET AN \"F\"!/"
    call (scr_papface[]:int32 (var 5s) (var 8s))
    stog.msg[9s] = "OH NO!!!/"
    stog.msg[10s] = "\\E3WHAT'S THE F&FOR?/"
    call (scr_undface[]:int32 (var 9s) (var 11s))
    stog.msg[12s] = "* Friendship!!!/%%"
0x000324:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000364:
    exit
