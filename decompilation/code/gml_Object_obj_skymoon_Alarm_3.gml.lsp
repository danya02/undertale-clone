0x000000:
    if !(== self.sum 1s) goto 0x0000B4
0x000014:
    self.aimbullet = (instance_create[]:int32 (var 374s) (- 200s (random[]:int32 (var 200s))) (- 200s (random[]:int32 (var 200s))))
    pushenv (int32 self.aimbullet) 0x00009C
0x00006C:
    self.direction = (point_direction[]:int32 743.y 743.x self.y self.x)
0x00009C:
    popenv 0x00006C
0x0000A0:
    stog.alarm[3s] = 30s
0x0000B4:
    exit
