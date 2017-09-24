0x000000:
    self.l = 0s
    self.t = 0s
    self.w = self.sprite_width
    self.h = self.sprite_height
    self.offx = self.argument0
    self.offy = self.argument1
    self.ll = (- (+ (- 758.x self.x) 1s) self.offx)
    push -5s
    self.tt = (- (+ (- 2s:idealborder self.y) 1s) self.offy)
    self.ww = (- (- (+ self.x self.w) 760.x) 1s)
    push (+ self.y self.h)
    self.hh = (- (- -5s 3s:idealborder) 1s)
    if !(> self.ll 0s) goto 0x000158
0x00013C:
    self.l = (+ self.l self.ll)
0x000158:
    if !(> self.tt 0s) goto 0x000188
0x00016C:
    self.t = (+ self.t self.tt)
0x000188:
    if !(> self.ww 0s) goto 0x0001B8
0x00019C:
    self.w = (- self.w self.ww)
0x0001B8:
    if !(> self.hh 0s) goto 0x0001E8
0x0001CC:
    self.h = (- self.h self.hh)
0x0001E8:
    self.w = (round[]:int32 self.w)
    self.h = (round[]:int32 self.h)
    self.l = (round[]:int32 self.l)
    self.t = (round[]:int32 self.t)
    if !(> (+ self.w self.offx) 0s) goto 0x000288
0x000268:
    push (> (+ self.h self.offy) 0s)
    goto 0x00028C
0x000288:
    push 0s
0x00028C:
    if !pop goto 0x000374
0x000290:
    if !(< self.l self.w) goto 0x0002C0
0x0002A8:
    push (< self.t self.h)
    goto 0x0002C4
0x0002C0:
    push 0s
0x0002C4:
    if !pop goto 0x000374
0x0002C8:
    call (draw_sprite_part[]:int32 (- (+ self.y self.t) self.offy) (- (+ self.x self.l) self.offx) (+ (- self.h self.t) self.offy) (+ (- self.w self.l) self.offx) self.t self.l self.image_index self.sprite_index)
0x000374:
    exit
