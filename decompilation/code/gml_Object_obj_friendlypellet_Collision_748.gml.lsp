0x000000:
    if !(< global.invc 1s) goto 0x000114
0x000014:
    global.hp = (- global.hp 19s)
    call (snd_play[]:int32 (var 53s))
    global.hshake = 8s
    global.shakespeed = 1.5d
    global.vshake = 2s
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    global.invc = 30s
    [obj_floweybattle1].conversation = 10s
    [obj_friendlypellet].attackyou = 3s
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x0000E4
0x0000CC:
    pushenv 782s 0x0000E0
0x0000D4:
    call (instance_destroy[]:int32 )
0x0000E0:
    popenv 0x0000D4
0x0000E4:
    if !(bool (instance_exists[]:int32 (var 187s))) goto 0x000114
0x0000FC:
    pushenv 187s 0x000110
0x000104:
    call (instance_destroy[]:int32 )
0x000110:
    popenv 0x000104
0x000114:
    exit
