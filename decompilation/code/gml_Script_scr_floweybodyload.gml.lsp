0x000000:
    if !(== self.saved 1s) goto 0x0000D4
0x000014:
    self.x = self.save_x
    self.y = self.save_y
    self.image_index = self.save_index
    self.sprite_index = self.save_sprite
    self.image_blend = self.save_blend
    self.image_xscale = self.save_xscale
    self.image_yscale = self.save_yscale
    self.image_angle = self.save_angle
    self.hspeed = self.save_hspeed
    self.vspeed = self.save_vspeed
    self.speed = self.save_speed
    self.direction = self.save_direction
0x0000D4:
    exit
