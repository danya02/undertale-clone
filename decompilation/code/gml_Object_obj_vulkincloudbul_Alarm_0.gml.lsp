0x000000:
    self.firing = (+ self.firing 1s)
    stog.alarm[0s] = 15s
    if !(> self.firing 3s) goto 0x00006C
0x000040:
    self.firing = 0s
    self.firetime = 0s
    stog.alarm[1s] = 2s
0x00006C:
    exit
