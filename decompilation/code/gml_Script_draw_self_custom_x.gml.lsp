0x000000:
    self.l = 0s
    self.t = 0s
    self.fw = (* self.sprite_width self.image_xscale)
    self.fh = (* self.sprite_height self.image_yscale)
    self.ll = (+ (- self.argument0 self.x) 1s)
    self.tt = (+ (- self.argument2 self.y) 1s)
    self.ww = (- (- (+ self.x self.fw) self.argument1) 1s)
    self.hh = (- (- (+ self.y self.fh) self.argument3) 1s)
    if !(> self.ll 0s) goto 0x000128
0x00010C:
    self.l = (+ self.l self.ll)
0x000128:
    if !(> self.tt 0s) goto 0x000158
0x00013C:
    self.t = (+ self.t self.tt)
0x000158:
    if !(> self.ww 0s) goto 0x000188
0x00016C:
    self.fw = (- self.fw self.ww)
0x000188:
    if !(> self.hh 0s) goto 0x0001B8
0x00019C:
    self.fh = (- self.fh self.hh)
0x0001B8:
    self.w = (round[]:int32 (/ self.fw self.image_xscale))
    self.h = (round[]:int32 (/ self.fh self.image_yscale))
    self.l = (round[]:int32 self.l)
    self.t = (round[]:int32 self.t)
    if !(> self.w 0s) goto 0x000258
0x000244:
    push (> self.h 0s)
    goto 0x00025C
0x000258:
    push 0s
0x00025C:
    if !pop goto 0x000368
0x000260:
    if !(< self.l self.w) goto 0x000290
0x000278:
    push (< self.t self.h)
    goto 0x000294
0x000290:
    push 0s
0x000294:
    if !pop goto 0x000368
0x000298:
    call (draw_sprite_part_ext[]:int32 self.image_alpha (var 16777215) self.image_yscale self.image_xscale (+ self.y self.t) (+ self.x self.l) (- self.h (/ self.t self.image_yscale)) (- self.w (/ self.l self.image_xscale)) (/ self.t self.image_yscale) (/ self.l self.image_xscale) self.image_index self.sprite_index)
0x000368:
    exit
