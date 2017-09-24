0x000000:
    if !(== self.havewater 0s) goto 0x000074
0x000014:
    stog.flag[366s] = 1s
    self.havewater = 1s
    pushenv 1570s 0x00006C
0x00003C:
    self.dsprite = 1037s
    self.rsprite = 1035s
    self.usprite = 1036s
    self.lsprite = 1034s
0x00006C:
    popenv 0x00003C
0x000070:
    goto 0x0000E4
0x000074:
    call (event_user[]:int32 (var 2s))
    stog.flag[366s] = 0s
    self.havewater = 0s
    pushenv 1570s 0x0000E0
0x0000B0:
    self.dsprite = 1043s
    self.rsprite = 1045s
    self.usprite = 1044s
    self.lsprite = 1046s
0x0000E0:
    popenv 0x0000B0
0x0000E4:
    exit
