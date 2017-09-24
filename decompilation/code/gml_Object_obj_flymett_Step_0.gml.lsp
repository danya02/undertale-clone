0x000000:
    self.siner = (+ self.siner 1s)
    self.y = (+ self.y (sin[]:int32 (/ self.siner (double 3s))))
    if !(== self.movemode 1s) goto 0x0000AC
0x00005C:
    self.siner2 = (+ self.siner2 1s)
    self.x = (+ self.x (* (sin[]:int32 (/ self.siner (double 12s))) 6s))
0x0000AC:
    if !(== self.overmode 1s) goto 0x000150
0x0000C0:
    if !(== self.con 0s) goto 0x0000F4
0x0000D4:
    call (event_user[]:int32 (var 1s))
    self.con = 1s
0x0000F4:
    if !(== self.con 1s) goto 0x000150
0x000108:
    stog.alarm[2s] = 20s
    if !(== self.movemode 1s) goto 0x000144
0x000130:
    stog.alarm[2s] = 30s
0x000144:
    self.con = 2s
0x000150:
    if !(== self.overmode 2s) goto 0x0001F4
0x000164:
    if !(== self.con 0s) goto 0x000198
0x000178:
    call (event_user[]:int32 (var 1s))
    self.con = 1s
0x000198:
    if !(== self.con 1s) goto 0x0001F4
0x0001AC:
    stog.alarm[2s] = 40s
    if !(== self.movemode 1s) goto 0x0001E8
0x0001D4:
    stog.alarm[2s] = 40s
0x0001E8:
    self.con = 2s
0x0001F4:
    exit
