0x000000:
    self.saved_angle = self.image_angle
    self.saved_x = self.x
    self.saved_y = self.y
    self.saved_active = self.active
    self.saved_speed = self.speed
    self.saved_direction = self.direction
    self.saved_size = self.size
    self.saved_xscale = self.image_xscale
    self.saved_yscale = self.image_yscale
    self.saved_visible = self.visible
    self.saved = 1s
    if !(== self.saved_active 0s) goto 0x0000CC
0x0000C0:
    call (instance_destroy[]:int32 )
0x0000CC:
    exit
