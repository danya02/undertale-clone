0x000000:
    if !(== self.active 1s) goto 0x000328
0x000014:
    self.warning = (- self.warning 1s)
    if !(> self.warning 0s) goto 0x0002FC
0x000040:
    if !(== self.dir 0s) goto 0x0000D8
0x000054:
    push -5s
    self.wx = (+ 0s:idealborder 8s)
    push -5s
    self.wx2 = (- 1s:idealborder 3s)
    push -5s
    self.wy = (- 3s:idealborder 3s)
    push -5s
    self.wy2 = (- 3s:idealborder self.height)
0x0000D8:
    if !(== self.dir 1s) goto 0x000170
0x0000EC:
    push -5s
    self.wx = (- 1s:idealborder self.height)
    push -5s
    self.wx2 = (- 1s:idealborder 3s)
    push -5s
    self.wy = (+ 2s:idealborder 8s)
    push -5s
    self.wy2 = (- 3s:idealborder 3s)
0x000170:
    if !(== self.dir 2s) goto 0x000210
0x000184:
    push -5s
    self.wx = (+ 0s:idealborder 8s)
    push -5s
    self.wx2 = (- 1s:idealborder 3s)
    push -5s
    self.wy = (+ 2s:idealborder 6s)
    push -5s
    self.wy2 = (+ (+ 2s:idealborder 5s) self.height)
0x000210:
    if !(== self.dir 3s) goto 0x0002B0
0x000224:
    push -5s
    self.wx = (+ (+ 0s:idealborder 5s) self.height)
    push -5s
    self.wx2 = (+ 0s:idealborder 8s)
    push -5s
    self.wy = (+ 2s:idealborder 8s)
    push -5s
    self.wy2 = (- 3s:idealborder 3s)
0x0002B0:
    call (draw_set_color[]:int32 (var 255s))
    call (draw_rectangle[]:int32 (var 1s) self.wy2 self.wx2 self.wy self.wx)
    goto 0x000328
0x0002FC:
    call (draw_self_border[]:int32 )
    if !(== self.con 1s) goto 0x000328
0x00031C:
    self.con = 2s
0x000328:
    if !(== self.con 2s) goto 0x000A34
0x00033C:
    if !(== self.timer 0s) goto 0x000364
0x000350:
    call (snd_play[]:int32 (var 14s))
0x000364:
    if !(>= self.timer 0s) goto 0x00038C
0x000378:
    push (<= self.timer 2s)
    goto 0x000390
0x00038C:
    push 0s
0x000390:
    if !pop goto 0x0004A4
0x000394:
    if !(== self.dir 0s) goto 0x0003D8
0x0003A8:
    self.y = (- self.y (floor[]:int32 (/ self.height (double 3s))))
0x0003D8:
    if !(== self.dir 1s) goto 0x00041C
0x0003EC:
    self.x = (- self.x (floor[]:int32 (/ self.height (double 3s))))
0x00041C:
    if !(== self.dir 2s) goto 0x000460
0x000430:
    self.y = (+ self.y (floor[]:int32 (/ self.height (double 3s))))
0x000460:
    if !(== self.dir 3s) goto 0x0004A4
0x000474:
    self.x = (+ self.x (floor[]:int32 (/ self.height (double 3s))))
0x0004A4:
    if !(== self.timer 3s) goto 0x0005C8
0x0004B8:
    if !(== self.dir 0s) goto 0x0004FC
0x0004CC:
    self.cosm_y = (- self.cosm_y (floor[]:int32 (/ self.height (double 5s))))
0x0004FC:
    if !(== self.dir 1s) goto 0x000540
0x000510:
    self.cosm_x = (- self.cosm_x (floor[]:int32 (/ self.height (double 5s))))
0x000540:
    if !(== self.dir 2s) goto 0x000584
0x000554:
    self.cosm_y = (+ self.cosm_y (floor[]:int32 (/ self.height (double 5s))))
0x000584:
    if !(== self.dir 3s) goto 0x0005C8
0x000598:
    self.cosm_x = (+ self.cosm_x (floor[]:int32 (/ self.height (double 5s))))
0x0005C8:
    if !(== self.timer 4s) goto 0x0005F4
0x0005DC:
    self.cosm_x = 0s
    self.cosm_y = 0s
0x0005F4:
    if !(>= self.retain 0s) goto 0x00085C
0x000608:
    if !(>= self.timer 4s) goto 0x000630
0x00061C:
    push (<= self.timer 8s)
    goto 0x000634
0x000630:
    push 0s
0x000634:
    if !pop goto 0x00085C
0x000638:
    self.rr = (- (random[]:int32 self.racket) (random[]:int32 self.racket))
    self.rr2 = (- (random[]:int32 self.racket) (random[]:int32 self.racket))
    if !(> self.racket 1s) goto 0x0006BC
0x0006A4:
    self.racket = (- self.racket 1s)
0x0006BC:
    if !(== self.timer 9s) goto 0x0006DC
0x0006D0:
    self.rr = 0s
0x0006DC:
    if !(== self.timer 9s) goto 0x0006FC
0x0006F0:
    self.rr2 = 0s
0x0006FC:
    if !(== self.dir 0s) goto 0x000754
0x000710:
    self.y = (+ (- self.ideal_y self.height) self.rr)
    self.x = (+ self.ideal_x self.rr2)
0x000754:
    if !(== self.dir 1s) goto 0x0007AC
0x000768:
    self.y = (+ self.ideal_y self.rr)
    self.x = (+ (- self.ideal_x self.height) self.rr2)
0x0007AC:
    if !(== self.dir 2s) goto 0x000804
0x0007C0:
    self.y = (+ (+ self.ideal_y self.height) self.rr)
    self.x = (+ self.ideal_x self.rr2)
0x000804:
    if !(== self.dir 3s) goto 0x00085C
0x000818:
    self.y = (+ self.ideal_y self.rr)
    self.x = (+ (+ self.ideal_x self.height) self.rr2)
0x00085C:
    if !(>= self.timer (+ 9s self.retain)) goto 0x000A1C
0x00087C:
    if !(== self.dir 0s) goto 0x0008E4
0x000890:
    self.y = (+ self.y (floor[]:int32 (/ self.height (double 4s))))
    if !(> self.y self.ideal_y) goto 0x0008E4
0x0008D8:
    call (instance_destroy[]:int32 )
0x0008E4:
    if !(== self.dir 1s) goto 0x00094C
0x0008F8:
    self.x = (+ self.x (floor[]:int32 (/ self.height (double 4s))))
    if !(> self.x self.ideal_x) goto 0x00094C
0x000940:
    call (instance_destroy[]:int32 )
0x00094C:
    if !(== self.dir 2s) goto 0x0009B4
0x000960:
    self.y = (- self.y (floor[]:int32 (/ self.height (double 4s))))
    if !(< self.y self.ideal_y) goto 0x0009B4
0x0009A8:
    call (instance_destroy[]:int32 )
0x0009B4:
    if !(== self.dir 3s) goto 0x000A1C
0x0009C8:
    self.x = (- self.x (floor[]:int32 (/ self.height (double 4s))))
    if !(< self.x self.ideal_x) goto 0x000A1C
0x000A10:
    call (instance_destroy[]:int32 )
0x000A1C:
    self.timer = (+ self.timer 1s)
0x000A34:
    exit
