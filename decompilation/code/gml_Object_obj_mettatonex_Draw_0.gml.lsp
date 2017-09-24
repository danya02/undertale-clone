0x000000:
    if !(== global.debug 1s) goto 0x000074
0x000014:
    if !(bool (keyboard_check_pressed[]:int32 (var 65s))) goto 0x000044
0x00002C:
    self.turns = (- self.turns 1s)
0x000044:
    if !(bool (keyboard_check_pressed[]:int32 (var 83s))) goto 0x000074
0x00005C:
    self.turns = (+ self.turns 1s)
0x000074:
    exit
