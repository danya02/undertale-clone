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
    self.facing = 0s
    self.conversation = 0s
    self.direction = 180s
    if !(> global.plot 8s) goto 0x000100
0x0000F0:
    call (instance_destroy[]:int32 )
    goto 0x000184
0x000100:
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    global.typer = 4s
    global.facechoice = 1s
    global.msc = 221s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    global.interact = 1s
    self.conversation = 1s
0x000184:
    exit
