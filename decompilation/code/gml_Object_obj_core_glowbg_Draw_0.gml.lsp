0x000000:
    self.siner = (+ self.siner 1s)
    self.ltaqua = (merge_color[]:int32 (var 0.7d) (var 16777215) (var 16776960))
    call (draw_sprite_ext[]:int32 (abs[]:int32 (sin[]:int32 (/ self.siner (double 10s)))) (var 16777215) (var 0s) (var 400s) (var 400s) (var -20s) (var -20s) (/ self.siner (double 6s)) (var 930s))
0x0000D0:
    exit
