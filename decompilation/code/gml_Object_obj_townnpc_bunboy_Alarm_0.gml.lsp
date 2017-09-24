0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* That lady over there.../"
    stog.msg[1s] = "* Something about her disturbs&  me./%%"
    if !(> self.talkedto 0s) goto 0x000098
0x000080:
    stog.msg[0s] = "* I think I've figured it out^1.&* ... no^1, nevermind./%%"
0x000098:
    if !(>= global.plot 122s) goto 0x0000F4
0x0000AC:
    stog.msg[0s] = "* That lady over there's&  been going for a walk&  for a while now./"
    stog.msg[1s] = "* ... but she hasn't moved&  an inch from where she's&  standing./"
    stog.msg[2s] = "* W-well^1, I haven't either^1,&  but I don't want her to&  notice me over here.../%%"
0x0000F4:
    push -5s
    if !(== 7s:flag 1s) goto 0x00016C
0x000110:
    stog.msg[0s] = "* Uhhh.../"
    stog.msg[1s] = "* Is anyone else weirded out&  by those giant shambling&  amalgamates^1, or...?/%%"
    if !(> self.talkedto 0s) goto 0x00016C
0x000154:
    stog.msg[0s] = "* ....../%%"
0x00016C:
    if (bool (scr_deaddog[]:int32 )) goto 0x000198
0x00017C:
    push -5s
    push (== 67s:flag 1s)
    goto 0x00019C
0x000198:
    push 1s
0x00019C:
    if !pop goto 0x0001D0
0x0001A0:
    stog.msg[0s] = "* That lady over there&  seems happy today./"
    stog.msg[1s] = "* Don't know why^1, but it's&  sending shivers down my&  spine.../%%"
0x0001D0:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000210:
    exit
