0x000000:
    if !(== self.con 1s) goto 0x00024C
0x000014:
    if !(> self.myspeed 0s) goto 0x000214
0x000028:
    if !(== self.eo 0s) goto 0x000050
0x00003C:
    call (draw_set_color[]:int32 (var 255s))
0x000050:
    if !(== self.eo 1s) goto 0x000090
0x000064:
    call (draw_set_color[]:int32 (var 65535))
    call (snd_play[]:int32 (var 118s))
0x000090:
    if !(== self.eo 2s) goto 0x0000B8
0x0000A4:
    call (draw_set_color[]:int32 (var 0s))
0x0000B8:
    push (var 1s)
    push -5s
    push (- 3s:idealborder 4s)
    push -5s
    call (draw_rectangle[]:int32 (- (+ 0s:idealborder self.attacklength) 6s) -5s (+ 2s:idealborder 6s) -5s (+ 0s:idealborder 6s))
    push (var 1s)
    push -5s
    push (- 3s:idealborder 3s)
    push -5s
    call (draw_rectangle[]:int32 (- (+ 0s:idealborder self.attacklength) 5s) -5s (+ 2s:idealborder 7s) -5s (+ 0s:idealborder 7s))
    push -5s
    push (+ 2s:idealborder 30s)
    call (draw_sprite[]:int32 -5s (+ 0s:idealborder (/ self.attacklength (double 2s))) self.eo (var 522s))
0x000214:
    self.eo = (+ self.eo 1s)
    if !(> self.eo 2s) goto 0x00024C
0x000240:
    self.eo = 0s
0x00024C:
    if !(== self.con 2s) goto 0x0002D4
0x000260:
    call (snd_play[]:int32 (var 14s))
    if !(> self.myspeed 0s) goto 0x0002C8
0x000288:
    push -5s
    self.x = (- 0s:idealborder self.sprite_width)
    self.nowx = self.x
    self.myx = 0s
0x0002C8:
    self.con = 3s
0x0002D4:
    if !(== self.con 3s) goto 0x000364
0x0002E8:
    self.myx = (+ self.myx self.myspeed)
    if !(>= self.myx (- self.attacklength self.myspeed)) goto 0x000364
0x000328:
    self.myx = self.attacklength
    self.con = 4s
    stog.alarm[4s] = 6s
    self.shake = 5s
0x000364:
    if !(> self.shake 0s) goto 0x000390
0x000378:
    self.shake = (- self.shake 1s)
0x000390:
    if !(== self.con 5s) goto 0x0003EC
0x0003A4:
    self.shake = 0s
    self.myx = (- self.myx self.myspeed)
    if !(<= self.myx 0s) goto 0x0003EC
0x0003E0:
    call (instance_destroy[]:int32 )
0x0003EC:
    if !(>= self.con 3s) goto 0x000784
0x000400:
    self.i = 0s
    if !(< self.i 5s) goto 0x000784
0x000420:
    self.rr = (- (random[]:int32 self.shake) (random[]:int32 self.shake))
    push -5s
    push (+ (+ (+ 2s:idealborder 5s) (* self.i 30s)) self.rr)
    call (draw_sprite_part[]:int32 -5s 0s:idealborder self.sprite_height (+ self.myx self.rr) (var 0s) (+ (- self.sprite_width self.myx) self.rr) self.image_index self.sprite_index)
    push (var 1s)
    push (var 0s)
    push (var 743s)
    push -5s
    if !(bool (collision_rectangle[]:int32 (+ (+ 2s:idealborder 18s) (* self.i 30s)) -5s (- (+ 0s:idealborder self.myx) 30s) -5s (+ (+ 2s:idealborder 9s) (* self.i 30s)) -5s 0s:idealborder)) goto 0x0005BC
0x0005A8:
    call (event_user[]:int32 (var 11s))
0x0005BC:
    push (var 1s)
    push (var 0s)
    push (var 743s)
    push -5s
    if (bool (collision_line[]:int32 (+ (+ 2s:idealborder 9s) (* self.i 30s)) -5s (- (+ 0s:idealborder self.myx) 8s) -5s (+ (+ 2s:idealborder 9s) (* self.i 30s)) -5s (- (+ 0s:idealborder self.myx) 30s))) goto 0x00074C
0x000684:
    push (var 1s)
    push (var 0s)
    push (var 743s)
    push -5s
    push (bool (collision_line[]:int32 (+ (+ 2s:idealborder 9s) (* self.i 30s)) -5s (- (+ 0s:idealborder self.myx) 8s) -5s (+ (+ 2s:idealborder 23s) (* self.i 30s)) -5s (- (+ 0s:idealborder self.myx) 30s)))
    goto 0x000750
0x00074C:
    push 1s
0x000750:
    if !pop goto 0x000768
0x000754:
    call (event_user[]:int32 (var 11s))
0x000768:
    self.i = (+ self.i 1s)
    goto 0x00040C
0x000784:
    exit
