0x000000:
    self.myinteract = 3s
    global.msc = 0s
    stog.msg[0s] = "* Ah^1, the cactus.&* Truly the most tsundere&  of plants./%%"
    push -5s
    if !(bool 7s:flag) goto 0x000060
0x000048:
    stog.msg[0s] = "* It's not like this cactus&  was waiting for you to come&  back or anything.../%%"
0x000060:
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000AC:
    exit
