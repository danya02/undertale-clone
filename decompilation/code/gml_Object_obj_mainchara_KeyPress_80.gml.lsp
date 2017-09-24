0x000000:
    if !(== global.debug 1s) goto 0x000044
0x000014:
    if !(< self.room_speed 40s) goto 0x000038
0x000028:
    self.room_speed = 200s
    goto 0x000044
0x000038:
    self.room_speed = 30s
0x000044:
    exit
