0x000000:
    if !(== self.soundtype 2s) goto 0x000028
0x000014:
    call (snd_play[]:int32 (var 107s))
0x000028:
    if !(== self.soundtype 0s) goto 0x000050
0x00003C:
    call (snd_play[]:int32 (var 109s))
0x000050:
    call (instance_destroy[]:int32 )
0x00005C:
    exit
