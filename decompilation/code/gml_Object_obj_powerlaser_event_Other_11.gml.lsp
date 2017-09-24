0x000000:
    self.drawblack = 1s
    self.powered = 1s
    pushenv 26s 0x000044
0x000020:
    self.image_speed = 0s
    self.image_index = 0s
    self.powered = 0s
0x000044:
    popenv 0x000020
0x000048:
    [obj_bluelaser_o].active = 2s
    [obj_bluelaser_o].hspeed = 0s
    [obj_bluelaser_o].rememberhspeed = 0s
    call (snd_play[]:int32 (var 106s))
0x000080:
    exit
