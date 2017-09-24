0x000000:
    if !(bool (instance_exists[]:int32 (var 1098s))) goto 0x00002C
0x000018:
    self.gl = 1098.glowamt
    goto 0x000038
0x00002C:
    self.gl = 0s
0x000038:
    call (draw_set_circle_precision[]:int32 (var 12s))
    if !(> self.gl 0.1d) goto 0x00025C
0x000068:
    self.gl2 = (+ self.gl (/ (sin[]:int32 (/ self.siner (double 10s))) (double 6s)))
    self.image_alpha = 1098.glowamt
    call (draw_set_color[]:int32 (var 16711935))
    call (draw_set_alpha[]:int32 (/ self.gl2 (double 3s)))
    call (draw_circle[]:int32 (var 0s) (* self.gl2 15s) (+ self.y 10s) (+ self.x 10s))
    call (draw_set_alpha[]:int32 (/ self.gl2 (double 3s)))
    call (draw_circle[]:int32 (var 0s) (* self.gl2 20s) (+ self.y 10s) (+ self.x 10s))
    call (draw_set_alpha[]:int32 (/ self.gl2 (double 3s)))
    call (draw_circle[]:int32 (var 0s) (* self.gl2 25s) (+ self.y 10s) (+ self.x 10s))
    call (draw_set_alpha[]:int32 (/ self.gl2 (double 3s)))
    call (draw_circle[]:int32 (var 0s) (* self.gl2 30s) (+ self.y 10s) (+ self.x 10s))
0x00025C:
    self.siner = (+ self.siner 1s)
    call (draw_sprite_ext[]:int32 self.gl (var 16777215) (var 0s) (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
    call (draw_set_alpha[]:int32 (var 1s))
0x0002E0:
    exit
