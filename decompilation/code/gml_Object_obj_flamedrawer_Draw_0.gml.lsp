0x000000:
    self.i = 0s
    if !(< self.i 20s) goto 0x00007C
0x000020:
    call (draw_sprite[]:int32 (+ self.y (* 10s self.i)) self.x self.image_index self.sprite_index)
    self.i = (+ self.i 1s)
    goto 0x00000C
0x00007C:
    self.image_speed = 0.5d
0x000090:
    exit
