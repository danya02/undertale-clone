0x000000:
    self.myscore = 0s
    self.check = 274s
    self.thensc = 0s
    self.fatalx = (+ 274s self.x)
    self.wherex = -80s
    self.lr = (choose[]:int32 (var 1s) (var 0s))
    self.factor = (choose[]:int32 (var 60s) (var 40s) (var 20s))
    self.factor = (+ self.factor 30s)
    if !(== self.lr 0s) goto 0x000130
0x0000BC:
    call (event_user[]:int32 (var 4s))
    self.wherex = (+ -80s self.factor)
    call (event_user[]:int32 (var 4s))
    self.wherex = (+ -80s (* self.factor 2s))
    call (event_user[]:int32 (var 4s))
0x000130:
    if !(== self.lr 1s) goto 0x0001B8
0x000144:
    call (event_user[]:int32 (var 5s))
    self.wherex = (+ -80s self.factor)
    call (event_user[]:int32 (var 5s))
    self.wherex = (+ -80s (* self.factor 2s))
    call (event_user[]:int32 (var 5s))
0x0001B8:
    exit
