0x000000:
    if !(== self.gowhite 1s) goto 0x000344
0x000014:
    self.wht = (+ self.wht 0.2d)
    call (draw_set_alpha[]:int32 self.wht)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
    if !(> self.wht 1.5d) goto 0x000344
0x0000C4:
    self.gowhite = 2s
    self.fmusic = (caster_load[]:int32 (var "music/yourbestfriend_3.ogg"))
    self.al2 = (instance_create[]:int32 (var 1680s) (var 0s) (var 410s))
    push 4s
    stog.type* = (int32 self.al2)
    pushenv (int32 self.al) 0x000148
0x00013C:
    call (instance_destroy[]:int32 )
0x000148:
    popenv 0x00013C
0x00014C:
    self.und2 = (instance_create[]:int32 (var 1680s) (var 42s) (var 110s))
    push 3s
    stog.type* = (int32 self.und2)
    pushenv (int32 self.und) 0x0001A8
0x00019C:
    call (instance_destroy[]:int32 )
0x0001A8:
    popenv 0x00019C
0x0001AC:
    self.asg2 = (instance_create[]:int32 (var 1680s) (var 10s) (var -128s))
    push 5s
    stog.type* = (int32 self.asg2)
    pushenv (int32 self.asg) 0x000208
0x0001FC:
    call (instance_destroy[]:int32 )
0x000208:
    popenv 0x0001FC
0x00020C:
    self.sans2 = (instance_create[]:int32 (var 1680s) (var 56s) (var 290s))
    push 2s
    stog.type* = (int32 self.sans2)
    pushenv (int32 self.sans) 0x000268
0x00025C:
    call (instance_destroy[]:int32 )
0x000268:
    popenv 0x00025C
0x00026C:
    self.pap2 = (instance_create[]:int32 (var 1680s) (var 0s) (var 513s))
    push 1s
    stog.type* = (int32 self.pap2)
    pushenv (int32 self.pap) 0x0002C8
0x0002BC:
    call (instance_destroy[]:int32 )
0x0002C8:
    popenv 0x0002BC
0x0002CC:
    self.tor2 = (instance_create[]:int32 (var 1680s) (var 48s) (var 185s))
    pushenv (int32 self.tor) 0x000310
0x000304:
    call (instance_destroy[]:int32 )
0x000310:
    popenv 0x000304
0x000314:
    pushenv 1668s 0x000340
0x00031C:
    self.y = (- self.y 100s)
    self.shimmy = 1s
0x000340:
    popenv 0x00031C
0x000344:
    if !(== self.gowhite 2s) goto 0x000420
0x000358:
    self.wht = (- self.wht 0.2d)
    call (draw_set_alpha[]:int32 self.wht)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
    if !(< self.wht 0.04d) goto 0x000420
0x000408:
    self.wht = 0s
    self.gowhite = 0s
0x000420:
    if !(== self.border_d 1s) goto 0x000574
0x000434:
    self.cx = 310s
    self.cx2 = 330s
    self.cy = 290s
    self.cy2 = 310s
    [obj_heart].x = (+ self.cx 2s)
    [obj_heart].y = (+ self.cy 2s)
    [obj_heart].movement = 0s
    call (draw_set_color[]:int32 (var 16777215))
    self.cc = 0s
    if (<= 4s 0) goto 0x000570
0x0004DC:
    push 4s
    call (draw_rectangle[]:int32 (var 1s) (+ self.cy2 self.cc) (+ self.cx2 self.cc) (- self.cy self.cc) (- self.cx self.cc))
    self.cc = (+ self.cc 1s)
    if (bool (- pop 1)) goto 0x0004DC
0x000570:
    push (- pop 1)
    pop
0x000574:
    if !(== self.trickblack 1s) goto 0x000624
0x000588:
    push (- self.depth 10s)
    stog.depth* = (int32 self.flowey)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_set_alpha[]:int32 (var 0.5d))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
0x000624:
    if !(== self.lastwhite 1s) goto 0x0007C8
0x000638:
    stog.view_xview[0s] = (- (+ 0s (random[]:int32 (+ 2s (* self.wht 2s)))) (random[]:int32 (- 2s (* self.wht 2s))))
    stog.view_yview[0s] = (- (+ 0s (random[]:int32 (+ 2s (* self.wht 2s)))) (random[]:int32 (- 2s (* self.wht 2s))))
    self.wht = (+ self.wht 0.003d)
    call (draw_set_alpha[]:int32 self.wht)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
    if !(> self.wht 1.4d) goto 0x0007C8
0x0007A0:
    call (caster_free[]:int32 (var -3s))
    call (room_goto[]:int32 (var 330s))
0x0007C8:
    if !(> self.leg 0s) goto 0x000928
0x0007DC:
    if !(== self.leg 1s) goto 0x000840
0x0007F0:
    if !(> self.legx (+ self.room_width 50s)) goto 0x000828
0x000810:
    self.legx = (- self.legx 10s)
0x000828:
    self.leg_r = (+ self.leg_r 1s)
0x000840:
    if !(== self.leg 2s) goto 0x0008B4
0x000854:
    self.leg_r = (+ self.leg_r 1s)
    if !(< self.legx (+ self.room_width 200s)) goto 0x0008A8
0x00088C:
    self.legx = (+ self.legx 10s)
    goto 0x0008B4
0x0008A8:
    self.leg = 0s
0x0008B4:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (sin[]:int32 (/ self.leg_r (double 4s))) 6s) (var 2s) (var 2s) (var 180s) self.legx (var 0s) (var 502s))
0x000928:
    exit
