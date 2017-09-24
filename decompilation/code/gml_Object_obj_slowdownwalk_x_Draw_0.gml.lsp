0x000000:
    if !(== self.sl 1s) goto 0x0000D4
0x000014:
    if !(== self.doom 0s) goto 0x000054
0x000028:
    call (draw_sprite[]:int32 1570.y 1570.x 1570.image_index (var 1798s))
0x000054:
    if !(== self.doom 1s) goto 0x000094
0x000068:
    call (draw_sprite[]:int32 1570.y 1570.x 1570.image_index (var 1799s))
0x000094:
    if !(== self.doom 2s) goto 0x0000D4
0x0000A8:
    call (draw_sprite[]:int32 1570.y 1570.x 1570.image_index (var 1800s))
0x0000D4:
    self.sl = 0s
0x0000E0:
    exit
