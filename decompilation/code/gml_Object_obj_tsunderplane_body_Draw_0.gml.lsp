0x000000:
    if !(== self.hurt 0s) goto 0x000030
0x000014:
    self.siner = (+ self.siner 1s)
    goto 0x000080
0x000030:
    if !(bool (instance_exists[]:int32 self.parent)) goto 0x000068
0x000048:
    self.x = (int32 self.parent):x
    goto 0x000080
0x000068:
    self.hurt = 0s
    self.fall = 1s
0x000080:
    if !(< self.fall 3s) goto 0x00028C
0x000094:
    self.grchange = (- self.grchange 1s)
    if !(bool (instance_exists[]:int32 self.parent)) goto 0x000114
0x0000C4:
    self.curgr = (int32 self.parent):graze
    if !(!= self.prevgr self.curgr) goto 0x000104
0x0000F8:
    self.grchange = 7s
0x000104:
    self.prevgr = self.curgr
0x000114:
    self.x_color = 16777215
    if !(> self.grchange 0s) goto 0x000170
0x000138:
    self.x_color = (merge_color[]:int32 (/ self.grchange (double 10s)) (var 255s) (var 16777215))
0x000170:
    call (draw_sprite_ext[]:int32 self.alpha self.x_color self.rot (var 2s) (var 2s) (+ (+ 76s self.y) (* (sin[]:int32 (/ self.siner (double 7s))) 3s)) (+ self.x 94s) self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 self.alpha (var 16777215) self.rot (var 2s) (var 2s) (+ (+ 90s self.y) (* (sin[]:int32 (/ self.siner (double 7s))) 3s)) (+ 154s self.x) self.image_index (var 376s))
0x00028C:
    if !(== self.fall 1s) goto 0x0004B0
0x0002A0:
    self.pl = (instance_create[]:int32 (var 328s) (+ (+ self.y 60s) (random[]:int32 (var 60s))) (+ (+ self.x 60s) (random[]:int32 (var 60s))))
    push (choose[]:int32 (var 1s) (var -1s))
    stog.depth* = (int32 self.pl)
    self.gravity = 0.08d
    self.gravity_direction = 270s
    self.x = (+ self.x (* (sin[]:int32 self.siner) 2s))
    self.rot = (- self.rot 0.75d)
    call (draw_set_font[]:int32 (var 4s))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_sprite[]:int32 (+ (+ self.ystart 20s) (random[]:int32 (var 5s))) (+ (+ self.xstart 160s) (random[]:int32 (var 5s))) (var 0s) (var 18s))
    call (draw_text[]:int32 (var "B-but I#never#got to#...!") (+ (+ self.ystart 30s) (random[]:int32 (var 2s))) (+ (+ self.xstart 190s) (random[]:int32 (var 2s))))
    if !(> self.y (- 160s self.sprite_height)) goto 0x0004B0
0x0004A4:
    self.fall = 2s
0x0004B0:
    if !(== self.fall 2s) goto 0x00054C
0x0004C4:
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    call (caster_play[]:int32 (var 0.7d) (var 1.2d) (var 326s))
    call (scr_shake[]:int32 (var 2s) (var 5s) (var 5s))
    self.fall = 3s
0x00054C:
    if !(== self.fall 3s) goto 0x000720
0x000560:
    self.rot = (- self.rot 1s)
    self.g = (random[]:int32 (var 0.3d))
    call (draw_sprite_ext[]:int32 self.alpha (var 16777215) (var 0s) (+ (- 3.8d (* self.alpha 2s)) self.g) (+ (- 3.5d (* self.alpha 1.8d)) self.g) (var 240s) (+ self.x 90s) (var 0s) (var 377s))
    call (draw_sprite_ext[]:int32 self.alpha (var 16777215) self.rot (var 2s) (var 2s) (+ (+ 90s self.y) (* (sin[]:int32 (/ self.siner (double 7s))) 3s)) (+ 160s self.x) self.image_index (var 376s))
    self.alpha = (- self.alpha 0.03d)
    if !(< self.alpha 0.05d) goto 0x000720
0x000714:
    call (instance_destroy[]:int32 )
0x000720:
    if !(== self.fall 0s) goto 0x00074C
0x000734:
    push (bool (instance_exists[]:int32 self.parent))
    goto 0x000750
0x00074C:
    push 0s
0x000750:
    if !pop goto 0x0008A4
0x000754:
    if !(> (int32 self.parent):graze 0s) goto 0x0008A4
0x000774:
    self.grgr = (- (int32 self.parent):graze 1s)
    if !(> self.grgr 3s) goto 0x0007B8
0x0007AC:
    self.grgr = 3s
0x0007B8:
    call (draw_sprite_ext[]:int32 (+ 0.7d (* (sin[]:int32 (/ self.siner (double 4s))) 0.1d)) (var 16777215) self.rot (var 2s) (var 2s) (+ (+ 76s self.y) (* (sin[]:int32 (/ self.siner (double 7s))) 4s)) (+ (+ self.x 94s) (* (sin[]:int32 (/ self.siner (double 7s))) 2s)) self.grgr (var 378s))
0x0008A4:
    exit
