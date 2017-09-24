0x000000:
    self.xx = 0s
    self.yy = 0s
    self.numm = 8s
    self.wid = (c_borderwidth[]:int32 (var 0s))
    self.het = (c_borderheight[]:int32 (var 0s))
    self.where = (/ (floor[]:int32 (+ 1s (random[]:int32 (- self.numm 2s)))) self.numm)
    if !(== self.argument0 0s) goto 0x00011C
0x0000A4:
    push (- (- (* self.wid self.where) self.argument2) self.sprite_width)
    self.xx = (+ (+ -5s 0s:idealborder) self.argument2)
    push -5s
    self.yy = (- 2s:idealborder self.argument1)
0x00011C:
    if !(== self.argument0 1s) goto 0x0001DC
0x000130:
    push (- (- (* self.wid self.where) self.argument2) self.sprite_width)
    self.xx = (+ (+ -5s 0s:idealborder) self.argument2)
    push -5s
    self.yy = 3s:idealborder
    if !(> self.argument1 self.sprite_height) goto 0x0001DC
0x0001B4:
    self.yy = (+ self.yy (- self.argument1 self.sprite_height))
0x0001DC:
    if !(== self.argument0 2s) goto 0x000274
0x0001F0:
    push (- (- (* self.het self.where) self.argument2) self.sprite_height)
    self.yy = (+ (+ -5s 2s:idealborder) (/ self.argument2 (double 2s)))
    push -5s
    self.xx = (- 0s:idealborder self.argument1)
0x000274:
    if !(== self.argument0 3s) goto 0x000340
0x000288:
    push (- (- (* self.het self.where) self.argument2) self.sprite_height)
    self.yy = (+ (+ -5s 2s:idealborder) (/ self.argument2 (double 2s)))
    push -5s
    self.xx = 1s:idealborder
    if !(> self.argument1 self.sprite_width) goto 0x000340
0x000318:
    self.xx = (+ self.xx (- self.argument1 self.sprite_width))
0x000340:
    exit
