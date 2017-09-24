0x000000:
    if !(== self.con 0s) goto 0x000090
0x000014:
    if !(== self.frozen 0s) goto 0x000044
0x000028:
    self.siner = (+ self.siner 1s)
    goto 0x000090
0x000044:
    if !(!= self.frozen 4s) goto 0x000090
0x000058:
    self.y = (- (+ self.ystart (random[]:int32 (var 4s))) (random[]:int32 (var 4s)))
0x000090:
    if !(== self.con 1s) goto 0x0000C4
0x0000A4:
    self.con = 3s
    stog.alarm[4s] = 4s
0x0000C4:
    if !(== global.debug 1s) goto 0x0000FC
0x0000D8:
    if !(bool (keyboard_check_pressed[]:int32 (var 82s))) goto 0x0000FC
0x0000F0:
    self.con = 1s
0x0000FC:
    if !(== self.con 3s) goto 0x000338
0x000110:
    self.siner2 = (+ self.siner2 1.2d)
    self.md = 1s
    self.gr = (make_color_rgb[]:int32 (+ 170s (* (sin[]:int32 (/ (+ self.siner2 6s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 3s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ self.siner2 (double 2s))) 70s)))
    self.grgr = (make_color_rgb[]:int32 (+ 170s (* (sin[]:int32 (/ (+ self.siner2 7s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 4s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 1s) (double 2s))) 70s)))
    self.grgrgr = (make_color_rgb[]:int32 (+ 170s (* (sin[]:int32 (/ (+ self.siner2 8s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 4s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 2s) (double 2s))) 70s)))
0x000338:
    if !(== self.con 4s) goto 0x0003A8
0x00034C:
    self.con = 5s
    self.durara = 0s
    self.oner = (choose[]:int32 (var 1s) (var 0s))
    stog.alarm[4s] = 7s
    self.image_blend = 16777215
0x0003A8:
    if !(== self.con 5s) goto 0x000940
0x0003BC:
    self.opx = 0s
    self.eba = (instance_create[]:int32 (var 1636s) self.y self.x)
    push self.memorymode
    stog.memorymode* = (int32 self.eba)
    push self.durara
    stog.durara* = (int32 self.eba)
    push self.oner
    stog.oner* = (int32 self.eba)
    if !(== self.wimpy 0s) goto 0x000538
0x000458:
    pushenv (int32 self.eba) 0x000534
0x000468:
    call (move_towards_point[]:int32 (- 7s (* self.durara 0.1d)) (+ 1581.y 8s) (+ 1581.x 8s))
    self.friction = (+ -0.2d (* self.durara 0.012d))
    self.direction = (- self.direction (* 18s self.durara))
    if !(== self.oner 1s) goto 0x000534
0x00051C:
    self.direction = (+ self.direction 9s)
0x000534:
    popenv 0x000468
0x000538:
    if !(== self.wimpy 1s) goto 0x00062C
0x00054C:
    pushenv (int32 self.eba) 0x000628
0x00055C:
    call (move_towards_point[]:int32 (- 3s (* self.durara 0.1d)) (+ 1581.y 8s) (+ 1581.x 8s))
    self.friction = (- -0.1d (* self.durara 0.02d))
    self.direction = (- self.direction (* 18s self.durara))
    if !(== self.oner 1s) goto 0x000628
0x000610:
    self.direction = (+ self.direction 14s)
0x000628:
    popenv 0x00055C
0x00062C:
    self.opx = self.op
    self.ebb = (instance_create[]:int32 (var 1636s) self.y (+ self.x self.opx))
    push self.memorymode
    stog.memorymode* = (int32 self.ebb)
    push self.durara
    stog.durara* = (int32 self.ebb)
    push self.oner
    stog.oner* = (int32 self.ebb)
    if !(== self.wimpy 0s) goto 0x0007B8
0x0006D8:
    pushenv (int32 self.ebb) 0x0007B4
0x0006E8:
    call (move_towards_point[]:int32 (- 7s (* self.durara 0.1d)) (+ 1581.y 8s) (+ 1581.x 8s))
    self.friction = (+ -0.2d (* self.durara 0.012d))
    self.direction = (+ self.direction (* 18s self.durara))
    if !(== self.oner 1s) goto 0x0007B4
0x00079C:
    self.direction = (+ self.direction 9s)
0x0007B4:
    popenv 0x0006E8
0x0007B8:
    if !(== self.wimpy 1s) goto 0x0008AC
0x0007CC:
    pushenv (int32 self.ebb) 0x0008A8
0x0007DC:
    call (move_towards_point[]:int32 (- 3s (* self.durara 0.1d)) (+ 1581.y 8s) (+ 1581.x 8s))
    self.friction = (- -0.1d (* self.durara 0.02d))
    self.direction = (+ self.direction (* 18s self.durara))
    if !(== self.oner 1s) goto 0x0008A8
0x000890:
    self.direction = (+ self.direction 14s)
0x0008A8:
    popenv 0x0007DC
0x0008AC:
    self.durara = (+ self.durara 1s)
    self.md = 1s
    if !(== self.gr 16777215) goto 0x000910
0x0008E8:
    self.gr = 255s
    self.grgr = 0s
    self.grgrgr = 0s
    goto 0x000940
0x000910:
    self.gr = 16777215
    self.grgr = 16777215
    self.grgrgr = 16777215
0x000940:
    if !(== self.con 6s) goto 0x0009AC
0x000954:
    self.gr = 16777215
    self.grgr = 16777215
    self.grgrgr = 16777215
    self.md = 0s
    self.image_blend = 16777215
    self.con = 0s
0x0009AC:
    if !(== self.con 10s) goto 0x000BE8
0x0009C0:
    self.siner2 = (+ self.siner2 1.2d)
    self.md = 1s
    self.gr = (make_color_rgb[]:int32 (+ 170s (* (sin[]:int32 (/ (+ self.siner2 6s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 3s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ self.siner2 (double 2s))) 70s)))
    self.grgr = (make_color_rgb[]:int32 (+ 170s (* (sin[]:int32 (/ (+ self.siner2 7s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 4s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 1s) (double 2s))) 70s)))
    self.grgrgr = (make_color_rgb[]:int32 (+ 170s (* (sin[]:int32 (/ (+ self.siner2 8s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 4s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 2s) (double 2s))) 70s)))
0x000BE8:
    if !(== self.desperate 1s) goto 0x000C10
0x000BFC:
    push (== self.frozen 0s)
    goto 0x000C14
0x000C10:
    push 0s
0x000C14:
    if !pop goto 0x000C38
0x000C18:
    self.siner = (+ self.siner 0.5d)
0x000C38:
    call (draw_sprite_ext[]:int32 (var 1s) self.grgrgrgr (* (sin[]:int32 (/ self.siner (double 4s))) 2s) (var 0.8d) (var 0.8d) (+ self.y (* (cos[]:int32 (/ self.siner (double 3s))) 2s)) self.x self.image_index (var 2169s))
    call (draw_sprite_ext[]:int32 (var 1s) self.grgrgrgr (* (sin[]:int32 (/ self.siner (double 4s))) 2s) (var 1s) (var 1s) (+ self.y (* (cos[]:int32 (/ self.siner (double 3s))) 3s)) (- self.x 5s) self.image_index (var 2166s))
    if !(== self.md 0s) goto 0x00121C
0x000D94:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (* (sin[]:int32 (/ self.siner (double 2s))) 4s) (var 0.8d) (var 0.8d) (+ (+ -4s self.y) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) self.x self.image_index (var 2171s))
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (* (sin[]:int32 (/ self.siner (double 2s))) 4s) (var 0.8d) (var 0.8d) (+ (+ -6s self.y) (* (sin[]:int32 (/ self.siner (double 3s))) 4s)) self.x self.image_index (var 2175s))
    if !(== self.desperate 0s) goto 0x000FEC
