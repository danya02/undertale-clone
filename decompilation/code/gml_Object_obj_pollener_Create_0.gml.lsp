0x000000:
    self.i = 0s
    if !(< self.i 100s) goto 0x000138
0x000020:
    stog.pollenalpha[(int32 self.i)] = 0s
    stog.pollenx[(int32 self.i)] = (random[]:int32 self.room_width)
    stog.polleny[(int32 self.i)] = (random[]:int32 self.room_height)
    stog.pollensize[(int32 self.i)] = (+ (random[]:int32 (var 3s)) 1s)
    stog.pollenhspeed[(int32 self.i)] = (- (random[]:int32 (var 2s)) 1s)
    stog.pollenvspeed[(int32 self.i)] = (- (random[]:int32 (var 2s)) 1s)
    self.i = (+ self.i 1s)
    goto 0x00000C
0x000138:
    exit
