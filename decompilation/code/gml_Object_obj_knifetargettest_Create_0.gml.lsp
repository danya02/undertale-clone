0x000000:
    self.myscore = 0s
    self.check = 274s
    self.thensc = 0s
    self.fatalx = (+ 274s self.x)
    self.wherex = -60s
    self.lr = (choose[]:int32 (var 1s) (var 0s))
    if !(== self.lr 0s) goto 0x000090
0x00007C:
    call (event_user[]:int32 (var 4s))
0x000090:
    if !(== self.lr 1s) goto 0x0000B8
0x0000A4:
    call (event_user[]:int32 (var 5s))
0x0000B8:
    self.wherex = (choose[]:int32 (var 60s) (var 40s) (var 20s) (var 0s))
    self.lr = (choose[]:int32 (var 1s) (var 0s))
    if !(== self.lr 0s) goto 0x000130
0x00011C:
    call (event_user[]:int32 (var 4s))
0x000130:
    if !(== self.lr 1s) goto 0x000158
0x000144:
    call (event_user[]:int32 (var 5s))
0x000158:
    exit
