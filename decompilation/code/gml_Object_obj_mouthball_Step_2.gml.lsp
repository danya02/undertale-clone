0x000000:
    push self.x
    stog.x* = (int32 self.dt)
    push self.y
    stog.y* = (int32 self.dt)
0x000038:
    exit
