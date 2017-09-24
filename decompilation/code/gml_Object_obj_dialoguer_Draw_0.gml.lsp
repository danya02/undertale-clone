0x000000:
    if !(== self.side 0s) goto 0x000248
0x000014:
    push -1s
    self.yy = (int32 self.view_current):view_yview
    if !(bool (instance_exists[]:int32 self.writer)) goto 0x0000A0
0x00004C:
    if !(> (int32 self.writer):writingy (+ self.yy 80s)) goto 0x0000A0
0x000078:
    stog.writingy* = (- (int32 self.writer):writingy 155s)
0x0000A0:
    push (int32 self.writer)
    if !(bool (instance_exists[]:int32 (var 774s))) goto 0x0000F0
0x0000B8:
    if !(> 774.y (+ self.yy 80s)) goto 0x0000F0
0x0000D8:
    [obj_face].y = (- 774.y 155s)
0x0000F0:
    call (draw_set_color[]:int32 (var 16777215))
    push (var 0s)
    push -1s
    push (+ (int32 self.view_current):view_yview 80s)
    push -1s
    call (draw_rectangle[]:int32 (+ (int32 self.view_current):view_xview 304s) -1s (+ (int32 self.view_current):view_yview 5s) -1s (+ (int32 self.view_current):view_xview 16s))
    call (draw_set_color[]:int32 (var 0s))
    push (var 0s)
    push -1s
    push (+ (int32 self.view_current):view_yview 77s)
    push -1s
    call (draw_rectangle[]:int32 (+ (int32 self.view_current):view_xview 301s) -1s (+ (int32 self.view_current):view_yview 8s) -1s (+ (int32 self.view_current):view_xview 19s))
    goto 0x000478
0x000248:
    push -1s
    self.yy = (int32 self.view_current):view_yview
    if !(bool (instance_exists[]:int32 self.writer)) goto 0x0002D4
0x000280:
    if !(< (int32 self.writer):writingy (+ self.yy 80s)) goto 0x0002D4
0x0002AC:
    stog.writingy* = (+ (int32 self.writer):writingy 155s)
0x0002D4:
    push (int32 self.writer)
    if !(bool (instance_exists[]:int32 (var 774s))) goto 0x000324
0x0002EC:
    if !(< 774.y (+ self.yy 80s)) goto 0x000324
0x00030C:
    [obj_face].y = (+ 774.y 155s)
0x000324:
    call (draw_set_color[]:int32 (var 16777215))
    push (var 0s)
    push -1s
    push (+ (int32 self.view_current):view_yview 235s)
    push -1s
    call (draw_rectangle[]:int32 (+ (int32 self.view_current):view_xview 304s) -1s (+ (int32 self.view_current):view_yview 160s) -1s (+ (int32 self.view_current):view_xview 16s))
    call (draw_set_color[]:int32 (var 0s))
    push (var 0s)
    push -1s
    push (+ (int32 self.view_current):view_yview 232s)
    push -1s
    call (draw_rectangle[]:int32 (+ (int32 self.view_current):view_xview 301s) -1s (+ (int32 self.view_current):view_yview 163s) -1s (+ (int32 self.view_current):view_xview 19s))
0x000478:
    self.count = 1s
0x000484:
    exit
