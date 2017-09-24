0x000000:
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 270s
    self.talkedto = 0s
    self.image_speed = 0s
    push -5s
    if !(== 85s:flag 1s) goto 0x000064
0x000058:
    self.image_index = 1s
0x000064:
    self.con = 0s
0x000070:
    exit
