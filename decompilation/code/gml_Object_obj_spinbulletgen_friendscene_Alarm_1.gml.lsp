0x000000:
    self.ang = (* self.i 18s)
    self.xx = (lengthdir_x[]:int32 self.ang self.radius)
    self.yy = (lengthdir_y[]:int32 self.ang self.radius)
    call (instance_create[]:int32 (var 1665s) (+ self.yy self.y) (+ self.xx self.x))
    call (snd_play[]:int32 (var 92s))
    self.i = (+ self.i 1s)
    if !(< self.i 20s) goto 0x000110
0x0000D4:
    stog.alarm[1s] = 1s
    if !(== self.spec 2s) goto 0x000110
0x0000FC:
    stog.alarm[1s] = 2s
0x000110:
    exit
