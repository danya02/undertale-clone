0x000000:
    call (event_inherited[]:int32 )
    self.image_speed = 0.25d
    if !(bool (instance_exists[]:int32 (var 776s))) goto 0x000050
0x000038:
    pushenv 776s 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    popenv 0x000040
0x000050:
    if !(bool (instance_exists[]:int32 (var 775s))) goto 0x000080
0x000068:
    pushenv 775s 0x00007C
0x000070:
    call (instance_destroy[]:int32 )
0x00007C:
    popenv 0x000070
0x000080:
    if !(bool (instance_exists[]:int32 (var 770s))) goto 0x0000B0
0x000098:
    pushenv 770s 0x0000AC
0x0000A0:
    call (instance_destroy[]:int32 )
0x0000AC:
    popenv 0x0000A0
0x0000B0:
    if !(bool (instance_exists[]:int32 (var 771s))) goto 0x0000E0
0x0000C8:
    pushenv 771s 0x0000DC
0x0000D0:
    call (instance_destroy[]:int32 )
0x0000DC:
    popenv 0x0000D0
0x0000E0:
    if !(bool (instance_exists[]:int32 (var 765s))) goto 0x000110
0x0000F8:
    pushenv 765s 0x00010C
0x000100:
    call (instance_destroy[]:int32 )
0x00010C:
    popenv 0x000100
0x000110:
    if !(bool (instance_exists[]:int32 (var 767s))) goto 0x000140
0x000128:
    pushenv 767s 0x00013C
0x000130:
    call (instance_destroy[]:int32 )
0x00013C:
    popenv 0x000130
0x000140:
    if !(bool (instance_exists[]:int32 (var 764s))) goto 0x000170
0x000158:
    pushenv 764s 0x00016C
0x000160:
    call (instance_destroy[]:int32 )
0x00016C:
    popenv 0x000160
0x000170:
    stog.u[0s] = 2025s
    stog.u[1s] = 2026s
    stog.u[2s] = 2029s
    stog.u[3s] = 2031s
    stog.u[4s] = 2032s
    stog.u[5s] = 2033s
    stog.u[6s] = 2034s
    stog.u[7s] = 2036s
    stog.u[8s] = 2039s
    stog.u[9s] = 2040s
    push -1s
    self.sprite_index = (int32 global.faceemotion):u
0x000258:
    exit
