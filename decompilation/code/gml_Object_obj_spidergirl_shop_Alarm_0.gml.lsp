0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Welcome to our parlor^1, dearie^1~&* Interested in some spider&  pastries?/"
    stog.msg[1s] = "* All proceeds go to real&  spiders~/%%"
    if !(> self.talkedto 0s) goto 0x000098
0x000080:
    stog.msg[0s] = "* Check out the webs to&  make a purchase~/%%"
0x000098:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000D8:
    exit
