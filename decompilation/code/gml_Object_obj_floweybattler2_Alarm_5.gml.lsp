0x000000:
    global.transtype = (+ global.transtype 1s)
    call (instance_create[]:int32 (var 1573s) (var 0s) (var 0s))
    self.hearts = (+ self.hearts 1s)
    if !(< self.hearts 6s) goto 0x000080
0x000068:
    stog.alarm[5s] = 8s
    goto 0x000094
0x000080:
    stog.alarm[7s] = 20s
0x000094:
    exit
