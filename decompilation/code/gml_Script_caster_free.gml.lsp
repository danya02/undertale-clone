0x000000:
    if !(!= self.argument0 -3s) goto 0x00002C
0x000014:
    call (audio_stop_sound[]:int32 self.argument0)
    goto 0x000038
0x00002C:
    call (audio_stop_all[]:int32 )
0x000038:
    exit
