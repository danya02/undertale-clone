0x000000:
    call (move_towards_point[]:int32 (var 12s) self.centery self.centerx)
    if !(== self.king 1s) goto 0x00004C
0x000038:
    call (snd_play[]:int32 (var 142s))
0x00004C:
    exit
