0x000000:
    self.blut = (+ self.blut 1s)
    if !(> self.blut 21s) goto 0x000044
0x00002C:
    self.image_index = 1s
    self.blue = 1s
0x000044:
    if !(> self.blut 42s) goto 0x00007C
0x000058:
    self.blut = 0s
    self.blue = 0s
    self.image_index = 0s
0x00007C:
    if !(== self.stage 0s) goto 0x0000B0
0x000090:
    push self.y
    push (< -5s 2s:idealborder)
    goto 0x0000B4
0x0000B0:
    push 0s
0x0000B4:
    if !pop goto 0x0000F4
0x0000B8:
    self.stage = 1s
    push -5s
    self.y = 2s:idealborder
    self.vspeed = 0s
    self.hspeed = -4s
0x0000F4:
    exit
