0x000000:
    self.vspeed = (+ 3s (* (random[]:int32 (var 4s)) (choose[]:int32 (var -1s) (var 1s))))
    stog.alarm[5s] = (+ 15s (random[]:int32 (var 20s)))
0x000064:
    exit
