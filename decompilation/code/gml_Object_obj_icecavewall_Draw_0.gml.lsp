0x000000:
    self.timer = (+ self.timer 1s)
    if !(== self.type 0s) goto 0x000120
0x00002C:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 self.al (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.y (cos[]:int32 (/ self.timer (double 8s)))) (+ self.x (sin[]:int32 (/ self.timer (double 7s)))) (abs[]:int32 (* (sin[]:int32 (/ self.timer (double 15s))) 2.8d)) (var 988s))
    goto 0x000210
0x000120:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 self.al (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.y (cos[]:int32 (/ self.timer (double 8s)))) (+ self.x (sin[]:int32 (/ self.timer (double 7s)))) (abs[]:int32 (* (sin[]:int32 (/ self.timer (double 15s))) 2.8d)) (var 989s))
0x000210:
    if !(>= self.timer 100s) goto 0x000238
0x000224:
    push (< self.timer 150s)
    goto 0x00023C
0x000238:
    push 0s
0x00023C:
    if !pop goto 0x000260
0x000240:
    self.al = (+ self.al 0.02d)
0x000260:
    if !(>= self.timer 300s) goto 0x0002C0
0x000274:
    self.al = (- self.al 0.02d)
    if !(<= self.al 0s) goto 0x0002C0
0x0002A8:
    self.al = 0s
    self.timer = 0s
0x0002C0:
    exit
