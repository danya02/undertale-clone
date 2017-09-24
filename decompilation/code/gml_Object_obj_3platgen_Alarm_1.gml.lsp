0x000000:
    if !(== self.type 0s) goto 0x000054
0x000014:
    stog.alarm[1s] = 100s
    call (scr_hplat[]:int32 (var 60s) (var 125s) (var 2s) (var 80s))
0x000054:
    if !(== self.type 1s) goto 0x0000A8
0x000068:
    stog.alarm[1s] = 70s
    call (scr_hplat[]:int32 (var 80s) (var 80s) (var 4s) (var 80s))
0x0000A8:
    if (== self.type 2s) goto 0x0000D0
0x0000BC:
    push (== self.type 3s)
    goto 0x0000D4
0x0000D0:
    push 1s
0x0000D4:
    if !pop goto 0x000118
0x0000D8:
    stog.alarm[1s] = 40s
    call (scr_hplat[]:int32 (var 25s) (var 80s) (var 4s) (var 80s))
0x000118:
    exit
