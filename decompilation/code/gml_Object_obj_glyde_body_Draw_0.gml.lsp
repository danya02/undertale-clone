0x000000:
    if !(== self.pause 1s) goto 0x0000AC
0x000014:
    self.siner = 0s
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1s) (- self.y 24s) (- self.x 72s) self.image_index (var 237s))
    self.x = self.xstart
    self.y = self.ystart
    goto 0x0006FC
0x0000AC:
    self.dsiner = (+ self.dsiner 1s)
    self.siner = (+ self.siner (* (cos[]:int32 (/ self.dsiner (double 24s))) 2s))
    self.y = (+ self.ystart (* (sin[]:int32 (/ self.siner (double 12s))) 8s))
    self.g = (sin[]:int32 (/ self.siner (double 6s)))
    self.gg = (sin[]:int32 (/ self.siner (double 12s)))
    if !(== self.attackmode 1s) goto 0x0001A4
0x000190:
    self.image_blend = 8421504
    goto 0x0001B4
0x0001A4:
    self.image_blend = 16777215
0x0001B4:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (- 1.7d (* self.g 0.3d)) (var 2s) (+ (+ self.y 106s) (* self.g 2s)) (+ self.x 46s) (var 0s) (var 240s))
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 238s))
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (- 1.8d (* self.g 0.2d)) (- 1.95d (* self.g 0.05d)) (+ self.y 174s) (+ self.x 82s) (var 0s) (var 239s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (- 20s (* self.gg 20s)) (var 2s) (var 2s) (+ self.y 4s) (+ (+ self.x 54s) (* self.gg 2s)) (var 0s) (var 243s))
    if !(== self.sh 1s) goto 0x0006FC
0x0003E4:
    self.sh_timer = (+ self.sh_timer self.sh_speed)
    if !(> self.sh_timer 1s) goto 0x0006FC
0x000414:
    if !(>= self.sh_timer 6s) goto 0x0004C8
0x000428:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (- 20s (* self.gg 20s)) (var 2s) (var 2s) (- (+ self.y (* self.gg 10s)) 8s) (+ (+ self.x 72s) (* self.gg 8s)) (var 0s) (var 241s))
0x0004C8:
    if !(< (floor[]:int32 (/ (- self.sh_timer 1s) (double 2s))) 4s) goto 0x0005B4
0x0004F8:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (- 20s (* self.gg 20s)) (var 2s) (var 2s) (- (+ self.y (* self.gg 10s)) 8s) (+ (+ self.x 72s) (* self.gg 8s)) (floor[]:int32 (/ (- self.sh_timer 1s) (double 2s))) (var 246s))
0x0005B4:
    if !(< self.diff 1s) goto 0x0005D4
0x0005C8:
    self.diff = 1s
0x0005D4:
    if !(>= self.sh_timer 12s) goto 0x0006FC
0x0005E8:
    self.i = 0s
    if !(< self.i self.diff) goto 0x0006F0
0x00060C:
    self.bl = (instance_create[]:int32 (var 225s) (- (+ self.y (* self.gg 10s)) 8s) (+ (+ self.x 72s) (* self.gg 8s)))
    push (+ (- 300s (* (/ (+ self.i 1s) self.diff) 60s)) (random[]:int32 (* (/ (double 1s) self.diff) 60s)))
    stog.direction* = (int32 self.bl)
    self.i = (+ self.i 1s)
    goto 0x0005F4
0x0006F0:
    self.sh_timer = -1s
0x0006FC:
    exit
