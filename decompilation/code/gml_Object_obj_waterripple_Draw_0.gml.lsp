0x000000:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000174
0x000018:
    self.image_index = (+ self.image_index 0.2d)
    self.depth = (- 1570.depth 100s)
    self.x = 1570.x
    self.y = 1570.y
    call (draw_self_custom[]:int32 self.y2 self.y1 self.x2 self.x1)
    if !(> 1570.bbox_left (- self.x1 5s)) goto 0x00011C
0x0000BC:
    if !(< 1570.bbox_right (+ self.x2 5s)) goto 0x00011C
0x0000DC:
    if !(> 1570.bbox_top (- self.y1 5s)) goto 0x00011C
0x0000FC:
    push (< 1570.bbox_bottom (+ self.y2 5s))
    goto 0x000120
0x00011C:
    push 0s
0x000120:
    if !pop goto 0x000174
0x000124:
    if (== 1570.image_index 1s) goto 0x00014C
0x000138:
    push (== 1570.image_index 3s)
    goto 0x000150
0x00014C:
    push 1s
0x000150:
    if !pop goto 0x000174
0x000154:
    call (snd_play[]:int32 (var 22s))
    self.mp = 0s
0x000174:
    exit
