0x000000:
    self.dsprite = 1392s
    self.usprite = 1400s
    self.lsprite = 1395s
    self.rsprite = 1397s
    self.dtsprite = 1394s
    self.utsprite = 1401s
    self.ltsprite = 1396s
    self.rtsprite = 1399s
    self.myinteract = 0s
    self.facing = 3s
    self.direction = 270s
    self.talkedto = 0s
    self.image_speed = 0s
    self.con = 0s
    self.fun = 0s
    if !(> global.plot 100s) goto 0x0000F8
0x0000C8:
    if !(== self.room 68s) goto 0x0000F8
0x0000DC:
    push -5s
    push (== 7s:flag 0s)
    goto 0x0000FC
0x0000F8:
    push 0s
0x0000FC:
    if !pop goto 0x00010C
0x000100:
    call (instance_destroy[]:int32 )
0x00010C:
    if !(> global.plot 103s) goto 0x000134
0x000120:
    push (== self.room 83s)
    goto 0x000138
0x000134:
    push 0s
0x000138:
    if !pop goto 0x000148
0x00013C:
    call (instance_destroy[]:int32 )
0x000148:
    exit
