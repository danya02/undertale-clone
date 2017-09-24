0x000000:
    if !(< self.y (+ 759.y 4s)) goto 0x000048
0x000020:
    push -5s
    self.y = (- 2s:idealborder self.sprite_height)
    goto 0x000064
0x000048:
    self.x = (- 758.x self.sprite_width)
0x000064:
    exit
