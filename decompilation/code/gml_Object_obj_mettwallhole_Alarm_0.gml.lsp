0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (The space behind the wall&  is only a few feet&  wide.)/%%"
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x000080
0x000068:
    stog.msg[0s] = "* (It's just here to complete&  the look.)/%%"
0x000080:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000A8:
    exit
