0x000000:
    if (== self.image_index 47s) goto 0x000028
0x000014:
    push (== self.image_index 51s)
    goto 0x00002C
0x000028:
    push 1s
0x00002C:
    if !pop goto 0x000044
0x000030:
    call (snd_play[]:int32 (var 41s))
0x000044:
    exit
