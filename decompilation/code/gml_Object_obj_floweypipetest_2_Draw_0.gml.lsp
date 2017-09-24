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
    if !(== self.flash 1s) goto 0x0001AC
0x000074:
    call (draw_set_alpha[]:int32 (/ (sin[]:int32 (/ self.siner (double 3s))) (double 2s)))
    call (draw_ellipse_color[]:int32 (var 0s) (var 0s) (var 16711680) (- self.y 40s) (+ self.x 85s) (+ self.y 40s) (- self.x 85s))
    call (draw_set_alpha[]:int32 (var 1s))
    self.image_blend = (make_color_rgb[]:int32 (var 255s) (- 120s (* (/ (sin[]:int32 (/ self.siner (double 3s))) (double 2s)) 100s)) (- 120s (* (/ (sin[]:int32 (/ self.siner (double 3s))) (double 2s)) 100s)))
0x0001AC:
    if !(== self.flash 2s) goto 0x0002D4
0x0001C0:
    call (draw_set_alpha[]:int32 (/ (sin[]:int32 (/ self.siner (double 3s))) (double 2s)))
    call (draw_ellipse_color[]:int32 (var 0s) (var 0s) (var 16711935) (- self.y 40s) (+ (+ self.x 85s) self.op) (+ self.y 40s) (+ (- self.x 105s) self.op))
    call (draw_set_alpha[]:int32 (var 1s))
    self.blend2 = (make_color_rgb[]:int32 (var 200s) (- 100s (* (sin[]:int32 (/ self.siner (double 3s))) 100s)) (var 230s))
0x0002D4:
    if !(== global.debug 1s) goto 0x000398
0x0002E8:
    if !(bool (keyboard_check_pressed[]:int32 (var 67s))) goto 0x000340
0x000300:
    if !(== self.flash 0s) goto 0x000324
0x000314:
    self.flash = 2s
    goto 0x000340
0x000324:
    self.flash = 0s
    self.blend2 = 8421504
0x000340:
    if !(bool (keyboard_check_pressed[]:int32 (var 88s))) goto 0x000398
0x000358:
    if !(== self.flash 0s) goto 0x00037C
0x00036C:
    self.flash = 1s
    goto 0x000398
0x00037C:
    self.flash = 0s
    self.image_blend = 8421504
0x000398:
    self.i = 0s
    if !(< self.i 13s) goto 0x0006A0
0x0003B8:
    self.offx = (+ self.x (* (sin[]:int32 (/ (- self.i 49s) (double 3s))) 85s))
    self.offy = (+ (+ self.y (* (cos[]:int32 (/ (- self.i 3s) 2.2d)) 40s)) (* (cos[]:int32 (/ (+ self.i self.siner) (double 6s))) 8s))
    self.offs = (* (sin[]:int32 (/ (+ self.siner (* self.i 4s)) (double 6s))) 2s)
    if !(> self.offs 1s) goto 0x0004EC
0x0004C4:
    self.offs = (/ (- self.offs 1s) (double 3s))
    goto 0x0004F8
0x0004EC:
    self.offs = 0s
0x0004F8:
    self.offv = (- (* self.i -12s) 330s)
    if !(> self.i 5s) goto 0x00054C
0x00052C:
    self.offv = (- (* self.i -20s) 310s)
0x00054C:
    if !(> self.i 7s) goto 0x000580
0x000560:
    self.offv = (- (* self.i -22s) 310s)
0x000580:
    if !(< global.soul_rescue 3s) goto 0x00062C
0x000594:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend self.offv (- (+ 1s self.offs) (* (sin[]:int32 (/ self.i (double 5s))) 0.3d)) (+ 1s self.offs) self.offy self.offx self.image_index self.sprite_index)
    goto 0x000684
0x00062C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 8421504) self.offv (var 1s) (var 1s) self.offy self.offx self.image_index self.sprite_index)
0x000684:
    self.i = (+ self.i 1s)
    goto 0x0003A4
0x0006A0:
    self.i = 0s
    if !(< self.i 13s) goto 0x0009C0
0x0006C0:
    self.offx2 = (+ (- self.x (* (sin[]:int32 (/ (- self.i 49s) (double 3s))) 85s)) self.op)
    self.offy2 = (+ (+ self.y (* (cos[]:int32 (/ (- self.i 3s) 2.2d)) 40s)) (* (cos[]:int32 (/ (+ self.i self.siner) (double 6s))) 8s))
    self.offs2 = (* (sin[]:int32 (/ (+ self.siner (* self.i 4s)) (double 6s))) 2s)
    if !(> self.offs2 1s) goto 0x000800
0x0007D8:
    self.offs2 = (/ (- self.offs2 1s) (double 3s))
    goto 0x00080C
0x000800:
    self.offs2 = 0s
0x00080C:
    self.offv2 = (+ (* self.i 12s) self.magicfactor)
    if !(> self.i 5s) goto 0x000868
0x000844:
    self.offv2 = (+ (* self.i 30s) self.magicfactor2)
0x000868:
    if !(> self.i 7s) goto 0x0008A0
0x00087C:
    self.offv2 = (+ (* self.i 20s) self.magicfactor3)
0x0008A0:
    if !(< global.soul_rescue 4s) goto 0x00094C
0x0008B4:
    call (draw_sprite_ext[]:int32 (var 1s) self.blend2 self.offv2 (- (+ 1s self.offs2) (* (sin[]:int32 (/ self.i (double 5s))) 0.3d)) (- -1s self.offs2) self.offy2 self.offx2 self.image_index self.sprite_index)
    goto 0x0009A4
0x00094C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 8421504) self.offv2 (var 1s) (var -1s) self.offy2 self.offx2 self.image_index self.sprite_index)
0x0009A4:
    self.i = (+ self.i 1s)
    goto 0x0006AC
0x0009C0:
    exit
