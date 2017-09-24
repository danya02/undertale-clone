0x000000:
    if !(== self.side 1s) goto 0x0000CC
0x000014:
    if !(== self.offset 0s) goto 0x000070
0x000028:
    push (var 674s)
    push -5s
    self.blt = (instance_create[]:int32 (+ 3s:idealborder 12s) -5s (+ 0s:idealborder 4s))
0x000070:
    if !(== self.offset 1s) goto 0x0000CC
0x000084:
    push (var 674s)
    push -5s
    self.blt = (instance_create[]:int32 (+ 3s:idealborder 12s) -5s (- 0s:idealborder 34s))
0x0000CC:
    if !(== self.side -1s) goto 0x000198
0x0000E0:
    if !(== self.offset 0s) goto 0x00013C
0x0000F4:
    push (var 674s)
    push -5s
    self.blt = (instance_create[]:int32 (+ 3s:idealborder 12s) -5s (- 1s:idealborder 4s))
0x00013C:
    if !(== self.offset 1s) goto 0x000198
0x000150:
    push (var 674s)
    push -5s
    self.blt = (instance_create[]:int32 (+ 3s:idealborder 12s) -5s (+ 1s:idealborder 34s))
0x000198:
    push self.dmg
    stog.dmg* = (int32 self.blt)
    push self.offset
    stog.offset* = (int32 self.blt)
    if !(== self.side -1s) goto 0x0001F4
0x0001E4:
    self.side = 1s
    goto 0x000200
0x0001F4:
    self.side = -1s
0x000200:
    stog.alarm[0s] = self.firingspeed
    self.firingspeed = (- self.firingspeed 2s)
0x000230:
    exit
