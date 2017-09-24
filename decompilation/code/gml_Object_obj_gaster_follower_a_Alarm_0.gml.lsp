0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Alphys might work faster^1.&* But the old Royal Scientist^1,&  Doctor W.D. Gaster?/"
    stog.msg[1s] = "* One day^1, he vanished&  without a trace./"
    stog.msg[2s] = "* They say he shattered&  across time and space./"
    stog.msg[3s] = "* Ha ha..^1.&* How can I say so&  without fear?/"
    stog.msg[4s] = "* I'm holding a piece of&  him right here./%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
    self.con = 1s
0x000100:
    exit
