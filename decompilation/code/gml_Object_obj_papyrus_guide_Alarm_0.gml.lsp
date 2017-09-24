0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 0s
    stog.msg[0s] = "WELCOME TO SCENIC&MY HOUSE!/"
    stog.msg[1s] = "ENJOY AND TAKE&YOUR TIME!!!/%%"
    if !(== self.workout 1s) goto 0x000098
0x000080:
    stog.msg[0s] = "WOW!&BEING A GOOD HOST&IS A REAL WORKOUT!/%%"
0x000098:
    if !(== self.workout 2s) goto 0x0000E8
0x0000AC:
    global.faceemotion = 3s
    stog.msg[0s] = "\\E3I CAN'T FEEL MY&LEGS.../"
    stog.msg[1s] = "\\E0THAT MUST MEAN&I'M BEING A&GREAT HOST!!!/%%"
0x0000E8:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000128:
    exit
