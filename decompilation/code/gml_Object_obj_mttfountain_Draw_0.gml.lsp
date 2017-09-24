0x000000:
    self.siner = (+ self.siner 1s)
    push (+ (- self.x 14s) (cos[]:int32 (/ self.siner (double 2s))))
    stog.x* = (int32 self.pudd)
    push (+ (+ self.y 59s) (sin[]:int32 (/ self.siner (double 2s))))
    stog.y* = (int32 self.pudd)
    call (draw_sprite[]:int32 self.y self.x (floor[]:int32 (/ self.siner (double 10s))) (var 1982s))
    call (draw_sprite[]:int32 (+ self.y (/ (sin[]:int32 self.siner) (double 2s))) (+ self.x (/ (cos[]:int32 self.siner) (double 2s))) (floor[]:int32 (/ self.siner (double 2s))) (var 1983s))
0x000160:
    exit
