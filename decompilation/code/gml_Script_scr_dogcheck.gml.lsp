0x000000:
    self.dogcheck = 1s
    if !(< global.currentroom 4s) goto 0x00002C
0x000020:
    self.dogcheck = 0s
0x00002C:
    if !(> global.currentroom 265s) goto 0x00004C
0x000040:
    self.dogcheck = 0s
0x00004C:
    if !(== global.currentroom 240s) goto 0x00006C
0x000060:
    self.dogcheck = 0s
0x00006C:
    if !(== global.currentroom 241s) goto 0x00008C
0x000080:
    self.dogcheck = 0s
0x00008C:
    if !(== global.currentroom 239s) goto 0x0000AC
0x0000A0:
    self.dogcheck = 0s
0x0000AC:
    if !(== global.currentroom 78s) goto 0x0000CC
0x0000C0:
    self.dogcheck = 0s
0x0000CC:
    if !(== global.currentroom 79s) goto 0x0000EC
0x0000E0:
    self.dogcheck = 0s
0x0000EC:
    if !(== global.currentroom 80s) goto 0x00010C
0x000100:
    self.dogcheck = 0s
0x00010C:
    if !(== self.dogcheck 0s) goto 0x000134
0x000120:
    call (room_goto[]:int32 (var 326s))
0x000134:
    exit
