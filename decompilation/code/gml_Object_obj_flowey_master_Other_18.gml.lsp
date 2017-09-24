0x000000:
    call (instance_create[]:int32 (var 1597s) (var -10s) (var 300s))
    call (snd_play[]:int32 (var 157s))
    stog.alarm[7s] = 30s
    if !(bool (instance_exists[]:int32 (var 1599s))) goto 0x00007C
0x000064:
    pushenv 1599s 0x000078
0x00006C:
    call (instance_destroy[]:int32 )
0x000078:
    popenv 0x00006C
0x00007C:
    exit
