0x000000:
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    global.msc = 0s
    stog.msg[0s] = "THIS IS IT, DARLING!&SAY GOODBYE!/%%"
    self.turns = (+ self.turns 1s)
    if !(> self.turns 0s) goto 0x0002A4
0x000090:
    if !(== self.turns 1s) goto 0x00011C
0x0000A4:
    stog.msg[0s] = "YES, I WAS THE ONE&THAT RE-ARRANGED&THE CORE!/"
    stog.msg[1s] = "I WAS THE ONE THAT&HIRED EVERYONE TO&KILL YOU!/"
    stog.msg[2s] = "THAT, HOWEVER, WAS A&SHORT-SIGHTED PLAN./"
    stog.msg[3s] = "YOU KNOW WHAT WOULD&BE A HUNDRED TIMES&BETTER?/"
    stog.msg[4s] = "KILLING YOU MYSELF!!/%%"
0x00011C:
    if !(== self.turns 2s) goto 0x000190
0x000130:
    stog.msg[0s] = "LISTEN, DARLING.&I'VE SEEN YOU FIGHT./"
    stog.msg[1s] = "YOU'RE WEAK./"
    stog.msg[2s] = "IF YOU CONTINUE&FORWARD, ASGORE WILL&TAKE YOUR SOUL./"
    stog.msg[3s] = "AND WITH YOUR SOUL,&ASGORE WILL DESTROY&HUMANITY./%%"
0x000190:
    if !(== self.turns 3s) goto 0x0001D4
0x0001A4:
    stog.msg[0s] = "BUT IF I GET YOUR&SOUL, I CAN STOP&ASGORE'S PLAN!/"
    stog.msg[1s] = "I CAN SAVE HUMANITY&FROM DESTRUCTION!/%%"
0x0001D4:
    if !(== self.turns 4s) goto 0x000248
0x0001E8:
    stog.msg[0s] = "THEN, USING YOUR SOUL,&I'LL CROSS THROUGH&THE BARRIER.../"
    stog.msg[1s] = "AND BECOME THE STAR&I'VE ALWAYS DREAMED&OF BEING!/"
    stog.msg[2s] = "HUNDREDS, THOUSANDS.../"
    stog.msg[3s] = "NO!&MILLIONS OF HUMANS&WILL WATCH ME!/%%"
0x000248:
    if !(== self.turns 5s) goto 0x0002A4
0x00025C:
    stog.msg[0s] = "GLITZ! GLAMOUR!&I'LL FINALLY HAVE&IT ALL!/"
    stog.msg[1s] = "SO WHAT IF A FEW&PEOPLE HAVE TO DIE?/"
    stog.msg[2s] = "THAT'S SHOW BUSINESS,&BABY!/%%"
0x0002A4:
    global.typer = 51s
    call (scr_blcon[]:int32 (var 1s) (- (int32 self.mypart1):y 120s) (- (int32 self.mypart1):x 320s))
    global.border = 24s
    if !(== self.turns 0s) goto 0x000328
0x00031C:
    global.border = 0s
0x000328:
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x0003B8:
    exit
