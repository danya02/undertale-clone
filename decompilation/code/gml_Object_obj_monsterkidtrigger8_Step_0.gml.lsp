0x000000:
    if !(== self.con 1s) goto 0x000040
0x000014:
    global.interact = 1s
    stog.alarm[4s] = 25s
    self.con = 2s
0x000040:
    if !(== self.con 3s) goto 0x0000FC
0x000054:
    stog.msg[0s] = "* Undyne..^1.&* You...^1.&* You saved me!/"
    stog.msg[1s] = "* Huh^1?&* They ran away?/"
    stog.msg[2s] = "* Yo^1, you're wrong.../"
    stog.msg[3s] = "* They went to get help!/"
    stog.msg[4s] = "* They'll be back any second!!/"
    stog.msg[5s] = "* O-okay^1, I'll go home.../%%"
    call (scr_regulartext[]:int32 )
    self.con = 4s
0x0000FC:
    if !(== self.con 4s) goto 0x00012C
0x000110:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000130
0x00012C:
    push 0s
0x000130:
    if !pop goto 0x000164
0x000134:
    self.con = 5s
    global.plot = 120s
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x000164:
    exit
