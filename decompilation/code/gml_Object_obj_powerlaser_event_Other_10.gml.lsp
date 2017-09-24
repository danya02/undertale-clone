0x000000:
    self.drawblack = 0s
    self.powered = 0s
    [obj_bluelaser_o].active = 1s
    [obj_bluelaser_o].hspeed = 0s
    [obj_bluelaser_o].rememberhspeed = 0s
    call (snd_play[]:int32 (var 106s))
    pushenv 26s 0x000084
0x000058:
    self.image_speed = 0.125d
    self.image_index = 0s
    self.powered = 1s
0x000084:
    popenv 0x000058
0x000088:
    exit
