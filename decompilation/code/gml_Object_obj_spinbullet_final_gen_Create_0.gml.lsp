0x000000:
    self.centerx = self.x
    self.centery = self.y
    self.x = self.centerx
    self.y = self.centery
    self.side = (choose[]:int32 (var -1s) (var 1s))
    self.num = 0s
    self.direction = 0s
    self.add_dir = (random[]:int32 (var 360s))
    self.maxnum = 20s
    self.trip = 1s
    self.radius = 50s
    self.counter = 0s
    stog.spinbullet[0s] = 999999
    self.i = 0s
    if !(<= self.i self.maxnum) goto 0x00013C
0x0000FC:
    stog.spinbullet[(int32 self.i)] = 847873482423472384L
    self.i = (+ self.i 1s)
    goto 0x0000E4
0x00013C:
    if !(> (+ self.centery self.radius) self.room_height) goto 0x0001C4
0x000160:
    self.centery = (- self.centery (- (+ self.centery self.radius) self.room_height))
    self.y = self.centery
    self.add_dir = (+ 20s (random[]:int32 (var 140s)))
0x0001C4:
    self.memx = 0s
    self.memy = 0s
    if !(bool (instance_exists[]:int32 (var 1581s))) goto 0x000214
0x0001F4:
    self.memx = 1581.x
    self.memy = 1581.y
0x000214:
    exit
