0x000000:
    self.timer = 0s
    self.skip = 0s
    if !(== self.skip 0s) goto 0x000074
0x00002C:
    self.con = 0s
    self.ahit = (instance_create[]:int32 (var 1677s) (var 16s) (var 116s))
    stog.alarm[4s] = 250s
0x000074:
    if !(== self.skip 1s) goto 0x000094
0x000088:
    self.con = 1s
0x000094:
    if !(== self.skip 2s) goto 0x0000B4
0x0000A8:
    self.con = 85s
0x0000B4:
    self.sidecon = 0s
    self.gowhite = 0s
    self.wht = 0s
    self.tor = 437827483
    self.und = 437827483
    self.sans = 437827483
    self.asg = 437827483
    self.al = 437827483
    self.pap = 437827483
    self.trickblack = 0s
    self.lastwhite = 0s
    self.border_d = 0s
    self.ting_s = 0s
    self.skiptext = 1s
    self.leg_r = 0s
    self.leg = 0s
    self.legx = (+ self.room_width 200s)
0x0001A4:
    exit
