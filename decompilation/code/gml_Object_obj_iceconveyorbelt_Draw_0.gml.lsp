0x000000:
    call (draw_sprite[]:int32 (+ 1436.y 68s) (+ 1436.x 58s) (var 0s) (var 1304s))
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    if !(== self.stage 1s) goto 0x0000DC
0x00007C:
    call (draw_sprite[]:int32 (- self.y 30s) (+ self.x self.icex) (var 0s) (var 1307s))
    self.icex = (+ self.icex 0.5d)
0x0000DC:
    exit
