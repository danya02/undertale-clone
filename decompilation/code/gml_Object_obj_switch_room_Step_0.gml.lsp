0x000000:
    if !(== self.myinteract 1s) goto 0x000074
0x000014:
    if !(== self.on 0s) goto 0x000040
0x000028:
    call (event_user[]:int32 (var 0s))
    goto 0x000054
0x000040:
    call (event_user[]:int32 (var 1s))
0x000054:
    self.myinteract = 0s
    call (snd_play[]:int32 (var 132s))
0x000074:
    exit
