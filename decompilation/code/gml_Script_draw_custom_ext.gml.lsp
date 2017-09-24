0x000000:
    if !(== self.argument4 0s) goto 0x000024
0x000014:
    self.argument4 = self.sprite_index
0x000024:
    if !(== self.argument5 0s) goto 0x000048
0x000038:
    self.argument5 = self.image_index
0x000048:
    if !(== self.argument6 0s) goto 0x000068
0x00005C:
    self.argument6 = 1s
0x000068:
    if !(== self.argument7 0s) goto 0x000088
0x00007C:
    self.argument7 = 1s
0x000088:
    self.l = 0s
    self.t = 0s
    self.w = self.sprite_width
    self.h = self.sprite_height
    self.ll = (+ (- self.argument0 self.argument9) 1s)
    self.tt = (+ (- self.argument2 self.argument10) 1s)
    self.ww = (- (- (+ self.argument9 self.w) self.argument1) 1s)
    self.hh = (- (- (+ self.argument10 self.h) self.argument3) 1s)
    if !(> self.ll 0s) goto 0x000198
0x00017C:
    self.l = (+ self.l self.ll)
0x000198:
    if !(> self.tt 0s) goto 0x0001C8
0x0001AC:
    self.t = (+ self.t self.tt)
0x0001C8:
    if !(> self.ww 0s) goto 0x0001F8
0x0001DC:
    self.w = (- self.w self.ww)
0x0001F8:
    if !(> self.hh 0s) goto 0x000228
0x00020C:
    self.h = (- self.h self.hh)
0x000228:
    self.w = (round[]:int32 self.w)
    self.h = (round[]:int32 self.h)
    self.l = (round[]:int32 self.l)
    self.t = (round[]:int32 self.t)
    if !(> self.w (sprite_get_width[]:int32 self.argument4)) goto 0x0002C0
0x0002A8:
    self.w = (sprite_get_width[]:int32 self.argument4)
0x0002C0:
    if !(> self.h (sprite_get_height[]:int32 self.argument4)) goto 0x0002F8
0x0002E0:
    self.h = (sprite_get_height[]:int32 self.argument4)
0x0002F8:
    if !(> self.w 0s) goto 0x000320
0x00030C:
    push (> self.h 0s)
    goto 0x000324
0x000320:
    push 0s
0x000324:
    if !pop goto 0x000400
0x000328:
    if !(< self.l self.w) goto 0x000358
0x000340:
    push (< self.t self.h)
    goto 0x00035C
0x000358:
    push 0s
0x00035C:
    if !pop goto 0x000400
0x000360:
    call (draw_sprite_part_ext[]:int32 self.argument8 (var 16777215) self.argument7 self.argument6 (+ self.argument10 self.t) (+ self.argument9 self.l) (- self.h self.t) (- self.w self.l) self.t self.l self.argument5 self.argument4)
0x000400:
    exit
