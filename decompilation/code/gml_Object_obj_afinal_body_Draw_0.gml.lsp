0x000000:
    self.anim = (+ self.anim 1s)
    self.siner = (+ self.siner 1s)
    self.side = (+ self.side 2s)
    if !(> self.side 800s) goto 0x000074
0x00005C:
    self.side = (- self.side 800s)
0x000074:
    self.yoff = (sin[]:int32 (/ self.siner (double 4s)))
    self.yoff2 = (sin[]:int32 (/ self.siner (double 16s)))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var -10s) (var 999s) (var 240s) (var -10s))
    self.thiscolor = (make_color_hsv[]:int32 (var 200s) (var 200s) (* self.siner 6s))
    call (draw_set_color[]:int32 self.thiscolor)
    call (draw_sprite_part_ext[]:int32 (var 0.5d) self.thiscolor (var 1s) (var -1s) (var 0s) (var 640s) (var 216s) (var 276s) (var 0s) self.side (var 0s) (var 2361s))
    call (draw_sprite_part_ext[]:int32 (var 0.5d) self.thiscolor (var 1s) (var -1s) (var 0s) (var 640s) (var 216s) (var 276s) (var 0s) (+ self.side 60s) (var 0s) (var 2361s))
    call (draw_sprite_part_ext[]:int32 (var 0.5d) self.thiscolor (var 1s) (var -1s) (var 0s) (var 640s) (var 216s) (var 276s) (var 0s) (+ self.side 120s) (var 0s) (var 2361s))
    call (draw_set_color[]:int32 self.thiscolor)
    call (draw_sprite_part_ext[]:int32 (var 0.5d) self.thiscolor (var 1s) (var 1s) (var 0s) (var 0s) (var 216s) (var 276s) (var 0s) self.side (var 0s) (var 2361s))
    call (draw_sprite_part_ext[]:int32 (var 0.5d) self.thiscolor (var 1s) (var 1s) (var 0s) (var 0s) (var 216s) (var 276s) (var 0s) (+ self.side 60s) (var 0s) (var 2361s))
    call (draw_sprite_part_ext[]:int32 (var 0.5d) self.thiscolor (var 1s) (var 1s) (var 0s) (var 0s) (var 216s) (var 276s) (var 0s) (+ self.side 120s) (var 0s) (var 2361s))
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (+ (- self.y 52s) (* self.yoff2 4s)) (+ self.x 42s) (floor[]:int32 (/ self.anim (double 6s))) (var 2340s))
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var -2s) (+ (- self.y 52s) (* self.yoff2 4s)) (- self.x 44s) (floor[]:int32 (/ self.anim (double 6s))) (var 2340s))
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (- self.y 52s) (- self.x 110s) (floor[]:int32 (/ self.anim (double 6s))) (var 2335s))
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var -2s) (- self.y 52s) (+ self.x 108s) (floor[]:int32 (/ self.anim (double 6s))) (var 2335s))
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (+ self.y 146s) (- self.x 2s) (floor[]:int32 (/ self.anim (double 6s))) (var 2339s))
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (+ self.y 68s) (- self.x 2s) (floor[]:int32 (/ self.anim (double 6s))) (var 2337s))
    self.rx = (- (random[]:int32 self.ar_shake) (random[]:int32 self.ar_shake))
    self.ry = (- (random[]:int32 self.ar_shake) (random[]:int32 self.ar_shake))
    self.ry = (* self.ry 1.5d)
    self.rx = (* self.rx 0.7d)
    call (draw_set_alpha[]:int32 self.bodyfader)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
    if !(== self.cry 0s) goto 0x00089C
0x000848:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) self.y self.x global.faceemotion (var 2341s))
0x00089C:
    if !(== self.cry 1s) goto 0x000948
0x0008B0:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (+ self.y (/ self.ry (double 3s))) (+ self.x (/ self.rx (double 3s))) (floor[]:int32 (/ self.siner (double 8s))) (var 2342s))
0x000948:
    if !(== self.cry 2s) goto 0x0009F4
