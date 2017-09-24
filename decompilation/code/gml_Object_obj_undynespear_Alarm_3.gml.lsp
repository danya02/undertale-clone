0x000000:
    if !(== self.active 2s) goto 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    self.goalx = (+ 1570.x 7s)
    self.goaly = (+ 1570.y 15s)
    if !(== self.room 93s) goto 0x00007C
0x000064:
    self.goalx = (+ 1570.x 400s)
0x00007C:
    call (move_towards_point[]:int32 (var 5s) self.goaly (+ self.goalx self.gax))
    self.active = 1s
    self.rot = self.direction
    self.friction = -0.3d
    call (snd_play[]:int32 (var 20s))
    self.r = (/ self.sprite_width (double 2s))
0x00010C:
    exit
