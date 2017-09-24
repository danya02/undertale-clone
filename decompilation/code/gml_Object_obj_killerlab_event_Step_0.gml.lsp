0x000000:
    if !(== self.con 1s) goto 0x000044
0x000014:
    self.con = 2s
    push -1s
    self.nowx = 0s:view_xview
    [obj_mainchara].cutscene = 1s
0x000044:
    if !(== self.con 2s) goto 0x0000EC
0x000058:
    push -1s
    stog.view_xview[(+ 0s:view_xview 3s)] = 0s
    push -1s
    if !(>= 0s:view_xview (+ self.nowx 78s)) goto 0x0000EC
0x0000A4:
    stog.view_xview[0s] = (+ self.nowx 78s)
    self.con = 2.1d
    stog.alarm[4s] = 30s
0x0000EC:
    if !(== self.con 3.1d) goto 0x000244
0x000108:
    global.facechoice = 0s
    global.faceemotion = 0s
    global.typer = 27s
    global.msc = 0s
    stog.msg[0s] = "* OH^1, THERE YOU ARE./"
    stog.msg[1s] = "\\M5* YOU UGLY LITTLE CREATURE^1.&* YOU'VE MADE QUITE A NAME&  FOR YOURSELF./"
    stog.msg[2s] = "\\M3* SUCH INFAMY...^1!&* I'M IMPRESSED./"
    stog.msg[3s] = "\\M4* OH^1. YES^1.&* IF YOU'RE LOOKING FOR ALPHYS^1,&  SHE'S NOT HERE./"
    stog.msg[4s] = "\\M0* WHILE YOU WERE BUSY DOING&  YOUR^1, AHEM^1, THING.../"
    stog.msg[5s] = "* SHE WAS RUNNING AROUND&  EVACUATING PEOPLE TO SAFETY./"
    stog.msg[6s] = "\\M4* NOW THEY'RE IN A PLACE&  WHERE YOU'LL NEVER GET TO&  THEM./"
    stog.msg[7s] = "\\M2* DECIDING NOT TO FIGHT YOU^1.&* MY MY^1, SHE REALLY IS THE&  ONLY SMART ONE^1, ISN'T SHE?/%%"
    self.con = 4s
    self.d = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.d)
0x000244:
    if !(== self.con 4s) goto 0x000274
0x000258:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000278
0x000274:
    push 0s
0x000278:
    if !pop goto 0x0002F4
0x00027C:
    self.mc = (scr_marker[]:int32 (var 1045s) 1570.y 1570.x)
    push 0.25d
    stog.image_speed* = (int32 self.mc)
    push 2s
    stog.hspeed* = (int32 self.mc)
    [obj_mainchara].visible = 0s
    self.con = 5s
0x0002F4:
    if !(== self.con 5s) goto 0x0003A8
0x000308:
    if !(>= (int32 self.mc):x (+ (int32 self.mc):xstart 20s)) goto 0x0003A8
0x000340:
    push 0s
    stog.hspeed* = (int32 self.mc)
    push 0s
    stog.image_speed* = (int32 self.mc)
    push 0s
    stog.image_index* = (int32 self.mc)
    self.con = 6s
    stog.alarm[4s] = 45s
0x0003A8:
    if !(== self.con 7s) goto 0x000464
0x0003BC:
    stog.msg[0s] = "\\M0* OH^1?&* HOW SASSY./"
    stog.msg[1s] = "\\M4* YOU'RE JUST ITCHING TO GET&  YOUR HANDS ON ME^1, AREN'T&  YOU?/"
    stog.msg[2s] = "\\M5* WELL..^1. T-O-O B-A-D!/"
    stog.msg[3s] = "\\M4* THIS WORLD NEEDS STARS MORE&  THAN IT NEEDS CORPSES!/"
    stog.msg[4s] = "\\M1* TOODLES!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 8s
0x000464:
    if !(== self.con 8s) goto 0x000494
0x000478:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000498
0x000494:
    push 0s
0x000498:
    if !pop goto 0x0004D4
0x00049C:
    push 8s
    stog.hspeed* = (int32 self.mett)
    self.con = 9s
    stog.alarm[4s] = 15s
0x0004D4:
    if !(== self.con 10s) goto 0x000540
0x0004E8:
    push -1s
    stog.view_xview[(- 0s:view_xview 2s)] = 0s
    push -1s
    if !(<= 0s:view_xview (+ self.nowx 20s)) goto 0x000540
0x000534:
    self.con = 11s
0x000540:
    if !(== self.con 11s) goto 0x0006A0
0x000554:
    [obj_mainchara].x = (int32 self.mc):x
    [obj_mainchara].visible = 1s
    [obj_mainchara].cutscene = 0s
    pushenv (int32 self.mc) 0x0005A4
0x000598:
    call (instance_destroy[]:int32 )
0x0005A4:
    popenv 0x000598
0x0005A8:
    global.interact = 0s
    stog.flag[367s] = 1s
    stog.flag[368s] = 1s
    stog.flag[369s] = 99s
    stog.flag[371s] = 1s
    stog.flag[374s] = 1s
    stog.flag[375s] = 1s
    stog.flag[399s] = 1s
    stog.flag[400s] = 1s
    stog.flag[417s] = 1s
    stog.flag[418s] = 1s
    global.plot = 160s
    self.con = 12s
    call (instance_destroy[]:int32 )
0x0006A0:
    exit
