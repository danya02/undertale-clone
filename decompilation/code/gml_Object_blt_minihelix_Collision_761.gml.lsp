0x000000:
    self.gravity = 0s
    self.vspeed = -0.2d
    call (snd_play[]:int32 (var 106s))
    self.dink = (+ self.dink 1s)
    self.y = self.yprevious
    if !(== self.dink 3s) goto 0x00007C
0x000070:
    call (instance_destroy[]:int32 )
0x00007C:
    exit
