0x000000:
    self.siner = (+ self.siner 1s)
    if !(== self.type 0s) goto 0x000088
0x00002C:
    self.starx = (- self.starx 8s)
    if !(< self.starx -80s) goto 0x000088
0x000058:
    self.starx = (+ self.starx 80s)
    self.ioff = (+ self.ioff 2s)
0x000088:
    if !(== self.type 2s) goto 0x0000F8
0x00009C:
    self.stsp = (- self.stsp 0.2d)
    if !(< self.stsp 0s) goto 0x0000DC
0x0000D0:
    self.stsp = 0s
0x0000DC:
    self.starx = (- self.starx self.stsp)
0x0000F8:
    if (== self.type 0s) goto 0x000120
0x00010C:
    push (== self.type 2s)
    goto 0x000124
0x000120:
    push 1s
0x000124:
    if !pop goto 0x00034C
0x000128:
    self.i = 0s
    if !(< self.i 30s) goto 0x000220
0x000148:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (+ (* self.siner 4s) (* (+ self.i self.ioff) 16s)) (var 2s) (var 2s) (+ self.stary (* (sin[]:int32 (/ self.siner (double 9s))) 10s)) (+ self.starx (* self.i 40s)) (var 0s) (var 2218s))
    self.i = (+ self.i 1s)
    goto 0x000134
0x000220:
    if !(bool (collision_line[]:int32 (var 1s) (var 0s) (var 1581s) (+ self.stary (* (sin[]:int32 (/ self.siner (double 9s))) 10s)) (+ self.room_width 20s) (+ self.stary (* (sin[]:int32 (/ self.siner (double 9s))) 10s)) (var -20s))) goto 0x0002D4
0x0002C0:
    call (event_user[]:int32 (var 1s))
0x0002D4:
    if !(< 1581.y (+ self.stary (* (sin[]:int32 (/ self.siner (double 9s))) 10s))) goto 0x00034C
0x000314:
    [obj_vsflowey_heart].y = (+ self.stary (* (sin[]:int32 (/ self.siner (double 9s))) 10s))
0x00034C:
    exit
