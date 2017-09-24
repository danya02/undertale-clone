0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "%%"
    stog.msg[0s] = self.xstring1
    if !(== self.xno 1s) goto 0x0000B0
0x000080:
    stog.msg[1s] = self.xstring2
    stog.msg[2s] = "%%"
0x0000B0:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000D8:
    exit