0x000F08:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (- 1s (* (sin[]:int32 (/ self.siner (double 3s))) 0.4d)) (- 0.8d (* (sin[]:int32 (/ self.siner (double 3s))) 0.4d)) (+ (+ -5s self.y) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) self.x self.image_index (var 2173s))
0x000FEC:
    if !(== self.desperate 1s) goto 0x00121C
0x001000:
    if (== self.frozen 0s) goto 0x001028
0x001014:
    push (== self.frozen 4s)
    goto 0x00102C
0x001028:
    push 1s
0x00102C:
    if !pop goto 0x001128
0x001030:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (- 0.8d (* (sin[]:int32 (/ self.siner (double 3s))) 0.3d)) (- 0.8d (* (sin[]:int32 (/ self.siner (double 3s))) 0.3d)) (+ (+ -5s self.y) (* (sin[]:int32 (/ self.siner (double 3s))) 2.5d)) self.x self.image_index (var 2173s))
    goto 0x00121C
0x001128:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (- 0.7d (* (sin[]:int32 (/ self.siner (double 3s))) 0.1d)) (- 0.7d (* (sin[]:int32 (/ self.siner (double 3s))) 0.1d)) (+ (+ -5s self.y) (* (sin[]:int32 (/ self.siner (double 3s))) 2.5d)) self.x self.image_index (var 2173s))
0x00121C:
    if !(== self.md 1s) goto 0x001474
0x001230:
    call (draw_sprite_ext[]:int32 (var 1s) self.grgrgr (* (sin[]:int32 (/ self.siner (double 2s))) 4s) (var 0.8d) (var 0.8d) (+ (+ -4s self.y) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) self.x self.image_index (var 2172s))
    call (draw_sprite_ext[]:int32 (var 1s) self.grgr (* (sin[]:int32 (/ self.siner (double 2s))) 4s) (var 0.8d) (var 0.8d) (+ (+ -6s self.y) (* (sin[]:int32 (/ self.siner (double 3s))) 4s)) self.x self.image_index (var 2176s))
    call (draw_sprite_ext[]:int32 (var 1s) self.gr (var 0s) (- 1s (* (sin[]:int32 (/ self.siner (double 3s))) 0.4d)) (- 0.8d (* (sin[]:int32 (/ self.siner (double 3s))) 0.4d)) (+ (+ -5s self.y) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) self.x self.image_index (var 2174s))
