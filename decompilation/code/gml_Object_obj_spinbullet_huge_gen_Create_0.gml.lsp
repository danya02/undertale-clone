0x000000:
    self.centerx = self.x
    self.centery = self.y
    self.x = self.centerx
    self.y = self.centery
    self.side = (choose[]:int32 (var -1s) (var 1s))
    self.strike = 0s
    if !(== self.strike 0s) goto 0x0000F8
0x000080:
    self.num = 0s
    self.direction = 0s
    self.add_dir = (random[]:int32 (var 360s))
    self.maxnum = 10s
    self.trip = 1s
    self.radius = 60s
    self.counter = 0s
    stog.spinbullet[0s] = 999999
0x0000F8:
    if !(== self.strike 1s) goto 0x00016C
0x00010C:
    self.num = 0s
    self.direction = 0s
    self.add_dir = (random[]:int32 (var 360s))
    self.maxnum = 46s
    self.trip = 1s
    self.radius = 62s
    self.counter = 0s
0x00016C:
    self.i = 0s
    if !(<= self.i self.maxnum) goto 0x0001D0
0x000190:
    stog.spinbullet[(int32 self.i)] = 847873482423472384L
    self.i = (+ self.i 1s)
    goto 0x000178
0x0001D0:
    if !(> (+ self.centery self.radius) self.room_height) goto 0x000258
0x0001F4:
    self.centery = (- self.centery (- (+ self.centery self.radius) self.room_height))
    self.y = self.centery
    self.add_dir = (+ 20s (random[]:int32 (var 140s)))
0x000258:
    exit
