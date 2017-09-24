0x000000:
    call (caster_free[]:int32 self.fansfx)
    if !(== self.room 260s) goto 0x00003C
0x000028:
    call (caster_resume[]:int32 global.currentsong)
0x00003C:
    exit
