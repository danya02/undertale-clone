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
    push (< self.mycommand 25s)
    goto 0x0000E0
0x0000DC:
    push 0s
0x0000E0:
    if !pop goto 0x0000FC
0x0000E4:
    stog.msg[0s] = "Brush my&teeth?&No way&in heck!"
0x0000FC:
    if !(>= self.mycommand 25s) goto 0x000124
0x000110:
    push (< self.mycommand 50s)
    goto 0x000128
0x000124:
    push 0s
0x000128:
    if !pop goto 0x000144
0x00012C:
    stog.msg[0s] = "NEVER do&your&homework&!!"
0x000144:
    if !(>= self.mycommand 50s) goto 0x00016C
0x000158:
    push (< self.mycommand 75s)
    goto 0x000170
0x00016C:
    push 0s
0x000170:
    if !pop goto 0x00018C
0x000174:
    stog.msg[0s] = "No&bedtime!&Only&DEADTIME"
0x00018C:
    if !(>= self.mycommand 75s) goto 0x0001B4
0x0001A0:
    push (<= self.mycommand 100s)
    goto 0x0001B8
0x0001B4:
    push 0s
0x0001B8:
    if !pop goto 0x0001D4
0x0001BC:
    stog.msg[0s] = "*turns&music up&all the&way*"
0x0001D4:
    if !(== self.whatiheard 3s) goto 0x0002C0
0x0001E8:
    if !(== self.joketold 1s) goto 0x000280
0x0001FC:
    if !(== self.gg 0s) goto 0x000228
0x000210:
    stog.msg[0s] = "Do you...&really&..."
0x000228:
    if !(== self.gg 1s) goto 0x000254
0x00023C:
    stog.msg[0s] = "I don't&think&you..."
0x000254:
    if !(== self.gg 2s) goto 0x000280
0x000268:
    stog.msg[0s] = "To tell&you the&truth..."
0x000280:
    if !(== self.joketold 0s) goto 0x0002AC
0x000294:
    stog.msg[0s] = "You&don't&know my&cause!!"
0x0002AC:
    stog.alarm[5s] = 108s
0x0002C0:
    if !(!= self.whatiheard 1s) goto 0x000338
0x0002D4:
    if !(!= self.whatiheard 3s) goto 0x000338
0x0002E8:
    if !(!= self.whatiheard 4s) goto 0x000338
0x0002FC:
    if !(!= self.whatiheard 19s) goto 0x000338
0x000310:
    if !(!= self.whatiheard 20s) goto 0x000338
0x000324:
    push (!= self.mercymod -25s)
    goto 0x00033C
0x000338:
    push 0s
0x00033C:
    if !pop goto 0x00034C
0x000340:
    self.joketold = 1s
0x00034C:
    if !(== self.whatiheard 4s) goto 0x0003E4
0x000360:
    if !(== self.gg 0s) goto 0x00038C
0x000374:
    stog.msg[0s] = "Only&Snowy&can do&that."
0x00038C:
    if !(== self.gg 1s) goto 0x0003B8
0x0003A0:
    stog.msg[0s] = "You&ain't&Snowy."
0x0003B8:
    if !(== self.gg 2s) goto 0x0003E4
0x0003CC:
    stog.msg[0s] = "Stick to&puns.&They're&better."
0x0003E4:
    if !(== self.whatiheard 1s) goto 0x000488
0x0003F8:
    if !(== self.gg 0s) goto 0x000424
0x00040C:
    stog.msg[0s] = "WRONG!&Let's&fight&and die."
0x000424:
    if !(== self.gg 1s) goto 0x000450
0x000438:
    stog.msg[0s] = "Actually&...&Death?"
0x000450:
    if !(== self.gg 2s) goto 0x00047C
0x000464:
    stog.msg[0s] = "Defiance&can't be&defied!"
0x00047C:
    self.joketold = 0s
0x000488:
    if !(== self.whatiheard 20s) goto 0x00052C
0x00049C:
    if !(== self.gg 0s) goto 0x0004C8
0x0004B0:
    stog.msg[0s] = "IT'S&JUST&LIKE&'EM"
0x0004C8:
    if !(== self.gg 1s) goto 0x0004F4
0x0004DC:
    stog.msg[0s] = "HAHA&WOWEE"
0x0004F4:
    if !(== self.gg 2s) goto 0x000520
0x000508:
    stog.msg[0s] = "YOU&NAILED&IT"
0x000520:
    self.mercymod = 200s
0x00052C:
    if !(== self.whatiheard 19s) goto 0x0005D0
0x000540:
    if !(== self.gg 0s) goto 0x00056C
0x000554:
    stog.msg[0s] = "Where's&Snowy&right&now?"
0x00056C:
    if !(== self.gg 1s) goto 0x000598
0x000580:
    stog.msg[0s] = "Ha...&Ha..."
0x000598:
    if !(== self.gg 2s) goto 0x0005C4
0x0005AC:
    stog.msg[0s] = "Nice&try,&laugh&Picasso."
0x0005C4:
    self.mercymod = -25s
0x0005D0:
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
0x0006E0:
    exit
