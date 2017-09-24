0x000000:
    if !(== self.myinteract 1s) goto 0x000064
0x000014:
    if !(== (audio_is_playing[]:int32 (var 112s)) 0s) goto 0x000058
0x000030:
    call (snd_stop[]:int32 (var 112s))
    call (snd_play[]:int32 (var 112s))
0x000058:
    self.myinteract = 0s
0x000064:
    exit
