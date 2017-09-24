0x000000:
    if !(== global.debug 1s) goto 0x0000AC
0x000014:
    call (draw_set_color[]:int32 (var 255s))
    call (draw_text[]:int32 self.turns (var 0s) (var 0s))
    if !(bool (keyboard_check_pressed[]:int32 (var 83s))) goto 0x00007C
0x000064:
    self.turns = (+ self.turns 1s)
0x00007C:
    if !(bool (keyboard_check_pressed[]:int32 (var 65s))) goto 0x0000AC
0x000094:
    self.turns = (- self.turns 1s)
0x0000AC:
    exit
