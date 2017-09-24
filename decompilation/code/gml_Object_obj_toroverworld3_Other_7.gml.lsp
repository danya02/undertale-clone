0x000000:
    if !(== self.sprite_index 1124s) goto 0x000044
0x000014:
    [obj_mainchara].visible = 1s
    self.image_speed = 0s
    self.sprite_index = 1103s
    self.dsprite = 1103s
0x000044:
    exit
