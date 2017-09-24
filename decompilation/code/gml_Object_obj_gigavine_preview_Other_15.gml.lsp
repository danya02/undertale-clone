0x000000:
    if !(== self.saved 0s) goto 0x000024
0x000014:
    call (instance_destroy[]:int32 )
    goto 0x000054
0x000024:
    self.nowtime = self.save_nowtime
    self.active = self.save_active
    self.visible = self.save_visible
0x000054:
    exit
