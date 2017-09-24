0x000000:
    if !(== self.frame 0s) goto 0x000048
0x000014:
    pushenv 493s 0x000044
0x00001C:
    self.specbullet = (instance_create[]:int32 (var 491s) 492.y 492.x)
0x000044:
    popenv 0x00001C
0x000048:
    if !(> self.frame 0s) goto 0x000080
0x00005C:
    call (instance_create[]:int32 (var 491s) self.y self.x)
0x000080:
    self.frame = (+ self.frame 1s)
    self.direction = (- self.direction 10s)
    call (snd_play[]:int32 (var 92s))
0x0000C4:
    exit
