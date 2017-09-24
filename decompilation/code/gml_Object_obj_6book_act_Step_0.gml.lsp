0x000000:
    if !(== self.type 1s) goto 0x000068
0x000014:
    if !(> self.speed 0s) goto 0x000048
0x000028:
    self.speed = (- self.speed 0.03d)
0x000048:
    if !(< self.speed 0s) goto 0x000068
0x00005C:
    self.speed = 0s
0x000068:
    if !(> self.x (- 405s (/ self.sprite_width (double 2s)))) goto 0x0000BC
0x000094:
    if !(> self.hspeed 0s) goto 0x0000BC
0x0000A8:
    self.hspeed = (- self.hspeed)
0x0000BC:
    if !(< self.x (+ 250s (/ self.sprite_width (double 2s)))) goto 0x000110
0x0000E8:
    if !(< self.hspeed 0s) goto 0x000110
0x0000FC:
    self.hspeed = (- self.hspeed)
0x000110:
    exit
