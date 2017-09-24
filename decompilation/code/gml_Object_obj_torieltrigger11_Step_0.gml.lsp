0x000000:
    self.dingus = (+ self.dingus 1s)
    if !(== global.plot 23s) goto 0x000040
0x00002C:
    push (== self.dingus 2s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x000084
0x000048:
    call (instance_create[]:int32 (var 861s) (var 90s) (var 140s))
    [obj_toroverworld3].facing = 2s
    [obj_toroverworld3].direction = 90s
0x000084:
    if !(== self.conversation 2s) goto 0x0000B4
0x000098:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x0000B8
0x0000B4:
    push 0s
0x0000B8:
    if !pop goto 0x000118
0x0000BC:
    pushenv 861s 0x0000F0
0x0000C4:
    call (path_start[]:int32 (var 0s) (var 0s) (var 4s) (var 39s))
0x0000F0:
    popenv 0x0000C4
0x0000F4:
    global.plot = 24s
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x000118:
    if !(bool (instance_exists[]:int32 (var 861s))) goto 0x0001F0
0x000130:
    if !(== self.conversation 1s) goto 0x0001F0
0x000144:
    global.interact = 1s
    self.myinteract = 3s
    global.typer = 4s
    global.facechoice = 1s
    global.faceemotion = 6s
    global.msc = 0s
    stog.msg[0s] = "* Do not try to stop me./"
    stog.msg[1s] = "* This is your final&  warning./%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 2s
0x0001F0:
    exit
