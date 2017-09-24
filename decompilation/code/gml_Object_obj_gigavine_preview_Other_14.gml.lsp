0x000000:
    self.save_nowtime = self.nowtime
    self.save_active = self.active
    self.save_visible = self.visible
    if !(== self.save_visible 0s) goto 0x000050
0x000044:
    call (instance_destroy[]:int32 )
0x000050:
    self.saved = 1s
0x00005C:
    exit
