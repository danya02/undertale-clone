0x000000:
    self.wc = 0s
    self.wc2 = 0s
    if !(< self.x self.x1) goto 0x00004C
0x000030:
    self.wc = (- self.x1 self.x)
0x00004C:
    if !(> self.x self.x2) goto 0x000080
0x000064:
    self.wc2 = (- self.x self.x2)
0x000080:
    call (draw_sprite_part[]:int32 self.y (+ self.x self.wc) self.sprite_height (- (- self.sprite_width self.wc) self.wc2) (var 0s) self.wc self.GR self.sprite_index)
0x0000F0:
    exit