0x00095C:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (+ self.y (/ self.ry (double 3s))) (+ self.x (/ self.rx (double 3s))) (floor[]:int32 (/ self.siner (double 2s))) (var 2343s))
0x0009F4:
    call (draw_sprite_ext[]:int32 (- self.image_alpha self.bodyfader) self.image_blend self.armrot (var 2s) (var 2s) (+ (+ (+ self.y 56s) (* self.yoff 2s)) self.ry) (+ (- self.x 58s) self.rx) (floor[]:int32 (/ self.anim (double 6s))) (var 2345s))
    call (draw_sprite_ext[]:int32 (- self.image_alpha self.bodyfader) self.image_blend (- self.armrot) (var 2s) (var -2s) (+ (+ (+ self.y 56s) (* self.yoff 2s)) self.ry) (+ (+ self.x 56s) self.rx) (floor[]:int32 (/ self.anim (double 6s))) (var 2345s))
    call (draw_sprite_ext[]:int32 (- self.image_alpha self.bodyfader) self.image_blend (var 0s) (var 2s) (var 2s) (+ self.y 32s) (- self.x 84s) (floor[]:int32 (/ self.anim (double 6s))) (var 2346s))
    call (draw_sprite_ext[]:int32 (- self.image_alpha self.bodyfader) self.image_blend (var 0s) (var 2s) (var -2s) (+ self.y 32s) (+ self.x 82s) (floor[]:int32 (/ self.anim (double 6s))) (var 2346s))
    if !(> self.ucon 0s) goto 0x000EE0
0x000C74:
    if !(== self.ucon 1s) goto 0x000CD4
0x000C88:
    call (caster_play[]:int32 (var 1.2d) (var 0.7d) self.psfx)
    self.arf = 30s
    self.ucon = 2s
0x000CD4:
    if !(== self.ucon 2s) goto 0x000D50
0x000CE8:
    self.armrot = (+ self.armrot self.arf)
    self.arf = (- self.arf 2s)
    if !(<= self.arf 0s) goto 0x000D50
0x000D30:
    self.ucon = 3s
    stog.alarm[10s] = 5s
0x000D50:
    if !(== self.ucon 4s) goto 0x000E4C
0x000D64:
    self.gen = (instance_create[]:int32 (var 575s) self.y self.x)
    push self.u_gen
    stog.type* = (int32 self.gen)
    if !(== (instance_exists[]:int32 (var 573s)) 0s) goto 0x000DEC
0x000DC4:
    self.target = (instance_create[]:int32 (var 573s) 743.y 743.x)
0x000DEC:
    self.ucon = 5s
    stog.alarm[10s] = 140s
    if !(== (int32 self.gen):type 2s) goto 0x000E40
0x000E2C:
    stog.alarm[10s] = 130s
0x000E40:
    self.arf = -30s
0x000E4C:
    if !(== self.ucon 6s) goto 0x000EE0
0x000E60:
    pushenv (int32 self.gen) 0x000E7C
0x000E70:
    call (instance_destroy[]:int32 )
0x000E7C:
    popenv 0x000E70
0x000E80:
    self.armrot = (+ self.armrot self.arf)
    self.arf = (+ self.arf 2s)
    if !(>= self.arf 0s) goto 0x000EE0
0x000EC8:
    self.ucon = 0s
    global.mnfight = 3s
0x000EE0:
    if !(== (instance_exists[]:int32 (var 576s)) 0s) goto 0x000F30
0x000EFC:
    if !(== (instance_exists[]:int32 (var 573s)) 0s) goto 0x000F30
0x000F18:
    pushenv 573s 0x000F2C
0x000F20:
    call (instance_destroy[]:int32 )
0x000F2C:
    popenv 0x000F20
0x000F30:
    if !(> self.bcon 0s) goto 0x0017C0
0x000F44:
    if !(== self.bcon 1s) goto 0x000FC0
0x000F58:
    self.ps = 0s
    stog.alarm[9s] = 7s
    self.r_break = 0s
    self.r_al = 1s
    self.radi = 0s
    self.r_siner = 0s
    self.arf = 30s
    self.bcon = 2s
0x000FC0:
    if !(== self.bcon 2s) goto 0x00103C
0x000FD4:
    self.armrot = (- self.armrot self.arf)
    self.arf = (- self.arf 5s)
    if !(<= self.arf 0s) goto 0x00103C
0x00101C:
    self.bcon = 3s
    stog.alarm[11s] = 35s
0x00103C:
    if !(== self.bcon 4s) goto 0x001078
0x001050:
    self.bcon = 4.1d
    stog.alarm[11s] = 2s
0x001078:
    if !(== self.bcon 4.1d) goto 0x0010AC
0x001094:
    self.armrot = (- self.armrot 5s)
0x0010AC:
    if !(== self.bcon 5.1d) goto 0x0010E8
0x0010C8:
    self.bcon = 5s
    stog.alarm[11s] = 5s
0x0010E8:
    if !(== self.bcon 5s) goto 0x001120
0x0010FC:
    self.ar_shake = 0s
    self.armrot = (+ self.armrot 26s)
