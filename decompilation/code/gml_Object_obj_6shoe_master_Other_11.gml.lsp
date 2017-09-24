0x000000:
    if !(< global.my_inv 0s) goto 0x00009C
0x000014:
    global.my_inv = 20s
    self.hitted = 0s
    call (snd_play[]:int32 (var 156s))
    call (instance_create[]:int32 (var 1582s) (var 0s) (var 0s))
    global.my_hp = (- global.my_hp 2s)
    if !(<= global.my_hp 1s) goto 0x00009C
0x000090:
    global.my_hp = 1s
0x00009C:
    exit
