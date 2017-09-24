0x000000:
    if !(bool (instance_exists[]:int32 (var 517s))) goto 0x000210
0x000018:
    self.reduce = 0s
    if !(< 517.lac 4s) goto 0x0000EC
0x000038:
    if !(== 517.damageturn 0s) goto 0x0000E8
0x00004C:
    global.km = (+ global.km self.innate_karma)
    if !(>= self.innate_karma 2s) goto 0x000088
0x00007C:
    self.innage_karma = 1s
0x000088:
    if !(>= self.innate_karma 3s) goto 0x0000A8
0x00009C:
    self.innate_karma = 2s
0x0000A8:
    if !(>= self.innate_karma 5s) goto 0x0000C8
0x0000BC:
    self.innate_karma = 3s
0x0000C8:
    pushenv 517s 0x0000E4
0x0000D0:
    call (event_user[]:int32 (var 2s))
0x0000E4:
    popenv 0x0000D0
0x0000E8:
    goto 0x000210
0x0000EC:
    if !(>= global.hp 60s) goto 0x0001A0
0x000100:
    global.km = (+ global.km self.innate_karma)
    if !(>= self.innate_karma 2s) goto 0x00013C
0x000130:
    self.innage_karma = 1s
0x00013C:
    if !(>= self.innate_karma 3s) goto 0x00015C
0x000150:
    self.innate_karma = 2s
0x00015C:
    if !(>= self.innate_karma 5s) goto 0x00017C
0x000170:
    self.innate_karma = 3s
0x00017C:
    pushenv 517s 0x000198
0x000184:
    call (event_user[]:int32 (var 2s))
0x000198:
    popenv 0x000184
0x00019C:
    goto 0x000210
0x0001A0:
    if !(>= global.hp 30s) goto 0x0001F0
0x0001B4:
    global.km = (+ global.km 1s)
    pushenv 517s 0x0001E8
0x0001D4:
    call (event_user[]:int32 (var 2s))
0x0001E8:
    popenv 0x0001D4
0x0001EC:
    goto 0x000210
0x0001F0:
    pushenv 517s 0x00020C
0x0001F8:
    call (event_user[]:int32 (var 2s))
0x00020C:
    popenv 0x0001F8
0x000210:
    exit
