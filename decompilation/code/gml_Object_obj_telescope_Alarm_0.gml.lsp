0x000000:
    self.myinteract = 3s
    global.msc = 549s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Come on! What are you doing!/%%"
    if !(== self.room 95s) goto 0x00008C
0x000068:
    global.msc = 0s
    stog.msg[0s] = "* (It's an odd-looking&  telescope.)/%%"
0x00008C:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000CC:
    exit
