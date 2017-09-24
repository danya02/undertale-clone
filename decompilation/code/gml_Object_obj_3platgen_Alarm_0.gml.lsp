0x000000:
    if !(== self.type 0s) goto 0x000054
0x000014:
    stog.alarm[0s] = 100s
    call (scr_hplat[]:int32 (var 60s) (var 125s) (var -2s) (var 40s))
0x000054:
    if !(== self.type 1s) goto 0x0000A8
0x000068:
    stog.alarm[0s] = 55s
    call (scr_hplat[]:int32 (var 60s) (var 65s) (var -4s) (var 40s))
0x0000A8:
    if (== self.type 2s) goto 0x0000D0
0x0000BC:
    push (== self.type 3s)
    goto 0x0000D4
0x0000D0:
    push 1s
0x0000D4:
    if !pop goto 0x000160
0x0000D8:
    stog.alarm[0s] = 35s
    call (scr_hplat[]:int32 (var 25s) (var 65s) (var -4s) (var 40s))
    stog.alarm[2s] = -1s
    if !(== self.skl 0s) goto 0x000160
0x000140:
    self.skl = 1s
    stog.alarm[3s] = 1s
0x000160:
    exit
