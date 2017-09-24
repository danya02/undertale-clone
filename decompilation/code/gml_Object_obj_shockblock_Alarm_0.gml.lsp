0x000000:
    [obj_mainchara].x = self.memoryx
    [obj_mainchara].y = self.memoryy
    if !(> 1570.y 134s) goto 0x000048
0x000034:
    push (< 1570.x 145s)
    goto 0x00004C
0x000048:
    push 0s
0x00004C:
    if !pop goto 0x00005C
0x000050:
    [obj_mainchara].y = 134s
0x00005C:
    self.shocking = 0s
    global.interact = 0s
    call (snd_stop[]:int32 (var 24s))
0x000088:
    exit
