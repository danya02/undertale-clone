0x000000:
    self.image_xscale = 50s
    self.conversation = 0s
    if !(> global.plot 18s) goto 0x00003C
0x00002C:
    call (instance_destroy[]:int32 )
    goto 0x00010C
0x00003C:
    pushenv 1570s 0x00005C
0x000044:
    self.x = 38s
    self.y = 144s
0x00005C:
    popenv 0x000044
0x000060:
    global.typer = 4s
    global.interact = 99s
    global.facechoice = 1s
    global.faceemotion = 0s
    global.msc = 0s
    stog.alarm[0s] = 1s
    stog.alarm[3s] = 3s
    stog.msg[0s] = "* This is it.../%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 1s
0x00010C:
    self.volume = 1s
    self.fademusicout = 0s
    self.tiddywinkle = 0s
    self.ruff = 2s
0x00013C:
    exit
