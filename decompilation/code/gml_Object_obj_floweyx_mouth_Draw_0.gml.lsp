0x000000:
    self.onoff = (+ self.onoff 1s)
    if !(> self.onoff 3s) goto 0x000038
0x00002C:
    self.onoff = 0s
0x000038:
    call (draw_set_color[]:int32 (var 0s))
    if !(== (instance_exists[]:int32 (var 1639s)) 0s) goto 0x000198
0x000068:
    if !(== self.mode 0s) goto 0x0000C8
0x00007C:
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 110s) (+ self.x 60s) (+ self.y 8s) self.x)
0x0000C8:
    if !(== self.mode 1s) goto 0x000130
0x0000DC:
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 110s) (+ self.x 70s) (+ self.y 8s) (- self.x 10s))
0x000130:
    if !(== self.mode 2s) goto 0x000198
0x000144:
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 110s) (+ self.x 78s) (+ self.y 8s) (- self.x 18s))
0x000198:
    if !(== self.con 3s) goto 0x0001D8
0x0001AC:
    self.con = 4s
    self.cntr = 0s
    stog.alarm[4s] = 40s
0x0001D8:
    if !(== self.con 4s) goto 0x0002A0
0x0001EC:
    self.cntr = (+ self.cntr 1s)
    call (draw_sprite_ext[]:int32 (/ (- self.cntr (* self.onoff 5s)) (double 15s)) (var 16777215) (var 0s) (var 1s) (var 1s) (- 202s (* (sin[]:int32 (/ self.siner (double 4s))) 3s)) (var 274s) (var 0s) (var 2244s))
0x0002A0:
    if !(== self.con 5s) goto 0x000338
0x0002B4:
    self.laugh = 1s
    self.mode = 2s
    self.b = (instance_create[]:int32 (var 1639s) (var 214s) (var 271s))
    push (+ self.depth 1s)
    stog.depth* = (int32 self.b)
    self.con = 6s
    stog.alarm[4s] = 25s
0x000338:
    if !(== self.con 7s) goto 0x000370
0x00034C:
    self.laugh = 0s
    self.mode = 0s
    self.con = 0s
0x000370:
    if !(== self.frozen 0s) goto 0x0003F0
0x000384:
    self.siner = (+ self.siner 1s)
    if !(== self.desperate 1s) goto 0x0003D0
0x0003B0:
    self.siner = (+ self.siner 0.4d)
0x0003D0:
    self.anim = (+ self.anim 0.25d)
0x0003F0:
    self.op = 60s
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 1s) (var 1s) self.y (+ self.x 10s) self.image_index (var 2180s))
    if !(== self.mode 0s) goto 0x00052C
0x00046C:
    if !(> self.rotbonus 0s) goto 0x00049C
0x000480:
    self.rotbonus = (- self.rotbonus 5s)
    goto 0x0004A8
0x00049C:
    self.rotbonus = 0s
0x0004A8:
    if !(> self.xbonus 0s) goto 0x0004D8
0x0004BC:
    self.xbonus = (- self.xbonus 2s)
    goto 0x0004E4
0x0004D8:
    self.xbonus = 0s
0x0004E4:
    if !(< self.ybonus 0s) goto 0x000514
0x0004F8:
    self.ybonus = (+ self.ybonus 2s)
    goto 0x000520
0x000514:
    self.ybonus = 0s
0x000520:
    self.ybonus = 0s
0x00052C:
    if !(== self.mode 1s) goto 0x0005C4
0x000540:
    if !(> self.ybonus -4s) goto 0x00056C
0x000554:
    self.ybonus = (- self.ybonus 2s)
0x00056C:
    if !(< self.xbonus 6s) goto 0x000598
0x000580:
    self.xbonus = (+ self.xbonus 2s)
0x000598:
    if !(< self.rotbonus 15s) goto 0x0005C4
0x0005AC:
    self.rotbonus = (+ self.rotbonus 5s)
