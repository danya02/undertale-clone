0x000000:
    self.stoptimer = 1s
    self.siner = (+ self.siner 1s)
    self.x = (+ -30s (abs[]:int32 (* (sin[]:int32 (/ self.siner (double 9s))) 105s)))
    if !(>= self.x 64s) goto 0x000094
0x000074:
    self.siner = (- self.siner 0.72d)
0x000094:
    if !(< self.x 10s) goto 0x0000B4
0x0000A8:
    self.stoptimer = 0s
0x0000B4:
    if !(<= self.x -8s) goto 0x0000E8
0x0000C8:
    if !(== self.terminate 1s) goto 0x0000E8
0x0000DC:
    call (instance_destroy[]:int32 )
0x0000E8:
    exit
