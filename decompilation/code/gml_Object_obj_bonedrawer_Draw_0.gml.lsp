0x000000:
    call (draw_sprite_part[]:int32 self.y self.x (+ 6s self.damt) self.sprite_width (- (- self.sprite_height self.damt) 6s) (var 0s) self.image_index self.sprite_index)
    if !(== self.drawerdown 1s) goto 0x0000DC
0x00007C:
    if !(< self.damt (- self.sprite_height 6s)) goto 0x0000B8
0x00009C:
    self.damt = (+ self.damt 2s)
    goto 0x0000DC
0x0000B8:
    self.damt = (- self.sprite_height 6s)
    self.drawerdown = 2s
0x0000DC:
    if !(== self.drawerdown 3s) goto 0x000138
0x0000F0:
    if !(> self.damt 0s) goto 0x000120
0x000104:
    self.damt = (- self.damt 2s)
    goto 0x000138
0x000120:
    self.damt = 0s
    self.drawerdown = 4s
0x000138:
    exit
