0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.t = 0s
    self.image_speed = 0s
    self.dsprite = 1103s
    self.usprite = 1112s
    self.lsprite = 1108s
    self.rsprite = 1107s
    self.dtsprite = 1105s
    self.utsprite = 1111s
    self.ltsprite = 1110s
    self.rtsprite = 1109s
    self.myinteract = 0s
    self.facing = 3s
    self.conversation = 0s
    self.direction = 270s
    call (path_start[]:int32 (var 1s) (var 0s) (var 0s) (var 5s))
    if !(> global.plot 1s) goto 0x000128
0x00011C:
    call (instance_destroy[]:int32 )
0x000128:
    exit
