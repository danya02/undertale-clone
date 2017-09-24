0x000000:
    call (draw_set_circle_precision[]:int32 (var 0s))
    call (draw_set_color[]:int32 (var 65535))
    self.i = 0s
    if !(< self.i 100s) goto 0x000398
0x00004C:
    push -1s
    stog.pollenalpha[(+ (int32 self.i):pollenalpha 0.03d)] = (int32 self.i)
    push -1s
    stog.truepollenalpha[(int32 self.i)] = (int32 self.i):pollenalpha
    push -1s
    if !(>= (int32 self.i):pollenalpha 2s) goto 0x00010C
0x0000D4:
    push 4s
    stog.truepollenalpha[(int32 self.i)] = (- -1s (int32 self.i):pollenalpha)
0x00010C:
    push -1s
    push (int32 self.i)
    push -1s
    stog.pollenx[(+ (int32 self.i):pollenhspeed (/ (* -1s (int32 self.i):truepollenalpha) (double 4s)))] = (int32 self.i):pollenx
    push -1s
    push (int32 self.i)
    push -1s
    stog.polleny[(+ (int32 self.i):pollenvspeed (/ (* -1s (int32 self.i):truepollenalpha) (double 4s)))] = (int32 self.i):polleny
    push -1s
    if !(<= (int32 self.i):truepollenalpha 0s) goto 0x0002FC
0x000200:
    stog.pollenx[(int32 self.i)] = (random[]:int32 self.room_width)
    stog.polleny[(int32 self.i)] = (random[]:int32 self.room_height)
    stog.pollensize[(int32 self.i)] = (+ (random[]:int32 (var 3s)) 1s)
    stog.pollenhspeed[(int32 self.i)] = (- (random[]:int32 (var 2s)) 1s)
    stog.pollenvspeed[(int32 self.i)] = (- (random[]:int32 (var 2s)) 1s)
    stog.pollenalpha[(int32 self.i)] = 0s
0x0002FC:
    push -1s
    call (draw_set_alpha[]:int32 (int32 self.i):truepollenalpha)
    push (var 0s)
    push -1s
    push (int32 self.i):pollensize
    call (draw_circle[]:int32 -1s (int32 self.i):polleny -1s (int32 self.i):pollenx)
    self.i = (+ self.i 1s)
    goto 0x000038
0x000398:
    call (draw_set_alpha[]:int32 (var 1s))
0x0003AC:
    exit
