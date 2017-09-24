0x000000:
    self.image_speed = 0.5d
    call (snd_play[]:int32 (var 46s))
    call (scr_shake[]:int32 (var 2s) (var 3s) (var 3s))
    if !(== global.weapon 25s) goto 0x00006C
0x000060:
    self.sprite_index = 762s
0x00006C:
    self.crit = 0s
0x000078:
    exit
