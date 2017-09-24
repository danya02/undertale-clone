0x000000:
    self.active = 1s
    self.con = 1s
    if (== self.dir 1s) goto 0x000040
0x00002C:
    push (== self.dir 3s)
    goto 0x000044
0x000040:
    push 1s
0x000044:
    if !pop goto 0x000054
0x000048:
    self.sprite_index = 664s
0x000054:
    if (== self.dir 0s) goto 0x00007C
0x000068:
    push (== self.dir 2s)
    goto 0x000080
0x00007C:
    push 1s
0x000080:
    if !pop goto 0x000090
0x000084:
    self.sprite_index = 662s
0x000090:
    if (== self.dir 0s) goto 0x0000B8
0x0000A4:
    push (== self.dir 2s)
    goto 0x0000BC
0x0000B8:
    push 1s
0x0000BC:
    if !pop goto 0x0000D8
0x0000C0:
    push -5s
    self.x = 0s:idealborder
0x0000D8:
    if !(== self.dir 3s) goto 0x000110
0x0000EC:
    push -5s
    self.x = (- 0s:idealborder self.sprite_width)
0x000110:
    if !(== self.dir 1s) goto 0x00013C
0x000124:
    push -5s
    self.x = 1s:idealborder
0x00013C:
    if !(== self.dir 0s) goto 0x000168
0x000150:
    push -5s
    self.y = 3s:idealborder
0x000168:
    if (== self.dir 1s) goto 0x000190
0x00017C:
    push (== self.dir 3s)
    goto 0x000194
0x000190:
    push 1s
0x000194:
    if !pop goto 0x0001B0
0x000198:
    push -5s
    self.y = 2s:idealborder
0x0001B0:
    if !(== self.dir 2s) goto 0x0001E8
0x0001C4:
    push -5s
    self.y = (- 2s:idealborder self.sprite_height)
0x0001E8:
    self.ideal_y = self.y
    self.ideal_x = self.x
    if !(> self.warning 4s) goto 0x000230
0x00021C:
    call (snd_play[]:int32 (var 29s))
0x000230:
    exit
