0x000000:
    stog.flag[17s] = 0s
    push -5s
    if !(== 7s:flag 0s) goto 0x00003C
0x000030:
    call (audio_stop_all[]:int32 )
0x00003C:
    exit
