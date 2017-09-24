0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Bahh!!^1!&* Nevermind!!/%%"
    push -5s
    if !(== 280s:flag 1s) goto 0x000088
0x000070:
    stog.msg[0s] = "* So^1?&* What are you waiting for!?/%%"
0x000088:
    push -5s
    if !(== 280s:flag 0s) goto 0x0000C0
0x0000A4:
    push -5s
    push (== 7s:flag 0s)
    goto 0x0000C4
0x0000C0:
    push 0s
0x0000C4:
    if !pop goto 0x000184
0x0000C8:
    stog.msg[0s] = "* Bah^1! Today's monsters don't&  appreciate what makes&  puzzles great!/"
    stog.msg[1s] = "* Nowadays \"puzzles\" are nothing&  but lasers and moving rocks.../"
    stog.msg[2s] = "* Bahh!!!/"
    stog.msg[3s] = "* There's no ART in that&  actiony^1, mindless schlock^1!&* It's just timing-based drivel!/"
    stog.msg[4s] = "* Give me something that&  challenges the deepest&  reaches of my mind.../"
    stog.msg[5s] = "* You^1!&* You're young^1!&* You've still got hope!/"
    stog.msg[6s] = "* Geh heh heh...^1!&* Here..^1. try solving this&  block-pushing puzzle!/%%"
    stog.flag[280s] = 1s
0x000184:
    push -5s
    if !(== 7s:flag 1s) goto 0x000234
0x0001A0:
    stog.msg[0s] = "* Geh^1?&* Who are you?/"
    stog.msg[1s] = "* Freedom^1? What^1? Bah^1!&* You're pullin' my leg!/%%"
    push -5s
    if !(>= 280s:flag 1s) goto 0x000234
0x0001EC:
    stog.msg[0s] = "* You again!^1?&* Bah^1! I don't care about&  going free!/"
    stog.msg[1s] = "* .../"
    stog.msg[2s] = "* Do you think humans could&  appreciate the details&  of classic puzzles...?/%%"
0x000234:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000274:
    exit
