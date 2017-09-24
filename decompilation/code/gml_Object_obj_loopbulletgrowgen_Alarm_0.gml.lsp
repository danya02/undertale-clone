0x000000:
    if !(== self.blue 1s) goto 0x00003C
0x000014:
    self.blue = (+ (floor[]:int32 (random[]:int32 (var 2s))) 1s)
0x00003C:
    self.i = 0s
    if !(< self.i self.totalbt) goto 0x00029C
0x000060:
    self.dir = (+ 0s (/ (* self.i 360s) self.totalbt))
    self.xx = (+ self.x (lengthdir_x[]:int32 (- self.dir 90s) self.radius))
    self.yy = (+ self.y (lengthdir_y[]:int32 (- self.dir 90s) self.radius))
    self.loopbullet = (instance_create[]:int32 (var 657s) self.yy self.xx)
    push self.speed
    stog.speed* = (int32 self.loopbullet)
    push (/ (double 360s) (/ self.circ self.speed))
    stog.anglechange* = (int32 self.loopbullet)
    push self.dir
    stog.direction* = (int32 self.loopbullet)
    push self.xadd
    stog.xadd* = (int32 self.loopbullet)
    push self.idealradius
    stog.idealradius* = (int32 self.loopbullet)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.loopbullet)
    push self.specialtimer
    stog.specialtimer* = (int32 self.loopbullet)
    if !(== self.blue 3s) goto 0x000228
0x00021C:
    self.blue = 2s
0x000228:
    if !(== self.blue 1s) goto 0x000260
0x00023C:
    push 1s
    stog.blue* = (int32 self.loopbullet)
    self.blue = 3s
0x000260:
    if !(== self.blue 2s) goto 0x000280
0x000274:
    self.blue = 1s
0x000280:
    self.i = (+ self.i 1s)
    goto 0x000048
0x00029C:
    exit
