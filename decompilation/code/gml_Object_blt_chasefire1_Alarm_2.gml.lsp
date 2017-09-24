0x000000:
    if !(> 743.x self.x) goto 0x00003C
0x000018:
    self.hspeed = (+ self.hspeed 0.1d)
    goto 0x00005C
0x00003C:
    self.hspeed = (- self.hspeed 0.1d)
0x00005C:
    if !(> 743.y self.y) goto 0x000098
0x000074:
    self.vspeed = (+ self.vspeed 0.1d)
    goto 0x0000B8
0x000098:
    self.vspeed = (- self.vspeed 0.1d)
0x0000B8:
    stog.alarm[2s] = 2s
0x0000CC:
    exit
