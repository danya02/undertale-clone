0x000000:
    if !(== self.flowey 1s) goto 0x000170
0x000014:
    call (scr_textskip[]:int32 )
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (- (+ self.floweyy (random[]:int32 self.shake)) (random[]:int32 self.shake)) (- (+ self.floweyx (random[]:int32 self.shake)) (random[]:int32 self.shake)) (var 0s) (var 166s))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (- (+ self.floweyy (random[]:int32 self.shake)) (random[]:int32 self.shake)) (- (+ self.floweyx (random[]:int32 self.shake)) (random[]:int32 self.shake)) global.faceemotion (var 646s))
0x000170:
    exit
