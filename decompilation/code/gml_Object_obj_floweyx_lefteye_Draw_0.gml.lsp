0x000000:
    if !(== self.con 0s) goto 0x0000C4
0x000014:
    if !(== self.frozen 0s) goto 0x000078
0x000028:
    self.siner = (+ self.siner 1s)
    if !(== self.desperate 1s) goto 0x000074
0x000054:
    self.siner = (+ self.siner 0.1d)
0x000074:
    goto 0x0000C4
0x000078:
    if !(!= self.frozen 4s) goto 0x0000C4
0x00008C:
    self.x = (- (+ self.xstart (random[]:int32 (var 6s))) (random[]:int32 (var 6s)))
0x0000C4:
    if !(== global.debug 1s) goto 0x0000FC
0x0000D8:
    if !(bool (keyboard_check_pressed[]:int32 (var 69s))) goto 0x0000FC
0x0000F0:
    self.con = 1s
0x0000FC:
    if !(== self.con 1s) goto 0x000130
0x000110:
    self.con = 3s
    stog.alarm[4s] = 2s
0x000130:
    if !(== self.con 3s) goto 0x00036C
0x000144:
    self.siner2 = (+ self.siner2 1.2d)
    self.md = 1s
    self.gr = (make_color_rgb[]:int32 (+ 170s (* (sin[]:int32 (/ (+ self.siner2 6s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 3s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ self.siner2 (double 2s))) 70s)))
    self.grgr = (make_color_rgb[]:int32 (+ 170s (* (sin[]:int32 (/ (+ self.siner2 7s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 4s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 1s) (double 2s))) 70s)))
    self.grgrgr = (make_color_rgb[]:int32 (+ 170s (* (sin[]:int32 (/ (+ self.siner2 8s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 4s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 2s) (double 2s))) 70s)))
0x00036C:
    if !(== self.con 4s) goto 0x000404
0x000380:
    self.con = 5s
    self.durara = 0s
    self.oner = (choose[]:int32 (var 1s) (var 0s))
    stog.alarm[4s] = 3s
    if !(== self.wimpy 1s) goto 0x0003F4
0x0003E0:
    stog.alarm[4s] = 3s
0x0003F4:
    self.image_blend = 16777215
0x000404:
    if !(== self.con 5s) goto 0x00083C
0x000418:
    self.opx = 0s
    self.eba = (instance_create[]:int32 (var 1636s) self.y self.x)
    push self.memorymode
    stog.memorymode* = (int32 self.eba)
    push self.durara
    stog.durara* = (int32 self.eba)
    push self.oner
    stog.oner* = (int32 self.eba)
    if !(== self.wimpy 0s) goto 0x00053C
0x0004B4:
    pushenv (int32 self.eba) 0x000538
0x0004C4:
    call (move_towards_point[]:int32 (var 12s) (+ 1581.y 8s) (+ 1581.x 8s))
    self.friction = -0.2d
    self.direction = (+ self.direction (- 18s (* self.durara 18s)))
0x000538:
    popenv 0x0004C4
0x00053C:
    if !(== self.wimpy 1s) goto 0x0005D8
0x000550:
    pushenv (int32 self.eba) 0x0005D4
0x000560:
    call (move_towards_point[]:int32 (var 5s) (+ 1581.y 8s) (+ 1581.x 8s))
    self.friction = -0.1d
    self.direction = (+ self.direction (- 30s (* self.durara 30s)))
0x0005D4:
    popenv 0x000560
0x0005D8:
    self.opx = self.op
    self.ebb = (instance_create[]:int32 (var 1636s) self.y (+ self.x self.opx))
    push self.memorymode
    stog.memorymode* = (int32 self.ebb)
    push self.durara
    stog.durara* = (int32 self.ebb)
    push self.oner
    stog.oner* = (int32 self.ebb)
    if !(== self.wimpy 0s) goto 0x00070C
0x000684:
    pushenv (int32 self.ebb) 0x000708
0x000694:
    call (move_towards_point[]:int32 (var 12s) (+ 1581.y 8s) (+ 1581.x 8s))
    self.friction = -0.2d
    self.direction = (+ self.direction (- 18s (* self.durara 18s)))
0x000708:
    popenv 0x000694
0x00070C:
    if !(== self.wimpy 1s) goto 0x0007A8
0x000720:
    pushenv (int32 self.ebb) 0x0007A4
0x000730:
    call (move_towards_point[]:int32 (var 5s) (+ 1581.y 8s) (+ 1581.x 8s))
    self.friction = -0.1d
    self.direction = (+ self.direction (- 30s (* self.durara 30s)))
0x0007A4:
    popenv 0x000730
0x0007A8:
    self.durara = (+ self.durara 1s)
    self.md = 1s
    if !(== self.gr 16777215) goto 0x00080C
0x0007E4:
    self.gr = 255s
    self.grgr = 0s
    self.grgrgr = 0s
    goto 0x00083C
0x00080C:
    self.gr = 16777215
    self.grgr = 16777215
    self.grgrgr = 16777215
0x00083C:
    if !(== self.con 6s) goto 0x0008A8
0x000850:
    self.gr = 16777215
    self.grgr = 16777215
    self.grgrgr = 16777215
    self.md = 0s
    self.image_blend = 16777215
    self.con = 0s
0x0008A8:
    if !(== self.con 10s) goto 0x000AE4
0x0008BC:
    self.siner2 = (+ self.siner2 1.2d)
    self.md = 1s
    self.gr = (make_color_rgb[]:int32 (+ 170s (* (sin[]:int32 (/ (+ self.siner2 6s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 3s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ self.siner2 (double 2s))) 70s)))
    self.grgr = (make_color_rgb[]:int32 (+ 170s (* (sin[]:int32 (/ (+ self.siner2 7s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 4s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 1s) (double 2s))) 70s)))
    self.grgrgr = (make_color_rgb[]:int32 (+ 170s (* (sin[]:int32 (/ (+ self.siner2 8s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 4s) (double 2s))) 70s)) (+ 170s (* (sin[]:int32 (/ (+ self.siner2 2s) (double 2s))) 70s)))
0x000AE4:
    self.rot = (* (sin[]:int32 (/ self.siner (double 3s))) 4s)
    self.rotx = (* (sin[]:int32 (/ self.siner (double 4s))) 3s)
    self.roty = (* (cos[]:int32 (/ self.siner (double 4s))) 3s)
    if !(== self.md 0s) goto 0x001010
0x000B7C:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend self.rot (var 1s) (var 1s) (+ self.y self.roty) (- (+ self.x (* self.rotx 2s)) 2s) self.image_index (var 2162s))
    if !(== self.desperate 0s) goto 0x000CE8
0x000C0C:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend self.rot (- 1s (* (sin[]:int32 (/ self.siner (double 2s))) 0.2d)) (- 1s (* (sin[]:int32 (/ self.siner (double 2s))) 0.2d)) (+ self.y self.roty) (- (+ self.x (* self.rotx 2.5d)) 2s) self.image_index (var 2164s))
0x000CE8:
    if !(== self.desperate 1s) goto 0x000F18
