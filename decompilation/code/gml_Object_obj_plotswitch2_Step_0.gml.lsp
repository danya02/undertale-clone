0x000000:
    if !(== self.myinteract 1s) goto 0x000030
0x000014:
    push (<= global.plot 4.5d)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x0000D0
0x000038:
    self.on = 1s
    self.myinteract = 0s
    self.image_index = 1s
    global.plot = 5s
    global.vshake = 0s
    global.hshake = 4s
    global.shakespeed = 2s
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    call (snd_play[]:int32 (var 129s))
    global.interact = 99s
0x0000D0:
    if !(== (instance_exists[]:int32 (var 184s)) 0s) goto 0x000100
0x0000EC:
    push (== global.interact 99s)
    goto 0x000104
0x000100:
    push 0s
0x000104:
    if !pop goto 0x000114
0x000108:
    global.interact = 0s
0x000114:
    self.image_index = self.on
0x000124:
    exit
