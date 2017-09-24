0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 47s
    global.facechoice = 6s
    global.faceemotion = 0s
    push -5s
    if !(== 196s:flag 0s) goto 0x000064
0x000058:
    global.msc = 808s
0x000064:
    push -5s
    if !(== 196s:flag 1s) goto 0x0000F8
0x000080:
    stog.msg[0s] = "\\E0* On second thought^1,&  maybe I WON'T write&  fanfic of real people./"
    stog.msg[1s] = "\\E7* I mean^1, isn't real life&  already the greatest&  fanfiction of all?/"
    stog.msg[2s] = "\\E8* .../"
    stog.msg[3s] = "\\E3* Uh^1, don't tell&  anyone I said that./"
    stog.msg[4s] = "\\E1* Cause I'm gonna&  post it online!/%%"
0x0000F8:
    push -5s
    if !(== 196s:flag 2s) goto 0x000390
0x000114:
    stog.msg[0s] = "\\E0* I sure am excited&  to finally use the&  human internet./"
    stog.msg[1s] = "\\E7* I bet they have all&  sorts of things Undyne&  and I can watch!/"
    call (scr_undface[]:int32 (var 6s) (var 2s))
    stog.msg[3s] = "\\E6* Oh man!!!/"
    stog.msg[4s] = "* We're gonna be&  able to watch&  anime online!?/"
    call (scr_alface[]:int32 (var 7s) (var 5s))
    stog.msg[6s] = "\\E7* Of course^1, Undyne!/"
    stog.msg[7s] = "\\E2* What do you think&  we've been fighting&  for all along?/"
    call (scr_sansface[]:int32 (var 2s) (var 8s))
    stog.msg[9s] = "\\E2* yeah^1, what do you.../"
    stog.msg[10s] = "\\E1* whoops./"
    call (scr_alface[]:int32 (var 1s) (var 11s))
    stog.msg[12s] = "\\E1* Jinx^1!&* I knew you were&  gonna make that joke!/"
    call (scr_papface[]:int32 (var 3s) (var 13s))
    stog.msg[14s] = "\\E3WAIT^1, ALPHYS, I&DIDN'T KNOW YOU&KNEW SANS./"
    call (scr_alface[]:int32 (var 5s) (var 15s))
    stog.msg[16s] = "\\E5* Well..^1.&* I.../"
    call (scr_sansface[]:int32 (var 2s) (var 17s))
    stog.msg[18s] = "\\E2* doesn't everybody?/"
    call (scr_torface[]:int32 (var 0s) (var 19s))
    stog.msg[20s] = "\\E0* Who the hell is Sans?/"
    stog.msg[21s] = "\\E8* .../"
    stog.msg[22s] = "\\E0* Who the HECK is Sans?/"
    call (scr_alface[]:int32 (var 1s) (var 23s))
    stog.msg[24s] = "\\E1* TORIEL!?!?!/%%"
0x000390:
    push -5s
    if !(>= 196s:flag 3s) goto 0x0003F4
0x0003AC:
    stog.msg[0s] = "\\E0* Hey Frisk^1, why&  don't you go look&  for Mettaton?/"
    stog.msg[1s] = "\\E8* He was here for&  a while^1, too.../"
    stog.msg[2s] = "\\E0* But he said he&  had to go somewhere./%%"
0x0003F4:
    push -5s
    stog.flag[(+ 196s:flag 1s)] = 196s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000458:
    exit
