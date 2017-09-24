0x000000:
    self.siner = (+ self.siner 1s)
    call (draw_sprite[]:int32 self.y self.x (/ self.siner (double 6s)) self.sprite_index)
0x000050:
    exit
