0x000000:
    self.floweysong = global.currentsong
    global.inbattle = 1s
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.image_speed = 0s
    global.border = 3s
    self.conversation = 0s
    stog.alarm[0s] = 10s
    global.faceemotion = 0s
    call (SCR_BORDERSETUP[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
0x0000AC:
    exit
