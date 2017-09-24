0x000000:
    self.siner = (+ self.siner 1s)
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 84s) (+ self.x 26s) (floor[]:int32 (/ self.siner (double 6s))) (var 581s))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (- self.y (* (sin[]:int32 (/ self.siner (double 16s))) 4s)) self.x (floor[]:int32 (/ self.siner (double 6s))) (var 579s))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 50s) (* (sin[]:int32 (/ self.siner (double 16s))) 10s)) (- self.x 16s) (floor[]:int32 (/ self.siner (double 6s))) (var 577s))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var -2s) (+ (+ self.y 50s) (* (sin[]:int32 (/ self.siner (double 16s))) 10s)) (+ self.x 106s) (floor[]:int32 (/ self.siner (double 6s))) (var 577s))
    if !(>= self.boat 1s) goto 0x000320
0x000284:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (+ (- self.y (* (sin[]:int32 (/ self.siner (double 16s))) 4s)) 20s) self.x (floor[]:int32 (/ self.siner (double 6s))) (var 578s))
0x000320:
    if !(== self.boat 2s) goto 0x000364
0x000334:
    if !(< self.x 320s) goto 0x000358
0x000348:
    self.hspeed = -5s
    goto 0x000364
0x000358:
    self.hspeed = 5s
0x000364:
    if !(== self.fight 1s) goto 0x0004A8
0x000378:
    if !(> (instance_number[]:int32 (var 453s)) 1s) goto 0x000400
0x000394:
    if !(== self.f_timer 0s) goto 0x0003BC
0x0003A8:
    call (event_user[]:int32 (var 0s))
0x0003BC:
    if !(== self.f_timer 60s) goto 0x0003FC
0x0003D0:
    call (event_user[]:int32 (var 0s))
    self.f_timer = -1s
    self.fight = 0s
0x0003FC:
    goto 0x000490
0x000400:
    if !(== self.f_timer 0s) goto 0x000428
0x000414:
    call (event_user[]:int32 (var 0s))
0x000428:
    if !(== self.f_timer 10s) goto 0x000450
0x00043C:
    call (event_user[]:int32 (var 0s))
0x000450:
    if !(== self.f_timer 20s) goto 0x000490
0x000464:
    call (event_user[]:int32 (var 0s))
    self.f_timer = -1s
    self.fight = 0s
0x000490:
    self.f_timer = (+ self.f_timer 1s)
0x0004A8:
    if !(< self.x -120s) goto 0x0004C8
0x0004BC:
    call (instance_destroy[]:int32 )
0x0004C8:
    if !(> self.x 800s) goto 0x0004E8
0x0004DC:
    call (instance_destroy[]:int32 )
0x0004E8:
    exit
