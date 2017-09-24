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
    if !(== self.flash 1s) goto 0x000194
0x000074:
    call (draw_set_alpha[]:int32 (/ (sin[]:int32 (/ self.siner (double 3s))) (double 2s)))
    call (draw_ellipse_color[]:int32 (var 0s) (var 0s) (var 32768) (- self.y 40s) (+ self.x 45s) (+ self.y 40s) (- self.x 45s))
    call (draw_set_alpha[]:int32 (var 1s))
    self.image_blend = (make_color_rgb[]:int32 (- 100s (* (sin[]:int32 (/ self.siner (double 3s))) 100s)) (var 255s) (- 100s (* (sin[]:int32 (/ self.siner (double 3s))) 100s)))
0x000194:
    if !(== self.flash 2s) goto 0x0002BC
0x0001A8:
    call (draw_set_alpha[]:int32 (/ (sin[]:int32 (/ self.siner (double 3s))) (double 2s)))
    call (draw_ellipse_color[]:int32 (var 0s) (var 0s) (var 65535) (- self.y 40s) (+ (+ self.x 45s) self.op) (+ self.y 40s) (+ (- self.x 45s) self.op))
    call (draw_set_alpha[]:int32 (var 1s))
    self.blend2 = (make_color_rgb[]:int32 (- 130s (* (sin[]:int32 (/ self.siner (double 3s))) 120s)) (var 230s) (var 230s))
0x0002BC:
    if !(== global.debug 1s) goto 0x000380
0x0002D0:
    if !(bool (keyboard_check_pressed[]:int32 (var 67s))) goto 0x000328
0x0002E8:
    if !(== self.flash 0s) goto 0x00030C
0x0002FC:
    self.flash = 2s
    goto 0x000328
0x00030C:
    self.flash = 0s
    self.blend2 = 8421504
0x000328:
    if !(bool (keyboard_check_pressed[]:int32 (var 88s))) goto 0x000380
0x000340:
    if !(== self.flash 0s) goto 0x000364
0x000354:
    self.flash = 1s
    goto 0x000380
0x000364:
    self.flash = 0s
    self.image_blend = 8421504
0x000380:
    self.i = 0s
    if !(< self.i 16s) goto 0x0005EC
0x0003A0:
    self.offx = (+ self.x (* (sin[]:int32 (/ (- self.i 34s) (double 3s))) 45s))
    self.offy = (+ (+ self.y (* (cos[]:int32 (/ (- self.i 34s) (double 3s))) 40s)) (* (cos[]:int32 (/ (+ self.i self.siner) (double 6s))) 8s))
    self.offs = (* (sin[]:int32 (/ (+ self.siner (* self.i 4s)) (double 6s))) 2s)
    if !(> self.offs 1s) goto 0x0004D0
0x0004A8:
    self.offs = (/ (- self.offs 1s) (double 3s))
    goto 0x0004DC
0x0004D0:
    self.offs = 0s
0x0004DC:
    if !(< global.soul_rescue 5s) goto 0x000568
0x0004F0:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (+ (* self.i 20s) 50s) (+ 1s self.offs) (+ 1s self.offs) self.offy self.offx self.image_index self.sprite_index)
    goto 0x0005D0
0x000568:
    call (draw_sprite_ext[]:int32 (var 1s) (var 8421504) (+ (* self.i 20s) 50s) (var 1s) (var 1s) self.offy self.offx self.image_index self.sprite_index)
0x0005D0:
    self.i = (+ self.i 1s)
    goto 0x00038C
0x0005EC:
    self.i = 0s
    if !(< self.i 16s) goto 0x000864
0x00060C:
    self.offx2 = (+ (- self.x (* (sin[]:int32 (/ (- self.i 34s) (double 3s))) 45s)) self.op)
    self.offy2 = (+ (+ self.y (* (cos[]:int32 (/ (- self.i 34s) (double 3s))) 40s)) (* (cos[]:int32 (/ (+ self.i self.siner) (double 6s))) 8s))
    self.offs2 = (* (sin[]:int32 (/ (+ self.siner (* self.i 4s)) (double 6s))) 2s)
    if !(> self.offs2 1s) goto 0x000748
0x000720:
    self.offs2 = (/ (- self.offs2 1s) (double 3s))
    goto 0x000754
0x000748:
    self.offs2 = 0s
0x000754:
    if !(< global.soul_rescue 6s) goto 0x0007E0
0x000768:
    call (draw_sprite_ext[]:int32 (var 1s) self.blend2 (- (* self.i -20s) 50s) (+ 1s self.offs2) (+ 1s self.offs2) self.offy2 self.offx2 self.image_index self.sprite_index)
    goto 0x000848
0x0007E0:
    call (draw_sprite_ext[]:int32 (var 1s) (var 8421504) (- (* self.i -20s) 50s) (var 1s) (var 1s) self.offy2 self.offx2 self.image_index self.sprite_index)
0x000848:
    self.i = (+ self.i 1s)
    goto 0x0005F8
0x000864:
    exit
