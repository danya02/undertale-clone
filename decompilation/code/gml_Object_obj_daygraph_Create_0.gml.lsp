0x000000:
    self.die = 0s
    self.currenthour = self.current_hour
    if (<= self.currenthour 6s) goto 0x000044
0x000030:
    push (>= self.currenthour 18s)
    goto 0x000048
0x000044:
    push 1s
0x000048:
    if !pop goto 0x00005C
0x00004C:
    self.image_index = 0s
    goto 0x000068
0x00005C:
    self.image_index = 1s
0x000068:
    stog.alarm[0s] = 1800s
    self.image_speed = 0s
    self.weekday = self.current_weekday
    if !(== self.weekday 0s) goto 0x0000BC
0x0000AC:
    self.day = "SUN"
0x0000BC:
    if !(== self.weekday 1s) goto 0x0000E0
0x0000D0:
    self.day = "MON"
0x0000E0:
    if !(== self.weekday 2s) goto 0x000104
0x0000F4:
    self.day = "TUE"
0x000104:
    if !(== self.weekday 3s) goto 0x000128
0x000118:
    self.day = "WED"
0x000128:
    if !(== self.weekday 4s) goto 0x00014C
0x00013C:
    self.day = "THU"
0x00014C:
    if !(== self.weekday 5s) goto 0x000170
0x000160:
    self.day = "FRI"
0x000170:
    if !(== self.weekday 6s) goto 0x000194
0x000184:
    self.day = "SAT"
0x000194:
    if !(== self.weekday 7s) goto 0x0001B8
0x0001A8:
    self.day = "SUN"
0x0001B8:
    self.rot = 0s
0x0001C4:
    exit
