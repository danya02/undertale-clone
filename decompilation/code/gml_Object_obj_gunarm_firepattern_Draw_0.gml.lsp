0x000000:
    self.flash = (+ self.flash 1s)
    if !(> self.flash 2s) goto 0x000038
0x00002C:
    self.flash = 0s
0x000038:
    self.xx = (lengthdir_x[]:int32 (- self.image_angle 90s) (var 120s))
    self.yy = (lengthdir_y[]:int32 (- self.image_angle 90s) (var 120s))
    self.l_timer = (- self.l_timer 1s)
    if !(> self.l_timer 0s) goto 0x000700
0x0000B4:
    if !(== (caster_is_playing[]:int32 self.sfx_t) 0s) goto 0x0000F4
0x0000D0:
    call (caster_loop[]:int32 (var 1s) (var 1s) self.sfx_t)
0x0000F4:
    call (draw_set_color[]:int32 (var 255s))
    if !(== self.flash 1s) goto 0x000134
0x00011C:
    call (draw_set_color[]:int32 (var 4235519))
0x000134:
    if !(== self.flash 2s) goto 0x000160
0x000148:
    call (draw_set_color[]:int32 (var 65535))
0x000160:
    if !(== self.type 0s) goto 0x000220
0x000174:
    self.xxx = (lengthdir_x[]:int32 (- self.image_angle 90s) (var 600s))
    self.yyy = (lengthdir_y[]:int32 (- self.image_angle 90s) (var 600s))
    call (draw_line[]:int32 (+ self.y self.yyy) (+ self.x self.xxx) (+ self.y self.yy) (+ self.x self.xx))
0x000220:
    if !(== self.type 1s) goto 0x000438
0x000234:
    self.xxx = (lengthdir_x[]:int32 (- self.image_angle 104s) (var 600s))
    self.yyy = (lengthdir_y[]:int32 (- self.image_angle 104s) (var 600s))
    call (draw_line[]:int32 (+ self.y self.yyy) (+ self.x self.xxx) (+ self.y self.yy) (+ self.x self.xx))
    self.xxx = (lengthdir_x[]:int32 (- self.image_angle 90s) (var 600s))
    self.yyy = (lengthdir_y[]:int32 (- self.image_angle 90s) (var 600s))
    call (draw_line[]:int32 (+ self.y self.yyy) (+ self.x self.xxx) (+ self.y self.yy) (+ self.x self.xx))
    self.xxx = (lengthdir_x[]:int32 (- self.image_angle 77s) (var 600s))
    self.yyy = (lengthdir_y[]:int32 (- self.image_angle 77s) (var 600s))
    call (draw_line[]:int32 (+ self.y self.yyy) (+ self.x self.xxx) (+ self.y self.yy) (+ self.x self.xx))
0x000438:
    if !(== self.type 2s) goto 0x0006FC
0x00044C:
    self.xxx = (lengthdir_x[]:int32 (- self.image_angle 110s) (var 600s))
    self.yyy = (lengthdir_y[]:int32 (- self.image_angle 110s) (var 600s))
    call (draw_line[]:int32 (+ self.y self.yyy) (+ self.x self.xxx) (+ self.y self.yy) (+ self.x self.xx))
    self.xxx = (lengthdir_x[]:int32 (- self.image_angle 96s) (var 600s))
    self.yyy = (lengthdir_y[]:int32 (- self.image_angle 96s) (var 600s))
    call (draw_line[]:int32 (+ self.y self.yyy) (+ self.x self.xxx) (+ self.y self.yy) (+ self.x self.xx))
    self.xxx = (lengthdir_x[]:int32 (- self.image_angle 84s) (var 600s))
    self.yyy = (lengthdir_y[]:int32 (- self.image_angle 84s) (var 600s))
    call (draw_line[]:int32 (+ self.y self.yyy) (+ self.x self.xxx) (+ self.y self.yy) (+ self.x self.xx))
    self.xxx = (lengthdir_x[]:int32 (- self.image_angle 70s) (var 600s))
    self.yyy = (lengthdir_y[]:int32 (- self.image_angle 70s) (var 600s))
    call (draw_line[]:int32 (+ self.y self.yyy) (+ self.x self.xxx) (+ self.y self.yy) (+ self.x self.xx))
0x0006FC:
    goto 0x00072C
0x000700:
    if !(bool (caster_is_playing[]:int32 self.sfx_t)) goto 0x00072C
0x000718:
    call (caster_stop[]:int32 self.sfx_t)
0x00072C:
    if !(== self.meter 1s) goto 0x000844
0x000740:
    self.metercounter = (+ self.metercounter 1s)
    self.i = 0s
    if !(< self.i 7s) goto 0x000844
0x000778:
    if !(> self.metercounter self.i) goto 0x000828
0x000790:
    self.mcolor = (make_color_hsv[]:int32 (var 255s) (var 180s) (- (* self.metercounter 12s) (* self.i 24s)))
    call (draw_sprite_ext[]:int32 (var 1s) self.mcolor self.image_angle self.image_yscale self.image_xscale self.y self.x self.i (var 2374s))
0x000828:
    self.i = (+ self.i 1s)
    goto 0x000764
0x000844:
    if !(== self.blast 1s) goto 0x0011F4
0x000858:
    if !(> self.bt 4s) goto 0x0008E8
0x00086C:
    stog.view_xview[0s] = (* (choose[]:int32 (var -1s) (var 1s)) (random[]:int32 (var 3s)))
    stog.view_yview[0s] = (* (choose[]:int32 (var -1s) (var 1s)) (random[]:int32 (var 3s)))
    goto 0x000910
