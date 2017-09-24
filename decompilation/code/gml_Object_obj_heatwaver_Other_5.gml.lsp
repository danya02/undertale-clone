0x000000:
    if !(== self.drawngr 1s) goto 0x000028
0x000014:
    call (sprite_delete[]:int32 self.gr)
0x000028:
    exit
