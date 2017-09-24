0x000000:
    self.phrase = "It's good to be#with my sister again. "
    self.active = 0s
    stog.alarm[0s] = 1s
    self.done = 0s
    self.amt = 6s
    self.i = 0s
    if !(< self.i self.amt) goto 0x000118
0x00006C:
    stog.fade[(int32 self.i)] = 0s
    push (random[]:int32 (var 220s))
    stog.wherex[(int32 self.i)] = (- (+ -1s 0s:view_xview) 50s)
    stog.wherey[(int32 self.i)] = (random[]:int32 (- self.room_height 20s))
    self.i = (+ self.i 1s)
    goto 0x000054
0x000118:
    self.siner = 0s
    self.type = 1s
    self.hypefade = 1s
0x00013C:
    exit
