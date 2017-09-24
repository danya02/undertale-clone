0x000000:
    self.hspeed = (+ self.hspeed (* (+ (random[]:int32 (var 2s)) 2s) (choose[]:int32 (var 1s) (var -1s))))
0x000048:
    exit
