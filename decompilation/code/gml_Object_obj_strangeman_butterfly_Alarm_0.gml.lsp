0x000000:
    if !(bool (instance_exists[]:int32 self.king)) goto 0x0000B4
0x000018:
    call (move_towards_point[]:int32 (+ 1s (random[]:int32 (var 2s))) (int32 self.king):y (int32 self.king):x)
    self.direction = (+ self.direction (- (random[]:int32 (var 20s)) (random[]:int32 (var 20s))))
    stog.alarm[0s] = 15s
    goto 0x0000C0
0x0000B4:
    call (instance_destroy[]:int32 )
0x0000C0:
    exit
