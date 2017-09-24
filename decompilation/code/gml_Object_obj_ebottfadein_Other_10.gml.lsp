0x000000:
    self.i = 0s
    if !(< self.i 4s) goto 0x00021C
0x000020:
    push -1s
    self.xx = 0s:view_xview
    push -1s
    self.yy = 0s:view_yview
    call (draw_sprite_ext[]:int32 self.n_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (+ -10s self.yy) (+ (- self.xx 10s) (* self.i 200s)) (floor[]:int32 (/ self.n_index (double 2s))) (var 2206s))
    call (draw_sprite_ext[]:int32 self.n_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (+ 190s self.yy) (+ (- self.xx 10s) (* self.i 200s)) (floor[]:int32 (/ self.n_index (double 2s))) (var 2206s))
    call (draw_sprite_ext[]:int32 self.n_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (+ 390s self.yy) (+ (- self.xx 10s) (* self.i 200s)) (floor[]:int32 (/ self.n_index (double 2s))) (var 2206s))
    self.i = (+ self.i 1s)
    goto 0x00000C
0x00021C:
    exit
