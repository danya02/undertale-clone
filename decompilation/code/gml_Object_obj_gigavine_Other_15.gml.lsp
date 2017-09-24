0x000000:
    if !(== self.saved 0s) goto 0x000024
0x000014:
    call (instance_destroy[]:int32 )
    goto 0x00009C
0x000024:
    self.active = self.save_active
    self.visible = self.save_visible
    self.image_xscale = self.save_xscale
    self.image_blend = self.save_blend
    self.image_alpha = self.save_alpha
    self.con = self.save_con
    stog.alarm[4s] = self.save_alarm
0x00009C:
    exit
