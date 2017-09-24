0x000000:
    if !(== self.con 1s) goto 0x00005C
0x000014:
    call (caster_pause[]:int32 global.currentsong)
    call (snd_play[]:int32 (var 104s))
    stog.alarm[4s] = 40s
    self.con = 2s
0x00005C:
    if !(== self.con 3s) goto 0x0001B8
0x000070:
    global.msc = 0s
    global.facechoice = 0s
    global.typer = 5s
    stog.msg[0s] = "* Ring.../"
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "\\E0* Hey...^1!&* Uh^1, this is&  Undyne.../"
    stog.msg[3s] = "\\E2* (Shut up^1, Papyrus^1!)&* (This was YOUR idea!)/"
    stog.msg[4s] = "\\E1* HUMAN^1!&* You have to deliver&  something for me!/"
    stog.msg[5s] = "\\E9* Uh^1, please?/"
    stog.msg[6s] = "\\E0* I'm at Snowdin&  in front of&  Papyrus's./"
    stog.msg[7s] = "\\E6* See ya^1, punk!/"
    stog.msg[8s] = "\\TS \\F0 \\T0 %"
    stog.msg[9s] = "* Click.../%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 6s
0x0001B8:
    if !(== self.con 6s) goto 0x0001E8
0x0001CC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0001EC
0x0001E8:
    push 0s
0x0001EC:
    if !pop goto 0x000260
0x0001F0:
    stog.flag[8s] = 1s
    call (caster_resume[]:int32 global.currentsong)
    push -5s
    if !(< 493s:flag 8s) goto 0x000248
0x000234:
    stog.flag[493s] = 8s
0x000248:
    global.interact = 0s
    self.con = 7s
0x000260:
    exit
