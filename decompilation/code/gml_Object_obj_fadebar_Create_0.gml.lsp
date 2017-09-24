0x000000:
    self.fadespeed = 0.1d
    self.x = (+ self.x (floor[]:int32 (/ self.sprite_width (double 2s))))
    self.y = (+ self.y (floor[]:int32 (/ self.sprite_height (double 2s))))
    self.image_speed = 0s
0x000080:
    exit