0x0005C4:
    if !(== self.mode 2s) goto 0x00065C
0x0005D8:
    if !(> self.ybonus -8s) goto 0x000604
0x0005EC:
    self.ybonus = (- self.ybonus 4s)
0x000604:
    if !(< self.xbonus 6s) goto 0x000630
0x000618:
    self.xbonus = (+ self.xbonus 2s)
0x000630:
    if !(< self.rotbonus 24s) goto 0x00065C
0x000644:
    self.rotbonus = (+ self.rotbonus 8s)
0x00065C:
    if !(== self.desperate 0s) goto 0x000AC8
0x000670:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (- (- 0s (cos[]:int32 (/ self.siner (double 2s)))) self.rotbonus) (+ 1s (* (sin[]:int32 (/ self.siner (double 4s))) 0.03d)) (var 1s) (+ (- (+ self.y (cos[]:int32 (/ self.siner (double 2s)))) 5s) self.ybonus) (+ (- (+ self.x (* (sin[]:int32 (/ self.siner (double 2s))) 3s)) 20s) self.xbonus) self.image_index (var 2177s))
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (- (- 0s (cos[]:int32 (/ self.siner (double 2s)))) self.rotbonus) (+ 1s (* (sin[]:int32 (/ self.siner (double 4s))) 0.03d)) (var 1s) (+ (+ self.y (cos[]:int32 (/ self.siner (double 2s)))) self.ybonus) (+ (+ self.x (* (sin[]:int32 (/ self.siner (double 2s))) 3s)) self.xbonus) self.image_index (var 2178s))
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (+ (+ 0s (cos[]:int32 (/ self.siner (double 2s)))) self.rotbonus) (+ 1s (* (sin[]:int32 (/ self.siner (double 4s))) 0.03d)) (var -1s) (+ (- (+ self.y (cos[]:int32 (/ self.siner (double 2s)))) 5s) self.ybonus) (- (+ (+ (- self.x (* (sin[]:int32 (/ self.siner (double 2s))) 3s)) self.op) 20s) self.xbonus) self.image_index (var 2177s))
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (+ (+ 0s (cos[]:int32 (/ self.siner (double 2s)))) self.rotbonus) (+ 1s (* (sin[]:int32 (/ self.siner (double 4s))) 0.03d)) (var -1s) (+ (+ self.y (cos[]:int32 (/ self.siner (double 2s)))) self.ybonus) (- (- (+ self.x self.op) (* (sin[]:int32 (/ self.siner (double 2s))) 3s)) self.xbonus) self.image_index (var 2178s))
0x000AC8:
    if !(== self.desperate 1s) goto 0x000F34
