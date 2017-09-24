0x000000:
    if !(== self.dcon 55s) goto 0x000040
0x000014:
    call (caster_free[]:int32 (var -3s))
    call (room_goto[]:int32 (var 323s))
    exit
0x000040:
    exit
