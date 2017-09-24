0x000000:
    if !(== self.playdo 1s) goto 0x000028
0x000014:
    call (audio_stop_sound[]:int32 self.myloop)
0x000028:
    exit
