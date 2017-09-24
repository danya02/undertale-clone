0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y 52s) (+ self.x 145s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(== self.mercymod -25s) goto 0x0000A0
0x00008C:
    push (== (scr_monstersum[]:int32 ) 1s)
    goto 0x0000A4
0x0000A0:
    push 0s
0x0000A4:
    if !pop goto 0x0000B4
0x0000A8:
    self.mercymod = 0s
0x0000B4:
    if !(>= self.mycommand 0s) goto 0x0000DC
0x0000C8:
    push (< self.mycommand 14s)
    goto 0x0000E0
0x0000DC:
    push 0s
0x0000E0:
    if !pop goto 0x0000FC
0x0000E4:
    stog.msg[0s] = "\"Ice\"&to meet&you."
0x0000FC:
    if !(>= self.mycommand 14s) goto 0x000124
0x000110:
    push (< self.mycommand 28s)
    goto 0x000128
0x000124:
    push 0s
0x000128:
    if !pop goto 0x000144
0x00012C:
    stog.msg[0s] = "Ice puns&are&\"snow\"&problem"
0x000144:
    if !(>= self.mycommand 28s) goto 0x00016C
0x000158:
    push (< self.mycommand 42s)
    goto 0x000170
0x00016C:
    push 0s
0x000170:
    if !pop goto 0x00018C
0x000174:
    stog.msg[0s] = "Fights&you in&\"cold\"&blood."
0x00018C:
    if !(>= self.mycommand 42s) goto 0x0001B4
0x0001A0:
    push (<= self.mycommand 66s)
    goto 0x0001B8
0x0001B4:
    push 0s
0x0001B8:
    if !pop goto 0x0001D4
0x0001BC:
    stog.msg[0s] = "Better&not snow&\"flake\"&out!"
0x0001D4:
    if !(>= self.mycommand 66s) goto 0x0001FC
0x0001E8:
    push (<= self.mycommand 80s)
    goto 0x000200
0x0001FC:
    push 0s
0x000200:
    if !pop goto 0x00021C
0x000204:
    stog.msg[0s] = "My fave&ice&cereals:&\"frosted\""
0x00021C:
    if !(>= self.mycommand 80s) goto 0x000244
0x000230:
    push (<= self.mycommand 90s)
    goto 0x000248
0x000244:
    push 0s
0x000248:
    if !pop goto 0x000264
0x00024C:
    stog.msg[0s] = "\"Chill\"&out..."
0x000264:
    if !(>= self.mycommand 90s) goto 0x00028C
0x000278:
    push (<= self.mycommand 100s)
    goto 0x000290
0x00028C:
    push 0s
0x000290:
    if !pop goto 0x0002AC
0x000294:
    stog.msg[0s] = "M.. m..&macaroni&and&\"freeze\""
0x0002AC:
    if !(== self.mercymod -25s) goto 0x000344
0x0002C0:
    if !(== self.gg 0s) goto 0x0002EC
0x0002D4:
    stog.msg[0s] = "Do I&really&..."
0x0002EC:
    if !(== self.gg 1s) goto 0x000318
0x000300:
    stog.msg[0s] = "Hey..."
0x000318:
    if !(== self.gg 2s) goto 0x000344
0x00032C:
    stog.msg[0s] = "Guys...&guys..."
0x000344:
    if !(== self.whatiheard 3s) goto 0x000478
0x000358:
    if !(== self.joketold 1s) goto 0x000438
0x00036C:
    if !(== self.gg 0s) goto 0x000398
0x000380:
    stog.msg[0s] = "You have&good&taste!!&(In jokes)"
0x000398:
    if !(== self.gg 1s) goto 0x0003C4
0x0003AC:
    stog.msg[0s] = "See!?&Laughs!&Dad was&wrong!"
0x0003C4:
    if !(== self.gg 2s) goto 0x0003F0
0x0003D8:
    stog.msg[0s] = "Thanks,&you're&all&great."
0x0003F0:
    push -5s
    if !(== 57s:flag 0s) goto 0x000424
0x00040C:
    stog.msg[0s] = "See!?&Laughs!&Dad was&wrong!"
0x000424:
    stog.flag[57s] = 1s
0x000438:
    if !(== self.joketold 0s) goto 0x000464
0x00044C:
    stog.msg[0s] = "What are&YOU&laughin'&at?!?"
0x000464:
    stog.alarm[5s] = 108s
0x000478:
    if !(!= self.whatiheard 1s) goto 0x0004F0
0x00048C:
    if !(!= self.whatiheard 3s) goto 0x0004F0
0x0004A0:
    if !(!= self.whatiheard 4s) goto 0x0004F0
0x0004B4:
    if !(!= self.whatiheard 19s) goto 0x0004F0
0x0004C8:
    if !(!= self.whatiheard 20s) goto 0x0004F0
0x0004DC:
    push (!= self.mercymod -25s)
    goto 0x0004F4
0x0004F0:
    push 0s
0x0004F4:
    if !pop goto 0x000504
0x0004F8:
    self.joketold = 1s
0x000504:
    if !(== self.whatiheard 4s) goto 0x00059C
0x000518:
    if !(== self.gg 0s) goto 0x000544
0x00052C:
    stog.msg[0s] = "Is that&s'posed&to be&funny?"
0x000544:
    if !(== self.gg 1s) goto 0x000570
0x000558:
    stog.msg[0s] = "Ha...&Ha...&Nice&try."
0x000570:
    if !(== self.gg 2s) goto 0x00059C
0x000584:
    stog.msg[0s] = "I've&heard&that&one."
0x00059C:
    if !(== self.whatiheard 1s) goto 0x000640
0x0005B0:
    if !(== self.gg 0s) goto 0x0005DC
0x0005C4:
    stog.msg[0s] = "THIS&won't be&funny&either!"
0x0005DC:
    if !(== self.gg 1s) goto 0x000608
0x0005F0:
    stog.msg[0s] = "Is your&flesh&rotten&as you?"
0x000608:
    if !(== self.gg 2s) goto 0x000634
0x00061C:
    stog.msg[0s] = "(Insults&towards&humans)"
0x000634:
    self.joketold = 0s
0x000640:
    if !(== self.whatiheard 20s) goto 0x0006E4
0x000654:
    if !(== self.gg 0s) goto 0x000680
0x000668:
    stog.msg[0s] = "IT'S&JUST&LIKE&'EM"
0x000680:
    if !(== self.gg 1s) goto 0x0006AC
0x000694:
    stog.msg[0s] = "HAHA&YOU'RE&BETTER"
0x0006AC:
    if !(== self.gg 2s) goto 0x0006D8
0x0006C0:
    stog.msg[0s] = "YOU&NAILED&IT"
0x0006D8:
    self.mercymod = 200s
0x0006E4:
    if !(== self.whatiheard 19s) goto 0x000788
0x0006F8:
    if !(== self.gg 0s) goto 0x000724
0x00070C:
    stog.msg[0s] = "That's&not&like&me..."
0x000724:
    if !(== self.gg 1s) goto 0x000750
0x000738:
    stog.msg[0s] = "I don't&do it&that&way..."
0x000750:
    if !(== self.gg 2s) goto 0x00077C
0x000764:
    stog.msg[0s] = "It's&better&when I&do it..."
0x00077C:
    self.mercymod = -25s
0x000788:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    global.border = 6s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x000898:
    exit
