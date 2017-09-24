0x000000:
    if !(bool (instance_position[]:int32 (var 1216s) self.checky self.checkx)) goto 0x000034
0x000028:
    self.thistile = 1s
0x000034:
    if !(bool (instance_position[]:int32 (var 1214s) self.checky self.checkx)) goto 0x000068
0x00005C:
    self.thistile = 2s
0x000068:
    if !(bool (instance_position[]:int32 (var 1215s) self.checky self.checkx)) goto 0x00009C
0x000090:
    self.thistile = 3s
0x00009C:
    if !(bool (instance_position[]:int32 (var 1217s) self.checky self.checkx)) goto 0x0000D0
0x0000C4:
    self.thistile = 4s
0x0000D0:
    if !(bool (instance_position[]:int32 (var 1218s) self.checky self.checkx)) goto 0x000104
0x0000F8:
    self.thistile = 5s
0x000104:
    if !(bool (instance_position[]:int32 (var 1219s) self.checky self.checkx)) goto 0x000138
0x00012C:
    self.thistile = 6s
0x000138:
    if !(bool (instance_position[]:int32 (var 1221s) self.checky self.checkx)) goto 0x00016C
0x000160:
    self.thistile = 7s
0x00016C:
    self.tileid = (collision_point[]:int32 (var 1s) (var 0s) (var 1213s) self.checky self.checkx)
0x0001A4:
    exit
