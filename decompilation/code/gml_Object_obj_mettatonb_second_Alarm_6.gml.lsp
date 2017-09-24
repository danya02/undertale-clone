0x000000:
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    global.msc = 0s
    stog.msg[0s] = "THIS IS IT, DARLING!&SAY GOODBYE!/%%"
    self.turns = (+ self.turns 1s)
    if !(> self.turns 1s) goto 0x0000AC
0x000090:
    push -5s
    push (< 385s:flag 2s)
    goto 0x0000B0
0x0000AC:
    push 0s
0x0000B0:
    if !pop goto 0x00022C
0x0000B4:
    if !(== self.turns 2s) goto 0x0000E0
0x0000C8:
    stog.msg[0s] = "HA!&THAT BUTTON WON'T&SAVE YOU NOW, DARLING!/%%"
0x0000E0:
    if !(== self.turns 3s) goto 0x00010C
0x0000F4:
    stog.msg[0s] = "YOU WOULDN'T DARE&USE THE [ACT] COMMAND&AND PRESS THAT&BUTTON!/%%"
0x00010C:
    if !(== self.turns 4s) goto 0x000138
0x000120:
    stog.msg[0s] = "THAT'S RIGHT!&DON'T PRESS IT!&I'LL DESTROY YOU!/%%"
0x000138:
    if !(== self.turns 5s) goto 0x000164
0x00014C:
    stog.msg[0s] = "WITHOUT THAT BUTTON,&YOU ARE INCHING&CLOSER AND CLOSER&TO YOUR DEMISE!/%%"
0x000164:
    if !(== self.turns 6s) goto 0x000190
0x000178:
    stog.msg[0s] = "ANY MINUTE NOW!&    /%%"
0x000190:
    if !(== self.turns 7s) goto 0x0001BC
0x0001A4:
    stog.msg[0s] = "ANY... MINUTE...&....NOW!/%%"
0x0001BC:
    if !(== self.turns 8s) goto 0x0001F4
0x0001D0:
    stog.msg[0s] = ".............&............/%%"
    self.turns = 7s
0x0001F4:
    if !(> self.turns 8s) goto 0x00022C
0x000208:
    stog.msg[0s] = "..........&...(COUGH)/%%"
    self.turns = 7s
0x00022C:
    if !(== self.con 10s) goto 0x00028C
0x000240:
    push -5s
    if !(== 0s:msg "OH!!!&THAT YELLOW GLOW...!/%%") goto 0x00028C
0x000260:
    if !(> self.turns 6s) goto 0x00028C
0x000274:
    stog.msg[0s] = "TOOK YOU LONG&ENOUGH!/%%"
0x00028C:
    stog.msg[1s] = "%%%"
    global.typer = 51s
    call (scr_blcon[]:int32 (var 1s) (- (int32 self.mypart1):y 120s) (- (int32 self.mypart1):x 320s))
    if !(> global.hp 1s) goto 0x00032C
0x000310:
    push -5s
    push (== 385s:flag 1s)
    goto 0x000330
0x00032C:
    push 0s
0x000330:
    if !pop goto 0x000340
0x000334:
    global.border = 6s
0x000340:
    if !(== self.turns 0s) goto 0x000360
0x000354:
    global.border = 0s
0x000360:
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x0003F0:
    exit
