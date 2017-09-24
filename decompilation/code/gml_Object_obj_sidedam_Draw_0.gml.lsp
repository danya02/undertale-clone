0x000000:
    if !(== self.side 0s) goto 0x000380
0x000014:
    if !(== self.con 0s) goto 0x00004C
0x000028:
    self.con = 1s
    stog.alarm[4s] = self.wait
0x00004C:
    if !(< self.con 2s) goto 0x000280
0x000060:
    if !(== self.eo 0s) goto 0x000088
0x000074:
    call (draw_set_color[]:int32 (var 255s))
0x000088:
    if !(== self.eo 1s) goto 0x0000C8
0x00009C:
    call (draw_set_color[]:int32 (var 65535))
    call (snd_play[]:int32 (var 119s))
0x0000C8:
    if !(== self.eo 2s) goto 0x0000F0
0x0000DC:
    call (draw_set_color[]:int32 (var 0s))
0x0000F0:
    push -5s
    push (+ 2s:idealborder 40s)
    call (draw_sprite[]:int32 -5s (+ 0s:idealborder 12s) self.eo (var 522s))
    self.eo = (+ self.eo 1s)
    if !(> self.eo 2s) goto 0x000174
0x000168:
    self.eo = 0s
0x000174:
    call (draw_set_color[]:int32 (var 255s))
    push (var 1s)
    push -5s
    push (- 3s:idealborder 5s)
    push -5s
    call (draw_rectangle[]:int32 (+ 0s:idealborder self.len) -5s (+ 2s:idealborder 5s) -5s (+ 0s:idealborder 5s))
    push (var 1s)
    push -5s
    push (- 3s:idealborder 4s)
    push -5s
    call (draw_rectangle[]:int32 (- (+ 0s:idealborder self.len) 1s) -5s (+ 2s:idealborder 6s) -5s (+ 0s:idealborder 6s))
0x000280:
    if !(== self.con 2s) goto 0x0002C8
0x000294:
    self.con = 3s
    call (snd_play[]:int32 (var 30s))
    stog.alarm[4s] = 14s
0x0002C8:
    if !(== self.con 3s) goto 0x000360
0x0002DC:
    if (<= 4s 0) goto 0x00035C
0x0002F4:
    push 4s
    push (var 471s)
    call (instance_create[]:int32 (var 0s) -5s (- (+ 0s:idealborder (random[]:int32 (- self.len 6s))) 6s))
    if (bool (- pop 1)) goto 0x0002F4
0x00035C:
    push (- pop 1)
    pop
0x000360:
    if !(== self.con 4s) goto 0x000380
0x000374:
    call (instance_destroy[]:int32 )
0x000380:
    if !(== self.side 1s) goto 0x0006EC
0x000394:
    if !(== self.con 0s) goto 0x0003CC
0x0003A8:
    self.con = 1s
    stog.alarm[4s] = self.wait
0x0003CC:
    if !(< self.con 2s) goto 0x0005EC
0x0003E0:
    if !(== self.eo 0s) goto 0x000408
0x0003F4:
    call (draw_set_color[]:int32 (var 255s))
0x000408:
    if !(== self.eo 1s) goto 0x000448
0x00041C:
    call (draw_set_color[]:int32 (var 65535))
    call (snd_play[]:int32 (var 119s))
0x000448:
    if !(== self.eo 2s) goto 0x000470
0x00045C:
    call (draw_set_color[]:int32 (var 0s))
0x000470:
    push -5s
    push (+ 2s:idealborder 40s)
    call (draw_sprite[]:int32 -5s (- 1s:idealborder 38s) self.eo (var 522s))
    self.eo = (+ self.eo 1s)
    if !(> self.eo 2s) goto 0x0004F4
0x0004E8:
    self.eo = 0s
0x0004F4:
    push (var 1s)
    push -5s
    push (- 3s:idealborder 5s)
    push -5s
    call (draw_rectangle[]:int32 (- 1s:idealborder self.len) -5s (+ 2s:idealborder 5s) -5s (- 1s:idealborder 5s))
    push (var 1s)
    push -5s
    push (- 3s:idealborder 4s)
    push -5s
    call (draw_rectangle[]:int32 (+ (- 1s:idealborder self.len) 1s) -5s (+ 2s:idealborder 4s) -5s (- 1s:idealborder 4s))
0x0005EC:
    if !(== self.con 2s) goto 0x000634
0x000600:
    self.con = 3s
    call (snd_play[]:int32 (var 30s))
    stog.alarm[4s] = 14s
0x000634:
    if !(== self.con 3s) goto 0x0006CC
0x000648:
    if (<= 4s 0) goto 0x0006C8
0x000660:
    push 4s
    push (var 471s)
    call (instance_create[]:int32 (var 0s) -5s (- (- 1s:idealborder (random[]:int32 (+ self.len 6s))) 8s))
    if (bool (- pop 1)) goto 0x000660
0x0006C8:
    push (- pop 1)
    pop
0x0006CC:
    if !(== self.con 4s) goto 0x0006EC
0x0006E0:
    call (instance_destroy[]:int32 )
0x0006EC:
    exit
