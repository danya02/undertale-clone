0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Seems like the base of a&  snowdog./%%"
    if !(== self.g 1s) goto 0x000080
0x000068:
    stog.msg[0s] = "* It's a pile of mushy snow./%%"
0x000080:
    if !(== self.g 2s) goto 0x0000AC
0x000094:
    stog.msg[0s] = "* This dog is staring blankly&  into the snow^1, waiting for&  it to turn into art./%%"
0x0000AC:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000D4:
    exit
