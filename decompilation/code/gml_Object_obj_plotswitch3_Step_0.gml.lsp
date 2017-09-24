0x000000:
    if !(== self.myinteract 1s) goto 0x000028
0x000014:
    push (<= global.plot 12s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0000C8
0x000030:
    self.on = 1s
    self.myinteract = 0s
    self.image_index = 1s
    global.plot = 13s
    global.vshake = 0s
    global.hshake = 4s
    global.shakespeed = 2s
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    call (snd_play[]:int32 (var 129s))
    global.interact = 99s
0x0000C8:
    if !(== (instance_exists[]:int32 (var 184s)) 0s) goto 0x0000F8
0x0000E4:
    push (== global.interact 99s)
    goto 0x0000FC
0x0000F8:
    push 0s
0x0000FC:
    if !pop goto 0x00010C
0x000100:
    global.interact = 0s
0x00010C:
    exit
