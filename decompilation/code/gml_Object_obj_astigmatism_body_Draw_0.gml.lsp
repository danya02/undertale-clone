0x000000:
    if !(== self.pause 1s) goto 0x000068
0x000014:
    self.anim = 0s
    self.anim2 = 0s
    self.sfactor = 0s
    self.siner = 0s
    self.x = (+ (int32 self.parent):x 6s)
0x000068:
    self.anim = (+ self.anim 1s)
    if !(> self.anim 250s) goto 0x0000E0
0x000094:
    if !(< self.sfactor 1s) goto 0x0000C8
0x0000A8:
    self.sfactor = (+ self.sfactor 0.05d)
0x0000C8:
    self.siner = (+ self.siner 1s)
0x0000E0:
    if !(> self.anim 140s) goto 0x000108
0x0000F4:
    push (< self.anim 180s)
    goto 0x00010C
0x000108:
    push 0s
0x00010C:
    if !pop goto 0x000148
0x000110:
    self.anim2 = (+ self.anim2 1s)
    if !(> self.anim2 18s) goto 0x000148
0x00013C:
    self.anim = 200s
0x000148:
    if !(> self.anim 220s) goto 0x000170
0x00015C:
    push (< self.anim 280s)
    goto 0x000174
0x000170:
    push 0s
0x000174:
    if !pop goto 0x0001B0
0x000178:
    self.anim2 = (+ self.anim2 1s)
    if !(>= self.anim2 33s) goto 0x0001B0
0x0001A4:
    self.anim = 300s
0x0001B0:
    if !(> self.anim 480s) goto 0x000248
0x0001C4:
    if !(> self.sfactor 0s) goto 0x0001F8
0x0001D8:
    self.sfactor = (- self.sfactor 0.07d)
0x0001F8:
    self.anim2 = (- self.anim2 1s)
    if !(<= self.anim2 0s) goto 0x000248
0x000224:
    self.sfactor = 0s
    self.anim2 = 0s
    self.anim = 0s
0x000248:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (+ 1.8d (* (* (cos[]:int32 (/ self.siner (double 6s))) 0.2d) self.sfactor)) (var 2s) (+ (+ self.y 64s) (* (* (cos[]:int32 (/ self.siner (double 6s))) 2s) self.sfactor)) (+ (+ self.x 8s) (* (* (sin[]:int32 (/ self.siner (double 6s))) 2s) self.sfactor)) (/ self.anim2 (double 3s)) (var 478s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (+ 1.8d (* (* (sin[]:int32 (/ self.siner (double 6s))) 0.2d) self.sfactor)) (var 2s) (+ (+ self.y 84s) (* (* (sin[]:int32 (/ self.siner (double 6s))) 2s) self.sfactor)) (+ (+ self.x 30s) (* (* (cos[]:int32 (/ self.siner (double 6s))) 2s) self.sfactor)) (/ self.anim2 (double 3s)) (var 477s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (- 1.9d (* (* (cos[]:int32 (/ self.siner (double 6s))) 0.2d) self.sfactor)) (var -2s) (- (+ self.y 64s) (* (* (cos[]:int32 (/ self.siner (double 6s))) 2s) self.sfactor)) (- (+ self.x 92s) (* (* (sin[]:int32 (/ self.siner (double 6s))) 2s) self.sfactor)) (/ self.anim2 (double 3s)) (var 478s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (- 1.8d (* (* (sin[]:int32 (/ self.siner (double 6s))) 0.2d) self.sfactor)) (var -2s) (- (+ self.y 84s) (* (* (sin[]:int32 (/ self.siner (double 6s))) 2s) self.sfactor)) (- (+ self.x 70s) (* (* (cos[]:int32 (/ self.siner (double 6s))) 2s) self.sfactor)) (/ self.anim2 (double 3s)) (var 477s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x (/ self.anim2 (double 3s)) (var 479s))
0x00071C:
    exit
