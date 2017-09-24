0x000000:
    self.xx = 0s
    self.yy = 0s
    if !(== self.argument0 0s) goto 0x000094
0x00002C:
    push -5s
    push 1s:idealborder
    push (round[]:int32 (random[]:int32 (- -5s 0s:idealborder)))
    self.xx = (+ -5s 0s:idealborder)
    push -5s
    self.yy = 2s:idealborder
0x000094:
    if !(== self.argument0 1s) goto 0x00011C
0x0000A8:
    push -5s
    push 1s:idealborder
    push (round[]:int32 (random[]:int32 (- -5s 0s:idealborder)))
    self.xx = (+ -5s 0s:idealborder)
    push -5s
    self.yy = (- 3s:idealborder self.argument1)
0x00011C:
    if !(== self.argument0 2s) goto 0x000198
0x000130:
    push -5s
    push 3s:idealborder
    push (round[]:int32 (random[]:int32 (- -5s 2s:idealborder)))
    self.yy = (+ -5s 2s:idealborder)
    push -5s
    self.xx = 0s:idealborder
0x000198:
    if !(== self.argument0 3s) goto 0x000220
0x0001AC:
    push -5s
    push 3s:idealborder
    push (round[]:int32 (random[]:int32 (- -5s 2s:idealborder)))
    self.yy = (+ -5s 2s:idealborder)
    push -5s
    self.xx = (- 1s:idealborder self.argument1)
0x000220:
    exit
