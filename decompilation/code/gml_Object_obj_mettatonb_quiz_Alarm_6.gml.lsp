0x000000:
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    self.qno = 307.q
    global.msc = 0s
    if !(== self.qno 0s) goto 0x000088
0x000070:
    stog.msg[0s] = "LET'S START WITH&AN EASY ONE!!/%%"
0x000088:
    if !(== self.qno 1s) goto 0x0000B4
0x00009C:
    stog.msg[0s] = "HERE'S YOUR TERRIFIC&PRIZE!/%%"
0x0000B4:
    if !(== self.qno 2s) goto 0x0000E0
0x0000C8:
    stog.msg[0s] = "ENOUGH ABOUT YOU.&LET'S TALK ABOUT ME!/%%"
0x0000E0:
    if !(== self.qno 3s) goto 0x00010C
0x0000F4:
    stog.msg[0s] = "HERE'S ANOTHER EASY&ONE FOR YOU!/%%"
0x00010C:
    if !(== self.qno 4s) goto 0x000138
0x000120:
    stog.msg[0s] = "DON'T 'COUNT'&ON YOUR VICTORY.../%%"
0x000138:
    if !(== self.qno 5s) goto 0x000164
0x00014C:
    stog.msg[0s] = "LET'S PLAY MEMORY&GAME./%%"
0x000164:
    if !(== self.qno 6s) goto 0x000190
0x000178:
    stog.msg[0s] = "BUT CAN YOU GET&THIS ONE???/%%"
0x000190:
    if !(== self.qno 7s) goto 0x0001BC
0x0001A4:
    stog.msg[0s] = "HERE'S A SIMPLE&ONE./%%"
0x0001BC:
    if !(== self.qno 8s) goto 0x0001E8
0x0001D0:
    stog.msg[0s] = "TIME TO BREAK OUT&THE BIG GUNS!!/%%"
0x0001E8:
    stog.msg[1s] = "%%%"
    global.typer = 51s
    self.sxx = (- 301.x 320s)
    if !(< self.sxx 0s) goto 0x000244
0x000238:
    self.sxx = 0s
0x000244:
    call (scr_blcon[]:int32 (var 1s) (- 301.y 120s) self.sxx)
    global.border = 0s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x00030C:
    exit
