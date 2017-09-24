0x000000:
    self.j = (- self.gridd 30s)
    if !(> self.j self.gridu) goto 0x000120
0x000030:
    self.i = (+ self.gridl 10s)
    if !(< self.i self.gridr) goto 0x000104
0x000060:
    if !(bool (collision_point[]:int32 (var 1s) (var 0s) (var 1242s) self.j self.i)) goto 0x0000E8
0x000098:
    pushenv (int32 (collision_point[]:int32 (var 1s) (var 0s) (var 1242s) self.j self.i)) 0x0000E4
0x0000D0:
    call (event_user[]:int32 (var 3s))
0x0000E4:
    popenv 0x0000D0
0x0000E8:
    self.i = (+ self.i 20s)
    goto 0x000048
0x000104:
    self.j = (- self.j 20s)
    goto 0x000018
0x000120:
    exit
