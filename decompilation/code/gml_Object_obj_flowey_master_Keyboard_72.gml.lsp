0x000000:
    if !(== global.debug 1s) goto 0x000080
0x000014:
    self.htest = (+ self.htest 1s)
    if !(> self.htest 2s) goto 0x000080
0x000040:
    call (instance_create[]:int32 (var 1629s) (+ 200s (random[]:int32 (var 280s))) (var 0s))
    self.htest = 0s
0x000080:
    exit
