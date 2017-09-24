0x000000:
    if !(== self.saved 0s) goto 0x000024
0x000014:
    call (instance_destroy[]:int32 )
    goto 0x0000E4
0x000024:
    self.image_angle = self.saved_angle
    self.x = self.saved_x
    self.y = self.saved_y
    self.active = self.saved_active
    self.speed = self.saved_speed
    self.direction = self.saved_direction
    self.size = self.saved_size
    self.image_xscale = self.saved_xscale
    self.image_yscale = self.saved_yscale
    self.visible = self.saved_visible
    if !(== self.saved_active 0s) goto 0x0000E4
0x0000D8:
    call (instance_destroy[]:int32 )
0x0000E4:
    exit
