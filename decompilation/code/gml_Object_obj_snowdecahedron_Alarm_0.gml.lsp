0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (It looks like a snow ball...)/"
    stog.msg[1s] = "* (Actually^1, it's a&  snowdecahedron.)/%%"
    if !(== self.murder 1s) goto 0x000098
0x000080:
    stog.msg[0s] = "* (It's a snow ball.)/%%"
0x000098:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000C0:
    exit
