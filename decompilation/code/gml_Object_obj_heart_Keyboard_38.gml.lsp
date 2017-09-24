0x000000:
    if !(== self.movement 1s) goto 0x00012C
0x000014:
    if !(== self.confuse 0s) goto 0x000088
0x000028:
    self.y = (- self.y global.sp)
    if !(== (keyboard_multicheck[]:int32 (var 16s)) 1s) goto 0x000088
0x000060:
    self.y = (+ self.y (/ global.sp (double 2s)))
0x000088:
    if !(== self.confuse 1s) goto 0x0000C4
0x00009C:
    push self.y
    push (< -5s (- 3s:idealborder 8s))
    goto 0x0000C8
0x0000C4:
    push 0s
0x0000C8:
    if !pop goto 0x00012C
0x0000CC:
    self.y = (+ self.y global.sp)
    if !(== (keyboard_multicheck[]:int32 (var 16s)) 1s) goto 0x00012C
0x000104:
    self.y = (- self.y (/ global.sp (double 2s)))
0x00012C:
    if !(== self.movement 2s) goto 0x000188
0x000140:
    if !(== self.jumpstage 1s) goto 0x000168
0x000154:
    push (== self.vspeed 0s)
    goto 0x00016C
0x000168:
    push 0s
0x00016C:
    if !pop goto 0x000188
0x000170:
    self.jumpstage = 2s
    self.vspeed = -6s
0x000188:
    exit
