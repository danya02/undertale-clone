0x000000:
    self.xbefore = (ceil[]:int32 (/ self.x (double 20s)))
    self.xafter = (ceil[]:int32 (- (/ self.room_width (double 20s)) (/ self.x (double 20s))))
    self.ybefore = (ceil[]:int32 (/ self.y (double 20s)))
    self.yafter = (ceil[]:int32 (- (/ self.room_height (double 20s)) (/ self.y (double 20s))))
    self.i = 0s
    if !(< self.i (+ self.ybefore 1s)) goto 0x000150
0x0000EC:
    call (draw_sprite[]:int32 (- (- self.y 20s) (* self.i 20s)) self.x self.anim (var 518s))
    self.i = (+ self.i 1s)
    goto 0x0000CC
0x000150:
    self.i = 0s
    if !(< self.i (+ self.yafter 1s)) goto 0x0001E0
0x00017C:
    call (draw_sprite[]:int32 (+ (+ self.y 20s) (* self.i 20s)) self.x self.anim (var 518s))
    self.i = (+ self.i 1s)
    goto 0x00015C
0x0001E0:
    self.i = 0s
    if !(< self.i (+ self.xbefore 1s)) goto 0x000270
0x00020C:
    call (draw_sprite[]:int32 self.y (- (- self.x 20s) (* self.i 20s)) self.anim (var 516s))
    self.i = (+ self.i 1s)
    goto 0x0001EC
0x000270:
    self.i = 0s
    if !(< self.i (+ self.xafter 1s)) goto 0x000300
0x00029C:
    call (draw_sprite[]:int32 self.y (+ (+ self.x 20s) (* self.i 20s)) self.anim (var 516s))
    self.i = (+ self.i 1s)
    goto 0x00027C
0x000300:
    call (draw_sprite[]:int32 self.y self.x self.anim (var 517s))
    self.anim = (+ self.anim 1s)
    if !(> self.anim 1s) goto 0x00036C
0x000358:
    push (< self.anim 3s)
    goto 0x000370
0x00036C:
    push 0s
0x000370:
    if !pop goto 0x000470
0x000374:
    self.g = 0s
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) (+ self.y 16s) self.room_width (+ self.y 4s) (var 0s))) goto 0x0003E4
0x0003D8:
    self.g = 1s
0x0003E4:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) self.room_height (+ self.x 16s) (var 0s) (+ self.x 4s))) goto 0x000448
0x00043C:
    self.g = 1s
0x000448:
    if !(== self.g 1s) goto 0x000470
0x00045C:
    call (event_user[]:int32 (var 11s))
0x000470:
    if !(>= self.anim 7s) goto 0x000490
0x000484:
    call (instance_destroy[]:int32 )
0x000490:
    exit
