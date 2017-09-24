0x000000:
    if !(== self.on 1s) goto 0x00008C
0x000014:
    self.image_index = 1s
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000088
0x000038:
    if !(== self.con 0s) goto 0x000088
0x00004C:
    self.con = 1s
    pushenv 517s 0x00006C
0x000060:
    self.death_c = 1s
0x00006C:
    popenv 0x000060
0x000070:
    pushenv 743s 0x000084
0x000078:
    self.movement = -1s
0x000084:
    popenv 0x000078
0x000088:
    goto 0x000098
0x00008C:
    self.image_index = 0s
0x000098:
    self.on = 0s
0x0000A4:
    exit
