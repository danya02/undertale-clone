0x000000:
    self.save_active = self.active
    self.save_visible = self.visible
    self.save_xscale = self.image_xscale
    self.save_blend = self.image_blend
    self.save_alpha = self.image_alpha
    self.save_con = self.con
    push -1s
    self.save_alarm = 4s:alarm
    self.saved = 1s
0x000084:
    exit
