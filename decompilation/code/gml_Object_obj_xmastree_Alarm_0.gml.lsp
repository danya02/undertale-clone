0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (It's a carefully decorated&  tree.)/"
    stog.msg[1s] = "* (Some of the presents are&  addressed from \"Santa\" to&  various locals.)/%%"
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x000098
0x000080:
    stog.msg[0s] = "* (Nothing for you.)/%%"
0x000098:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000D8:
    exit
