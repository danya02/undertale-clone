0x000000:
    if !(== self.d 0s) goto 0x000020
0x000014:
    call (scr_depth[]:int32 )
0x000020:
    push -5s
    if !(< 20s:flag 7s) goto 0x000064
0x00003C:
    self.sprite_index = (int32 20s:flag[Altar.Decomp.Expression[]]):m
0x000064:
    exit
