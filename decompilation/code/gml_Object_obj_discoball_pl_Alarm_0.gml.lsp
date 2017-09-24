0x000000:
    if !(== self.diff 0s) goto 0x0000C0
0x000014:
    self.laserno = 0s
    self.maxlaser = 5s
    stog.laser[0s] = 1s
    stog.laser[1s] = 1s
    stog.laser[2s] = 2s
    stog.laser[3s] = 1s
    stog.laser[4s] = 1s
    self.laserdist = 72s
    self.rotspeed = 2s
    self.rottimer = 80s
    self.rot = 20s
0x0000C0:
    if !(== self.diff 1s) goto 0x000174
0x0000D4:
    self.laserno = 0s
    self.maxlaser = 5s
    stog.laser[0s] = 1s
    stog.laser[1s] = 1s
    stog.laser[2s] = 1s
    stog.laser[3s] = 2s
    stog.laser[4s] = 1s
    self.laserdist = 72s
    self.rotspeed = 4s
    self.rot = 0s
0x000174:
    if !(== self.diff 2s) goto 0x000230
0x000188:
    self.laserno = 0s
    self.maxlaser = 4s
    stog.laser[0s] = 1s
    stog.laser[1s] = 1s
    stog.laser[2s] = 2s
    stog.laser[3s] = 1s
    stog.laser[4s] = 1s
    self.laserdist = 90s
    self.rotspeed = 4.75d
    self.rot = 0s
0x000230:
    self.active = 1s
0x00023C:
    exit
