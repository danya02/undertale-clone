0x000000:
    self.image_speed = 0s
    push -5s
    if !(> 103s:flag 0s) goto 0x000034
0x000028:
    self.image_index = 1s
0x000034:
    exit
