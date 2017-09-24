0x000000:
    self.image_xscale = (* self.room_width 2s)
    self.image_yscale = self.room_height
    call (action_move_to[]:int32 (var 0s) (var 0s))
    self.image_alpha = 0s
    self.tspeed = 0.08d
    self.over = 0s
0x000070:
    exit