0x000ADC:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (- (- 0s (cos[]:int32 (/ self.siner (double 2s)))) self.rotbonus) (+ 1s (* (sin[]:int32 (/ self.siner (double 4s))) 0.06d)) (var 1s) (+ (- (+ self.y (cos[]:int32 (/ self.siner (double 2s)))) 5s) self.ybonus) (+ (- (+ self.x (* (sin[]:int32 (/ self.siner (double 2s))) 4s)) 20s) self.xbonus) self.image_index (var 2177s))
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (- (- 0s (cos[]:int32 (/ self.siner (double 2s)))) self.rotbonus) (+ 1s (* (sin[]:int32 (/ self.siner (double 4s))) 0.05d)) (var 1s) (+ (+ self.y (cos[]:int32 (/ self.siner (double 2s)))) self.ybonus) (+ (+ self.x (* (sin[]:int32 (/ self.siner (double 2s))) 4s)) self.xbonus) self.image_index (var 2178s))
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (+ (+ 0s (cos[]:int32 (/ self.siner (double 2s)))) self.rotbonus) (+ 1s (* (sin[]:int32 (/ self.siner (double 4s))) 0.06d)) (var -1s) (+ (- (+ self.y (cos[]:int32 (/ self.siner (double 2s)))) 5s) self.ybonus) (- (+ (+ (- self.x (* (sin[]:int32 (/ self.siner (double 2s))) 4s)) self.op) 20s) self.xbonus) self.image_index (var 2177s))
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (+ (+ 0s (cos[]:int32 (/ self.siner (double 2s)))) self.rotbonus) (+ 1s (* (sin[]:int32 (/ self.siner (double 4s))) 0.05d)) (var -1s) (+ (+ self.y (cos[]:int32 (/ self.siner (double 2s)))) self.ybonus) (- (- (+ self.x self.op) (* (sin[]:int32 (/ self.siner (double 2s))) 4s)) self.xbonus) self.image_index (var 2178s))
0x000F34:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (+ 0s (cos[]:int32 (/ self.siner (double 2s)))) (+ 1s (* (sin[]:int32 (/ self.siner (double 4s))) 0.03d)) (var 1s) (- self.y 10s) (+ (- (+ self.x (* (sin[]:int32 (/ self.siner (double 2s))) 3s)) 5s) self.xbonus) self.anim (var 2179s))
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (+ 0s (cos[]:int32 (/ self.siner (double 2s)))) (+ 1s (* (sin[]:int32 (/ self.siner (double 4s))) 0.03d)) (var -1s) (- self.y 10s) (- (+ (- (+ self.x self.op) (* (sin[]:int32 (/ self.siner (double 2s))) 3s)) 5s) self.xbonus) self.anim (var 2179s))
    if !(== global.debug 1s) goto 0x00115C
0x001114:
    if !(bool (keyboard_check_pressed[]:int32 (var 16s))) goto 0x00115C
0x00112C:
    if !(== self.mode 0s) goto 0x001150
0x001140:
    self.mode = 1s
    goto 0x00115C
0x001150:
    self.mode = 0s
0x00115C:
    if !(== global.debug 1s) goto 0x0011B8
0x001170:
    if !(bool (keyboard_check_pressed[]:int32 (var 17s))) goto 0x0011B8
0x001188:
    if !(== self.laugh 0s) goto 0x0011AC
0x00119C:
    self.laugh = 1s
    goto 0x0011B8
0x0011AC:
    self.laugh = 0s
0x0011B8:
    if !(== self.laugh 1s) goto 0x001398
0x0011CC:
    self.siner = 0s
    self.laughtimer = (+ self.laughtimer 1s)
    if !(== self.laughtimer 1s) goto 0x001228
0x001204:
    self.rotbonus = -3s
    self.xbonus = -1s
    self.ybonus = 0s
0x001228:
    if !(== self.laughtimer 2s) goto 0x001260
0x00123C:
    self.rotbonus = 6s
    self.xbonus = 2s
    self.ybonus = -1s
0x001260:
    if !(== self.laughtimer 3s) goto 0x001298
0x001274:
    self.rotbonus = 18s
    self.xbonus = 4s
    self.ybonus = -3s
0x001298:
    if !(== self.laughtimer 4s) goto 0x0012D0
0x0012AC:
    self.rotbonus = 20s
    self.xbonus = 6s
    self.ybonus = -4s
0x0012D0:
    if !(== self.laughtimer 5s) goto 0x001308
0x0012E4:
    self.rotbonus = 12s
    self.xbonus = 4s
    self.ybonus = -3s
0x001308:
    if !(== self.laughtimer 6s) goto 0x001340
0x00131C:
    self.rotbonus = 6s
    self.xbonus = 2s
    self.ybonus = -2s
0x001340:
    if !(== self.laughtimer 7s) goto 0x001378
0x001354:
    self.rotbonus = 0s
    self.xbonus = 0s
    self.ybonus = 0s
0x001378:
    if !(== self.laughtimer 6s) goto 0x001398
0x00138C:
    self.laughtimer = 1s
0x001398:
    exit
