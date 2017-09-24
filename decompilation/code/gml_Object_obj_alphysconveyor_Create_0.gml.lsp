0x000000:
    self.image_yscale = 4.8d
    self.col = -1s
    if !(< self.x (/ self.room_width (double 2s))) goto 0x00005C
0x000044:
    self.sprite_index = 1834s
    self.image_speed = 1s
0x00005C:
    if !(> self.x (/ self.room_width (double 2s))) goto 0x000098
0x000080:
    self.sprite_index = 1834s
    self.image_speed = -1s
0x000098:
    exit
