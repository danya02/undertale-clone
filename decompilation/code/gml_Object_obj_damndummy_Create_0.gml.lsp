0x000000:
    self.dsprite = 1353s
    self.usprite = 1362s
    self.lsprite = 1367s
    self.rsprite = 1363s
    self.dtsprite = 1353s
    self.utsprite = 1362s
    self.ltsprite = 1367s
    self.rtsprite = 1363s
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 270s
    self.talkedto = 0s
    self.image_speed = 0s
    call (scr_depth[]:int32 )
    self.con = 0s
    if !(> global.plot 115s) goto 0x0000DC
0x0000C8:
    push (== self.room 115s)
    goto 0x0000E0
0x0000DC:
    push 0s
0x0000E0:
    if !pop goto 0x0000F0
0x0000E4:
    call (instance_destroy[]:int32 )
0x0000F0:
    self.float = 0s
    self.offground = 0s
    self.siner = 0s
0x000114:
    exit
