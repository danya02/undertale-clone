0x000000:
    self.siner1 = (+ self.siner1 20s)
    self.siner2 = (- self.siner2 20s)
    self.siner3 = (+ self.siner3 20s)
    self.siner4 = (- self.siner4 20s)
    self.siner5 = (+ self.siner5 20s)
    self.sinerx = (+ self.sinerx 1s)
    self.rr = 3s
    self.i = 0s
    if !(< self.i 3s) goto 0x0001F4
0x0000BC:
    push (+ (+ self.x (* (sin[]:int32 (degtorad[]:int32 (+ self.siner1 (* 120s self.i)))) self.rr)) (sin[]:int32 (/ self.sinerx (double 2s))))
    push -1s
    stog.x* = (int32 (int32 self.i):trash1)
    push (+ (+ self.y (/ (* (cos[]:int32 (degtorad[]:int32 (+ self.siner1 (* 120s self.i)))) self.rr) (double 3s))) (cos[]:int32 (/ self.sinerx (double 2s))))
    push -1s
    stog.y* = (int32 (int32 self.i):trash1)
    self.i = (+ self.i 1s)
    goto 0x0000A8
0x0001F4:
    self.rr = 6s
    self.i = 0s
    if !(< self.i 3s) goto 0x000360
0x000220:
    push (- (+ self.x (* (sin[]:int32 (degtorad[]:int32 (+ self.siner2 (* 120s self.i)))) self.rr)) (sin[]:int32 (/ self.sinerx (double 2s))))
    push -1s
    stog.x* = (int32 (int32 self.i):trash2)
    push (- (- (+ self.y (/ (* (cos[]:int32 (degtorad[]:int32 (+ self.siner2 (* 120s self.i)))) self.rr) (double 3s))) 12s) (cos[]:int32 (/ self.sinerx (double 2s))))
    push -1s
    stog.y* = (int32 (int32 self.i):trash2)
    self.i = (+ self.i 1s)
    goto 0x00020C
0x000360:
    self.rr = 10s
    self.i = 0s
    if !(< self.i 3s) goto 0x0004CC
0x00038C:
    push (+ (+ self.x (* (sin[]:int32 (degtorad[]:int32 (+ self.siner3 (* 120s self.i)))) self.rr)) (sin[]:int32 (/ self.sinerx (double 2s))))
    push -1s
    stog.x* = (int32 (int32 self.i):trash3)
    push (+ (- (+ self.y (/ (* (cos[]:int32 (degtorad[]:int32 (+ self.siner3 (* 120s self.i)))) self.rr) (double 3s))) 24s) (cos[]:int32 (/ self.sinerx (double 2s))))
    push -1s
    stog.y* = (int32 (int32 self.i):trash3)
    self.i = (+ self.i 1s)
    goto 0x000378
0x0004CC:
    self.rr = 13s
    self.i = 0s
    if !(< self.i 3s) goto 0x000638
0x0004F8:
    push (- (+ self.x (* (sin[]:int32 (degtorad[]:int32 (+ self.siner4 (* 120s self.i)))) self.rr)) (sin[]:int32 (/ self.sinerx (double 2s))))
    push -1s
    stog.x* = (int32 (int32 self.i):trash4)
    push (- (- (+ self.y (/ (* (cos[]:int32 (degtorad[]:int32 (+ self.siner4 (* 120s self.i)))) self.rr) (double 3s))) 36s) (cos[]:int32 (/ self.sinerx (double 2s))))
    push -1s
    stog.y* = (int32 (int32 self.i):trash4)
    self.i = (+ self.i 1s)
    goto 0x0004E4
0x000638:
    self.rr = 16s
    self.i = 0s
    if !(< self.i 3s) goto 0x0007A4
0x000664:
    push (+ (+ self.x (* (sin[]:int32 (degtorad[]:int32 (+ self.siner5 (* 120s self.i)))) self.rr)) (sin[]:int32 (/ self.sinerx (double 2s))))
    push -1s
    stog.x* = (int32 (int32 self.i):trash5)
    push (+ (- (+ self.y (/ (* (cos[]:int32 (degtorad[]:int32 (+ self.siner5 (* 120s self.i)))) self.rr) (double 3s))) 48s) (cos[]:int32 (/ self.sinerx (double 2s))))
    push -1s
    stog.y* = (int32 (int32 self.i):trash5)
    self.i = (+ self.i 1s)
    goto 0x000650
0x0007A4:
    exit
