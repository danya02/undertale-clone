0x000000:
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 0s
    self.talkedto = 0s
    self.image_speed = 0s
    self.murd = 0s
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x000068
0x00005C:
    self.murd = 1s
0x000068:
    self.con = 0s
0x000074:
    exit
