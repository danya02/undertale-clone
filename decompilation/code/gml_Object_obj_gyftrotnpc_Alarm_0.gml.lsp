0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* I've heard there's a local&  tradition based off of&  my own suffering./"
    stog.msg[1s] = "* .../%%"
    if !(> self.talkedto 0s) goto 0x000098
0x000080:
    stog.msg[0s] = "* .../%%"
0x000098:
    push -5s
    if !(== 7s:flag 1s) goto 0x0000E4
0x0000B4:
    stog.msg[0s] = "* Everyone's leaving^1, eh?/"
    stog.msg[1s] = "* Good riddance^1!&* Maybe I'll finally get&  some peace and quiet!/%%"
0x0000E4:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000124:
    exit
