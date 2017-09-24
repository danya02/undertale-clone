0x000000:
    call (scr_depth[]:int32 )
    stog.m[0s] = 1655s
    stog.m[1s] = 1659s
    stog.m[2s] = 1660s
    stog.m[3s] = 1664s
    stog.m[4s] = 1661s
    stog.m[5s] = 1662s
    stog.m[6s] = 1656s
    stog.m[7s] = 1657s
    push -5s
    if !(< 20s:flag 7s) goto 0x0000F0
0x0000C8:
    self.sprite_index = (int32 20s:flag[Altar.Decomp.Expression[]]):m
0x0000F0:
    self.d = 0s
0x0000FC:
    exit
