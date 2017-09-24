0x000000:
    self.siner = (+ self.siner 1s)
    self.image_alpha = (- self.image_alpha 0.05d)
    call (draw_sprite_part_ext[]:int32 self.image_alpha (var 16777215) (var 1s) (var 1s) (- self.y self.siner) (- self.x self.siner) (/ self.sprite_height (double 2s)) (/ self.sprite_width (double 2s)) (var 0s) (var 0s) self.image_index self.sprite_index)
    call (draw_sprite_part_ext[]:int32 self.image_alpha (var 16777215) (var 1s) (var 1s) (- self.y self.siner) (+ (+ self.x self.siner) (/ self.sprite_width (double 2s))) (/ self.sprite_height (double 2s)) (/ self.sprite_width (double 2s)) (var 0s) (/ self.sprite_width (double 2s)) self.image_index self.sprite_index)
    call (draw_sprite_part_ext[]:int32 self.image_alpha (var 16777215) (var 1s) (var 1s) (+ (+ self.y self.siner) (/ self.sprite_height (double 2s))) (- self.x self.siner) (/ self.sprite_height (double 2s)) (/ self.sprite_width (double 2s)) (/ self.sprite_height (double 2s)) (var 0s) self.image_index self.sprite_index)
    call (draw_sprite_part_ext[]:int32 self.image_alpha (var 16777215) (var 1s) (var 1s) (+ (+ self.y self.siner) (/ self.sprite_height (double 2s))) (+ (+ self.x self.siner) (/ self.sprite_width (double 2s))) (/ self.sprite_height (double 2s)) (/ self.sprite_width (double 2s)) (/ self.sprite_height (double 2s)) (/ self.sprite_width (double 2s)) self.image_index self.sprite_index)
    if !(< self.image_alpha 0.1d) goto 0x000370
0x000364:
    call (instance_destroy[]:int32 )
0x000370:
    exit
