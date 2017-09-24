0x000000:
    if !(== self.on 1s) goto 0x000084
0x000014:
    if !(<= self.amt 1s) goto 0x000048
0x000028:
    self.amt = (+ self.amt 0.05d)
0x000048:
    if !(< self.y 0s) goto 0x000078
0x00005C:
    self.y = (+ self.y 1s)
    goto 0x000084
0x000078:
    self.on = 0s
0x000084:
    if !(== self.on 2s) goto 0x00010C
0x000098:
    if !(> self.amt 0s) goto 0x0000CC
0x0000AC:
    self.amt = (- self.amt 0.05d)
0x0000CC:
    if !(> self.y self.ystart) goto 0x000100
0x0000E4:
    self.y = (- self.y 1s)
    goto 0x00010C
0x000100:
    call (instance_destroy[]:int32 )
0x00010C:
    if !(== self.reverse 0s) goto 0x00013C
0x000120:
    self.siner = (+ self.siner 1s)
    goto 0x000154
0x00013C:
    self.siner = (- self.siner 1s)
0x000154:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_circle_precision[]:int32 (var 8s))
    call (draw_set_alpha[]:int32 (* 0.5d self.amt))
    self.i = 0s
    if !(< self.i 12s) goto 0x0002CC
0x0001C4:
    call (draw_set_color[]:int32 (make_color_hsv[]:int32 (var 255s) (var 255s) (+ (* self.i 20s) self.siner)))
    call (draw_circle[]:int32 (var 0s) (var 3s) (+ (+ self.y (* (cos[]:int32 (/ (+ (* self.i 10s) self.siner) (double 20s))) 20s)) 140s) (+ self.x (* (sin[]:int32 (/ (+ (* self.i 10s) self.siner) (double 20s))) 40s)))
    self.i = (+ self.i 1s)
    goto 0x0001B0
0x0002CC:
    call (draw_set_alpha[]:int32 (* 0.4d self.amt))
    self.i = 0s
    if !(< self.i 24s) goto 0x000418
0x000310:
    call (draw_set_color[]:int32 (make_color_hsv[]:int32 (var 255s) (var 255s) (+ (* self.i 20s) self.siner)))
    call (draw_circle[]:int32 (var 0s) (var 6s) (+ (+ self.y (* (cos[]:int32 (/ (+ (* self.i 5s) self.siner) (double 20s))) 60s)) 140s) (+ self.x (* (sin[]:int32 (/ (+ (* self.i 10s) self.siner) (double 20s))) 80s)))
    self.i = (+ self.i 1s)
    goto 0x0002FC
0x000418:
    call (draw_set_alpha[]:int32 (var 1s))
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
0x000458:
    exit
