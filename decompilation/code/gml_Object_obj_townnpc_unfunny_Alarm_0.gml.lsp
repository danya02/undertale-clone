0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Everyone is always laughing&  and cracking jokes^1, trying&  to forget our modern crises.../"
    stog.msg[1s] = "* Dreariness^1.&* Crowding^1.&* Lack of sunlight./"
    stog.msg[2s] = "* I would join them^1, but I'm&  just not very funny./%%"
    if !(> self.talkedto 0s) goto 0x0000B0
0x000098:
    stog.msg[0s] = "* At least I'm not making puns./%%"
0x0000B0:
    if !(>= global.plot 122s) goto 0x00010C
0x0000C4:
    stog.msg[0s] = "* Wait^1!&* I've got a joke!/"
    stog.msg[1s] = "* Knock knock!/"
    stog.msg[2s] = "* ... Uh^1.&* That's all I've thought of./%%"
0x00010C:
    push -5s
    if !(== 7s:flag 1s) goto 0x000170
0x000128:
    stog.msg[0s] = "* Looks like I don't have&  to worry about cracking&  jokes anymore./"
    stog.msg[1s] = "* .../"
    stog.msg[2s] = "* I was going to say a joke&  here^1, but I really don't&  have one./%%"
0x000170:
    push -5s
    if (== 67s:flag 1s) goto 0x0001A0
0x00018C:
    push (== (scr_deaddog[]:int32 ) 1s)
    goto 0x0001A4
0x0001A0:
    push 1s
0x0001A4:
    if !pop goto 0x0001C0
0x0001A8:
    stog.msg[0s] = "* It just feels like..^1.&* Like everything is getting&  worse and worse./%%"
0x0001C0:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000200:
    exit
