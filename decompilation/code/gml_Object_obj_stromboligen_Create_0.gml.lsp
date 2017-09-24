0x000000:
    stog.alarm[0s] = 1s
    self.dmg = 0s
    self.rate = global.firingrate
    self.spd = 2s
    self.sum = (scr_monstersum[]:int32 )
    if !(> self.sum 1s) goto 0x000074
0x000060:
    self.spd = 1.5d
0x000074:
    exit
