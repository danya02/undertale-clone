0x000000:
    call (event_inherited[]:int32 )
    if !(bool (instance_exists[]:int32 (var 776s))) goto 0x00003C
0x000024:
    pushenv 776s 0x000038
0x00002C:
    call (instance_destroy[]:int32 )
0x000038:
    popenv 0x00002C
0x00003C:
    if !(bool (instance_exists[]:int32 (var 777s))) goto 0x00006C
0x000054:
    pushenv 777s 0x000068
0x00005C:
    call (instance_destroy[]:int32 )
0x000068:
    popenv 0x00005C
0x00006C:
    if !(bool (instance_exists[]:int32 (var 775s))) goto 0x00009C
0x000084:
    pushenv 775s 0x000098
0x00008C:
    call (instance_destroy[]:int32 )
0x000098:
    popenv 0x00008C
0x00009C:
    if !(bool (instance_exists[]:int32 (var 771s))) goto 0x0000CC
0x0000B4:
    pushenv 771s 0x0000C8
0x0000BC:
    call (instance_destroy[]:int32 )
0x0000C8:
    popenv 0x0000BC
0x0000CC:
    if !(bool (instance_exists[]:int32 (var 765s))) goto 0x0000FC
0x0000E4:
    pushenv 765s 0x0000F8
0x0000EC:
    call (instance_destroy[]:int32 )
0x0000F8:
    popenv 0x0000EC
0x0000FC:
    if !(bool (instance_exists[]:int32 (var 767s))) goto 0x00012C
0x000114:
    pushenv 767s 0x000128
0x00011C:
    call (instance_destroy[]:int32 )
0x000128:
    popenv 0x00011C
0x00012C:
    if !(bool (instance_exists[]:int32 (var 764s))) goto 0x00015C
0x000144:
    pushenv 764s 0x000158
0x00014C:
    call (instance_destroy[]:int32 )
0x000158:
    popenv 0x00014C
0x00015C:
    self.image_speed = 0.25d
    stog.u[0s] = 2046s
    stog.u[1s] = 2049s
    stog.u[2s] = 2050s
    stog.u[3s] = 2051s
    stog.u[4s] = 2052s
    stog.u[5s] = 2053s
    stog.u[6s] = 2054s
    stog.u[7s] = 2055s
    stog.u[8s] = 2056s
    stog.u[9s] = 2057s
    stog.u[10s] = 2058s
    stog.u[11s] = 2059s
    stog.u[12s] = 2060s
    stog.u[13s] = 2061s
    stog.u[14s] = 2062s
    stog.u[15s] = 2063s
    stog.u[16s] = 2064s
    stog.u[17s] = 2065s
    stog.u[18s] = 2066s
    stog.u[19s] = 2067s
    stog.u[20s] = 2068s
    stog.u[21s] = 2069s
    stog.u[22s] = 2070s
    stog.u[23s] = 2071s
    stog.u[24s] = 2072s
    stog.u[25s] = 2073s
    push -1s
    self.sprite_index = (int32 global.faceemotion):u
    push -5s
    if !(== 430s:flag 1s) goto 0x0003DC
0x0003B4:
    push -1s
    self.sprite_index = (int32 (+ global.faceemotion 10s)):u
0x0003DC:
    push -5s
    if !(== 430s:flag 2s) goto 0x000420
0x0003F8:
    push -1s
    self.sprite_index = (int32 (+ global.faceemotion 15s)):u
0x000420:
    push -5s
    if !(== 430s:flag 4s) goto 0x000458
0x00043C:
    self.image_index = global.faceemotion
    self.sprite_index = 2045s
0x000458:
    exit
