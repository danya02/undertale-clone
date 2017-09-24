0x000000:
    self.level = (+ self.level 1s)
    push -1s
    self.sprite_index = (int32 self.level):levelpic
0x000038:
    exit