0x000CFC:
    if (== self.frozen 0s) goto 0x000D24
0x000D10:
    push (== self.frozen 4s)
    goto 0x000D28
0x000D24:
    push 1s
0x000D28:
    if !pop goto 0x000E0C
0x000D2C:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend self.rot (- 1s (* (sin[]:int32 (/ self.siner (double 2s))) 0.2d)) (- 1s (* (sin[]:int32 (/ self.siner (double 2s))) 0.2d)) (+ self.y self.roty) (- (+ self.x (* self.rotx 2.5d)) 2s) self.image_index (var 2164s))
    goto 0x000F18
0x000E0C:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend self.rot (- 0.5d (* (sin[]:int32 (/ self.siner (double 2s))) 0.1d)) (- 0.5d (* (sin[]:int32 (/ self.siner (double 2s))) 0.1d)) (+ (+ self.y self.roty) (random[]:int32 (var 2s))) (- (+ self.x (* self.rotx 2.5d)) (random[]:int32 (var 3s))) self.image_index (var 2164s))
0x000F18:
    if !(== self.desperate 2s) goto 0x001010
0x000F2C:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend self.rot (- 0.6d (* (sin[]:int32 (/ self.siner (double 2s))) 0.3d)) (- 0.6d (* (sin[]:int32 (/ self.siner (double 2s))) 0.3d)) (+ self.y self.roty) (- (+ self.x (* self.rotx 3s)) 2s) self.image_index (var 2164s))
0x001010:
    if !(== self.md 1s) goto 0x00117C
