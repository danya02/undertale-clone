0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (Seems busy.)/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000088
0x000070:
    stog.msg[0s] = "* (Trying to finish up work.)/%%"
0x000088:
    push -5s
    if !(== 425s:flag 1s) goto 0x0000BC
0x0000A4:
    stog.msg[0s] = "* (Futility setting in.)/%%"
0x0000BC:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000FC:
    exit
