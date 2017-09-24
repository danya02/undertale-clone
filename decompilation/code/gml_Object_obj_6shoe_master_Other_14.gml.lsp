0x000000:
    if (== self.type 2s) goto 0x000028
0x000014:
    push (== self.type 0s)
    goto 0x00002C
0x000028:
    push 1s
0x00002C:
    if !pop goto 0x0000D8
0x000030:
    self.type = 1s
    self.i = 0s
    if !(< self.i 30s) goto 0x0000D8
0x00005C:
    call (instance_create[]:int32 (var 1611s) (+ self.stary (* (sin[]:int32 (/ self.siner (double 9s))) 10s)) (+ self.starx (* self.i 40s)))
    self.i = (+ self.i 1s)
    goto 0x000048
0x0000D8:
    exit
