0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Hey^1, I haven't seen you&  around before./"
    stog.msg[1s] = "* It's nice to meet new&  people^1, isn't it?/%%"
    if !(> global.plot 105s) goto 0x000098
0x000080:
    stog.msg[0s] = "* I..^1.&* I don't know you./%%"
0x000098:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000D8:
    exit
