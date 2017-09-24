0x000000:
    self.myinteract = 0s
    self.image_speed = 0s
    self.on = 0s
    call (script_execute[]:int32 (var 113s))
    if !(> global.plot 12s) goto 0x000064
0x00004C:
    self.on = 1s
    self.image_index = 1s
0x000064:
    exit
