0x000000:
    self.speed = 0s
    self.part = 1s
    if (== self.type 0s) goto 0x000040
0x00002C:
    push (== self.type 4s)
    goto 0x000044
0x000040:
    push 1s
0x000044:
    if !pop goto 0x00005C
0x000048:
    stog.alarm[4s] = 20s
0x00005C:
    if !(== self.type 1s) goto 0x00009C
0x000070:
    stog.alarm[7s] = 1s
    self.sprite_index = 117s
    self.reds = 0s
0x00009C:
    if !(== self.type 2s) goto 0x0000C4
0x0000B0:
    stog.alarm[5s] = -1s
0x0000C4:
    exit
