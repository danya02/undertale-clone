0x000000:
    call (instance_create[]:int32 (var 1697s) (+ self.y 13s) (+ self.x 18s))
    stog.alarm[0s] = 8s
    if !(== self.crack 0s) goto 0x000068
0x00005C:
    self.crack = 1s
0x000068:
    self.ctime = (+ self.ctime 1s)
    if !(> self.ctime 5s) goto 0x0000A0
0x000094:
    self.crack = 2s
0x0000A0:
    if !(> self.ctime 10s) goto 0x0000C0
0x0000B4:
    self.crack = 3s
0x0000C0:
    exit
