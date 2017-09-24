0x000000:
    call (event_user[]:int32 (var 1s))
    pushenv -2s 0x000044
0x00001C:
    if !(== self.eligible 1s) goto 0x000044
0x000030:
    call (event_user[]:int32 (var 0s))
0x000044:
    popenv 0x00001C
0x000048:
    call (snd_play[]:int32 (var 106s))
0x00005C:
    exit
