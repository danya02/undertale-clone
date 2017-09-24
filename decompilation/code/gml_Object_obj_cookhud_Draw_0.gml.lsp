0x000000:
    push -1s
    self.y = (+ 0s:view_yview 40s)
    if !(== self.con 0s) goto 0x000054
0x000034:
    push self.x
    push (>= -1s 0s:view_xview)
    goto 0x000058
0x000054:
    push 0s
0x000058:
    if !pop goto 0x000098
0x00005C:
    push -1s
    self.x = 0s:view_xview
    self.hspeed = 0s
    self.friction = 0s
    self.con = 1s
0x000098:
    if !(bool (instance_exists[]:int32 (var 1185s))) goto 0x0000D4
0x0000B0:
    self.time = 1185.timertime
    self.dist = 1185.dist
    goto 0x000104
0x0000D4:
    self.dist = (+ self.dist 1s)
    self.time = (- self.time 1s)
0x000104:
    call (draw_sprite[]:int32 self.y self.x (var 0s) (var 1685s))
    self.ballx = (* (/ (- self.maxdist self.dist) self.maxdist) 27s)
    call (draw_sprite[]:int32 (+ self.y 5s) (+ (+ self.x 62s) self.ballx) (var 0s) (var 1686s))
    self.pizzax = (* (/ (- self.inittime self.time) self.inittime) 9s)
    call (draw_sprite[]:int32 (+ self.y 30s) self.x (var 0s) (var 1687s))
    call (draw_sprite[]:int32 (+ self.y 33s) (+ self.x 62s) self.pizzax (var 1684s))
    self.thisnum = (ceil[]:int32 (/ self.time (double 30s)))
    if !(>= self.thisnum 0s) goto 0x000300
0x000280:
    self.place = 0s
    self.numadd = 10s
    if !(>= self.thisnum self.numadd) goto 0x0002FC
0x0002B0:
    if !(>= self.thisnum self.numadd) goto 0x0002FC
0x0002C8:
    self.place = (+ self.place 1s)
    self.numadd = (* self.numadd 10s)
    goto 0x0002B0
0x0002FC:
    goto 0x000318
0x000300:
    self.thisnum = 0s
    self.place = 0s
0x000318:
    self.thisnum2 = self.thisnum
    self.i = self.place
    if !(>= self.i 0s) goto 0x0003F4
0x00034C:
    stog.numnum[(int32 self.i)] = (floor[]:int32 (/ self.thisnum2 (power[]:int32 self.i (var 10s))))
    push self.thisnum2
    self.thisnum2 = (- -1s (* (int32 self.i):numnum (power[]:int32 self.i (var 10s))))
    self.i = (- self.i 1s)
    goto 0x000338
0x0003F4:
    self.i = self.place
    if !(>= self.i 0s) goto 0x0004A8
0x000418:
    call (draw_set_color[]:int32 (var 255s))
    push (+ self.y 34s)
    call (draw_sprite[]:int32 (- (+ self.x 92s) (* self.i 9s)) -1s (int32 self.i):numnum (var 1683s))
    self.i = (- self.i 1s)
    goto 0x000404
0x0004A8:
    if !(== self.finished 1s) goto 0x0004FC
0x0004BC:
    self.hspeed = (- self.hspeed 0.5d)
    if !(< self.x -110s) goto 0x0004FC
0x0004F0:
    call (instance_destroy[]:int32 )
0x0004FC:
    exit
