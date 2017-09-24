0x000000:
    stog.alarm[0s] = 5s
    global.faceemotion = 1s
    call (event_user[]:int32 (var 0s))
    self.i = 0s
    if !(< self.i 4s) goto 0x000130
0x000054:
    push -1s
    stog.partx[(+ (int32 self.i):partx (+ -20s (random[]:int32 (var 40s))))] = (int32 self.i)
    push -1s
    stog.party[(+ (int32 self.i):party (+ -10s (random[]:int32 (var 20s))))] = (int32 self.i)
    push -1s
    stog.partrot[(+ (int32 self.i):partrot (+ -90s (random[]:int32 (var 180s))))] = (int32 self.i)
    self.i = (+ self.i 1s)
    goto 0x000040
0x000130:
    self.mode = 5s
    self.dingus = 0s
0x000148:
    exit
