0x000000:
    call (draw_set_color[]:int32 (var 0s))
    push (var 0s)
    call (draw_rectangle[]:int32 (+ self.y 18s) -5s (- 0s:idealborder 2s) (+ self.y 2s) (+ self.segx 2s))
    call (draw_set_color[]:int32 (var 16777215))
    push (var 0s)
    call (draw_rectangle[]:int32 (+ self.y 16s) -5s 0s:idealborder (+ self.y 4s) self.segx)
    self.i = self.segx
    push self.i
    if !(> -5s 0s:idealborder) goto 0x000178
0x000104:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_line_width[]:int32 (var 2s) (+ self.y 18s) self.i (+ self.y 2s) self.i)
    self.i = (- self.i 20s)
    goto 0x0000E4
0x000178:
    self.anim = (+ self.anim 0.25d)
    if !(== self.on 0s) goto 0x0001E4
0x0001AC:
    call (draw_sprite[]:int32 self.y (- self.segx self.yseg) self.anim (var 544s))
0x0001E4:
    if !(== self.on 1s) goto 0x000230
0x0001F8:
    call (draw_sprite[]:int32 self.y (- self.segx self.yseg) self.anim (var 545s))
0x000230:
    call (draw_sprite[]:int32 self.y self.segx self.image_index self.sprite_index)
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 14s) (+ (- self.segx self.yseg) 20s) self.y (- self.segx self.yseg))) goto 0x0003A0
0x0002CC:
    call (snd_play[]:int32 (var 128s))
    self.g = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 14s) (+ (- self.segx self.yseg) 20s) self.y (- self.segx self.yseg))
    pushenv (int32 self.g) 0x00036C
0x000360:
    call (instance_destroy[]:int32 )
0x00036C:
    popenv 0x000360
0x000370:
    if !(== self.on 0s) goto 0x000394
0x000384:
    self.on = 1s
    goto 0x0003A0
0x000394:
    self.on = 0s
0x0003A0:
    push (var 1s)
    if !(bool (collision_rectangle[]:int32 (var 0s) (var 739s) (+ self.y 10s) -5s 0s:idealborder (- self.y 4s) (+ self.segx 16s))) goto 0x0004E8
0x000408:
    push (var 1s)
    self.g = (collision_rectangle[]:int32 (var 0s) (var 739s) (+ self.y 10s) -5s 0s:idealborder (- self.y 4s) (+ self.segx 16s))
    [obj_heart].charge = 30s
    pushenv (int32 self.g) 0x000498
0x00048C:
    call (instance_destroy[]:int32 )
0x000498:
    popenv 0x00048C
0x00049C:
    self.vspeed = (+ self.vspeed 0.75d)
    self.y = (+ self.y 3s)
    call (snd_play[]:int32 (var 110s))
0x0004E8:
    push (var 1s)
    if !(bool (collision_rectangle[]:int32 (var 0s) (var 743s) (+ self.y 14s) -5s 0s:idealborder (+ self.y 4s) (+ self.segx 12s))) goto 0x000564
0x000550:
    call (event_user[]:int32 (var 11s))
0x000564:
    if !(== self.on 1s) goto 0x000624
0x000578:
    push self.segx
    if !(> -5s (- 0s:idealborder 25s)) goto 0x0005F8
0x0005A0:
    if !(>= self.xm 0s) goto 0x0005C0
0x0005B4:
    self.xm = -2s
0x0005C0:
    self.xm = (- self.xm 2s)
    self.segx = (+ self.segx self.xm)
    goto 0x000624
0x0005F8:
    self.xm = 0s
    push -5s
    self.segx = (- 0s:idealborder 25s)
0x000624:
    if !(== self.on 0s) goto 0x0006B8
0x000638:
    if !(< self.segx self.segxinit) goto 0x00069C
0x000650:
    if !(>= self.xm 0s) goto 0x000670
0x000664:
    self.xm = 1s
0x000670:
    self.xm = 1s
    self.segx = (+ self.segx self.xm)
    goto 0x0006B8
0x00069C:
    self.xm = 0s
    self.segx = self.segxinit
0x0006B8:
    self.s = (+ self.s 1s)
    self.yseg = (+ self.ysegi (* (sin[]:int32 (/ self.s self.sp)) self.sf))
0x00070C:
    exit
