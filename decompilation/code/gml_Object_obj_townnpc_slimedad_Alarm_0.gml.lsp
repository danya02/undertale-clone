0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Ah^1, to be young again^1.&* The world sure felt boundless./%%"
    if !(>= global.plot 122s) goto 0x000080
0x000068:
    stog.msg[0s] = "* You like to wander^1.&* You must be young./%%"
0x000080:
    push -5s
    if !(== 7s:flag 1s) goto 0x0000E4
0x00009C:
    stog.msg[0s] = "* Seems like this is the&  beginning of a brand-new^1,&  boundless world.../"
    stog.msg[1s] = "* Wah-ha^1!&* This adventurous spirit^1!&* I'm like a kid again!/"
    stog.msg[2s] = "* And my children are like..^1.&* Double-children./%%"
0x0000E4:
    if (== (scr_deaddog[]:int32 ) 1s) goto 0x000114
0x0000F8:
    push -5s
    push (== 67s:flag 1s)
    goto 0x000118
0x000114:
    push 1s
0x000118:
    if !pop goto 0x00014C
0x00011C:
    stog.msg[0s] = "* I've sent the kids inside./"
    stog.msg[1s] = "* It feels unsafe here today./%%"
0x00014C:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x00018C:
    exit
