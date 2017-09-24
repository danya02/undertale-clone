0x000000:
    if !(== self.start 1s) goto 0x000058
0x000014:
    if !(< self.image_alpha 1s) goto 0x00004C
0x000028:
    self.image_alpha = (+ self.image_alpha 0.2d)
    goto 0x000058
0x00004C:
    self.start = 0s
0x000058:
    if !(== self.dontdraw 0s) goto 0x000110
0x00006C:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle (var 2s) self.image_xscale (- (+ self.y (random[]:int32 self.shake)) (random[]:int32 self.shake)) (- (+ self.x (random[]:int32 self.shake)) (random[]:int32 self.shake)) self.image_index self.sprite_index)
0x000110:
    self.timer = (+ self.timer 1s)
    if !(== self.timer 5s) goto 0x000148
0x00013C:
    self.con = 1s
0x000148:
    if !(== self.con 1s) goto 0x000478
0x00015C:
    self.s_offset = (- self.s_offset 1s)
    if !(== self.flip 0s) goto 0x000290
0x000188:
    if !(== self.o_o 1s) goto 0x00020C
0x00019C:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle (var 2s) self.image_xscale (- self.y 148s) (- (- self.x self.s_offset) 22s) self.image_index (var 2386s))
0x00020C:
    if !(== self.o_o 0s) goto 0x000290
0x000220:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle (var 2s) self.image_xscale (- self.y 148s) (- (+ self.x self.s_offset) 22s) self.image_index (var 2386s))
0x000290:
    if !(== self.flip 1s) goto 0x0003AC
0x0002A4:
    if !(== self.o_o 1s) goto 0x000328
0x0002B8:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle (var 2s) self.image_xscale (- self.y 148s) (+ (- self.x self.s_offset) 22s) self.image_index (var 2386s))
0x000328:
    if !(== self.o_o 0s) goto 0x0003AC
0x00033C:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle (var 2s) self.image_xscale (- self.y 148s) (+ (+ self.x self.s_offset) 22s) self.image_index (var 2386s))
0x0003AC:
    if !(== self.o_o 0s) goto 0x0003D0
0x0003C0:
    self.o_o = 1s
    goto 0x0003DC
0x0003D0:
    self.o_o = 0s
0x0003DC:
    if !(<= self.s_offset 1s) goto 0x000478
0x0003F0:
    pushenv (int32 self.sm) 0x000414
0x000400:
    call (event_user[]:int32 (var 8s))
0x000414:
    popenv 0x000400
0x000418:
    self.sprite_index = 2388s
    self.con = 2s
    self.timer = 999s
    self.timer = 999s
    if !(== self.flip 0s) goto 0x000478
0x00045C:
    push 14s
    push (int32 self.sm)
    stog.alarm[] = 5s
0x000478:
    if !(== self.twinkle 0s) goto 0x000964
0x00048C:
    if !(== self.h_mode 0s) goto 0x000624
0x0004A0:
    if !(== self.timer 107s) goto 0x0004DC
0x0004B4:
    pushenv (int32 self.sm) 0x0004D8
0x0004C4:
    call (event_user[]:int32 (var 5s))
0x0004D8:
    popenv 0x0004C4
0x0004DC:
    if !(> self.timer 105s) goto 0x000504
0x0004F0:
    push (< self.timer 116s)
    goto 0x000508
0x000504:
    push 0s
0x000508:
    if !pop goto 0x000624
0x00050C:
    self.y = (- self.y 0.5d)
    if !(== self.flip 0s) goto 0x0005A8
0x000540:
    stog.headrot* = (+ (int32 self.king):headrot 4s)
    pushenv (int32 self.sm) 0x00058C
0x000578:
    push (int32 self.king)
    call (event_user[]:int32 (var 2s))
0x00058C:
    popenv 0x000578
0x000590:
    self.image_angle = (+ self.image_angle 1s)
0x0005A8:
    if !(== self.flip 1s) goto 0x000624
0x0005BC:
    stog.headrot* = (- (int32 self.king):headrot 4s)
    pushenv (int32 self.sm) 0x000608
0x0005F4:
    push (int32 self.king)
    call (event_user[]:int32 (var 3s))
0x000608:
    popenv 0x0005F4
0x00060C:
    self.image_angle = (- self.image_angle 1s)
0x000624:
    if !(== self.h_mode 1s) goto 0x0007CC
0x000638:
    if !(== self.timer 110s) goto 0x000674
0x00064C:
    pushenv (int32 self.sm) 0x000670
0x00065C:
    call (event_user[]:int32 (var 5s))
0x000670:
    popenv 0x00065C
0x000674:
    if !(> self.timer 108s) goto 0x00069C
0x000688:
    push (< self.timer 116s)
    goto 0x0006A0
0x00069C:
    push 0s
0x0006A0:
    if !pop goto 0x0007CC
