0x000000:
    self.image_xscale = (* self.room_width 3s)
    self.image_yscale = (* self.room_height 2s)
    self.image_alpha = 1s
    self.tspeed = -0.08d
    self.over = 1s
    call (action_move_to[]:int32 (var -20s) (var -20s))
0x000078:
    exit
