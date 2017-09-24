0x000000:
    self.visible = 0s
    stog.alarm[1s] = 4s
    self.sprite_index = 100s
    self.image_speed = 0.2d
    if !(== (scr_monstersum[]:int32 ) 1s) goto 0x000060
0x000054:
    self.sprite_index = 101s
0x000060:
    self.dmg = 9s
0x00006C:
    exit