0x0006A4:
    self.y = (- self.y 0.75d)
    if !(== self.flip 0s) goto 0x000748
0x0006D8:
    stog.headrot* = (+ (int32 self.king):headrot 6s)
    pushenv (int32 self.sm) 0x000724
0x000710:
    push (int32 self.king)
    call (event_user[]:int32 (var 2s))
0x000724:
    popenv 0x000710
0x000728:
    self.image_angle = (+ self.image_angle 1.5d)
0x000748:
    if !(== self.flip 1s) goto 0x0007CC
0x00075C:
    stog.headrot* = (- (int32 self.king):headrot 6s)
    pushenv (int32 self.sm) 0x0007A8
0x000794:
    push (int32 self.king)
    call (event_user[]:int32 (var 3s))
0x0007A8:
    popenv 0x000794
0x0007AC:
    self.image_angle = (- self.image_angle 1.5d)
0x0007CC:
    if !(== self.h_mode 2s) goto 0x000964
0x0007E0:
    if !(== self.timer 113s) goto 0x00081C
0x0007F4:
    pushenv (int32 self.sm) 0x000818
0x000804:
    call (event_user[]:int32 (var 5s))
0x000818:
    popenv 0x000804
0x00081C:
    if !(> self.timer 111s) goto 0x000844
0x000830:
    push (< self.timer 116s)
    goto 0x000848
0x000844:
    push 0s
0x000848:
    if !pop goto 0x000964
0x00084C:
    self.y = (- self.y 1.5d)
    if !(== self.flip 0s) goto 0x0008E8
0x000880:
    stog.headrot* = (+ (int32 self.king):headrot 12s)
    pushenv (int32 self.sm) 0x0008CC
0x0008B8:
    push (int32 self.king)
    call (event_user[]:int32 (var 2s))
0x0008CC:
    popenv 0x0008B8
0x0008D0:
    self.image_angle = (+ self.image_angle 3s)
0x0008E8:
    if !(== self.flip 1s) goto 0x000964
0x0008FC:
    stog.headrot* = (- (int32 self.king):headrot 12s)
    pushenv (int32 self.sm) 0x000948
0x000934:
    push (int32 self.king)
    call (event_user[]:int32 (var 3s))
0x000948:
    popenv 0x000934
0x00094C:
    self.image_angle = (- self.image_angle 3s)
0x000964:
    if !(== self.twinkle 1s) goto 0x000B08
0x000978:
    if !(> self.timer 90s) goto 0x0009A0
0x00098C:
    push (< self.timer 105s)
    goto 0x0009A4
0x0009A0:
    push 0s
0x0009A4:
    if !pop goto 0x000A8C
0x0009A8:
    self.blazing = 1s
    self.y = (- self.y 0.5d)
    if !(== self.flip 0s) goto 0x000A30
0x0009E8:
    pushenv (int32 self.sm) 0x000A0C
0x0009F8:
    call (event_user[]:int32 (var 9s))
0x000A0C:
    popenv 0x0009F8
0x000A10:
    self.image_angle = (+ self.image_angle 1.5d)
0x000A30:
    if !(== self.flip 1s) goto 0x000A8C
0x000A44:
    pushenv (int32 self.sm) 0x000A68
0x000A54:
    call (event_user[]:int32 (var 9s))
0x000A68:
    popenv 0x000A54
0x000A6C:
    self.image_angle = (- self.image_angle 1.5d)
0x000A8C:
    if !(> self.timer 90s) goto 0x000AB4
0x000AA0:
    push (< self.timer 115s)
    goto 0x000AB8
0x000AB4:
    push 0s
0x000AB8:
    if !pop goto 0x000AC8
0x000ABC:
    self.shake = 5s
0x000AC8:
    if !(== self.timer 115s) goto 0x000AE8
0x000ADC:
    self.shake = 0s
0x000AE8:
    if !(== self.timer 120s) goto 0x000B08
0x000AFC:
    self.blazing = 0s
0x000B08:
    if !(== self.timer 124s) goto 0x000B80
0x000B1C:
    pushenv (int32 self.sm) 0x000B40
0x000B2C:
    call (event_user[]:int32 (var 6s))
0x000B40:
    popenv 0x000B2C
0x000B44:
    self.depth = (- (int32 self.king):depth 10s)
    self.dontdraw = 1s
    self.smear = 5s
0x000B80:
    if !(>= self.timer 124s) goto 0x000BA8
0x000B94:
    push (< self.timer 127s)
    goto 0x000BAC
0x000BA8:
    push 0s
0x000BAC:
    if !pop goto 0x000C84
0x000BB0:
    if !(== self.flip 0s) goto 0x000BEC
0x000BC4:
    stog.headrot* = (- (int32 self.king):headrot 12s)
0x000BEC:
    push (int32 self.king)
    if !(== self.flip 1s) goto 0x000C28
