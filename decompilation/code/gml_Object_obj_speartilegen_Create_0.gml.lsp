0x000000:
    stog.alarm[3s] = 2s
    self.tums = 57s
    self.sound1 = 0s
    self.sound2 = 0s
    if !(== self.room 112s) goto 0x000060
0x00004C:
    stog.alarm[3s] = 30s
0x000060:
    exit