0x0008E8:
    stog.view_xview[0s] = 0s
    stog.view_yview[0s] = 0s
0x000910:
    if !(== self.image_index 5s) goto 0x000934
0x000924:
    self.image_index = 4s
    goto 0x000940
0x000934:
    self.image_index = 5s
0x000940:
    self.metercounter = (- self.metercounter 1.25d)
    self.x = (- (+ self.thisx (random[]:int32 (var 6s))) (random[]:int32 (var 6s)))
    self.y = (- (- self.thisy (random[]:int32 (var 15s))) 16s)
    push (- (+ (- self.x self.relx) (random[]:int32 (var 3s))) (random[]:int32 (var 3s)))
    stog.x* = (int32 self.king)
    push (+ (+ (- self.y self.rely) (random[]:int32 (var 8s))) 12s)
    stog.y* = (int32 self.king)
    self.xx = (lengthdir_x[]:int32 (- self.image_angle 90s) (var 115s))
    self.yy = (lengthdir_y[]:int32 (- self.image_angle 90s) (var 115s))
    self.xxx = (lengthdir_x[]:int32 (- self.image_angle 90s) (var 600s))
    self.yyy = (lengthdir_y[]:int32 (- self.image_angle 90s) (var 600s))
    self.mcolor1 = (make_color_hsv[]:int32 (var 255s) (var 180s) (* self.btimer 18s))
    self.mcolor2 = (make_color_hsv[]:int32 (var 255s) (var 180s) (+ (* self.btimer 18s) 60s))
    call (draw_line_width_color[]:int32 self.mcolor2 self.mcolor1 self.bt (+ self.y self.yyy) (+ self.x self.xxx) (+ self.y self.yy) (+ self.x self.xx))
    self.xxa = (lengthdir_x[]:int32 (- self.image_angle 90s) (var 90s))
    self.yya = (lengthdir_y[]:int32 (- self.image_angle 90s) (var 90s))
    self.xxb = (lengthdir_x[]:int32 (- self.image_angle 90s) (var 100s))
    self.yyb = (lengthdir_y[]:int32 (- self.image_angle 90s) (var 100s))
    call (draw_line_width_color[]:int32 self.mcolor2 self.mcolor1 (/ self.bt (double 2s)) (+ self.y self.yya) (+ self.x self.xxa) (+ self.y self.yy) (+ self.x self.xx))
    call (draw_line_width_color[]:int32 self.mcolor2 self.mcolor1 (/ self.bt 1.5d) (+ self.y self.yyb) (+ self.x self.xxb) (+ self.y self.yy) (+ self.x self.xx))
    self.nx_factor = (lengthdir_x[]:int32 self.image_angle (var 1s))
    self.ny_factor = (lengthdir_y[]:int32 self.image_angle (var 1s))
    if !(== self.col_o 1s) goto 0x00113C
0x000DCC:
    self.cl = 0s
    if !(< self.cl 4s) goto 0x000F84
0x000DEC:
    if !(bool (collision_line[]:int32 (var 1s) (var 0s) (var 743s) (- (+ self.y self.yyy) (* (/ (* self.ny_factor self.bt) (double 2s)) (/ self.cl (double 4s)))) (- (+ self.x self.xxx) (* (/ (* self.nx_factor self.bt) (double 2s)) (/ self.cl (double 4s)))) (- (+ self.y self.yy) (* (/ (* self.ny_factor self.bt) (double 2s)) (/ self.cl (double 4s)))) (- (+ self.x self.xx) (* (/ (* self.nx_factor self.bt) (double 2s)) (/ self.cl (double 4s)))))) goto 0x000F68
0x000F54:
    call (event_user[]:int32 (var 7s))
0x000F68:
    self.cl = (+ self.cl 1s)
    goto 0x000DD8
0x000F84:
    self.cl = 0s
    if !(< self.cl 4s) goto 0x00113C
0x000FA4:
    if !(bool (collision_line[]:int32 (var 1s) (var 0s) (var 743s) (+ (+ self.y self.yyy) (* (/ (* self.ny_factor self.bt) (double 2s)) (/ self.cl (double 4s)))) (+ (+ self.x self.xxx) (* (/ (* self.nx_factor self.bt) (double 2s)) (/ self.cl (double 4s)))) (+ (+ self.y self.yy) (* (/ (* self.ny_factor self.bt) (double 2s)) (/ self.cl (double 4s)))) (+ (+ self.x self.xx) (* (/ (* self.nx_factor self.bt) (double 2s)) (/ self.cl (double 4s)))))) goto 0x001120
0x00110C:
    call (event_user[]:int32 (var 7s))
0x001120:
    self.cl = (+ self.cl 1s)
    goto 0x000F90
0x00113C:
    if !(== self.col_o 0s) goto 0x001160
0x001150:
    self.col_o = 1s
    goto 0x00116C
0x001160:
    self.col_o = 0s
0x00116C:
    self.btimer = (+ self.btimer 1s)
    if !(> self.btimer 15s) goto 0x0011F4
0x001198:
    self.bt = (- self.bt 3s)
    if !(< self.bt 3s) goto 0x0011F4
0x0011C4:
    self.bt = 0s
    self.blast = 0s
    self.unhinge = 0s
    self.meter = 0s
0x0011F4:
    if !(== self.unhinge 1s) goto 0x001234
0x001208:
    if !(>= self.image_index 5s) goto 0x001234
0x00121C:
    self.image_index = 5s
    self.image_speed = 0s
0x001234:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle self.image_yscale self.image_xscale self.y self.x self.image_index self.sprite_index)
0x001288:
    exit
