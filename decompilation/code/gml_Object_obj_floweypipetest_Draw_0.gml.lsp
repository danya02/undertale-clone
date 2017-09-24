0x000000:
    if !(== self.frozen 0s) goto 0x00002C
0x000014:
    self.siner = (+ self.siner 1s)
0x00002C:
    if !(== self.flash 0s) goto 0x000060
0x000040:
    self.image_blend = 16777215
    self.blend2 = 16777215
0x000060:
    if !(== self.flash 1s) goto 0x000188
0x000074:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_set_alpha[]:int32 (/ (sin[]:int32 (/ self.siner (double 3s))) (double 2s)))
    call (draw_ellipse_color[]:int32 (var 0s) (var 0s) (var 16776960) (- self.y 40s) (+ self.x 30s) (+ self.y 50s) (- self.x 70s))
    call (draw_set_alpha[]:int32 (var 1s))
    self.image_blend = (make_color_rgb[]:int32 (var 255s) (var 230s) (- 100s (* (sin[]:int32 (/ self.siner (double 3s))) 100s)))
0x000188:
    if !(== self.flash 2s) goto 0x0002C8
0x00019C:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_set_alpha[]:int32 (/ (sin[]:int32 (/ self.siner (double 3s))) (double 2s)))
    call (draw_ellipse_color[]:int32 (var 0s) (var 0s) (var 4235519) (- self.y 40s) (- (+ self.x self.op) 30s) (+ self.y 50s) (+ (+ self.x self.op) 70s))
    call (draw_set_alpha[]:int32 (var 1s))
    self.blend2 = (make_color_rgb[]:int32 (- 100s (* (sin[]:int32 (/ self.siner (double 3s))) 100s)) (var 180s) (var 230s))
0x0002C8:
    self.i = 0s
    if !(< self.i 10s) goto 0x0005D8
0x0002E8:
    self.offx = (- (+ self.x (* (sin[]:int32 (/ (- self.i 45s) (double 3s))) 60s)) (* self.i 2s))
    self.offy = (+ (+ self.y (* (cos[]:int32 (/ (- self.i 45s) (double 3s))) 50s)) (* (cos[]:int32 (/ (+ self.i self.siner) (double 6s))) 8s))
    self.offs = (* (sin[]:int32 (/ (+ self.siner (* self.i 4s)) (double 6s))) 2s)
    if !(> self.offs 1s) goto 0x00042C
0x000404:
    self.offs = (/ (- self.offs 1s) (double 3s))
    goto 0x000438
0x00042C:
    self.offs = 0s
0x000438:
    if !(< global.soul_rescue 1s) goto 0x0004C4
0x00044C:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (+ (* self.i 20s) 30s) (+ 1s self.offs) (+ 1s self.offs) self.offy self.offx self.image_index self.sprite_index)
    goto 0x0005BC
0x0004C4:
    self.offy = (+ (+ self.y (* (cos[]:int32 (/ (- self.i 45s) (double 3s))) 50s)) (* (cos[]:int32 (/ (+ self.i self.siner) (double 6s))) 4s))
    self.offs = 0s
    call (draw_sprite_ext[]:int32 (var 1s) (var 8421504) (+ (* self.i 20s) 30s) (+ 1s self.offs) (+ 1s self.offs) self.offy self.offx self.image_index self.sprite_index)
0x0005BC:
    self.i = (+ self.i 1s)
    goto 0x0002D4
0x0005D8:
    self.i = 0s
    if !(< self.i 10s) goto 0x0008F4
0x0005F8:
    self.offx2 = (+ (+ (- self.x (* (sin[]:int32 (/ (- self.i 45s) (double 3s))) 60s)) (* self.i 2s)) self.op)
    self.offy2 = (+ (+ self.y (* (cos[]:int32 (/ (- self.i 45s) (double 3s))) 50s)) (* (cos[]:int32 (/ (+ self.i self.siner) (double 6s))) 8s))
    self.offs2 = (* (sin[]:int32 (/ (+ self.siner (* self.i 4s)) (double 6s))) 2s)
    if !(> self.offs2 1s) goto 0x000748
0x000720:
    self.offs2 = (/ (- self.offs2 1s) (double 3s))
    goto 0x000754
0x000748:
    self.offs2 = 0s
0x000754:
    if !(< global.soul_rescue 2s) goto 0x0007E0
0x000768:
    call (draw_sprite_ext[]:int32 (var 1s) self.blend2 (+ (* self.i -20s) 150s) (+ 1s self.offs2) (+ 1s self.offs2) self.offy2 self.offx2 self.image_index self.sprite_index)
    goto 0x0008D8
0x0007E0:
    self.offy2 = (+ (+ self.y (* (cos[]:int32 (/ (- self.i 45s) (double 3s))) 50s)) (* (cos[]:int32 (/ (+ self.i self.siner) (double 6s))) 4s))
    self.offs2 = 0s
    call (draw_sprite_ext[]:int32 (var 1s) (var 8421504) (+ (* self.i -20s) 150s) (+ 1s self.offs2) (+ 1s self.offs2) self.offy2 self.offx2 self.image_index self.sprite_index)
0x0008D8:
    self.i = (+ self.i 1s)
    goto 0x0005E4
0x0008F4:
    exit
