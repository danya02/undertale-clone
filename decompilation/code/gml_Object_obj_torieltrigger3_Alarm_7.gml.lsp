0x000000:
    self.tor3 = (instance_create[]:int32 (var 862s) 872.y 872.x)
    pushenv 872s 0x00003C
0x000030:
    call (instance_destroy[]:int32 )
0x00003C:
    popenv 0x000030
0x000040:
    pushenv (int32 self.tor3) 0x00005C
0x000050:
    self.direction = 270s
0x00005C:
    popenv 0x000050
0x000060:
    global.msc = 212s
    global.typer = 4s
    global.facechoice = 1s
    global.interact = 1s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 6s
0x0000C0:
    exit
