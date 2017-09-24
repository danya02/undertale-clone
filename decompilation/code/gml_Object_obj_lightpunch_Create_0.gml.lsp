0x000000:
    self.image_speed = 0.5d
    call (snd_play[]:int32 (var 45s))
    if !(== global.weapon 25s) goto 0x000048
0x00003C:
    self.sprite_index = 761s
0x000048:
    exit
