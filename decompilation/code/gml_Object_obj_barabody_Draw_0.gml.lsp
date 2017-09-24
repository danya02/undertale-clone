0x000000:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.arm1 (* (sin[]:int32 (/ self.siner (double 4s))) 3s)) (+ self.x 110s) (var 0s) (var 355s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.arm2 (* (cos[]:int32 (/ self.siner (double 4s))) 2s)) (+ self.x 120s) (var 0s) (var 355s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (- (* (sin[]:int32 (/ self.siner (double 4s))) 4s) 30s) (var 2s) (var 2s) (+ (+ self.hand (* (cos[]:int32 (/ self.siner (double 4s))) 4s)) 16s) (+ self.x 140s) (var 0s) self.hand2pic)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.arm1 (* (sin[]:int32 (/ self.siner (double 4s))) 3s)) (- self.x 10s) (var 0s) (var 355s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.arm2 (* (cos[]:int32 (/ self.siner (double 4s))) 2s)) (- self.x 20s) (var 0s) (var 355s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (sin[]:int32 (/ self.siner (double 4s))) 4s) (var 2s) (var 2s) (+ (+ self.hand (* (cos[]:int32 (/ self.siner (double 4s))) 4s)) 16s) (- self.x 10s) (var 0s) self.hand1pic)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (- 2s (* (sin[]:int32 (/ self.siner (double 4s))) 0.05d)) (+ 2s (* (sin[]:int32 (/ self.siner (double 4s))) 0.05d)) (+ self.pantsy (* (sin[]:int32 (/ self.siner (double 4s))) 1s)) (+ self.x 64s) (var 0s) (var 368s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (- 2s (* (sin[]:int32 (/ self.siner (double 4s))) 0.05d)) (+ 2s (* (sin[]:int32 (/ self.siner (double 4s))) 0.1d)) self.shoesy (+ self.x 64s) (var 0s) (var 361s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.armory (* (sin[]:int32 (/ self.siner (double 4s))) 2s)) self.x (var 0s) self.bodypic)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.heady (* (sin[]:int32 (/ self.siner (double 4s))) 4s)) self.x (var 0s) self.headpic)
    if !(== self.pause 0s) goto 0x000644
0x00062C:
    self.siner = (+ self.siner 1s)
0x000644:
    if !(== self.pause 1s) goto 0x00067C
0x000658:
    self.x = (+ (int32 self.parent):x 28s)
0x00067C:
    if !(> self.shaker 0s) goto 0x0006A4
0x000690:
    push (== self.pause 0s)
    goto 0x0006A8
0x0006A4:
    push 0s
0x0006A8:
    if !pop goto 0x0006FC
0x0006AC:
    self.siner = (+ self.siner 0.5d)
    self.x = (+ self.x (sin[]:int32 (/ self.siner (double 2s))))
0x0006FC:
    exit
