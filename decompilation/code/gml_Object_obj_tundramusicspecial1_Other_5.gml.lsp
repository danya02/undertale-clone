0x000000:
    if !(> self.played 0s) goto 0x000028
0x000014:
    call (caster_free[]:int32 global.currentsong2)
0x000028:
    exit
