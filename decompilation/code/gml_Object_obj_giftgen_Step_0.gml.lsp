0x000000:
    if !(> self.siner 0s) goto 0x000204
0x000014:
    self.i = 0s
    self.siner = (+ self.siner 1s)
    if (<= 3s 0) goto 0x000200
0x000050:
    push 3s
    if !(!= self.rr 3s) goto 0x0000A0
0x000064:
    push -1s
    stog.sinex* = (+ (int32 (int32 self.i):blt):sinex 5s)
    goto 0x0000D8
0x0000A0:
    push (int32 (int32 self.i):blt)
    push -1s
    stog.sinex* = (+ (int32 (int32 self.i):blt):sinex 2s)
0x0000D8:
    push (int32 (int32 self.i):blt)
    push -1s
    push (sin[]:int32 (* (/ (int32 (int32 self.i):blt):sinex (double 100s)) 3.14159265358979d))
    push -5s
    push (/ (* 1s:idealborder (- (- -5s 0s:idealborder) 45s)) (double 2s))
    push (+ (+ -5s 0s:idealborder) 67s)
    push -1s
    stog.x* = (int32 (int32 self.i):blt)
    self.i = (+ self.i 1s)
    if !(> self.siner 20s) goto 0x0001E8
0x0001C8:
    self.vspeed = (- self.vspeed 0.04d)
0x0001E8:
    if (bool (- pop 1)) goto 0x000050
0x000200:
    push (- pop 1)
    pop
0x000204:
    exit
