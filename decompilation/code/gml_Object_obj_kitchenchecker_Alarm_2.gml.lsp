0x000000:
    if !(< 1570.bbox_top 134s) goto 0x0001B0
0x000014:
    self.level = 0s
    push -1s
    if !(== (instance_exists[]:int32 0s:block) 0s) goto 0x000164
0x000044:
    stog.block[0s] = (instance_create[]:int32 (var 3s) (var 54s) (var 160s))
    stog.block[1s] = (instance_create[]:int32 (var 3s) (var 77s) (var 160s))
    stog.block[2s] = (instance_create[]:int32 (var 3s) (var 54s) (var 280s))
    stog.block[3s] = (instance_create[]:int32 (var 3s) (var 77s) (var 280s))
    stog.block[5s] = (instance_create[]:int32 (var 2s) (var 60s) (var 180s))
    stog.block[6s] = (instance_create[]:int32 (var 2s) (var 80s) (var 180s))
0x000164:
    push -1s
    if !(bool (instance_exists[]:int32 4s:block)) goto 0x0001AC
0x000184:
    push -1s
    pushenv (int32 4s:block) 0x0001A8
0x00019C:
    call (instance_destroy[]:int32 )
0x0001A8:
    popenv 0x00019C
0x0001AC:
    goto 0x000320
0x0001B0:
    self.level = 1s
    push -1s
    if !(bool (instance_exists[]:int32 0s:block)) goto 0x0002CC
0x0001DC:
    push -1s
    pushenv (int32 0s:block) 0x000200
0x0001F4:
    call (instance_destroy[]:int32 )
0x000200:
    popenv 0x0001F4
0x000204:
    push -1s
    pushenv (int32 1s:block) 0x000228
0x00021C:
    call (instance_destroy[]:int32 )
0x000228:
    popenv 0x00021C
0x00022C:
    push -1s
    pushenv (int32 2s:block) 0x000250
0x000244:
    call (instance_destroy[]:int32 )
0x000250:
    popenv 0x000244
0x000254:
    push -1s
    pushenv (int32 3s:block) 0x000278
0x00026C:
    call (instance_destroy[]:int32 )
0x000278:
    popenv 0x00026C
0x00027C:
    push -1s
    pushenv (int32 5s:block) 0x0002A0
0x000294:
    call (instance_destroy[]:int32 )
0x0002A0:
    popenv 0x000294
0x0002A4:
    push -1s
    pushenv (int32 6s:block) 0x0002C8
0x0002BC:
    call (instance_destroy[]:int32 )
0x0002C8:
    popenv 0x0002BC
0x0002CC:
    push -1s
    if !(== (instance_exists[]:int32 4s:block) 0s) goto 0x000320
0x0002F0:
    stog.block[4s] = (instance_create[]:int32 (var 15s) (var 90s) (var 83s))
0x000320:
    exit
