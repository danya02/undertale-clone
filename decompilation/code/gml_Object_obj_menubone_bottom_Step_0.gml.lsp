0x000000:
    if !(== self.active 1s) goto 0x0001D8
0x000014:
    if !(== self.con 1s) goto 0x00005C
0x000028:
    self.x = self.idealx
    self.y = 480s
    self.vspeed = -10s
    self.con = 2s
0x00005C:
    if !(== self.con 2s) goto 0x0000B0
0x000070:
    if !(<= self.y self.idealy) goto 0x0000B0
0x000088:
    self.vspeed = 0s
    self.hspeed = self.myspeed
    self.con = 3s
0x0000B0:
    if !(== self.con 3s) goto 0x000178
0x0000C4:
    self.cool = 0s
    if !(< self.hspeed 0s) goto 0x000108
0x0000E4:
    if !(<= self.x self.idealx2) goto 0x000108
0x0000FC:
    self.cool = 1s
0x000108:
    if !(> self.hspeed 0s) goto 0x000140
0x00011C:
    if !(>= self.x self.idealx2) goto 0x000140
0x000134:
    self.cool = 1s
0x000140:
    if !(== self.cool 1s) goto 0x000178
0x000154:
    self.hspeed = 0s
    self.vspeed = 10s
    self.con = 4s
0x000178:
    if !(== self.con 4s) goto 0x0001D8
0x00018C:
    if !(>= self.y 480s) goto 0x0001D8
0x0001A0:
    self.speed = 0s
    self.con = 1s
    if !(== self.terminate 1s) goto 0x0001D8
0x0001CC:
    call (instance_destroy[]:int32 )
0x0001D8:
    exit
