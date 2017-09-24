0x000000:
    pushenv 1573s 0x000030
0x000008:
    if !(== self.clapper 1s) goto 0x000030
0x00001C:
    call (event_user[]:int32 (var 0s))
0x000030:
    popenv 0x000008
0x000034:
    stog.alarm[6s] = 50s
    stog.alarm[8s] = 35s
    call (snd_play[]:int32 (var 105s))
0x000070:
    exit
