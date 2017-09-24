0x000000:
    stog.alarm[0s] = self.rate
    push -5s
    self.chostx = (+ (+ 0s:idealborder 8s) (random[]:int32 (var 115s)))
    self.sum = (scr_monstersum[]:int32 )
    if !(== self.sum 1s) goto 0x0000A4
0x000070:
    push (var 668s)
    call (instance_create[]:int32 -5s (+ 3s:idealborder 10s) self.chostx)
0x0000A4:
    if !(> self.sum 1s) goto 0x0000EC
0x0000B8:
    push (var 668s)
    call (instance_create[]:int32 -5s (- 2s:idealborder 30s) self.chostx)
0x0000EC:
    exit
