0x000000:
    if !(< 1570.bbox_top 125s) goto 0x000024
0x000014:
    self.level = 2s
    goto 0x000030
0x000024:
    self.level = 1s
0x000030:
    push -1s
    if !(bool (instance_exists[]:int32 0s:block)) goto 0x000140
0x000050:
    push -1s
    pushenv (int32 0s:block) 0x000074
0x000068:
    call (instance_destroy[]:int32 )
0x000074:
    popenv 0x000068
0x000078:
    push -1s
    pushenv (int32 1s:block) 0x00009C
0x000090:
    call (instance_destroy[]:int32 )
0x00009C:
    popenv 0x000090
0x0000A0:
    push -1s
    pushenv (int32 2s:block) 0x0000C4
0x0000B8:
    call (instance_destroy[]:int32 )
0x0000C4:
    popenv 0x0000B8
0x0000C8:
    push -1s
    pushenv (int32 3s:block) 0x0000EC
0x0000E0:
    call (instance_destroy[]:int32 )
0x0000EC:
    popenv 0x0000E0
0x0000F0:
    push -1s
    pushenv (int32 5s:block) 0x000114
0x000108:
    call (instance_destroy[]:int32 )
0x000114:
    popenv 0x000108
0x000118:
    push -1s
    pushenv (int32 6s:block) 0x00013C
0x000130:
    call (instance_destroy[]:int32 )
0x00013C:
    popenv 0x000130
0x000140:
    push -1s
    if !(== (instance_exists[]:int32 4s:block) 0s) goto 0x000194
0x000164:
    stog.block[4s] = (instance_create[]:int32 (var 15s) (var 90s) (var 83s))
0x000194:
    exit
