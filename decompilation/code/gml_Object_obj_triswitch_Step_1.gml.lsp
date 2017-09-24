0x000000:
    if !(== self.myinteract 1s) goto 0x000040
0x000014:
    if !(== self.on 0s) goto 0x000040
0x000028:
    push (bool (instance_exists[]:int32 (var 1265s)))
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x0000A0
0x000048:
    self.con = 1s
    self.on = 1s
    self.myinteract = 2s
    call (snd_play[]:int32 (var 106s))
    self.sprite_index = 1854s
    stog.alarm[3s] = 90s
0x0000A0:
    if !(== self.on 1s) goto 0x0000CC
0x0000B4:
    push (bool (instance_exists[]:int32 (var 1265s)))
    goto 0x0000D0
0x0000CC:
    push 0s
0x0000D0:
    if !pop goto 0x0000EC
0x0000D4:
    [obj_triswitchevent].switches = (+ 1265.switches 1s)
0x0000EC:
    exit
