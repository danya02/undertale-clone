0x000000:
    if !(== self.conversation 0s) goto 0x0000D8
0x000014:
    self.toriel = (instance_create[]:int32 (var 861s) (var 240s) (var 140s))
    global.msc = 0s
    global.typer = 4s
    global.interact = 1s
    global.facechoice = 1s
    global.faceemotion = 1s
    stog.msg[0s] = "* Oh dear^1, that took&  longer than I&  thought it would./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 1s
    self.fademusicout = 1s
    global.interact = 1s
0x0000D8:
    exit
