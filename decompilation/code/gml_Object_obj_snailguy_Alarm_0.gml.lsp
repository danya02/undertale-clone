0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* I've been long overdue for&  a second house.../%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0000A0
0x000070:
    stog.msg[0s] = "* The housing market will&  probably crash now./"
    stog.msg[1s] = "* But you know^1, home&  is where the heart is./%%"
0x0000A0:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000E0:
    exit
