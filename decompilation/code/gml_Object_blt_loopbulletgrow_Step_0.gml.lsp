0x000000:
    self.radchange = 0s
    if !(> self.specialtimer 0s) goto 0x000088
0x000020:
    if !(< self.radius self.idealradius) goto 0x00005C
0x000038:
    self.radius = (+ self.radius 2s)
    self.radchange = 1s
0x00005C:
    if !(> self.radius self.idealradius) goto 0x000084
0x000074:
    self.radius = self.idealradius
0x000084:
    goto 0x0000EC
0x000088:
    if !(> self.radius self.idealradius) goto 0x0000C4
0x0000A0:
    self.radius = (- self.radius 2s)
    self.radchange = 2s
0x0000C4:
    if !(< self.radius self.idealradius) goto 0x0000EC
0x0000DC:
    self.radius = self.idealradius
0x0000EC:
    if !(== self.radchange 1s) goto 0x000168
0x000100:
    self.x = (+ self.x (lengthdir_x[]:int32 (- self.direction 90s) (var 2s)))
    self.y = (+ self.y (lengthdir_y[]:int32 (- self.direction 90s) (var 2s)))
0x000168:
    if !(== self.radchange 2s) goto 0x0001E4
0x00017C:
    self.x = (+ self.x (lengthdir_x[]:int32 (- self.direction 90s) (var -2s)))
    self.y = (+ self.y (lengthdir_y[]:int32 (- self.direction 90s) (var -2s)))
0x0001E4:
    self.circ = (* 6.28318530717959d self.radius)
    self.anglechange = (/ (double 360s) (/ self.circ self.speed))
    self.direction = (+ self.direction self.anglechange)
    if !(< self.nxadd self.xadd) goto 0x000280
0x000260:
    self.nxadd = (+ self.nxadd 0.125d)
0x000280:
    self.x = (+ self.x self.nxadd)
    self.y = (+ self.y self.yadd)
    self.specialtimer = (- self.specialtimer 1s)
    if !(< self.specialtimer 1s) goto 0x0002F8
0x0002E4:
    self.idealradius = 0.1d
0x0002F8:
    exit
