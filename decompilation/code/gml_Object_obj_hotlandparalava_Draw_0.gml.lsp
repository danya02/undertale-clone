0x000000:
    self.maximum = (/ self.room_width (double 20s))
    push -1s
    stog.xx[(+ 4s:xx 0.25d)] = 4s
    self.i = -1s
    if !(< self.i (+ self.maximum 1s)) goto 0x000140
0x000074:
    push (var 0.5d)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 1s) (var 1s) (- self.room_height 80s) (* self.i 20s) (+ -1s 4s:xx) (var 0s) (var 1867s))
    push (* self.i 20s)
    self.lastx = (+ -1s 4s:xx)
    self.i = (+ self.i 1s)
    goto 0x000054
0x000140:
    push -1s
    if !(>= 4s:xx 20s) goto 0x000180
0x00015C:
    push -1s
    stog.xx[(- 4s:xx 20s)] = 4s
0x000180:
    push -1s
    stog.xx[(+ 3s:xx 0.5d)] = 3s
    self.i = -1s
    if !(< self.i (+ self.maximum 1s)) goto 0x0002A4
0x0001D8:
    push (var 0.75d)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 1s) (var 1s) (- self.room_height 68s) (* self.i 20s) (+ -1s 3s:xx) (var 0s) (var 1867s))
    push (* self.i 20s)
    self.lastx = (+ -1s 3s:xx)
    self.i = (+ self.i 1s)
    goto 0x0001B8
0x0002A4:
    push -1s
    if !(>= 3s:xx 20s) goto 0x0002E4
0x0002C0:
    push -1s
    stog.xx[(- 3s:xx 20s)] = 3s
0x0002E4:
    push -1s
    stog.xx[(+ 2s:xx 0.8d)] = 2s
    self.i = -1s
    if !(< self.i (+ self.maximum 1s)) goto 0x0003D4
0x00033C:
    push (- self.room_height 54s)
    call (draw_sprite[]:int32 (* self.i 20s) (+ -1s 2s:xx) (var 0s) (var 1867s))
    push (* self.i 20s)
    self.lastx = (+ -1s 2s:xx)
    self.i = (+ self.i 1s)
    goto 0x00031C
0x0003D4:
    push -1s
    if !(>= 2s:xx 20s) goto 0x000414
0x0003F0:
    push -1s
    stog.xx[(- 2s:xx 20s)] = 2s
0x000414:
    push -1s
    stog.xx[(+ 1s:xx 0.9d)] = 1s
    self.i = -1s
    if !(< self.i (+ self.maximum 1s)) goto 0x000504
0x00046C:
    push (- self.room_height 38s)
    call (draw_sprite[]:int32 (* self.i 20s) (+ -1s 1s:xx) (var 0s) (var 1867s))
    push (* self.i 20s)
    self.lastx = (+ -1s 1s:xx)
    self.i = (+ self.i 1s)
    goto 0x00044C
0x000504:
    push -1s
    if !(>= 1s:xx 20s) goto 0x000544
0x000520:
    push -1s
    stog.xx[(- 1s:xx 20s)] = 1s
0x000544:
    push -1s
    stog.xx[(+ 0s:xx 1s)] = 0s
    self.i = -1s
    if !(< self.i (+ self.maximum 1s)) goto 0x00062C
0x000594:
    push (- self.room_height 20s)
    call (draw_sprite[]:int32 (* self.i 20s) (+ -1s 0s:xx) (var 0s) (var 1867s))
    push (* self.i 20s)
    self.lastx = (+ -1s 0s:xx)
    self.i = (+ self.i 1s)
    goto 0x000574
0x00062C:
    push -1s
    if !(>= 0s:xx 20s) goto 0x00066C
0x000648:
    push -1s
    stog.xx[(- 0s:xx 20s)] = 0s
0x00066C:
    exit
