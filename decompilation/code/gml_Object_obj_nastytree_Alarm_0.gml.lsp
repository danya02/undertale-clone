0x000000:
    self.myinteract = 3s
    global.msc = 0s
    stog.msg[0s] = "* Every time this old tree&  grows any leaves^1, they fall&  right off./%%"
    if !(== self.room 117s) goto 0x00005C
0x000044:
    stog.msg[0s] = "* It's a neat-looking tree./%%"
0x00005C:
    push -5s
    if !(== 7s:flag 1s) goto 0x000090
0x000078:
    stog.msg[0s] = "* (It's natural for a tree to&  lose its leaves.)/%%"
0x000090:
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000DC:
    exit
