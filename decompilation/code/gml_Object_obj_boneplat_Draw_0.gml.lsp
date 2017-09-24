0x000000:
    self.siner = (+ self.siner 1s)
    if !(!= self.z_b 0s) goto 0x00005C
0x00002C:
    self.hspeed = (* (cos[]:int32 (* self.z_a self.siner)) self.z_b)
0x00005C:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 1s) (+ self.y 6s) (+ self.x self.len) self.y (- self.x self.len))
    call (draw_set_color[]:int32 (var 32768))
    call (draw_rectangle[]:int32 (var 1s) (- self.y 4s) (+ self.x self.len) (+ self.y 2s) (- self.x self.len))
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) (- self.y 4s) (- (+ self.x self.len) 2s) (+ self.y 2s) (+ (- self.x self.len) 2s))) goto 0x000238
0x0001BC:
    if !(>= 743.vspeed 0s) goto 0x0001F0
0x0001D0:
    push (<= 743.y (- self.y 11s))
    goto 0x0001F4
0x0001F0:
    push 0s
0x0001F4:
    if !pop goto 0x000234
0x0001F8:
    self.lock = 1s
    [obj_heart].y = (- self.y 16s)
    [obj_heart].vspeed = 0s
    [obj_heart].jumpstage = 1s
0x000234:
    goto 0x00028C
0x000238:
    if !(== self.lock 1s) goto 0x000260
0x00024C:
    push (== 743.jumpstage 1s)
    goto 0x000264
0x000260:
    push 0s
0x000264:
    if !pop goto 0x000280
0x000268:
    [obj_heart].jumpstage = 2s
    [obj_heart].vspeed = 0s
0x000280:
    self.lock = 0s
0x00028C:
    if !(== self.lock 1s) goto 0x000368
0x0002A0:
    [obj_heart].x = (+ 743.x self.hspeed)
    [obj_heart].y = (+ 743.y self.vspeed)
    push 743.x
    if !(< -5s (+ 0s:idealborder 5s)) goto 0x000320
0x000300:
    push -5s
    [obj_heart].x = (+ 0s:idealborder 5s)
0x000320:
    push 743.x
    if !(> -5s (- 1s:idealborder 16s)) goto 0x000368
0x000348:
    push -5s
    [obj_heart].x = (- 1s:idealborder 16s)
0x000368:
    if !(< self.x (- 0s self.len)) goto 0x00039C
0x000388:
    push (< self.hspeed 0s)
    goto 0x0003A0
0x00039C:
    push 0s
0x0003A0:
    if !pop goto 0x0003B0
0x0003A4:
    call (instance_destroy[]:int32 )
0x0003B0:
    if !(> self.x (+ 640s self.len)) goto 0x0003E4
0x0003D0:
    push (> self.hspeed 0s)
    goto 0x0003E8
0x0003E4:
    push 0s
0x0003E8:
    if !pop goto 0x0003F8
0x0003EC:
    call (instance_destroy[]:int32 )
0x0003F8:
    if !(> self.vspeed 0s) goto 0x00042C
0x00040C:
    push self.y
    push (> -5s 3s:idealborder)
    goto 0x000430
0x00042C:
    push 0s
0x000430:
    if !pop goto 0x000440
0x000434:
    call (instance_destroy[]:int32 )
0x000440:
    if !(== self.jud 1s) goto 0x00058C
0x000454:
    self.jtimer = (+ self.jtimer 1s)
    if !(>= self.jtimer 5s) goto 0x000494
0x000480:
    push (<= self.jtimer 20s)
    goto 0x000498
0x000494:
    push 0s
0x000498:
    if !pop goto 0x0004BC
0x00049C:
    self.hspeed = (+ self.hspeed 0.25d)
0x0004BC:
    if !(== self.jtimer 21s) goto 0x0004DC
0x0004D0:
    self.hspeed = 3s
0x0004DC:
    push self.x
    if !(> -5s (- 1s:idealborder self.len)) goto 0x000534
0x000508:
    if !(> self.hspeed 0s) goto 0x000534
0x00051C:
    self.hspeed = (* self.hspeed -1s)
0x000534:
    push self.x
    if !(< -5s (+ 0s:idealborder self.len)) goto 0x00058C
0x000560:
    if !(< self.hspeed 0s) goto 0x00058C
0x000574:
    self.hspeed = (* self.hspeed -1s)
0x00058C:
    exit
