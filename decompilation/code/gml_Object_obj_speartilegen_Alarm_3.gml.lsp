0x000000:
    stog.alarm[3s] = self.tums
    call (instance_create[]:int32 (var 1048s) (var 0s) (var 0s))
    call (instance_create[]:int32 (var 1048s) (var 0s) (var 0s))
    call (instance_create[]:int32 (var 1048s) (var 0s) (var 0s))
    call (instance_create[]:int32 (var 1048s) (var 0s) (var 0s))
    call (instance_create[]:int32 (var 1048s) (var 0s) (var 0s))
    call (instance_create[]:int32 (var 1048s) (var 0s) (var 0s))
    call (instance_create[]:int32 (var 1048s) (var 0s) (var 0s))
    self.g = (instance_create[]:int32 (var 1048s) (var 0s) (var 0s))
    push 1s
    stog.duty* = (int32 self.g)
    if !(> self.tums 35s) goto 0x000188
0x000168:
    self.tums = (- self.tums 0.75d)
0x000188:
    if !(<= self.tums 35s) goto 0x0001B0
0x00019C:
    push (> self.tums 28s)
    goto 0x0001B4
0x0001B0:
    push 0s
0x0001B4:
    if !pop goto 0x0001D8
0x0001B8:
    self.tums = (- self.tums 0.25d)
0x0001D8:
    if !(> self.tums 15s) goto 0x000200
0x0001EC:
    push (<= self.tums 28s)
    goto 0x000204
0x000200:
    push 0s
0x000204:
    if !pop goto 0x000228
0x000208:
    self.tums = (- self.tums 0.5d)
0x000228:
    call (snd_play[]:int32 (var 13s))
    if !(<= self.tums 15s) goto 0x00028C
0x000250:
    call (snd_play[]:int32 (var 114s))
    if !(== self.room 111s) goto 0x00028C
0x000278:
    stog.flag[285s] = 1s
0x00028C:
    exit
