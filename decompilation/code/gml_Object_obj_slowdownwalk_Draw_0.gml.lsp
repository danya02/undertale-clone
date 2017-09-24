0x000000:
    if !(== self.sl 1s) goto 0x000040
0x000014:
    call (draw_sprite[]:int32 1570.y 1570.x 1570.image_index (var 1798s))
0x000040:
    self.sl = 0s
0x00004C:
    exit
