0x000000:
    if !(== self.drawnlab 1s) goto 0x000040
0x000014:
    if !(bool (sprite_exists[]:int32 self.lab)) goto 0x000040
0x00002C:
    call (sprite_delete[]:int32 self.lab)
0x000040:
    exit
