0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 38s
    global.facechoice = 0s
    global.faceemotion = 0s
    if !(< global.plot 118s) goto 0x000090
0x000050:
    pushenv 1570s 0x000064
0x000058:
    self.uncan = 1s
0x000064:
    popenv 0x000058
0x000068:
    stog.msg[0s] = "* Behind you./%%"
    self.con = 1s
    goto 0x0000B4
0x000090:
    global.typer = 5s
    stog.msg[0s] = "* You aren't gonna tell my&  parents about this^1, are you?/%%"
0x0000B4:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    stog.talkedto* = (+ (int32 self.object_index):talkedto 1s)
0x000104:
    exit
