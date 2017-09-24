0x000000:
    self.level = 1s
    self.bgalpha = 1s
    stog.block[0s] = (instance_create[]:int32 (var 3s) (var 54s) (var 160s))
    stog.block[1s] = (instance_create[]:int32 (var 3s) (var 77s) (var 160s))
    stog.block[2s] = (instance_create[]:int32 (var 3s) (var 54s) (var 280s))
    stog.block[3s] = (instance_create[]:int32 (var 3s) (var 77s) (var 280s))
    stog.block[4s] = (instance_create[]:int32 (var 15s) (var 90s) (var 83s))
    stog.block[5s] = (instance_create[]:int32 (var 2s) (var 60s) (var 180s))
    stog.block[6s] = (instance_create[]:int32 (var 2s) (var 80s) (var 180s))
    push -1s
    pushenv (int32 0s:block) 0x00018C
0x000180:
    call (instance_destroy[]:int32 )
0x00018C:
    popenv 0x000180
0x000190:
    push -1s
    pushenv (int32 1s:block) 0x0001B4
0x0001A8:
    call (instance_destroy[]:int32 )
0x0001B4:
    popenv 0x0001A8
0x0001B8:
    push -1s
    pushenv (int32 2s:block) 0x0001DC
0x0001D0:
    call (instance_destroy[]:int32 )
0x0001DC:
    popenv 0x0001D0
0x0001E0:
    push -1s
    pushenv (int32 3s:block) 0x000204
0x0001F8:
    call (instance_destroy[]:int32 )
0x000204:
    popenv 0x0001F8
0x000208:
    push -1s
    pushenv (int32 5s:block) 0x00022C
0x000220:
    call (instance_destroy[]:int32 )
0x00022C:
    popenv 0x000220
0x000230:
    push -1s
    pushenv (int32 6s:block) 0x000254
0x000248:
    call (instance_destroy[]:int32 )
0x000254:
    popenv 0x000248
0x000258:
    self.fridgex = 1420.x
    self.fridgey = 1420.y
    self.sinkx = 1431.x
    self.sinky = 1431.y
    self.initcheck = 0s
    push -5s
    if !(>= 88s:flag 4s) goto 0x0002DC
0x0002C0:
    push -5s
    push (== 283s:flag 0s)
    goto 0x0002E0
0x0002DC:
    push 0s
0x0002E0:
    if !pop goto 0x0002F8
0x0002E4:
    stog.flag[283s] = 1s
0x0002F8:
    exit
