0x000000:
    if !(== self.on 1s) goto 0x000100
0x000014:
    if !(!= (int32 self.parent):x (int32 self.parent):xprevious) goto 0x0000D8
0x000044:
    self.hspeed = (- (int32 self.parent):x (int32 self.parent):xprevious)
    if !(> self.hspeed 0s) goto 0x0000A8
0x00008C:
    self.hspeed = (+ self.hspeed self.friction)
0x0000A8:
    if !(< self.hspeed 0s) goto 0x0000D8
0x0000BC:
    self.hspeed = (- self.hspeed self.friction)
0x0000D8:
    self.y = (- (int32 self.parent):y self.relative)
0x000100:
    if !(< self.x (- (int32 self.parent):x 2s)) goto 0x000140
0x00012C:
    push (== self.on 1s)
    goto 0x000144
0x000140:
    push 0s
0x000144:
    if !pop goto 0x000224
0x000148:
    self.on = 0s
    self.hspeed = -4s
    self.fall = 1s
    self.g = (instance_create[]:int32 (var 1272s) self.y self.x)
    push (+ (int32 self.parent):y 30s)
    stog.fally* = (int32 self.g)
    push self.fall
    stog.fall* = (int32 self.g)
    push self.friction
    stog.friction* = (int32 self.g)
    push self.hspeed
    stog.hspeed* = (int32 self.g)
    call (instance_destroy[]:int32 )
0x000224:
    if !(> self.x (+ (int32 self.parent):x 18s)) goto 0x000264
0x000250:
    push (== self.on 1s)
    goto 0x000268
0x000264:
    push 0s
0x000268:
    if !pop goto 0x000348
0x00026C:
    self.hspeed = 4s
    self.on = 0s
    self.fall = 6s
    self.g = (instance_create[]:int32 (var 1272s) self.y self.x)
    push self.friction
    stog.friction* = (int32 self.g)
    push (+ (int32 self.parent):y 30s)
    stog.fally* = (int32 self.g)
    push self.fall
    stog.fall* = (int32 self.g)
    push self.hspeed
    stog.hspeed* = (int32 self.g)
    call (instance_destroy[]:int32 )
0x000348:
    exit
