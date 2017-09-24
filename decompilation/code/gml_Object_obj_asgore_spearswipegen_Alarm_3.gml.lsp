0x000000:
    stog.type[0s] = (choose[]:int32 (var 2s) (var 1s))
    stog.type[1s] = (choose[]:int32 (var 2s) (var 1s))
    stog.type[2s] = (choose[]:int32 (var 2s) (var 1s))
    stog.type[3s] = (choose[]:int32 (var 2s) (var 1s))
    stog.type[4s] = (choose[]:int32 (var 2s) (var 1s))
    stog.type[5s] = (choose[]:int32 (var 2s) (var 1s))
    if !(== self.diff 0s) goto 0x00011C
0x000104:
    self.flashtimer = 12s
    self.typeamt = 1s
0x00011C:
    if !(== self.diff 1s) goto 0x000148
0x000130:
    self.flashtimer = 9s
    self.typeamt = 2s
0x000148:
    if !(== self.diff 2s) goto 0x000174
0x00015C:
    self.flashtimer = 7s
    self.typeamt = 2s
0x000174:
    if !(== self.diff 3s) goto 0x0001A0
0x000188:
    self.flashtimer = 7s
    self.typeamt = 3s
0x0001A0:
    stog.alarm[1s] = 1s
    self.typeno = 0s
0x0001C0:
    exit
