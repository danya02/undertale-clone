0x000000:
    self.myinteract = 3s
    global.msc = 207s
    if !(> self.talkedto 0s) goto 0x000038
0x00002C:
    global.msc = 208s
0x000038:
    global.typer = 4s
    global.facechoice = 1s
    global.faceemotion = 2s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x00009C:
    exit
