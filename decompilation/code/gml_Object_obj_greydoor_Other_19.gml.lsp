0x000000:
    global.interact = 3s
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    call (audio_stop_all[]:int32 )
    if !(== self.touched 0s) goto 0x000084
0x000050:
    call (snd_play[]:int32 (var 437s))
    stog.alarm[2s] = 14s
    self.touched = 1s
0x000084:
    exit
