0x000000:
    call (caster_resume[]:int32 global.batmusic)
    if !(bool (instance_exists[]:int32 (var 259s))) goto 0x000090
0x00002C:
    if !(== 259.emotion 2s) goto 0x00004C
0x000040:
    [obj_shyren].emotion = 1s
0x00004C:
    pushenv 259s 0x00008C
0x000054:
    push -1s
    call (caster_stop[]:int32 0s:longnote)
    push -1s
    call (caster_stop[]:int32 1s:longnote)
0x00008C:
    popenv 0x000054
0x000090:
    exit
