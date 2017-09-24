0x000000:
    self.timer = (+ self.timer 1s)
    call (draw_sprite[]:int32 self.y self.x (var 0s) (var 915s))
    call (draw_sprite[]:int32 (+ self.y (* self.f_l 3s)) self.x (var 0s) (var 916s))
    if !(== self.timer 30s) goto 0x0000B0
0x000098:
    self.f_l = 0s
    self.f_d = 1s
0x0000B0:
    if !(> self.timer 30s) goto 0x0000D8
0x0000C4:
    push (< self.timer 50s)
    goto 0x0000DC
0x0000D8:
    push 0s
0x0000DC:
    if !pop goto 0x000120
0x0000E0:
    self.f_l = (+ self.f_l 0.2d)
    if !(>= self.f_l 1s) goto 0x000120
0x000114:
    self.timer = 50s
0x000120:
    if !(>= self.timer 50s) goto 0x000148
0x000134:
    push (< self.timer 70s)
    goto 0x00014C
0x000148:
    push 0s
0x00014C:
    if !pop goto 0x000190
0x000150:
    self.f_l = (- 1s (* (sin[]:int32 (* self.timer 1.5d)) 0.1d))
0x000190:
    if !(>= self.timer 70s) goto 0x0001FC
0x0001A4:
    self.f_l = (- self.f_l 0.2d)
    if !(<= self.f_l 0s) goto 0x0001FC
0x0001D8:
    self.f_l = 0s
    self.f_d = 0s
    self.timer = 0s
0x0001FC:
    if !(== self.f_d 1s) goto 0x0002A8
0x000210:
    call (draw_sprite_ext[]:int32 self.f_l (var 16777215) (var 0s) self.f_l (+ 0.5d (/ self.f_l (double 2s))) (+ (+ self.y 8s) (* self.f_l 3s)) (+ self.x 7s) (var 0s) (var 903s))
0x0002A8:
    exit
