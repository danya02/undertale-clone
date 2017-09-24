0x000000:
    self.firingspeed = (+ global.firingrate 1s)
    stog.alarm[0s] = 1s
    self.g = (floor[]:int32 (random[]:int32 (var 2s)))
    if !(== self.g 1s) goto 0x00006C
0x000060:
    self.side = -1s
0x00006C:
    if !(== self.g 0s) goto 0x00008C
0x000080:
    self.side = 1s
0x00008C:
    self.dmg = 8s
    self.siner = 0s
    self.offset = 0s
0x0000B0:
    exit
