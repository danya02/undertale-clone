0x000000:
    pushenv 1570s 0x000014
0x000008:
    self.uncan = 0s
0x000014:
    popenv 0x000008
0x000018:
    [obj_mainchara].speed = 0s
    if !(> 1570.x (+ self.x 15s)) goto 0x000050
0x000044:
    [obj_mainchara].hspeed = 1s
0x000050:
    exit
