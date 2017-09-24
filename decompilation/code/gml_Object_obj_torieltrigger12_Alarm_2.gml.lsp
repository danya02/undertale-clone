0x000000:
    global.border = 0s
    pushenv 876s 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    popenv 0x000014
0x000024:
    push -5s
    if !(== 45s:flag 3s) goto 0x000158
0x000040:
    call (caster_stop[]:int32 global.currentsong)
    call (caster_loop[]:int32 (var 0.3d) (var 0.5d) global.currentsong)
    [obj_mainchara].y = (+ 1570.y 8s)
    global.interact = 2s
    global.typer = 4s
    global.msc = 0s
    global.facechoice = 1s
    stog.msg[0s] = "\\E2* That is right./"
    stog.msg[1s] = "* Go upstairs./%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 9s
    global.mercy = 0s
    global.seriousbattle = 0s
    global.border = 0s
0x000158:
    push -5s
    if !(== 45s:flag 4s) goto 0x0001C8
0x000174:
    global.mercy = 0s
    global.seriousbattle = 0s
    global.border = 0s
    pushenv 861s 0x0001AC
0x0001A0:
    call (instance_destroy[]:int32 )
0x0001AC:
    popenv 0x0001A0
0x0001B0:
    global.plot = 25s
    call (instance_destroy[]:int32 )
0x0001C8:
    push -5s
    if !(== 45s:flag 5s) goto 0x000384
0x0001E4:
    global.mercy = 0s
    global.seriousbattle = 0s
    global.border = 0s
    [obj_mainchara].x = (+ 861.x 6s)
    [obj_mainchara].y = (+ 861.y 36s)
    [obj_toroverworld3].direction = 270s
    call (caster_stop[]:int32 global.currentsong)
    global.currentsong = (caster_load[]:int32 (var "music/toriel.ogg"))
    call (caster_loop[]:int32 (var 0.75d) (var 0.8d) global.currentsong)
    global.msc = 0s
    global.typer = 4s
    global.facechoice = 1s
    stog.msg[0s] = "\\E2* If you truly wish to&  leave the RUINS.../"
    stog.msg[1s] = "* I will not stop you./"
    stog.msg[2s] = "\\E2* However^1, when you&  leave.../"
    stog.msg[3s] = "\\E1* Please do not come&  back./"
    stog.msg[4s] = "\\E2* I hope you understand./%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 6s
    global.interact = 2s
0x000384:
    global.mercy = 0s
0x000390:
    exit
