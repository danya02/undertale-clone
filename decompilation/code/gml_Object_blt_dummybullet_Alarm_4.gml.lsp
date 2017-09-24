0x000000:
    if !(== self.side 0s) goto 0x000020
0x000014:
    self.direction = 180s
0x000020:
    if !(== self.side 1s) goto 0x000040
0x000034:
    self.direction = 0s
0x000040:
    if !(== self.side 2s) goto 0x000060
0x000054:
    self.direction = 90s
0x000060:
    if !(== self.side 3s) goto 0x000080
0x000074:
    self.direction = 270s
0x000080:
    self.speed = 4s
    stog.alarm[5s] = 30s
    if !(== self.type 0s) goto 0x000130
0x0000B4:
    self.fb = (instance_create[]:int32 (var 660s) self.y self.x)
    push 1s
    stog.speed* = (int32 self.fb)
    push self.dmg
    stog.dmg* = (int32 self.fb)
    push -0.15d
    stog.friction* = (int32 self.fb)
0x000130:
    if !(== self.type 4s) goto 0x000188
0x000144:
    self.fb = (instance_create[]:int32 (var 661s) self.y self.x)
    push self.dmg
    stog.dmg* = (int32 self.fb)
0x000188:
    self.part = 2s
0x000194:
    exit
