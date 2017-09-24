0x000000:
    self.y = self.yprevious
    self.vspeed = 0s
    self.gravity_direction = 0s
    if !(== self.r 1s) goto 0x000048
0x00003C:
    self.gravity_direction = 180s
0x000048:
    exit
