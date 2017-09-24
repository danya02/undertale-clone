0x000000:
    if !(== self.idealww 50s) goto 0x000048
0x000014:
    self.idealww = 0.1d
    pushenv 273s 0x000044
0x000030:
    call (event_user[]:int32 (var 3s))
0x000044:
    popenv 0x000030
0x000048:
    if !(== self.idealww 26s) goto 0x000068
0x00005C:
    self.idealww = 50s
0x000068:
    if !(== self.idealww 18s) goto 0x000088
0x00007C:
    self.idealww = 26s
0x000088:
    if !(== self.idealww 14s) goto 0x0000A8
0x00009C:
    self.idealww = 18s
0x0000A8:
    if !(== self.idealww 10s) goto 0x0000C8
0x0000BC:
    self.idealww = 14s
0x0000C8:
    if !(== self.idealww 6s) goto 0x0000E8
0x0000DC:
    self.idealww = 10s
0x0000E8:
    if !(== self.idealww 2s) goto 0x000108
0x0000FC:
    self.idealww = 6s
0x000108:
    if !(== self.idealww 0s) goto 0x000128
0x00011C:
    self.idealww = 2s
0x000128:
    exit
