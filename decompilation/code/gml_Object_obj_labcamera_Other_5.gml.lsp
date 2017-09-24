0x000000:
    if !(== self.drawnlab 1s) goto 0x00004C
0x000014:
    if !(bool (sprite_exists[]:int32 self.lab)) goto 0x00004C
0x00002C:
    call (sprite_delete[]:int32 self.lab)
    self.drawnlab = 0s
0x00004C:
    exit
