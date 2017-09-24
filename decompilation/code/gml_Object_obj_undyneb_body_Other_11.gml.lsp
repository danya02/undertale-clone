0x000000:
    self.movetype = 1s
    push 1s
    stog.image_index* = (int32 self.legs)
    self.vspeed = (- -9s (random[]:int32 (var 4s)))
    self.hspeed = (- (random[]:int32 (var 6s)) 3s)
    self.gravity = 1.3d
    self.gravity_direction = 270s
    self.jumpno = (+ self.jumpno 1s)
    self.y = self.ystart
    if !(== self.jumpno 3s) goto 0x0000F4
0x0000C0:
    self.vspeed = -12s
    self.hspeed = (/ (- self.xstart self.x) (double 18s))
0x0000F4:
    self.air = 0s
    push (/ self.hspeed 0.93d)
    stog.hspeed* = (int32 self.larm)
    push (- self.vspeed 2s)
    stog.vspeed* = (int32 self.larm)
    push (+ self.gravity 0.1d)
    stog.gravity* = (int32 self.larm)
    push 270s
    stog.gravity_direction* = (int32 self.larm)
    push (/ self.hspeed 1.1d)
    stog.hspeed* = (int32 self.rarm)
    push (- self.vspeed 2s)
    stog.vspeed* = (int32 self.rarm)
    push (+ self.gravity 0.1d)
    stog.gravity* = (int32 self.rarm)
    push 270s
    stog.gravity_direction* = (int32 self.rarm)
    push (/ self.hspeed 1.1d)
    stog.hspeed* = (int32 self.legs)
    push (- self.vspeed 2s)
    stog.vspeed* = (int32 self.legs)
    push (+ self.gravity 0.1d)
    stog.gravity* = (int32 self.legs)
    push 270s
    stog.gravity_direction* = (int32 self.legs)
0x0002BC:
    exit
