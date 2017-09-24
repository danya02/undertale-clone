0x000000:
    push -5s
    self.wall_l = 0s:idealborder
    push -5s
    self.wall_r = 1s:idealborder
    push -5s
    self.wall_d = 3s:idealborder
    push -5s
    self.wall_u = 2s:idealborder
    self.vside = (choose[]:int32 (var 1s) (var 0s))
    self.hside = (choose[]:int32 (var 1s) (var 0s))
    self.peepee = (instance_create[]:int32 (var 389s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.peepee)) goto 0x00033C
0x0000E0:
    if !(== self.vside 0s) goto 0x000134
0x0000F4:
    push (- self.wall_u 60s)
    stog.y* = (int32 self.peepee)
    push self.spd
    stog.vspeed* = (int32 self.peepee)
0x000134:
    if !(== self.vside 1s) goto 0x00018C
0x000148:
    push (+ self.wall_d 40s)
    stog.y* = (int32 self.peepee)
    push (- self.spd)
    stog.vspeed* = (int32 self.peepee)
0x00018C:
    if !(== self.hside 0s) goto 0x0001E0
0x0001A0:
    push (- self.wall_l 40s)
    stog.x* = (int32 self.peepee)
    push self.spd
    stog.hspeed* = (int32 self.peepee)
0x0001E0:
    if !(== self.hside 1s) goto 0x000238
0x0001F4:
    push (+ self.wall_r 40s)
    stog.x* = (int32 self.peepee)
    push (- self.spd)
    stog.hspeed* = (int32 self.peepee)
0x000238:
    if !(== self.hside 1s) goto 0x00029C
0x00024C:
    stog.x* = (+ (int32 self.peepee):x (- (random[]:int32 (- (- self.wall_r self.wall_l) 20s)) 100s))
0x00029C:
    push (int32 self.peepee)
    if !(== self.hside 0s) goto 0x000300
0x0002B0:
    stog.x* = (- (int32 self.peepee):x (- (random[]:int32 (- (- self.wall_r self.wall_l) 20s)) 100s))
0x000300:
    push (int32 self.peepee)
    push -0.05d
    stog.friction* = (int32 self.peepee)
    push self.dmg
    stog.dmg* = (int32 self.peepee)
0x00033C:
    stog.alarm[0s] = self.rate
0x000354:
    exit
