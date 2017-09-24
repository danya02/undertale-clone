0x000000:
    if !(== self.con 1s) goto 0x000058
0x000014:
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
    self.con = 2s
    push -1s
    self.remy = 0s:view_yview
0x000058:
    if !(== self.con 2s) goto 0x0000CC
0x00006C:
    push -1s
    stog.view_yview[(- 0s:view_yview 3s)] = 0s
    push -1s
    if !(<= 0s:view_yview 122s) goto 0x0000CC
0x0000AC:
    stog.view_yview[0s] = 120s
    self.con = 3s
0x0000CC:
    if !(== self.con 3s) goto 0x000100
0x0000E0:
    self.con = 4s
    stog.alarm[4s] = 20s
0x000100:
    if !(== self.con 5s) goto 0x000264
0x000114:
    pushenv 1260s 0x000128
0x00011C:
    self.mov = 1s
0x000128:
    popenv 0x00011C
0x00012C:
    call (snd_play[]:int32 (var 104s))
    global.plot = 176s
    global.msc = 0s
    global.facechoice = 0s
    global.typer = 5s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* Huh^1?&* Who are they?/"
    stog.msg[3s] = "* N-nobody else is&  s-supposed to be&  here.../"
    stog.msg[4s] = "\\E6* Oh well^1!&* We can't worry&  about that now!/"
    stog.msg[5s] = "\\TS \\F0 \\T0 %"
    stog.msg[6s] = "* Click.../%%"
    self.ge = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.ge)
    self.con = 6s
0x000264:
    if !(== self.con 6s) goto 0x000294
0x000278:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000298
0x000294:
    push 0s
0x000298:
    if !pop goto 0x0002A8
0x00029C:
    self.con = 7s
0x0002A8:
    if !(== self.con 7s) goto 0x00032C
0x0002BC:
    push -1s
    stog.view_yview[(+ 0s:view_yview 5s)] = 0s
    push -1s
    if !(>= 0s:view_yview (- self.remy 2s)) goto 0x00032C
0x000308:
    stog.view_yview[0s] = self.remy
    self.con = 8s
0x00032C:
    if !(== self.con 8s) goto 0x000384
0x000340:
    [obj_mainchara].cutscene = 0s
    stog.view_object[0s] = 1570s
    global.interact = 0s
    self.con = 9s
    call (instance_destroy[]:int32 )
0x000384:
    exit
