0x000000:
    call (draw_set_color[]:int32 (var 0s))
    push (var 0s)
    call (draw_rectangle[]:int32 (+ self.y 18s) -5s (+ 1s:idealborder 2s) (+ self.y 2s) (+ self.segx 18s))
    call (draw_set_color[]:int32 (var 16777215))
    push (var 0s)
    call (draw_rectangle[]:int32 (+ self.y 16s) -5s 1s:idealborder (+ self.y 4s) (+ self.segx 20s))
    self.i = (+ self.segx 20s)
    push self.i
    if !(< -5s 1s:idealborder) goto 0x000188
0x000114:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_line_width[]:int32 (var 2s) (+ self.y 18s) self.i (+ self.y 2s) self.i)
    self.i = (+ self.i 20s)
    goto 0x0000F4
0x000188:
    self.anim = (+ self.anim 0.25d)
    if !(== self.on 0s) goto 0x0001F4
0x0001BC:
    call (draw_sprite[]:int32 self.y (+ self.segx self.yseg) self.anim (var 544s))
0x0001F4:
    if !(== self.on 1s) goto 0x000240
0x000208:
    call (draw_sprite[]:int32 self.y (+ self.segx self.yseg) self.anim (var 545s))
0x000240:
    call (draw_sprite[]:int32 self.y self.segx self.image_index self.sprite_index)
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 14s) (+ (+ self.segx self.yseg) 20s) self.y (+ self.segx self.yseg))) goto 0x0003B0
0x0002DC:
    call (snd_play[]:int32 (var 128s))
    self.g = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 14s) (+ (+ self.segx self.yseg) 20s) self.y (+ self.segx self.yseg))
    pushenv (int32 self.g) 0x00037C
0x000370:
    call (instance_destroy[]:int32 )
0x00037C:
    popenv 0x000370
0x000380:
    if !(== self.on 0s) goto 0x0003A4
0x000394:
    self.on = 1s
    goto 0x0003B0
0x0003A4:
    self.on = 0s
0x0003B0:
    push (var 1s)
    if !(bool (collision_rectangle[]:int32 (var 0s) (var 739s) (+ self.y 10s) -5s 1s:idealborder (- self.y 4s) (+ self.segx 3s))) goto 0x0004EC
0x000418:
    push (var 1s)
    self.g = (collision_rectangle[]:int32 (var 0s) (var 739s) (+ self.y 10s) -5s 1s:idealborder (- self.y 4s) (+ self.segx 3s))
    pushenv (int32 self.g) 0x00049C
0x000490:
    call (instance_destroy[]:int32 )
0x00049C:
    popenv 0x000490
0x0004A0:
    self.vspeed = (+ self.vspeed 0.75d)
    self.y = (+ self.y 3s)
    call (snd_play[]:int32 (var 110s))
0x0004EC:
    push (var 1s)
    if !(bool (collision_rectangle[]:int32 (var 0s) (var 743s) (+ self.y 14s) -5s 1s:idealborder (+ self.y 4s) (+ self.segx 5s))) goto 0x000568
0x000554:
    call (event_user[]:int32 (var 11s))
0x000568:
    if !(== self.on 1s) goto 0x000628
0x00057C:
    push self.segx
    if !(< -5s (+ 1s:idealborder 5s)) goto 0x0005FC
0x0005A4:
    if !(<= self.xm 0s) goto 0x0005C4
0x0005B8:
    self.xm = 2s
0x0005C4:
    self.xm = (+ self.xm 2s)
    self.segx = (+ self.segx self.xm)
    goto 0x000628
0x0005FC:
    self.xm = 0s
    push -5s
    self.segx = (+ 1s:idealborder 5s)
0x000628:
    if !(== self.on 0s) goto 0x0006C8
0x00063C:
    if !(> self.segx self.segxinit) goto 0x0006AC
0x000654:
    if !(>= self.xm 0s) goto 0x000674
0x000668:
    self.xm = -1s
0x000674:
    self.xm = (- self.xm 1s)
    self.segx = (+ self.segx self.xm)
    goto 0x0006C8
0x0006AC:
    self.xm = 0s
    self.segx = self.segxinit
0x0006C8:
    self.s = (+ self.s 1s)
    self.yseg = (+ self.ysegi (* (sin[]:int32 (/ self.s self.sp)) self.sf))
0x00071C:
    exit
