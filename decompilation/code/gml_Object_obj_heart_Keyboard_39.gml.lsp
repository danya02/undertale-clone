0x000000:
    if (== self.movement 1s) goto 0x000028
0x000014:
    push (== self.movement 2s)
    goto 0x00002C
0x000028:
    push 1s
0x00002C:
    if !pop goto 0x000148
0x000030:
    if !(== self.confuse 0s) goto 0x0000A4
0x000044:
    self.x = (+ self.x global.sp)
    if !(== (keyboard_multicheck[]:int32 (var 16s)) 1s) goto 0x0000A4
0x00007C:
    self.x = (- self.x (/ global.sp (double 2s)))
0x0000A4:
    if !(== self.confuse 1s) goto 0x0000E0
0x0000B8:
    push self.x
    push (> -5s (+ 0s:idealborder 8s))
    goto 0x0000E4
0x0000E0:
    push 0s
0x0000E4:
    if !pop goto 0x000148
0x0000E8:
    self.x = (- self.x global.sp)
    if !(== (keyboard_multicheck[]:int32 (var 16s)) 1s) goto 0x000148
0x000120:
    self.x = (+ self.x (/ global.sp (double 2s)))
0x000148:
    exit
