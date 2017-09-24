0x000000:
    self.l = 0s
    self.t = 0s
    self.w = self.sprite_width
    self.h = self.sprite_height
    self.ll = (+ (- self.argument0 self.x) 1s)
    self.tt = (+ (- self.argument2 self.y) 1s)
    self.ww = (- (- (+ self.x self.w) self.argument1) 1s)
    self.hh = (- (- (+ self.y self.h) self.argument3) 1s)
    if !(> self.ll 0s) goto 0x000110
0x0000F4:
    self.l = (+ self.l self.ll)
0x000110:
    if !(> self.tt 0s) goto 0x000140
0x000124:
    self.t = (+ self.t self.tt)
0x000140:
    if !(> self.ww 0s) goto 0x000170
0x000154:
    self.w = (- self.w self.ww)
0x000170:
    if !(> self.hh 0s) goto 0x0001A0
0x000184:
    self.h = (- self.h self.hh)
0x0001A0:
    self.w = (round[]:int32 self.w)
    self.h = (round[]:int32 self.h)
    self.l = (round[]:int32 self.l)
    self.t = (round[]:int32 self.t)
    if !(>= (- self.w self.l) 0s) goto 0x000240
0x000220:
    push (>= (- self.h self.t) 0s)
    goto 0x000244
0x000240:
    push 0s
0x000244:
    if !pop goto 0x0002F4
0x000248:
    if !(>= self.l 0s) goto 0x000270
0x00025C:
    push (>= self.t 0s)
    goto 0x000274
0x000270:
    push 0s
0x000274:
    if !pop goto 0x0002F4
0x000278:
    call (draw_sprite_part[]:int32 (+ self.y self.t) (+ self.x self.l) (- self.h self.t) (- self.w self.l) self.t self.l self.image_index self.sprite_index)
0x0002F4:
    exit
