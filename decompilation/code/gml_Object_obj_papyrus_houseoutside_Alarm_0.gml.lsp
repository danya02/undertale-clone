0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 0s
    push -5s
    if !(== 66s:flag 1s) goto 0x000074
0x000058:
    stog.msg[0s] = "SO YOU CAME&BACK TO HAVE A&DATE WITH ME!/"
    goto 0x00008C
0x000074:
    stog.msg[0s] = "SO YOU CAME&BACK TO SEE ME!/"
0x00008C:
    stog.msg[1s] = "\\E3YOU MUST BE&REALLY SERIOUS&ABOUT THIS.../"
    stog.msg[2s] = "\\E2I'LL HAVE TO TAKE&YOU SOMEPLACE&REALLY SPECIAL.../"
    stog.msg[3s] = "\\E0A PLACE I LIKE&TO SPEND A LOT&OF TIME!!!/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
    self.con = 1s
0x000120:
    exit
