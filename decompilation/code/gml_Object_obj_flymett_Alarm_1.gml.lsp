0x000000:
    self.mode = 2s
    if !(== self.overmode 2s) goto 0x00002C
0x000020:
    self.mode = 3s
0x00002C:
    self.sh = (instance_create[]:int32 (var 1189s) (+ (+ self.y 15s) (lengthdir_y[]:int32 self.ang (var 26s))) (+ (+ self.x 11s) (lengthdir_x[]:int32 self.ang (var 26s))))
    push self.ang
    stog.direction* = (int32 self.sh)
    push 4s
    stog.speed* = (int32 self.sh)
    self.shotno = (+ self.shotno 1s)
    if !(< self.shotno 6s) goto 0x000114
0x0000FC:
    stog.alarm[1s] = 2s
    goto 0x00012C
0x000114:
    self.mode = 0s
    self.shotno = 0s
0x00012C:
    exit
