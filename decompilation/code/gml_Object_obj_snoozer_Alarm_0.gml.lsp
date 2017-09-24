0x000000:
    stog.alarm[1s] = 1s
    stog.alarm[0s] = 100s
    self.snooze = 0s
    if !(== self.room 72s) goto 0x00005C
0x000048:
    stog.alarm[0s] = 150s
0x00005C:
    exit
