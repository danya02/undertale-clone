0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* I understand why ASGORE&  waited so long to hire a&  new Royal Scientist./"
    stog.msg[1s] = "* The previous one..^1.&* Dr. Gaster./"
    stog.msg[2s] = "* His brilliance was&  irreplaceable./"
    stog.msg[3s] = "* However^1, his life..^1.&* Was cut short./"
    stog.msg[4s] = "* One day^1, his experiments&  went wrong^1, and.../%%"
    if !(>= self.talkedto 1s) goto 0x0000F8
0x0000C8:
    stog.msg[0s] = "* Well^1, I needn't gossip./"
    stog.msg[1s] = "* After all^1, it's rude to&  talk about someone who's&  listening./%%"
0x0000F8:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000138:
    exit
