0x000000:
    if !(== self.sum 1s) goto 0x0000A4
0x000014:
    self.aimbullet = (instance_create[]:int32 (var 372s) (+ self.y 14s) (+ self.x 14s))
    pushenv (int32 self.aimbullet) 0x00008C
0x00005C:
    self.direction = (point_direction[]:int32 743.y 743.x self.y self.x)
0x00008C:
    popenv 0x00005C
0x000090:
    stog.alarm[3s] = 30s
0x0000A4:
    exit
