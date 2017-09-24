0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Let's play Monsters and Humans!/%%"
    if !(>= global.plot 122s) goto 0x000080
0x000068:
    stog.msg[0s] = "* Let's continue to play&  Monsters and Humans!/%%"
0x000080:
    push -5s
    if !(== 7s:flag 1s) goto 0x0000B4
0x00009C:
    stog.msg[0s] = "* Now we can play Monsters&  and Humans with REAL humans!/%%"
0x0000B4:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000F4:
    exit
