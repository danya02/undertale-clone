0x000000:
    if (> global.plot 7s) goto 0x000028
0x000014:
    push (< global.plot 6s)
    goto 0x00002C
0x000028:
    push 1s
0x00002C:
    if !pop goto 0x000040
0x000030:
    call (instance_destroy[]:int32 )
    goto 0x0000AC
0x000040:
    self.direction = 270s
    self.facing = 0s
    global.msc = 216s
    global.typer = 4s
    global.facechoice = 1s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    global.interact = 1s
0x0000AC:
    exit
