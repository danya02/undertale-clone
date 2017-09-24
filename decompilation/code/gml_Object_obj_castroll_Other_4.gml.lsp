0x000000:
    if !(== global.cast_type 1s) goto 0x000040
0x000014:
    push (var 1s)
    call (caster_play[]:int32 (var 1s) -5s 2s:endsong)
0x000040:
    exit
