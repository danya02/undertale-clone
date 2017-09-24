0x000000:
    self.direction = (choose[]:int32 (- 240s (random[]:int32 (var 40s))) (+ 300s (random[]:int32 (var 40s))))
    self.speed = 18s
    self.aspeed = (+ 3s (* (random[]:int32 (var 6s)) (choose[]:int32 (var -1s) (var 1s))))
0x000088:
    exit
