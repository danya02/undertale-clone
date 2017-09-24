0x000000:
    push -5s
    if !(== 370s:flag 2s) goto 0x0000A4
0x00001C:
    if !(== global.hp 1s) goto 0x0000A4
0x000030:
    push -5s
    if !(== 372s:flag 0s) goto 0x0000A4
0x00004C:
    if !(== self.con 0s) goto 0x0000A4
0x000060:
    if !(== global.interact 0s) goto 0x0000A4
0x000074:
    push -5s
    if !(== 367s:flag 0s) goto 0x0000A4
0x000090:
    push (< global.plot 184s)
    goto 0x0000A8
0x0000A4:
    push 0s
0x0000A8:
    if !pop goto 0x000158
0x0000AC:
    global.msc = 0s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "\\E3* H-hey^1, watch out^1!&* You're going to get&  really hurt!/"
    stog.msg[3s] = "\\E8* I can't watch this^1.&* I'm disabling the&  lasers./%%"
    call (scr_regulartext[]:int32 )
    call (snd_play[]:int32 (var 104s))
    global.interact = 1s
    self.con = 0.5d
0x000158:
    if !(== self.con 0.5d) goto 0x000190
0x000174:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x000194
0x000190:
    push 0s
0x000194:
    if !pop goto 0x0001D0
0x000198:
    if !(bool (instance_exists[]:int32 (var 1281s))) goto 0x0001D0
0x0001B0:
    [obj_bluelaser_o].active = 0s
    push 30s
    push 1281s
    stog.alarm[] = 0s
0x0001D0:
    if !(== self.con 0.5d) goto 0x000208
0x0001EC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00020C
0x000208:
    push 0s
0x00020C:
    if !pop goto 0x0002AC
0x000210:
    self.sc = (instance_create[]:int32 (var 90s) (var 0s) (var 0s))
    pushenv (int32 self.sc) 0x000274
0x000248:
    self.sound1 = 132s
    self.sound2 = 13s
    stog.alarm[1s] = 8s
0x000274:
    popenv 0x000248
0x000278:
    call (event_user[]:int32 (var 0s))
    self.con = 0.6d
    self.timer = 0s
0x0002AC:
    if !(== self.con 0.6d) goto 0x0004C4
0x0002C8:
    self.timer = (+ self.timer 1s)
    if !(> self.timer 30s) goto 0x0004C4
0x0002F4:
    self.con = 1s
    global.faceemotion = 0s
    stog.msg[0s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[1s] = "\\E6* Th..^1. there./"
    stog.msg[2s] = "\\E3* Be careful^1, okay?/"
    stog.msg[3s] = "\\E8* .../"
    stog.msg[4s] = "\\E8* I-I'm sorry^1, it's&  m-my fault you&  got hurt./"
    stog.msg[5s] = "\\E8* I didn't explain the&  lasers well enough^1,&  and../"
    stog.msg[6s] = "\\E8* If I hadn't..^1.&* If I hadn't..^1./"
    stog.msg[7s] = "\\E4* Um^1, delayed using&  my hacking skills^1,&  I mean.../"
    stog.msg[8s] = "\\E8* ... sorry./"
    stog.msg[9s] = "\\TS \\F0 \\T0 %"
    stog.msg[10s] = "* Click.../%%"
    if !(== self.room 166s) goto 0x0004B8
0x000428:
    stog.msg[1s] = "\\E8* I-I'm sorry^1, it's&  m-my fault you&  got hurt./"
    stog.msg[2s] = "\\E8* I didn't explain the&  lasers well enough^1,&  and.../"
    stog.msg[3s] = "\\E3* O-oh^1, there's no&  time for this now!/"
    stog.msg[4s] = "\\E8* Sorry./"
    stog.msg[5s] = "\\TS \\F0 \\T0 %"
    stog.msg[6s] = "* Click.../%%"
0x0004B8:
    call (scr_regulartext[]:int32 )
0x0004C4:
    if !(== self.con 1s) goto 0x0004F4
0x0004D8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0004F8
0x0004F4:
    push 0s
0x0004F8:
    if !pop goto 0x0005A4
0x0004FC:
    self.sc = (instance_create[]:int32 (var 90s) (var 0s) (var 0s))
    pushenv (int32 self.sc) 0x000560
0x000534:
    self.sound1 = 132s
    self.sound2 = 13s
    stog.alarm[1s] = 8s
0x000560:
    popenv 0x000534
0x000564:
    stog.flag[372s] = 1s
    global.interact = 0s
    call (event_user[]:int32 (var 0s))
    self.con = 2s
0x0005A4:
    exit
