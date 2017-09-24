0x000000:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000088
0x00001C:
    pushenv (int32 self.blcon) 0x000038
0x00002C:
    call (instance_destroy[]:int32 )
0x000038:
    popenv 0x00002C
0x00003C:
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    stog.alarm[6s] = 50s
    call (snd_play[]:int32 (var 90s))
0x000088:
    if !(== (instance_exists[]:int32 (var 782s)) 1s) goto 0x0000B8
0x0000A4:
    stog.alarm[5s] = 2s
0x0000B8:
    exit
