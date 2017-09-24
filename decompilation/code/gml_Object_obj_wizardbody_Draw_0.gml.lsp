0x000000:
    self.sam = (sin[]:int32 (/ self.siner (double 5s)))
    self.sim = (cos[]:int32 (/ self.siner (double 5s)))
    self.som = (sin[]:int32 (/ self.siner 2.5d))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (- -40s (* (sin[]:int32 (/ self.siner (double 5s))) 10s)) (var 2s) (var 2s) (- (+ self.y 80s) (* (sin[]:int32 (/ self.siner (double 5s))) 6s)) (- (- (+ self.offx self.x) 23s) (* (sin[]:int32 (/ self.siner (double 5s))) 5s)) (var 0s) (var 442s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (+ 40s (* (sin[]:int32 (/ self.siner (double 5s))) 10s)) (var 2s) (var -2s) (- (+ self.y 80s) (* (sin[]:int32 (/ self.siner (double 5s))) 6s)) (+ (+ (+ self.offx self.x) 19s) (* (sin[]:int32 (/ self.siner (double 5s))) 5s)) (var 0s) (var 442s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (- self.sam) 10s) (var 2s) (var 2s) (+ (+ self.y 52s) self.sam) (- (+ self.offx self.x) 2s) (var 0s) (var 444s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* self.sam 10s) (var 2s) (var -2s) (+ (+ self.y 52s) self.sam) (- (+ self.offx self.x) 2s) (var 0s) (var 444s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (- 1.8d (* self.sam 0.2d)) (var 2s) (+ (+ self.y 52s) self.sam) (- (+ self.offx self.x) 34s) (var 0s) (var 443s))
    if !(== self.pause 0s) goto 0x00049C
0x000408:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 2s) (* self.sam 8s)) (+ (- (+ self.offx self.x) 6s) self.sam) (var 0s) (var 445s))
0x00049C:
    if !(== self.pause 1s) goto 0x000544
0x0004B0:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 2s) (* self.sam 8s)) (+ (- (+ self.offx self.x) 6s) self.sam) (var 0s) (var 446s))
0x000544:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 4s) (* self.sam 10s)) (+ (+ (+ self.offx self.x) 2s) self.sim) (var 0s) (var 447s))
    self.exist = (+ self.exist 1s)
    if !(< self.exist 10s) goto 0x00076C
0x000604:
    if !(== self.pause 0s) goto 0x000624
0x000618:
    self.orbspr = 438s
0x000624:
    if !(== self.pause 1s) goto 0x000644
0x000638:
    self.orbspr = 439s
0x000644:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var -2s) (var -2s) (+ (+ self.y 16s) (* self.som 2s)) (- (+ self.offx self.x) 44s) (/ self.siner (double 3s)) self.orbspr)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var -2s) (var -2s) (+ (+ self.y 6s) (* self.som 5s)) (+ (+ self.offx self.x) 70s) (/ self.siner (double 3s)) self.orbspr)
0x00076C:
    if !(>= self.exist 10s) goto 0x000A70
0x000780:
    if !(== self.pause 0s) goto 0x0007A0
0x000794:
    self.orbspr = 438s
0x0007A0:
    if !(== self.pause 1s) goto 0x0007C0
0x0007B4:
    self.orbspr = 439s
0x0007C0:
    if !(== (int32 self.parent):stare1 0s) goto 0x000878
0x0007E0:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var -2s) (var -2s) (+ (+ self.y 16s) (* self.som 2s)) (- (+ self.offx self.x) 44s) (/ self.siner (double 3s)) self.orbspr)
    goto 0x000918
0x000878:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var -2s) (var -2s) (+ (+ self.y 16s) (/ (* self.som 2s) self.exist)) (- (+ self.offx self.x) 44s) (/ self.siner self.exist) self.orbspr)
0x000918:
    if !(== (int32 self.parent):stare2 0s) goto 0x0009D0
0x000938:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var -2s) (var -2s) (+ (+ self.y 6s) (* self.som 5s)) (+ (+ self.offx self.x) 70s) (/ self.siner (double 3s)) self.orbspr)
    goto 0x000A70
0x0009D0:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var -2s) (var -2s) (+ (+ self.y 6s) (/ (* self.som 5s) self.exist)) (+ (+ self.offx self.x) 70s) (/ self.siner self.exist) self.orbspr)
0x000A70:
    self.siner = (+ self.siner 1s)
    if !(== self.pause 1s) goto 0x000AF0
0x000A9C:
    push -1s
    stog.alarm[(+ 0s:alarm 1s)] = 0s
    self.siner = 0s
    self.x = (+ (int32 self.parent):x 2s)
0x000AF0:
    exit
