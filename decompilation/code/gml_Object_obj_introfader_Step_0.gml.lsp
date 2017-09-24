0x000000:
    if !(<= self.image_alpha 0.9d) goto 0x000030
0x00001C:
    push (== self.over 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x000054
0x000038:
    self.image_alpha = (+ self.image_alpha self.tspeed)
0x000054:
    if !(> self.image_alpha 0.9d) goto 0x000084
0x000070:
    push (== self.over 0s)
    goto 0x000088
0x000084:
    push 0s
0x000088:
    if !pop goto 0x0000AC
0x00008C:
    self.over = 1s
    stog.alarm[2s] = 4s
0x0000AC:
    exit
