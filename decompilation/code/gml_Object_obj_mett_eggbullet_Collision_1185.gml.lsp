0x000000:
    if !(== self.col 0s) goto 0x000070
0x000014:
    pushenv -2s 0x000044
0x00001C:
    if !(== self.eligible 1s) goto 0x000044
0x000030:
    call (event_user[]:int32 (var 0s))
0x000044:
    popenv 0x00001C
0x000048:
    call (snd_play[]:int32 (var 106s))
    call (event_user[]:int32 (var 1s))
0x000070:
    exit
