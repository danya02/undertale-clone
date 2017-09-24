0x000000:
    if !(== global.debug 1s) goto 0x000074
0x000014:
    if !(bool (keyboard_check_pressed[]:int32 (var 85s))) goto 0x000044
0x00002C:
    self.turns = (- self.turns 1s)
0x000044:
    if !(bool (keyboard_check_pressed[]:int32 (var 73s))) goto 0x000074
0x00005C:
    self.turns = (+ self.turns 1s)
0x000074:
    if !(>= self.trcon 3s) goto 0x000100
0x000088:
    if !(bool (instance_exists[]:int32 (var 557s))) goto 0x0000B8
0x0000A0:
    self.depth = (+ 557.depth 2s)
0x0000B8:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 800s) (var 800s) (var -100s) (var -100s))
0x000100:
    exit
