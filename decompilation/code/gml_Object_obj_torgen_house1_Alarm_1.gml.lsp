0x000000:
    call (instance_create[]:int32 (var 861s) (var 70s) (var 240s))
    if !(< global.plot 19s) goto 0x000070
0x000038:
    pushenv 861s 0x00006C
0x000040:
    call (path_start[]:int32 (var 0s) (var 0s) (var 4s) (var 24s))
0x00006C:
    popenv 0x000040
0x000070:
    if !(> global.plot 18s) goto 0x0000BC
0x000084:
    pushenv 861s 0x0000B8
0x00008C:
    call (path_start[]:int32 (var 0s) (var 0s) (var 4s) (var 25s))
0x0000B8:
    popenv 0x00008C
0x0000BC:
    stog.flag[45s] = 0s
0x0000D0:
    exit
