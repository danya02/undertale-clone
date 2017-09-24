0x000000:
    if !(== self.sprite_index 157s) goto 0x000038
0x000014:
    self.image_index = (round[]:int32 (/ self.direction (double 10s)))
0x000038:
    exit
