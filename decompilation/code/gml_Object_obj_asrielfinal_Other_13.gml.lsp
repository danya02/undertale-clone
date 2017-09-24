0x000000:
    push -5s
    if !(!= 501s:flag 3s) goto 0x0002FC
0x00001C:
    self.blcon = (instance_create[]:int32 (var 186s) self.y (+ self.x 100s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = ""
    if !(< self.mycommand 75s) goto 0x0000D0
0x0000B8:
    stog.msg[0s] = ""
0x0000D0:
    if !(< self.mycommand 50s) goto 0x0000FC
0x0000E4:
    stog.msg[0s] = ""
0x0000FC:
    if !(< self.mycommand 25s) goto 0x000128
0x000110:
    stog.msg[0s] = ""
0x000128:
    if !(== self.whatiheard 1s) goto 0x000154
0x00013C:
    stog.msg[0s] = ""
0x000154:
    if !(== self.whatiheard 3s) goto 0x000180
0x000168:
    stog.msg[0s] = ""
0x000180:
    if !(== self.whatiheard 4s) goto 0x0001AC
0x000194:
    stog.msg[0s] = ""
0x0001AC:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    pushenv (int32 self.blcon) 0x00023C
0x000230:
    call (instance_destroy[]:int32 )
0x00023C:
    popenv 0x000230
0x000240:
    pushenv (int32 self.blconwd) 0x00025C
0x000250:
    call (instance_destroy[]:int32 )
0x00025C:
    popenv 0x000250
0x000260:
    global.border = 17s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x0002FC:
    push -5s
    if !(== 501s:flag 0s) goto 0x000674
0x000318:
    self.blcon = (instance_create[]:int32 (var 187s) (var 50s) (var 400s))
    global.msc = 0s
    global.typer = 86s
    push -5s
    if (== 12s:tempvalue 0s) goto 0x000390
0x000374:
    push -5s
    push (== 12s:tempvalue 1s)
    goto 0x000394
0x000390:
    push 1s
0x000394:
    if !pop goto 0x0003B0
0x000398:
    stog.msg[0s] = "Urah ha ha ha...&Behold my TRUE power!/%%"
0x0003B0:
    push -5s
    if !(== 12s:tempvalue 2s) goto 0x00042C
0x0003CC:
    stog.msg[0s] = "I can feel it.../"
    stog.msg[1s] = "Every time you die^1,&your grip on this&world slips away./"
    stog.msg[2s] = "Every time you die^1,&your friends forget&you a little more./"
    stog.msg[3s] = "Your life will end&here^1, in a world&where no one&remembers you.../%%"
0x00042C:
    push -5s
    if !(== 12s:tempvalue 3s) goto 0x0004A8
0x000448:
    stog.msg[0s] = "Still^1, you're&hanging on...?/"
    stog.msg[1s] = "That's fine./"
    stog.msg[2s] = "In a few moments^1,&you'll forget&everything^1, too./"
    stog.msg[3s] = "That attitude will&serve you well in&your next life!/%%"
0x0004A8:
    push -5s
    if !(== 12s:tempvalue 4s) goto 0x000524
0x0004C4:
    stog.msg[0s] = "Ura ha ha.../"
    stog.msg[1s] = "Still!?/"
    stog.msg[2s] = "Come on.../"
    stog.msg[3s] = "Show me what good&your DETERMINATION&is now!/%%"
0x000524:
    push -5s
    if !(>= 12s:tempvalue 5s) goto 0x000558
0x000540:
    stog.msg[0s] = "Ultimate bepis/%%"
0x000558:
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    push -2000s
    stog.depth* = (int32 self.blcon)
    push -2200s
    stog.depth* = (int32 self.blconwd)
    global.border = 17s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x000674:
    push -5s
    if !(== 501s:flag 3s) goto 0x000E78
0x000690:
    self.blcon = (instance_create[]:int32 (var 187s) (var 50s) (var 400s))
    global.msc = 0s
    global.typer = 86s
    if !(== self.turns 0s) goto 0x00072C
0x0006E4:
    stog.msg[0s] = "\\E1Wh..^1.&what did you do...?/"
    stog.msg[1s] = "\\E3What's this&feeling...^1?&What's happening&to me?/"
    stog.msg[2s] = "\\E2No^1! NO^1!&I don't need&ANYONE!/%%"
0x00072C:
    if !(== self.turns 1s) goto 0x000788
0x000740:
    stog.msg[0s] = "\\E6STOP IT^1!&Get away from me!/"
    stog.msg[1s] = "Do you hear me!?/"
    stog.msg[2s] = "\\E2I'll tear you&apart!/%%"
0x000788:
    if !(== self.turns 2s) goto 0x000808
0x00079C:
    stog.msg[0s] = "\\E3.../"
    stog.msg[1s] = "\\E3.../"
    stog.msg[2s] = (+ global.charname "..^1.&Do you know why&I'm doing this...?/")
    stog.msg[3s] = "Why I keep fighting&to keep you&around...?/%%"
0x000808:
    if !(== self.turns 3s) goto 0x000894
0x00081C:
    stog.msg[0s] = "\\E4I'm doing this.../"
    stog.msg[1s] = (+ (+ "\\E6Because you're&special^1, " global.charname) "./")
    stog.msg[2s] = "You're the only one&that understands&me./"
    stog.msg[3s] = "You're the only one&who's any fun to&play with anymore./%%"
0x000894:
    if !(== self.turns 4s) goto 0x000950
0x0008A8:
    stog.msg[0s] = "\\E4.../"
    stog.msg[1s] = "No.../"
    stog.msg[2s] = "\\E1That's not JUST&it./"
    stog.msg[3s] = "I..^1. I.../"
    stog.msg[4s] = (+ (+ "\\E4I'm doing this&because I care&about you^1, " global.charname) "!/")
    stog.msg[5s] = "\\E4I care about you&more than anybody&else!/%%"
0x000950:
    if !(== self.turns 5s) goto 0x0009AC
0x000964:
    stog.msg[0s] = "\\E4I'm not ready for&this to end./"
    stog.msg[1s] = "I'm not ready for&you to leave./"
    stog.msg[2s] = "I'm not ready to&say goodbye to&someone like&you again.../%%"
0x0009AC:
    if !(== self.turns 6s) goto 0x000A14
0x0009C0:
    global.typer = 88s
    push 1s
    stog.cry* = (int32 self.mypart1)
    stog.msg[0s] = "\\E7So, please..^1.&STOP doing this.../"
    stog.msg[1s] = "AND JUST LET ME&WIN!!!/%%"
0x000A14:
    if !(== self.turns 7s) goto 0x000AC4
0x000A28:
    pushenv (int32 self.mypart1) 0x000A58
0x000A38:
    self.bodyfader = (+ self.bodyfader 0.2d)
0x000A58:
    popenv 0x000A38
0x000A5C:
    pushenv 566s 0x000A78
0x000A64:
    call (event_user[]:int32 (var 0s))
0x000A78:
    popenv 0x000A64
0x000A7C:
    global.typer = 87s
    stog.msg[0s] = "\\E5.../"
    stog.msg[1s] = (+ global.charname ".../%%")
0x000AC4:
    if !(== self.turns 8s) goto 0x000B68
0x000AD8:
    pushenv (int32 self.mypart1) 0x000B08
0x000AE8:
    self.bodyfader = (+ self.bodyfader 0.2d)
0x000B08:
    popenv 0x000AE8
0x000B0C:
    pushenv 566s 0x000B28
0x000B14:
    call (event_user[]:int32 (var 0s))
0x000B28:
    popenv 0x000B14
0x000B2C:
    global.typer = 87s
    stog.msg[0s] = (+ (+ "\\E5I'm so alone^1,&" global.charname) ".../%%")
0x000B68:
    if !(== self.turns 9s) goto 0x000C0C
0x000B7C:
    pushenv (int32 self.mypart1) 0x000BAC
0x000B8C:
    self.bodyfader = (+ self.bodyfader 0.2d)
0x000BAC:
    popenv 0x000B8C
0x000BB0:
    pushenv 566s 0x000BCC
0x000BB8:
    call (event_user[]:int32 (var 0s))
0x000BCC:
    popenv 0x000BB8
0x000BD0:
    global.typer = 87s
    stog.msg[0s] = (+ (+ "\\E5I'm so afraid^1,&" global.charname) ".../%%")
0x000C0C:
    if !(== self.turns 10s) goto 0x000CA4
0x000C20:
    pushenv (int32 self.mypart1) 0x000C50
0x000C30:
    self.bodyfader = (+ self.bodyfader 0.2d)
0x000C50:
    popenv 0x000C30
0x000C54:
    pushenv 566s 0x000C70
0x000C5C:
    call (event_user[]:int32 (var 0s))
0x000C70:
    popenv 0x000C5C
0x000C74:
    global.typer = 87s
    stog.msg[0s] = (+ global.charname "^1, I.../%%")
0x000CA4:
    if !(== self.turns 11s) goto 0x000D3C
0x000CB8:
    pushenv (int32 self.mypart1) 0x000CE8
0x000CC8:
    self.bodyfader = (+ self.bodyfader 0.2d)
0x000CE8:
    popenv 0x000CC8
0x000CEC:
    pushenv 566s 0x000D08
0x000CF4:
    call (event_user[]:int32 (var 0s))
0x000D08:
    popenv 0x000CF4
0x000D0C:
    global.typer = 87s
    stog.msg[0s] = "I..."
    self.endcon = 1s
0x000D3C:
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    push -2000s
    stog.depth* = (int32 self.blcon)
    push -2200s
    stog.depth* = (int32 self.blconwd)
    global.border = 17s
    if !(== self.turns 6s) goto 0x000DE8
0x000DDC:
    global.border = 4s
0x000DE8:
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x000E78:
    exit
