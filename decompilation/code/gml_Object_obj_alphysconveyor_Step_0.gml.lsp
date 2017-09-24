0x000000:
    self.col = (- self.col 1s)
    if !(== self.col 0s) goto 0x000040
0x00002C:
    push (== global.interact 1s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x000060
0x000048:
    global.interact = 0s
    [obj_mainchara].vspeed = 0s
0x000060:
    if !(> self.col 0s) goto 0x0000DC
0x000074:
    [obj_mainchara].x = self.x
    if !(> self.x (/ self.room_width (double 2s))) goto 0x0000C4
0x0000A8:
    [obj_mainchara].y = (- 1570.y 4s)
    goto 0x0000DC
0x0000C4:
    [obj_mainchara].y = (+ 1570.y 4s)
0x0000DC:
    exit
