0x000000:
    self.direction = (+ self.direction 6s)
    call (instance_create[]:int32 (var 610s) self.y self.x)
    call (snd_play[]:int32 (var 92s))
0x000050:
    exit
