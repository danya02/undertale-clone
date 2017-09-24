0x000000:
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.image_speed = 0s
    if !(== self.room 304s) goto 0x000050
0x000044:
    self.sprite_index = 1592s
0x000050:
    if !(== self.room 122s) goto 0x000070
0x000064:
    self.sprite_index = 1570s
0x000070:
    self.talkedto = 0s
    if !(== self.room 118s) goto 0x00009C
0x000090:
    self.sprite_index = 1495s
0x00009C:
    exit
