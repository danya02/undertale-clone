0x000000:
    call (draw_sprite[]:int32 self.y self.x (var 0s) self.sprite_index)
    self.animimg = (+ self.animimg 0.25d)
    self.depth = (- 50000 (* self.y 10s))
    if !(== self.arm 0s) goto 0x0000D8
0x000084:
    call (draw_sprite[]:int32 (+ (- self.y 26s) self.yoff) (+ (- self.x 19s) self.xoff) self.animimg (var 1721s))
0x0000D8:
    if !(== self.arm 1s) goto 0x000148
0x0000EC:
    call (draw_sprite[]:int32 (+ (- (- self.y 26s) 8s) self.yoff) (+ (- self.x 19s) self.xoff) self.animimg (var 1727s))
0x000148:
    if !(== self.arm 2s) goto 0x0001C0
0x00015C:
    call (draw_sprite[]:int32 (+ (- (- self.y 26s) 10s) self.yoff) (+ (- (- self.x 19s) 10s) self.xoff) self.animimg (var 1725s))
0x0001C0:
    if !(== self.arm 3s) goto 0x000230
0x0001D4:
    call (draw_sprite[]:int32 (+ (- (- self.y 26s) 10s) self.yoff) (+ (- self.x 19s) self.xoff) self.animimg (var 1722s))
0x000230:
    if !(== self.arm 4s) goto 0x0002A8
0x000244:
    call (draw_sprite[]:int32 (+ (- (- self.y 26s) 9s) self.yoff) (+ (- (- self.x 19s) 5s) self.xoff) self.animimg (var 1723s))
0x0002A8:
    if !(== self.arm 5s) goto 0x000320
0x0002BC:
    call (draw_sprite[]:int32 (+ (- (- self.y 26s) 5s) self.yoff) (+ (- (- self.x 19s) 18s) self.xoff) self.animimg (var 1724s))
0x000320:
    if !(== self.arm 6s) goto 0x000398
0x000334:
    call (draw_sprite[]:int32 (+ (+ (- self.y 26s) 4s) self.yoff) (+ (- (- self.x 19s) 1s) self.xoff) self.animimg (var 1726s))
0x000398:
    if !(== self.arm 7s) goto 0x000410
0x0003AC:
    call (draw_sprite[]:int32 (+ (+ (- self.y 26s) 1s) self.yoff) (+ (- (- self.x 19s) 1s) self.xoff) self.animimg (var 1730s))
0x000410:
    if !(== self.arm 8s) goto 0x000488
0x000424:
    call (draw_sprite[]:int32 (+ (- (- self.y 26s) 11s) self.yoff) (+ (- (- self.x 19s) 14s) self.xoff) self.animimg (var 1728s))
0x000488:
    if !(== self.arm 9s) goto 0x000500
0x00049C:
    call (draw_sprite[]:int32 (+ (- (- self.y 26s) 7s) self.yoff) (+ (- (- self.x 19s) 17s) self.xoff) self.animimg (var 1729s))
0x000500:
    if !(== self.arm 10s) goto 0x000578
0x000514:
    call (draw_sprite[]:int32 (+ (- (- self.y 26s) 8s) self.yoff) (+ (- (- self.x 19s) 14s) self.xoff) self.animimg (var 1731s))
0x000578:
    if !(== self.arm 11s) goto 0x0005F0
0x00058C:
    call (draw_sprite[]:int32 (+ (- (- self.y 26s) 11s) self.yoff) (+ (- (- self.x 19s) 14s) self.xoff) self.animimg (var 1732s))
0x0005F0:
    if !(== self.arm 12s) goto 0x000668
0x000604:
    call (draw_sprite[]:int32 (+ (- (- self.y 26s) 11s) self.yoff) (+ (- (- self.x 19s) 14s) self.xoff) (var 2s) (var 1733s))
0x000668:
    exit
