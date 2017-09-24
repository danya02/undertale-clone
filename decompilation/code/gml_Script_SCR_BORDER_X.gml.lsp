0x000000:
    self.xx = 0s
    self.yy = 0s
    if !(== self.argument0 0s) goto 0x0000C4
0x00002C:
    push -5s
    push 1s:idealborder
    push (round[]:int32 (random[]:int32 (- (- (- -5s 0s:idealborder) self.argument2) self.sprite_width)))
    self.xx = (+ (+ -5s 0s:idealborder) self.argument2)
    push -5s
    self.yy = (- 2s:idealborder self.argument1)
0x0000C4:
    if !(== self.argument0 1s) goto 0x0001A4
0x0000D8:
    push -5s
    push 1s:idealborder
    push (round[]:int32 (random[]:int32 (- (- (- -5s 0s:idealborder) self.argument2) self.sprite_width)))
    self.xx = (+ (+ -5s 0s:idealborder) self.argument2)
    push -5s
    self.yy = 3s:idealborder
    if !(> self.argument1 self.sprite_height) goto 0x0001A4
0x00017C:
    self.yy = (+ self.yy (- self.argument1 self.sprite_height))
0x0001A4:
    if !(== self.argument0 2s) goto 0x00025C
0x0001B8:
    push -5s
    push 3s:idealborder
    push (round[]:int32 (random[]:int32 (- (- (- -5s 2s:idealborder) self.argument2) self.sprite_height)))
    self.yy = (+ (+ -5s 2s:idealborder) (/ self.argument2 (double 2s)))
    push -5s
    self.xx = (- 0s:idealborder self.argument1)
0x00025C:
    if !(== self.argument0 3s) goto 0x000348
0x000270:
    push -5s
    push 3s:idealborder
    push (round[]:int32 (random[]:int32 (- (- (- -5s 2s:idealborder) self.argument2) self.sprite_height)))
    self.yy = (+ (+ -5s 2s:idealborder) (/ self.argument2 (double 2s)))
    push -5s
    self.xx = 1s:idealborder
    if !(> self.argument1 self.sprite_width) goto 0x000348
0x000320:
    self.xx = (+ self.xx (- self.argument1 self.sprite_width))
0x000348:
    exit
