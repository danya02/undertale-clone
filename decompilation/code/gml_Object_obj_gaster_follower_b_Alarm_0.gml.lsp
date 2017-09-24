0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* It makes sense why ASGORE&  took so long to hire a&  new Royal Scientist./"
    stog.msg[1s] = "* After all^1, the old one..^1.&* Dr. Gaster^1.&* What an act to follow!/"
    stog.msg[2s] = "* They say he created the CORE./"
    stog.msg[3s] = "* However^1, his life..^1.&* Was cut short./"
    stog.msg[4s] = "* One day^1, he fell into&  his creation^1, and.../%%"
    if !(>= self.talkedto 1s) goto 0x0000E0
0x0000C8:
    stog.msg[0s] = "* Will Alphys end up the&  same way?/%%"
0x0000E0:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000120:
    exit
