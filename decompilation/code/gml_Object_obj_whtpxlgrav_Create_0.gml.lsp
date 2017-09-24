0x000000:
    call (action_set_gravity[]:int32 (+ (random[]:int32 (var 0.5d)) 0.2d) (var 90s))
    call (action_set_hspeed[]:int32 (- (random[]:int32 (var 4s)) 2s))
0x000060:
    exit
