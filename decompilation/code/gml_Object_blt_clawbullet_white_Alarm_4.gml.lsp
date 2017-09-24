0x000000:
    self.l = (+ self.l 1s)
    self.thisbullet = (instance_create[]:int32 self.object_index self.ystart self.xstart)
    push self.startdir
    stog.startdir* = (int32 self.thisbullet)
    push self.startspeed
    stog.startspeed* = (int32 self.thisbullet)
    push self.rotdir
    stog.rotdir* = (int32 self.thisbullet)
    push self.dmg
    stog.dmg* = (int32 self.thisbullet)
    if !(< self.l self.limit) goto 0x0000DC
0x0000C8:
    stog.alarm[4s] = 6s
0x0000DC:
    exit
