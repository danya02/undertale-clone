0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    push 21s
    self.height = (- -5s 440s:flag)
    if !(> self.height 0s) goto 0x0000C8
0x000060:
    call (draw_sprite_part[]:int32 (- (+ self.y 23s) self.height) self.x self.height (var 19s) (- 23s self.height) (var 0s) (var 0s) (var 1866s))
0x0000C8:
    if !(> self.height 5s) goto 0x0002E4
0x0000DC:
    self.siner = (+ self.siner 1s)
    self.i = 0s
    if !(< self.i 3s) goto 0x0002E4
0x000114:
    push (var 16777215)
    push self.y
    call (draw_point_color[]:int32 (+ -1s (int32 self.i):buby) self.x (+ -1s (int32 self.i):bubx))
    push -1s
    stog.buby[(- (int32 self.i):buby (+ 0.1d (random[]:int32 (var 0.3d))))] = (int32 self.i)
    push -1s
    stog.bubx[(+ (int32 self.i):bubx (* (sin[]:int32 (/ (+ self.siner (* self.i 2s)) (double 3s))) 0.25d))] = (int32 self.i)
    push -1s
    if !(< (+ (int32 self.i):buby self.y) (+ (- (+ self.y 23s) self.height) 1s)) goto 0x0002C8
0x00027C:
    stog.buby[(int32 self.i)] = 20s
    stog.bubx[(int32 self.i)] = (+ 4s (random[]:int32 (var 10s)))
0x0002C8:
    self.i = (+ self.i 1s)
    goto 0x000100
0x0002E4:
    exit
