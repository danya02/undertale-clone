0x000000:
    if !(== self.conversation 0s) goto 0x000074
0x000014:
    global.msc = 202s
    global.typer = 4s
    global.interact = 1s
    global.facechoice = 1s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 1s
0x000074:
    exit