0x001120:
    if !(== self.bcon 6s) goto 0x001208
0x001134:
    self.cry = 2s
    self.ar_shake = 5s
    self.armx = (lengthdir_x[]:int32 (- (- self.armrot) 90s) (var 150s))
    self.army = (lengthdir_y[]:int32 (- (- self.armrot) 90s) (var 150s))
    self.beam = (instance_create[]:int32 (var 577s) (- (+ (+ self.y 56s) self.army) 20s) (var 320s))
    self.bcon = 7s
    stog.alarm[11s] = 400s
0x001208:
    if !(< self.bcon 7s) goto 0x001230
0x00121C:
    push (> self.r_al 0s)
    goto 0x001234
0x001230:
    push 0s
0x001234:
    if !pop goto 0x0016F4
0x001238:
    self.ar_shake = (+ self.ar_shake 0.2d)
    if !(< self.radi 60s) goto 0x00128C
0x00126C:
    self.radi = (+ self.radi 1.5d)
0x00128C:
    self.r_siner = (+ self.r_siner 1s)
    self.radi_s = (* (sin[]:int32 (/ self.r_siner (double 2s))) (/ self.radi (double 8s)))
    self.armx = (lengthdir_x[]:int32 (- (- self.armrot) 90s) (var 150s))
    self.army = (lengthdir_y[]:int32 (- (- self.armrot) 90s) (var 150s))
    if !(== self.r_break 1s) goto 0x0013A4
0x00134C:
    self.radi = (- self.radi 6s)
    self.r_al = (- self.r_al 0.1d)
    if !(<= self.r_al 0s) goto 0x0013A4
0x001398:
    self.r_al = 0s
0x0013A4:
    call (draw_set_alpha[]:int32 self.r_al)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_circle[]:int32 (var 1s) (+ self.radi self.radi_s) (+ (+ self.y 56s) self.army) (+ (+ self.x 56s) self.armx))
    call (draw_circle[]:int32 (var 1s) (- (+ self.radi self.radi_s) 1s) (+ (+ self.y 56s) self.army) (+ (+ self.x 56s) self.armx))
    call (draw_sprite_ext[]:int32 self.r_al (var 16777215) (var 0s) (* 2s (/ (+ self.radi self.radi_s) (double 40s))) (* 2s (/ (+ self.radi self.radi_s) (double 40s))) (+ (+ self.y 56s) self.army) (+ (+ self.x 56s) self.armx) (var 0s) (var 2393s))
    call (draw_circle[]:int32 (var 1s) (+ self.radi self.radi_s) (+ (+ self.y 56s) self.army) (- (- self.x 58s) self.armx))
    call (draw_circle[]:int32 (var 1s) (- (+ self.radi self.radi_s) 1s) (+ (+ self.y 56s) self.army) (- (- self.x 58s) self.armx))
    call (draw_sprite_ext[]:int32 self.r_al (var 16777215) (var 0s) (* 2s (/ (+ self.radi self.radi_s) (double 40s))) (* 2s (/ (+ self.radi self.radi_s) (double 40s))) (+ (+ self.y 56s) self.army) (- (- self.x 58s) self.armx) (var 0s) (var 2393s))
    call (draw_set_alpha[]:int32 (var 1s))
0x0016F4:
    if !(== self.bcon 8s) goto 0x0017C0
0x001708:
    self.cry = 0s
    global.faceemotion = 5s
    if !(> self.ar_shake 0s) goto 0x00174C
0x001734:
    self.ar_shake = (- self.ar_shake 1s)
0x00174C:
    if !(> self.armrot 0s) goto 0x00177C
0x001760:
    self.armrot = (- self.armrot 2s)
    goto 0x001788
0x00177C:
    self.armrot = 0s
0x001788:
    if !(<= self.ar_shake 0s) goto 0x0017C0
0x00179C:
    self.ar_shake = 0s
    self.bcon = 0s
    global.mnfight = 3s
0x0017C0:
    if !(== global.debug 1s) goto 0x0017D4
0x0017D4:
    if !(== self.darker 1s) goto 0x0018B0
0x0017E8:
    pushenv 183s 0x001808
0x0017F0:
    self.depth = (+ self.depth 1s)
0x001808:
    popenv 0x0017F0
0x00180C:
    if !(< self.darker_x 1s) goto 0x001840
0x001820:
    self.darker_x = (+ self.darker_x 0.04d)
0x001840:
    call (draw_set_alpha[]:int32 self.darker_x)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
0x0018B0:
    exit
