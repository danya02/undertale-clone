0x000000:
    self.fakedrawer = 0s
    self.playthesong = 0s
    stog.alarm[0s] = 3s
    self.con = 0s
    self.y = (- self.y 20s)
    if !(> global.plot 120s) goto 0x000070
0x000064:
    call (instance_destroy[]:int32 )
0x000070:
    exit
