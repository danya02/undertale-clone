0x000000:
    self.g = (choose[]:int32 (var -3s) (var 3s))
    call (scr_bwall[]:int32 (var 1s) (var 80s) self.g (+ 50s (random[]:int32 (var 150s))))
    stog.alarm[6s] = 50s
0x000070:
    exit
