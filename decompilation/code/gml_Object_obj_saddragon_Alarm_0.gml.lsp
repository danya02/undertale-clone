0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Yeah^1, I'm not gonna be home&  tonight... um.../"
    stog.msg[1s] = "* I think there's some cold&  pizza in my treasure horde&  you can heat up.../%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0000B8
0x000088:
    stog.msg[0s] = "* Ummm^1, are you guys on your&  way out^1?/"
    stog.msg[1s] = "* Guess I'll catch up with you&  later.../%%"
0x0000B8:
    push -5s
    if !(== 425s:flag 1s) goto 0x000104
0x0000D4:
    stog.msg[0s] = "* Yeah^1, I'm not gonna be home&  tonight... um.../"
    stog.msg[1s] = "* In fact^1, I don't feel like&  I'll be home tomorrow^1,&  either^1, at this rate.../%%"
0x000104:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000144:
    exit
