0x000000:
    self.myinteract = 3s
    if !(== self.havewater 0s) goto 0x000030
0x000020:
    global.msc = 625s
    goto 0x00003C
0x000030:
    global.msc = 627s
0x00003C:
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (Someone has meticulously&  cleaned all the slime off of&  this snail.)/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000B8:
    exit
