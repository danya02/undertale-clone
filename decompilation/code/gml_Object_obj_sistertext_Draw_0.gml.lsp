0x000000:
    if !(== self.active 1s) goto 0x0001FC
0x000014:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 2s))
    if !(== self.done 2s) goto 0x000074
0x000054:
    self.hypefade = (- self.hypefade 0.1d)
0x000074:
    self.i = 0s
    if !(< self.i self.amt) goto 0x0001E8
0x000098:
    push -1s
    call (draw_set_alpha[]:int32 (* (int32 self.i):fade self.hypefade))
    push self.this_phrase
    push -1s
    call (draw_text[]:int32 (+ (int32 self.i):wherey (* (cos[]:int32 (+ self.i (/ self.siner (double 5s)))) 5s)) -1s (+ (int32 self.i):wherex (* (sin[]:int32 (+ self.i (/ self.siner (double 5s)))) 5s)))
    push -1s
    if !(< (int32 self.i):fade 1s) goto 0x0001CC
0x000198:
    push -1s
    stog.fade[(+ (int32 self.i):fade 0.2d)] = (int32 self.i)
0x0001CC:
    self.i = (+ self.i 1s)
    goto 0x000080
0x0001E8:
    call (draw_set_alpha[]:int32 (var 1s))
0x0001FC:
    self.siner = (+ self.siner 1s)
    if !(== self.done 1s) goto 0x000240
0x000228:
    push (bool (keyboard_multicheck_pressed[]:int32 (var 0s)))
    goto 0x000244
0x000240:
    push 0s
0x000244:
    if !pop goto 0x000254
0x000248:
    self.done = 2s
0x000254:
    if !(<= self.hypefade 0s) goto 0x000274
0x000268:
    call (instance_destroy[]:int32 )
0x000274:
    exit
