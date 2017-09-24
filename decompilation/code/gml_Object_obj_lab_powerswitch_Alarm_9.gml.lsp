0x000000:
    call (caster_play[]:int32 (+ 0.6d (random[]:int32 (var 0.3d))) (var 0.7d) self.tr)
    self.i = 0s
    if (<= 4s 0) goto 0x0000D0
0x000070:
    push 4s
    push -1.5d
    push -1s
    stog.vspeed* = (int32 (int32 self.i):am)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000070
0x0000D0:
    push (- pop 1)
    pop
    stog.alarm[10s] = 15s
0x0000E8:
    exit
