0x000000:
    if !(== self.con 0s) goto 0x00007C
0x000014:
    self.swipetimer = (+ self.swipetimer 1s)
    if !(> self.swipetimer self.initswipewait) goto 0x000050
0x000044:
    self.con = 1s
0x000050:
    if !(> self.quick 0s) goto 0x00007C
0x000064:
    self.image_index = 2s
    self.con = 1s
0x00007C:
    if !(== self.con 2s) goto 0x000114
0x000090:
    if !(== self.image_xscale 2s) goto 0x0000B4
0x0000A4:
    self.image_xscale = -2s
    goto 0x0000C0
0x0000B4:
    self.image_xscale = 2s
0x0000C0:
    self.con = 3s
    self.hitted = 0s
    self.image_speed = 0s
    self.image_index = 0s
    self.swipetimer = 0s
    self.curamt = (+ self.curamt 1s)
0x000114:
    if !(== self.con 3s) goto 0x0001D8
0x000128:
    if !(> self.curamt self.amt) goto 0x000164
0x000140:
    self.con = 99s
    stog.alarm[2s] = 45s
    goto 0x0001D8
0x000164:
    self.swipetimer = (+ self.swipetimer 1s)
    self.image_speed = 0s
    self.image_index = 0s
    if !(> self.swipetimer self.swipewait) goto 0x0001D8
0x0001AC:
    self.con = 1s
    if !(> self.quick 1s) goto 0x0001D8
0x0001CC:
    self.image_index = 2s
0x0001D8:
    if !(== self.con 1s) goto 0x000234
0x0001EC:
    self.image_index = (+ self.image_index self.cutspeed)
    if !(>= self.image_index 6s) goto 0x000234
0x00021C:
    self.con = 2s
    self.swipetimer = 0s
0x000234:
    exit
