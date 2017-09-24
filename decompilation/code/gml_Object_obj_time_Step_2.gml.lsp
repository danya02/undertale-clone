0x000000:
    if !(== self.canquit 1s) goto 0x000034
0x000014:
    if !(> self.quit 20s) goto 0x000034
0x000028:
    call (game_end[]:int32 )
0x000034:
    exit
