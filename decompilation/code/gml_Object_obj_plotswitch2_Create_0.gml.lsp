0x000000:
    self.myinteract = 0s
    self.image_speed = 0s
    self.on = 0s
    call (script_execute[]:int32 (var 113s))
    if !(> global.plot 4.5d) goto 0x000060
0x000054:
    self.on = 1s
0x000060:
    exit
