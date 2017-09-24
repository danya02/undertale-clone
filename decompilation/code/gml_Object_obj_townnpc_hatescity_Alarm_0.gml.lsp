0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* The capital's getting pretty&  crowded^1, so I've heard they're&  going to start moving here./"
    stog.msg[1s] = "* Hmmm..^1.&* I don't want to see the&  erasure of our local culture./"
    stog.msg[2s] = "* But I definitely want to see&  some city slickers slip onto&  their butts!/%%"
    if !(> self.talkedto 0s) goto 0x0000B0
0x000098:
    stog.msg[0s] = "* Yeah^1, bring 'em on!/%%"
0x0000B0:
    if !(> global.plot 121s) goto 0x0000F4
0x0000C4:
    stog.msg[0s] = "* What will happen to&  Grillby's if everyone&  moves in...?/"
    stog.msg[1s] = "* We're gonna have to have&  chairs to the ceiling./%%"
0x0000F4:
    push -5s
    if !(== 7s:flag 1s) goto 0x000170
0x000110:
    stog.msg[0s] = "* Hey^1! People won't have to&  move in from the city&  anymore!/"
    stog.msg[1s] = "* Seems like we won't have&  to lose our local culture./"
    stog.msg[2s] = "* ... except we're all moving&  out of here^1, huh./"
    stog.msg[3s] = "* Oh well^1. Guess it can't be&  all punk-peaches and punk-&  cream./%%"
0x000170:
    if (== (scr_deaddog[]:int32 ) 1s) goto 0x0001A0
0x000184:
    push -5s
    push (== 67s:flag 1s)
    goto 0x0001A4
0x0001A0:
    push 1s
0x0001A4:
    if !pop goto 0x0001D8
0x0001A8:
    stog.msg[0s] = "* The capital's getting pretty&  crowded^1, so I've heard they're&  going to start moving here./"
    stog.msg[1s] = "* ... who knows^1.&* Maybe we'll have room./%%"
0x0001D8:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000218:
    exit
