0x000000:
    call (caster_free[]:int32 self.cym)
    if !(== self.room 43s) goto 0x00003C
0x000028:
    call (room_goto[]:int32 (var 325s))
0x00003C:
    if !(== self.room 238s) goto 0x000064
0x000050:
    call (room_goto[]:int32 (var 239s))
0x000064:
    exit
