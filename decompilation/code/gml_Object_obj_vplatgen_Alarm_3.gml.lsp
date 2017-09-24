0x000000:
    if !(== self.type 0s) goto 0x000020
0x000014:
    self.vvv = 3s
0x000020:
    if !(== self.type 1s) goto 0x000048
0x000034:
    self.vvv = 4.5d
0x000048:
    if !(== self.type 2s) goto 0x000068
0x00005C:
    self.vvv = 5s
0x000068:
    call (scr_hplat[]:int32 (+ 8s (choose[]:int32 (var 10s) (var 5s))) (var 0s) (var 0s) (var 350s))
    push self.vvv
    stog.vspeed* = (int32 self.bone)
    push -5s
    push (+ 0s:idealborder 40s)
    push -5s
    push (+ 1s:idealborder (random[]:int32 (- (- -5s 0s:idealborder) 80s)))
    stog.x* = (int32 self.bone)
    stog.alarm[3s] = 15s
    if !(== self.type 2s) goto 0x000168
0x000154:
    stog.alarm[3s] = 12s
0x000168:
    push (choose[]:int32 (var 5s) (var 4s) (var 3s) (var 2s) (var 1s))
    stog.z_b* = (int32 self.bone)
    push (choose[]:int32 (var 0.1d) (var 0.08d) (var 0.12d))
    stog.z_a* = (int32 self.bone)
    if !(== self.non 0s) goto 0x000248
0x00020C:
    push 0s
    stog.z_b* = (int32 self.bone)
    push 60s
    stog.len* = (int32 self.bone)
    self.non = 1s
0x000248:
    exit
