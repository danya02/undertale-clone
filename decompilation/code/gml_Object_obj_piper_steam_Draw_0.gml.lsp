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
    if !pop goto 0x000168
0x0000E0:
    call (instance_create[]:int32 (var 58s) (+ (+ self.y 6s) (* self.f_l 3s)) (+ self.x 7s))
    self.f_l = (+ self.f_l 0.3d)
    if !(>= self.f_l 3s) goto 0x000168
0x00015C:
    self.timer = 50s
0x000168:
    if !(>= self.timer 50s) goto 0x000190
0x00017C:
    push (< self.timer 90s)
    goto 0x000194
0x000190:
    push 0s
0x000194:
    if !pop goto 0x0001E4
0x000198:
    self.f_l = (- self.f_l 0.1d)
    if !(<= self.f_l 0s) goto 0x0001E4
0x0001CC:
    self.f_l = 0s
    self.timer = 25s
0x0001E4:
    exit
