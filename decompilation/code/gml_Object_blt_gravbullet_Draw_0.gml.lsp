0x000000:
    if !(== self.green 1s) goto 0x000044
0x000014:
    self.sprite_index = 58s
    if !(bool (instance_exists[]:int32 (var 597s))) goto 0x000044
0x000038:
    self.sprite_index = 57s
0x000044:
    call (draw_self_border[]:int32 )
0x000050:
    exit
