0x000000:
    if !(== self.ck 0s) goto 0x00002C
0x000014:
    self.siner = (+ self.siner 6s)
0x00002C:
    if !(== self.ck 1s) goto 0x000058
0x000040:
    self.siner = (- self.siner 6s)
0x000058:
    if !(>= self.image_xscale 2s) goto 0x000084
0x00006C:
    call (draw_set_circle_precision[]:int32 (var 8s))
    goto 0x000098
0x000084:
    call (draw_set_circle_precision[]:int32 (var 4s))
0x000098:
    self.i = 0s
    if !(< self.i self.cogno) goto 0x00030C
0x0000BC:
    call (draw_set_color[]:int32 (var 128s))
    if !(< self.image_xscale 2s) goto 0x0001E0
0x0000E4:
    call (draw_circle[]:int32 (var 0s) (* 2s self.image_xscale) (+ (- self.y (* 0.3d self.image_yscale)) (* (lengthdir_y[]:int32 (+ (* (/ self.i self.cogno) 360s) self.siner) (var 8s)) self.image_yscale)) (+ (- self.x (* 0.3d self.image_xscale)) (* (lengthdir_x[]:int32 (+ (* (/ self.i self.cogno) 360s) self.siner) (var 8s)) self.image_xscale)))
0x0001E0:
    if !(>= self.image_xscale 2s) goto 0x0002F0
0x0001F4:
    call (draw_circle[]:int32 (var 0s) (* 2s self.image_xscale) (+ (- self.y (* 0.4d self.image_yscale)) (* (lengthdir_y[]:int32 (+ (* (/ self.i self.cogno) 360s) self.siner) (var 8s)) self.image_yscale)) (+ (- self.x (* 0.4d self.image_xscale)) (* (lengthdir_x[]:int32 (+ (* (/ self.i self.cogno) 360s) self.siner) (var 8s)) self.image_xscale)))
0x0002F0:
    self.i = (+ self.i 1s)
    goto 0x0000A4
0x00030C:
    if !(< self.image_xscale 2s) goto 0x000390
0x000320:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) self.image_yscale self.image_xscale (+ self.y self.offy) (+ self.x self.offx) (var 0s) self.sprite_index)
0x000390:
    if !(>= self.image_xscale 2s) goto 0x00042C
0x0003A4:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (/ self.image_yscale (double 2s)) (/ self.image_xscale (double 2s)) (+ self.y self.offy) (+ self.x self.offx) (var 0s) (var 904s))
0x00042C:
    exit
