0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (The door is locked.)/%%"
    push -5s
    if !(>= 497s:flag 1s) goto 0x000094
0x000070:
    stog.msg[0s] = "* (You unlock the door and&  enter...)/%%"
    self.con = 4s
0x000094:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000D4:
    exit
