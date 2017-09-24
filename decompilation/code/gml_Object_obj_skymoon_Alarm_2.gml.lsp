0x000000:
    self.ch = (choose[]:int32 (var 1s) (var 0s))
    if !(== self.ch 0s) goto 0x0000A0
0x000034:
    push (var 374s)
    push (- 250s (random[]:int32 (var 200s)))
    call (instance_create[]:int32 -5s 0s:idealborder (- (- -5s (random[]:int32 (- 0s:idealborder 50s))) 50s))
    goto 0x00011C
0x0000A0:
    push (var 374s)
    push -5s
    call (instance_create[]:int32 (- (- 2s:idealborder 200s) (random[]:int32 (var 50s))) -5s (- (+ 0s:idealborder (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 150s))) 60s))
0x00011C:
    stog.alarm[2s] = 3s
    self.sum = (scr_monstersum[]:int32 )
    if !(> self.sum 1s) goto 0x000168
0x000154:
    stog.alarm[2s] = 6s
0x000168:
    exit
