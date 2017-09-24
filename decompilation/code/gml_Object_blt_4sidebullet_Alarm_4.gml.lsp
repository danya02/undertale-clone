0x000000:
    self.l = (+ self.l 1s)
    self.thisbullet = (instance_create[]:int32 self.object_index self.ystart self.xstart)
    if !(bool (instance_exists[]:int32 self.thisbullet)) goto 0x0000C8
0x000058:
    push self.startdir
    stog.startdir* = (int32 self.thisbullet)
    push self.startspeed
    stog.startspeed* = (int32 self.thisbullet)
    push self.rotdir
    stog.rotdir* = (int32 self.thisbullet)
    push self.dmg
    stog.dmg* = (int32 self.thisbullet)
0x0000C8:
    if !(< self.l self.limit) goto 0x0000F4
0x0000E0:
    stog.alarm[4s] = 26s
0x0000F4:
    exit
