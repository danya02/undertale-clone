0x000000:
    self.currentlevel = global.lv
    if !(>= global.xp 10s) goto 0x000030
0x000024:
    global.lv = 2s
0x000030:
    if !(>= global.xp 30s) goto 0x000050
0x000044:
    global.lv = 3s
0x000050:
    if !(>= global.xp 70s) goto 0x000070
0x000064:
    global.lv = 4s
0x000070:
    if !(>= global.xp 120s) goto 0x000090
0x000084:
    global.lv = 5s
0x000090:
    if !(>= global.xp 200s) goto 0x0000B0
0x0000A4:
    global.lv = 6s
0x0000B0:
    if !(>= global.xp 300s) goto 0x0000D0
0x0000C4:
    global.lv = 7s
0x0000D0:
    if !(>= global.xp 500s) goto 0x0000F0
0x0000E4:
    global.lv = 8s
0x0000F0:
    if !(>= global.xp 800s) goto 0x000110
0x000104:
    global.lv = 9s
0x000110:
    if !(>= global.xp 1200s) goto 0x000130
0x000124:
    global.lv = 10s
0x000130:
    if !(>= global.xp 1700s) goto 0x000150
0x000144:
    global.lv = 11s
0x000150:
    if !(>= global.xp 2500s) goto 0x000170
0x000164:
    global.lv = 12s
0x000170:
    if !(>= global.xp 3500s) goto 0x000190
0x000184:
    global.lv = 13s
0x000190:
    if !(>= global.xp 5000s) goto 0x0001B0
0x0001A4:
    global.lv = 14s
0x0001B0:
    if !(>= global.xp 7000s) goto 0x0001D0
0x0001C4:
    global.lv = 15s
0x0001D0:
    if !(>= global.xp 10000s) goto 0x0001F0
0x0001E4:
    global.lv = 16s
0x0001F0:
    if !(>= global.xp 15000s) goto 0x000210
0x000204:
    global.lv = 17s
0x000210:
    if !(>= global.xp 25000s) goto 0x000230
0x000224:
    global.lv = 18s
0x000230:
    if !(>= global.xp 50000) goto 0x000254
0x000248:
    global.lv = 19s
0x000254:
    if !(>= global.xp 99999) goto 0x000288
0x00026C:
    global.lv = 20s
    global.xp = 99999
0x000288:
    if !(!= global.lv self.currentlevel) goto 0x000354
0x0002A0:
    self.levelup = 1s
    global.maxhp = (+ 16s (* global.lv 4s))
    global.at = (+ 8s (* global.lv 2s))
    global.df = (+ 9s (ceil[]:int32 (/ global.lv (double 4s))))
    if !(== global.lv 20s) goto 0x000350
0x00032C:
    global.maxhp = 99s
    global.at = 99s
    global.df = 99s
0x000350:
    goto 0x000360
0x000354:
    self.levelup = 0s
0x000360:
    exit
