0x000000:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.vspeed* = (int32 self.mett)
    self.con = (+ self.con 1s)
    stog.alarm[4s] = 60s
0x00005C:
    exit
