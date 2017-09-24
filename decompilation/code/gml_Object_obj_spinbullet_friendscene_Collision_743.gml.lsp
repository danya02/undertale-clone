0x000000:
    if !(<= global.invc 1s) goto 0x000028
0x000014:
    push (== self.f_timer 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0000D0
0x000030:
    call (snd_play[]:int32 (var 53s))
    global.hshake = 2s
    global.shakespeed = 2s
    global.vshake = 2s
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    global.invc = 15s
    global.hp = (- global.hp 7s)
    if !(<= global.hp 1s) goto 0x0000D0
0x0000C4:
    global.hp = 1s
0x0000D0:
    exit
