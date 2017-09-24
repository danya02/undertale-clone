0x000000:
    self.myinteract = 3s
    if !(== self.con 0s) goto 0x000030
0x000020:
    global.msc = 619s
    goto 0x00009C
0x000030:
    global.msc = 619s
    self.blcontimer = 0s
    self.encouragement = 0s
    self.blconyes = 0s
    self.snailtimer = 0s
    self.snailsad = 0s
    self.won = 0s
    self.fun = 0s
    self.con = 0s
0x00009C:
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000100:
    exit
