0x000000:
    if !(== self.con 0s) goto 0x000034
0x000014:
    push self.y
    push (>= -1s 0s:view_yview)
    goto 0x000038
0x000034:
    push 0s
0x000038:
    if !pop goto 0x000078
0x00003C:
    push -1s
    self.y = 0s:view_yview
    self.vspeed = 0s
    self.friction = 0s
    self.con = 1s
0x000078:
    if !(bool (instance_exists[]:int32 (var 1210s))) goto 0x0000A4
0x000090:
    self.time = 1210.cooltimer
    goto 0x0000BC
0x0000A4:
    self.time = (- self.time 1s)
0x0000BC:
    call (draw_sprite[]:int32 (+ self.y 20s) self.x (var 0s) (var 1744s))
    if !(bool (instance_exists[]:int32 (var 1212s))) goto 0x000118
0x000108:
    self.orange = 1212.orange
0x000118:
    call (draw_sprite[]:int32 (+ self.y 24s) (+ self.x 28s) (+ self.orange 1s) (var 1741s))
    self.thisnum = (ceil[]:int32 (/ self.time (double 30s)))
    if !(>= self.thisnum 0s) goto 0x000214
0x000194:
    self.place = 0s
    self.numadd = 10s
    if !(>= self.thisnum self.numadd) goto 0x000210
0x0001C4:
    if !(>= self.thisnum self.numadd) goto 0x000210
0x0001DC:
    self.place = (+ self.place 1s)
    self.numadd = (* self.numadd 10s)
    goto 0x0001C4
0x000210:
    goto 0x00022C
0x000214:
    self.thisnum = 0s
    self.place = 0s
0x00022C:
    self.thisnum2 = self.thisnum
    self.i = self.place
    if !(>= self.i 0s) goto 0x000308
0x000260:
    stog.numnum[(int32 self.i)] = (floor[]:int32 (/ self.thisnum2 (power[]:int32 self.i (var 10s))))
    push self.thisnum2
    self.thisnum2 = (- -1s (* (int32 self.i):numnum (power[]:int32 self.i (var 10s))))
    self.i = (- self.i 1s)
    goto 0x00024C
0x000308:
    self.i = self.place
    if !(>= self.i 0s) goto 0x0003BC
0x00032C:
    call (draw_set_color[]:int32 (var 255s))
    push (+ self.y 25s)
    call (draw_sprite[]:int32 (- (+ self.x 92s) (* self.i 9s)) -1s (int32 self.i):numnum (var 1683s))
    self.i = (- self.i 1s)
    goto 0x000318
0x0003BC:
    if !(== self.finished 1s) goto 0x000410
0x0003D0:
    self.vspeed = (- self.vspeed 0.5d)
    if !(< self.y -50s) goto 0x000410
0x000404:
    call (instance_destroy[]:int32 )
0x000410:
    exit
