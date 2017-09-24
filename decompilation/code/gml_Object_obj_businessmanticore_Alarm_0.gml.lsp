0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* This elevator goes straight&  to the capital^1.&* But it stopped working./"
    stog.msg[1s] = "* The hotel's doing its best to&  accomodate everybody&  stuck here./%%"
    if !(> self.talkedto 0s) goto 0x000098
0x000080:
    stog.msg[0s] = "* Me^1?&* I just like explaining things&  to passersby./%%"
0x000098:
    push -5s
    if !(== 7s:flag 1s) goto 0x0000E4
0x0000B4:
    stog.msg[0s] = "* Good news^1!&* The elevator started working&  again./"
    stog.msg[1s] = "* But now it's been so busy^1,&  we still haven't gotten the&  chance to ride it./%%"
0x0000E4:
    push -5s
    if !(== 425s:flag 1s) goto 0x000130
0x000100:
    stog.msg[0s] = "* Mettaton hasn't made a&  performance for more&  than five minutes.../"
    stog.msg[1s] = "* What's happening...^1?&* Can you explain it?/%%"
0x000130:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000170:
    exit