0x001474:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (* (sin[]:int32 (/ self.siner (double 4s))) 2s) (var 0.8d) (var 0.8d) (+ self.y (* (cos[]:int32 (/ self.siner (double 3s))) 2s)) self.x self.image_index (var 2168s))
    self.op = 126s
    call (draw_sprite_ext[]:int32 (var 1s) self.grgrgrgr (* (- (sin[]:int32 (/ self.siner (double 4s)))) 2s) (var 0.8d) (var -0.8d) (+ self.y (* (cos[]:int32 (/ self.siner (double 3s))) 2s)) (+ self.x self.op) self.image_index (var 2169s))
    call (draw_sprite_ext[]:int32 (var 1s) self.grgrgrgr (* (sin[]:int32 (/ self.siner (double 4s))) 2s) (var 1s) (var -1s) (+ self.y (* (cos[]:int32 (/ self.siner (double 3s))) 3s)) (+ (+ self.x 5s) self.op) self.image_index (var 2166s))
    if !(== self.md 0s) goto 0x001B64
0x0016A0:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (* (- (sin[]:int32 (/ self.siner (double 2s)))) 4s) (var 0.8d) (var -0.8d) (+ (+ -4s self.y) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) (+ self.x self.op) self.image_index (var 2171s))
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (* (- (sin[]:int32 (/ self.siner (double 2s)))) 4s) (var 0.8d) (var -0.8d) (+ (+ -6s self.y) (* (sin[]:int32 (/ self.siner (double 3s))) 4s)) (+ self.x self.op) self.image_index (var 2175s))
    if !(== self.desperate 0s) goto 0x00191C
0x001834:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (- 1s (* (cos[]:int32 (/ self.siner (double 3s))) 0.4d)) (+ -1s (* (cos[]:int32 (/ self.siner (double 3s))) 0.4d)) (+ (+ -5s self.y) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) (+ self.x self.op) self.image_index (var 2173s))
0x00191C:
    if !(== self.desperate 1s) goto 0x001B64
0x001930:
    if (== self.frozen 0s) goto 0x001958
0x001944:
    push (== self.frozen 4s)
    goto 0x00195C
0x001958:
    push 1s
0x00195C:
    if !pop goto 0x001A64
0x001960:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (- 0.9d (* (cos[]:int32 (/ self.siner (double 3s))) 0.3d)) (+ -0.9d (* (cos[]:int32 (/ self.siner (double 3s))) 0.3d)) (+ (+ -5s self.y) (* (sin[]:int32 (/ self.siner (double 3s))) 2.5d)) (+ self.x self.op) self.image_index (var 2173s))
    goto 0x001B64
0x001A64:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (- 0.7d (* (cos[]:int32 (/ self.siner (double 3s))) 0.1d)) (+ -0.7d (* (cos[]:int32 (/ self.siner (double 3s))) 0.1d)) (+ (+ -5s self.y) (* (sin[]:int32 (/ self.siner (double 3s))) 2.5d)) (+ self.x self.op) self.image_index (var 2173s))
0x001B64:
    if !(== self.md 1s) goto 0x001DE0
0x001B78:
    call (draw_sprite_ext[]:int32 (var 1s) self.grgrgr (* (- (sin[]:int32 (/ self.siner (double 2s)))) 4s) (var 0.8d) (var -0.8d) (+ (+ -4s self.y) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) (+ self.x self.op) self.image_index (var 2172s))
    call (draw_sprite_ext[]:int32 (var 1s) self.grgr (* (- (sin[]:int32 (/ self.siner (double 2s)))) 4s) (var 0.8d) (var -0.8d) (+ (+ -6s self.y) (* (sin[]:int32 (/ self.siner (double 3s))) 4s)) (+ self.x self.op) self.image_index (var 2176s))
    call (draw_sprite_ext[]:int32 (var 1s) self.gr (var 0s) (- 1s (* (cos[]:int32 (/ self.siner (double 3s))) 0.4d)) (+ -1s (* (cos[]:int32 (/ self.siner (double 3s))) 0.4d)) (+ (+ -5s self.y) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) (+ self.x self.op) self.image_index (var 2174s))
0x001DE0:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (* (- (sin[]:int32 (/ self.siner (double 4s)))) 2s) (var 0.8d) (var -0.8d) (+ self.y (* (cos[]:int32 (/ self.siner (double 3s))) 2s)) (+ self.x self.op) self.image_index (var 2168s))
0x001E98:
    exit
