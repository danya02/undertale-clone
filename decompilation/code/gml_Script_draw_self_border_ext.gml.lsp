0x000000:
    self.l = 0s
    self.t = 0s
    self.w = self.sprite_width
    self.h = self.sprite_height
    push -5s
    self.ll = (+ (- 0s:idealborder self.x) 1s)
    push -5s
    self.tt = (+ (- 2s:idealborder self.y) 1s)
    push (+ self.x self.w)
    self.ww = (+ (- -5s 1s:idealborder) 1s)
    push (+ self.y self.h)
    self.hh = (+ (- -5s 3s:idealborder) 1s)
    if !(> self.ll 0s) goto 0x000130
0x000114:
    self.l = (+ self.l self.ll)
0x000130:
    if !(> self.tt 0s) goto 0x000160
0x000144:
    self.t = (+ self.t self.tt)
0x000160:
    if !(> self.ww 0s) goto 0x000190
0x000174:
    self.w = (- self.w self.ww)
0x000190:
    if !(> self.hh 0s) goto 0x0001C0
0x0001A4:
    self.h = (- self.h self.hh)
0x0001C0:
    self.w = (round[]:int32 self.w)
    self.h = (round[]:int32 self.h)
    self.l = (round[]:int32 self.l)
    self.t = (round[]:int32 self.t)
    if !(> self.w 0s) goto 0x000248
0x000234:
    push (> self.h 0s)
    goto 0x00024C
0x000248:
    push 0s
0x00024C:
    if !pop goto 0x000324
0x000250:
    if !(< self.l self.w) goto 0x000280
0x000268:
    push (< self.t self.h)
    goto 0x000284
0x000280:
    push 0s
0x000284:
    if !pop goto 0x000324
0x000288:
    call (draw_sprite_part_ext[]:int32 self.argument3 self.argument2 self.argument1 self.argument0 (+ self.y self.t) (+ self.x self.l) (- self.h self.t) (- self.w self.l) self.t self.l self.image_index self.sprite_index)
0x000324:
    exit
