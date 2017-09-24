0x000000:
    [obj_spinbullet_huge].centerx = self.centerx
    [obj_spinbullet_huge].centery = self.centery
    pushenv 1648s 0x0000A4
0x000028:
    self.sprite_index = 2252s
    call (move_towards_point[]:int32 (var -1.2d) self.centery self.centerx)
    self.gravity_direction = (point_direction[]:int32 self.centery self.centerx self.y self.x)
    self.gravity = 0.015d
0x0000A4:
    popenv 0x000028
0x0000A8:
    exit
