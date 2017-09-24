0x000000:
    if !(== self.active 1s) goto 0x0008FC
0x000014:
    if !(== self.stretch 0s) goto 0x0002A0
0x000028:
    call (draw_set_halign[]:int32 (var 1s))
    self.xx = (lengthdir_x[]:int32 self.image_angle (* self.width 1s))
    self.yy = (lengthdir_y[]:int32 self.image_angle (* self.width 1s))
    self.xx_off = (* (lengthdir_x[]:int32 (- self.image_angle 90s) (var 1s)) 18s)
    self.yy_off = (* (lengthdir_y[]:int32 (- self.image_angle 90s) (var 1s)) 18s)
    if !(== self.hitted 0s) goto 0x0001CC
0x000100:
    if !(bool (collision_line[]:int32 (var 1s) (var 1s) (var 1699s) (+ self.y (* self.yy 0.8d)) (+ self.x (* self.xx 0.8d)) (- self.y (* self.yy 0.8d)) (- self.x (* self.xx 0.8d)))) goto 0x0001CC
0x0001B8:
    call (event_user[]:int32 (var 1s))
0x0001CC:
    call (draw_set_font[]:int32 (var 2s))
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.hitted 1s) goto 0x000224
0x00020C:
    call (draw_set_color[]:int32 (var 65535))
0x000224:
    call (draw_text_transformed[]:int32 self.image_angle (var 2s) (var 2s) self.text (- self.y self.yy_off) (- self.x self.xx_off))
    call (draw_set_color[]:int32 (var 255s))
    call (draw_set_halign[]:int32 (var 0s))
0x0002A0:
    if !(== self.stretch 1s) goto 0x00063C
0x0002B4:
    call (draw_set_halign[]:int32 (var 1s))
    self.xx = (lengthdir_x[]:int32 self.image_angle (* self.width 1s))
    self.yy = (lengthdir_y[]:int32 self.image_angle (* self.width 1s))
    self.s_factor = 1s
    if !(< (- self.x self.xx) 0s) goto 0x000390
0x000344:
    self.s_loss = (abs[]:int32 (- self.x self.xx))
    self.s_factor = (/ (- self.width self.s_loss) self.width)
0x000390:
    if !(> (+ self.x self.xx) self.room_width) goto 0x00040C
0x0003B4:
    self.s_loss = (abs[]:int32 (- (+ self.x self.xx) self.room_width))
    self.s_factor = (/ (- self.width self.s_loss) self.width)
0x00040C:
    self.xx = (* self.xx self.s_factor)
    self.xx_off = (* (* (lengthdir_x[]:int32 (- self.image_angle 90s) (var 1s)) 18s) self.s_factor)
    self.yy_off = (* (lengthdir_y[]:int32 (- self.image_angle 90s) (var 1s)) 18s)
    if !(== self.hitted 0s) goto 0x000574
0x0004A8:
    if !(bool (collision_line[]:int32 (var 1s) (var 1s) (var 1699s) (+ self.y (* self.yy 0.8d)) (+ self.x (* self.xx 0.8d)) (- self.y (* self.yy 0.8d)) (- self.x (* self.xx 0.8d)))) goto 0x000574
0x000560:
    call (event_user[]:int32 (var 1s))
0x000574:
    call (draw_set_font[]:int32 (var 2s))
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.hitted 1s) goto 0x0005CC
0x0005B4:
    call (draw_set_color[]:int32 (var 65535))
0x0005CC:
    call (draw_text_transformed[]:int32 self.image_angle (var 2s) (* 2s self.s_factor) self.text (- self.y self.yy_off) (- self.x self.xx_off))
    call (draw_set_halign[]:int32 (var 0s))
0x00063C:
    if !(== self.stretch 2s) goto 0x0008FC
0x000650:
    call (draw_set_halign[]:int32 (var 1s))
    self.s_factor = 1s
    self.s_factor = (/ self.stretchfactor self.width)
    self.xx = (lengthdir_x[]:int32 self.image_angle (* (* self.width 1s) self.s_factor))
    self.yy = (lengthdir_y[]:int32 self.image_angle (* (* self.width 1s) self.s_factor))
    self.xx_off = (* (lengthdir_x[]:int32 (- self.image_angle 90s) (var 1s)) 18s)
    self.yy_off = (* (lengthdir_y[]:int32 (- self.image_angle 90s) (var 1s)) 18s)
    if !(== self.hitted 0s) goto 0x000834
0x000768:
    if !(bool (collision_line[]:int32 (var 1s) (var 1s) (var 1699s) (+ self.y (* self.yy 0.8d)) (+ self.x (* self.xx 0.8d)) (- self.y (* self.yy 0.8d)) (- self.x (* self.xx 0.8d)))) goto 0x000834
0x000820:
    call (event_user[]:int32 (var 1s))
0x000834:
    call (draw_set_font[]:int32 (var 2s))
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.hitted 1s) goto 0x00088C
0x000874:
    call (draw_set_color[]:int32 (var 65535))
0x00088C:
    call (draw_text_transformed[]:int32 self.image_angle (var 2s) (* 2s self.s_factor) self.text (- self.y self.yy_off) (- self.x self.xx_off))
    call (draw_set_halign[]:int32 (var 0s))
0x0008FC:
    exit
