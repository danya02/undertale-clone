0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    push (- 0.5d (/ (- self.ystart self.y) (double 40s)))
    stog.image_xscale* = (int32 self.hole)
    push (- 0.5d (/ (- self.ystart self.y) (double 40s)))
    stog.image_yscale* = (int32 self.hole)
0x0000B4:
    exit
