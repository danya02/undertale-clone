0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (It's a tough-looking branch.)&* (It's too heavy to pick up.)/%%"
    if !(== self.broken 1s) goto 0x000080
0x000068:
    stog.msg[0s] = "* (It's been smashed like it&  was nothing...)/%%"
0x000080:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000A8:
    exit