0x000C00:
    stog.headrot* = (+ (int32 self.king):headrot 12s)
0x000C28:
    push (int32 self.king)
    self.dontdraw = 0s
    self.image_angle = 0s
    if !(>= self.timer 125s) goto 0x000C60
0x000C54:
    self.col = 1s
0x000C60:
    self.sprite_index = 2380s
    self.y = (+ self.y 3s)
0x000C84:
    if !(== self.timer 125s) goto 0x000CAC
0x000C98:
    push (== self.twinkle 1s)
    goto 0x000CB0
0x000CAC:
    push 0s
0x000CB0:
    if !pop goto 0x000D80
0x000CB4:
    global.border = 6s
    call (SCR_BORDERSETUP[]:int32 )
    self.timer = 200s
    self.vspeed = 5s
    self.friction = 0.5d
    self.sprite_index = 2382s
    self.i = 0s
    if !(< self.i 4s) goto 0x000D80
0x000D24:
    call (instance_create[]:int32 (var 588s) (+ (+ self.y 120s) (* self.i 35s)) self.x)
    self.i = (+ self.i 1s)
    goto 0x000D10
0x000D80:
    if !(>= self.timer 127s) goto 0x000DA8
0x000D94:
    push (< self.timer 130s)
    goto 0x000DAC
0x000DA8:
    push 0s
0x000DAC:
    if !pop goto 0x000E2C
0x000DB0:
    self.col = 0s
    self.y = (+ self.y 5s)
    if !(== self.flip 0s) goto 0x000E00
0x000DE8:
    self.image_angle = (+ self.image_angle 30s)
0x000E00:
    if !(== self.flip 1s) goto 0x000E2C
0x000E14:
    self.image_angle = (- self.image_angle 30s)
0x000E2C:
    if !(== self.timer 130s) goto 0x000EB4
0x000E40:
    stog.headrot* = (/ (int32 self.king):headrot 2s)
    self.depth = (+ (int32 self.king):depth 1s)
    self.y = self.ystart
    self.image_angle = 0s
    self.sprite_index = 2391s
0x000EB4:
    push (int32 self.king)
    if !(== self.timer 131s) goto 0x000F18
0x000EC8:
    stog.headrot* = (/ (int32 self.king):headrot 2s)
    self.y = self.ystart
    self.image_angle = 0s
    self.sprite_index = 2388s
0x000F18:
    push (int32 self.king)
    if !(> self.timer 200s) goto 0x000F40
0x000F2C:
    push (== self.twinkle 1s)
    goto 0x000F44
0x000F40:
    push 0s
0x000F44:
    if !pop goto 0x000FA8
0x000F48:
    if !(> self.timer 201s) goto 0x000F68
0x000F5C:
    self.col = 0s
0x000F68:
    self.image_alpha = (- self.image_alpha 0.1d)
    if !(<= self.image_alpha 0s) goto 0x000FA8
0x000F9C:
    call (instance_destroy[]:int32 )
0x000FA8:
    if !(> self.smear 0s) goto 0x0010EC
0x000FBC:
    if !(== self.flip 0s) goto 0x001048
0x000FD0:
    call (draw_sprite_ext[]:int32 (/ self.smear (double 5s)) self.image_blend (var 0s) (var 2.5d) self.image_xscale (- self.y 168s) (- self.x 40s) self.image_index (var 2383s))
0x001048:
    if !(== self.flip 1s) goto 0x0010D4
0x00105C:
    call (draw_sprite_ext[]:int32 (/ self.smear (double 5s)) self.image_blend (var 0s) (var 2.5d) self.image_xscale (- self.y 168s) (+ self.x 40s) self.image_index (var 2383s))
0x0010D4:
    self.smear = (- self.smear 1s)
0x0010EC:
    if !(== self.blazing 1s) goto 0x001198
0x001100:
    if !(== self.bl_o 0s) goto 0x001124
0x001114:
    self.bl_o = 1s
    goto 0x001130
0x001124:
    self.bl_o = 0s
0x001130:
    if !(== self.bl_o 1s) goto 0x001198
0x001144:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle (var 2s) self.image_xscale self.y self.x (var 0s) (var 2389s))
0x001198:
    if !(== self.col 1s) goto 0x0012BC
0x0011AC:
    if !(== self.flip 0s) goto 0x001234
0x0011C0:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) (+ self.y 260s) (+ self.x 80s) self.y (- self.x 3s))) goto 0x001234
0x001220:
    call (event_user[]:int32 (var 7s))
0x001234:
    if !(== self.flip 1s) goto 0x0012BC
0x001248:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) (+ self.y 260s) (- self.x 80s) self.y (+ self.x 3s))) goto 0x0012BC
0x0012A8:
    call (event_user[]:int32 (var 7s))
0x0012BC:
    exit
