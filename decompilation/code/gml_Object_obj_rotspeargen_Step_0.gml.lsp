0x000000:
    if !(== self.active 1s) goto 0x00032C
0x000014:
    if !(> self.rotspeed self.rotmin) goto 0x00004C
0x00002C:
    self.rotspeed = (- self.rotspeed 0.2d)
0x00004C:
    if !(< self.rotspeed self.rotmin) goto 0x000084
0x000064:
    self.rotspeed = (+ self.rotspeed 0.2d)
0x000084:
    self.i = 0s
    if !(< self.i self.num) goto 0x00028C
0x0000A8:
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.i):spear)) goto 0x00022C
0x0000D0:
    self.hx = (+ self.x (lengthdir_x[]:int32 (+ self.curang (* (/ self.i self.num) 360s)) self.rr))
    self.hy = (+ self.y (lengthdir_y[]:int32 (+ self.curang (* (/ self.i self.num) 360s)) self.rr))
    push self.hx
    push -1s
    stog.x* = (int32 (int32 self.i):spear)
    push self.hy
    push -1s
    stog.y* = (int32 (int32 self.i):spear)
    push -1s
    pushenv (int32 (int32 self.i):spear) 0x000228
0x0001E0:
    self.image_angle = (point_direction[]:int32 (int32 self.parent):y (int32 self.parent):x self.y self.x)
0x000228:
    popenv 0x0001E0
0x00022C:
    if !(< self.rr 8s) goto 0x000270
0x000240:
    push -1s
    pushenv (int32 (int32 self.i):spear) 0x00026C
0x000260:
    self.deactivate = 1s
0x00026C:
    popenv 0x000260
0x000270:
    self.i = (+ self.i 1s)
    goto 0x000090
0x00028C:
    if !(< self.rr 8s) goto 0x0002D8
0x0002A0:
    self.rr = (+ self.rr 1s)
    self.rotspeed = (* self.rotspeed 0.8d)
0x0002D8:
    if !(< self.rr -20s) goto 0x0002F8
0x0002EC:
    call (instance_destroy[]:int32 )
0x0002F8:
    self.rr = (- self.rr 4s)
    self.curang = (+ self.curang self.rotspeed)
0x00032C:
    if !(< global.turntimer 1s) goto 0x00034C
0x000340:
    call (instance_destroy[]:int32 )
0x00034C:
    exit
