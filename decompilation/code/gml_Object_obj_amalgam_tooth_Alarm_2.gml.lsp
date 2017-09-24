0x000000:
    self.anchor = 0s
    if !(== self.top 1s) goto 0x000040
0x000020:
    self.vspeed = -15s
    stog.alarm[4s] = 10s
0x000040:
    if !(== self.top 0s) goto 0x000074
0x000054:
    self.vspeed = 4s
    stog.alarm[4s] = 10s
0x000074:
    self.visible = 1s
0x000080:
    exit
