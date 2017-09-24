0x000000:
    if !(== self.sprite_index 1097s) goto 0x00004C
0x000014:
    self.image_index = 0s
    self.sprite_index = 1099s
    self.image_speed = 0s
    stog.alarm[0s] = 30s
0x00004C:
    if !(== self.sprite_index 1098s) goto 0x00008C
0x000060:
    self.image_index = 0s
    self.sprite_index = 1100s
    self.image_speed = 0.5d
0x00008C:
    exit
