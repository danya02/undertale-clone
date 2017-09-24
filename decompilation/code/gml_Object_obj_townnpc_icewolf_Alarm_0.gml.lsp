0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Ice Wolf no longer has to&  throw Ice./"
    stog.msg[1s] = "* Ice Wolf can take a break to&  buy some pants now./%%"
    if !(> self.talkedto 0s) goto 0x000098
0x000080:
    stog.msg[0s] = "* Ice Wolf thinking of changing&  their name to Jimmy Hotpants./%%"
0x000098:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000D8:
    exit
