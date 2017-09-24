0x000000:
    self.in_border = 0s
    push self.x
    if !(> -5s 0s:idealborder) goto 0x0000A4
0x00002C:
    push self.y
    if !(> -5s 2s:idealborder) goto 0x0000A4
0x00004C:
    push self.x
    if !(< -5s (- 1s:idealborder self.sprite_width)) goto 0x0000A4
0x000078:
    push self.y
    push (< -5s (- 3s:idealborder self.sprite_height))
    goto 0x0000A8
0x0000A4:
    push 0s
0x0000A8:
    if !pop goto 0x0000B8
0x0000AC:
    self.in_border = 1s
0x0000B8:
    ret var self.in_border
0x0000C4:
    exit