0x001024:
    call (draw_sprite_ext[]:int32 (var 1s) self.grgr self.rot (var 1s) (var 1s) (+ self.y self.roty) (- (+ self.x (* self.rotx 2s)) 2s) self.image_index (var 2163s))
    call (draw_sprite_ext[]:int32 (var 1s) self.gr self.rot (- 1s (* (sin[]:int32 (/ self.siner (double 2s))) 0.2d)) (- 1s (* (sin[]:int32 (/ self.siner (double 2s))) 0.2d)) (+ self.y self.roty) (- (+ self.x (* self.rotx 2.5d)) 2s) self.image_index (var 2165s))
0x00117C:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend self.rot (var 1s) (var 1s) (+ self.y self.roty) (+ self.x self.rotx) self.image_index (var 2159s))
    self.op = 250s
    if !(== self.md 0s) goto 0x0016CC
0x001208:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (- self.rot) (var 1s) (var -1s) (+ self.y self.roty) (+ (- (+ self.x self.op) (* self.rotx 2s)) 2s) self.image_index (var 2162s))
    if !(== self.desperate 0s) goto 0x001394
0x0012A8:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (- self.rot) (- 1s (* (cos[]:int32 (/ self.siner (double 2s))) 0.2d)) (+ -1s (* (cos[]:int32 (/ self.siner (double 2s))) 0.2d)) (+ self.y self.roty) (+ (- (+ self.x self.op) (* self.rotx 2.5d)) 2s) self.image_index (var 2164s))
0x001394:
    if !(== self.desperate 1s) goto 0x0015C4
0x0013A8:
    if (== self.frozen 0s) goto 0x0013D0
0x0013BC:
    push (== self.frozen 4s)
    goto 0x0013D4
0x0013D0:
    push 1s
0x0013D4:
    if !pop goto 0x0014C8
0x0013D8:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (- self.rot) (- 1s (* (cos[]:int32 (/ self.siner (double 2s))) 0.2d)) (+ -1s (* (cos[]:int32 (/ self.siner (double 2s))) 0.2d)) (+ self.y self.roty) (+ (- (+ self.x self.op) (* self.rotx 2.5d)) 2s) self.image_index (var 2164s))
    goto 0x0015C4
0x0014C8:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (- self.rot) (- 0.5d (* (cos[]:int32 (/ self.siner (double 2s))) 0.1d)) (+ -0.5d (* (cos[]:int32 (/ self.siner (double 2s))) 0.1d)) (+ self.y self.roty) (+ (- (+ self.x self.op) (* self.rotx 2.5d)) 2s) self.image_index (var 2164s))
0x0015C4:
    if !(== self.desperate 2s) goto 0x0016CC
0x0015D8:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (- self.rot) (- 0.6d (* (cos[]:int32 (/ self.siner (double 2s))) 0.3d)) (+ -0.6d (* (cos[]:int32 (/ self.siner (double 2s))) 0.3d)) (+ self.y self.roty) (+ (- (+ self.x self.op) (* self.rotx 3s)) 2s) self.image_index (var 2164s))
0x0016CC:
    if !(== self.md 1s) goto 0x001858
0x0016E0:
    call (draw_sprite_ext[]:int32 (var 1s) self.grgr (- self.rot) (var 1s) (var -1s) (+ self.y self.roty) (+ (- (+ self.x self.op) (* self.rotx 2s)) 2s) self.image_index (var 2163s))
    call (draw_sprite_ext[]:int32 (var 1s) self.gr (- self.rot) (- 1s (* (cos[]:int32 (/ self.siner (double 2s))) 0.2d)) (+ -1s (* (cos[]:int32 (/ self.siner (double 2s))) 0.2d)) (+ self.y self.roty) (+ (- (+ self.x self.op) (* self.rotx 2.5d)) 2s) self.image_index (var 2165s))
0x001858:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (- self.rot) (var 1s) (var -1s) (+ self.y self.roty) (- (+ self.x self.op) self.rotx) self.image_index (var 2159s))
0x0018D4:
    exit
