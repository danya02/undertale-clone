0x000000:
    self.dmgamt = (ceil[]:int32 (/ global.hp (double 2s)))
    global.hp = (- global.hp self.dmgamt)
    if !(<= global.hp 1s) goto 0x00006C
0x000054:
    global.hp = 1s
    self.q = 8s
0x00006C:
    call (snd_play[]:int32 (var 53s))
    global.hshake = 2s
    global.shakespeed = 2s
    global.vshake = 2s
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    global.invc = 20s
0x0000D4:
    exit
