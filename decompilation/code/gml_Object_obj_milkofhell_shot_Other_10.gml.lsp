0x000000:
    self.splat = (instance_create[]:int32 (var 1176s) self.y self.x)
    push self.image_angle
    stog.image_angle* = (int32 self.splat)
    push self.image_xscale
    stog.image_xscale* = (int32 self.splat)
    push self.image_yscale
    stog.image_yscale* = (int32 self.splat)
    push self.speed
    stog.speed* = (int32 self.splat)
    push self.direction
    stog.direction* = (int32 self.splat)
    push 2s
    stog.friction* = (int32 self.splat)
    if (<= 8s 0) goto 0x000120
0x0000E4:
    push 8s
    call (instance_create[]:int32 (var 1177s) self.y self.x)
    if (bool (- pop 1)) goto 0x0000E4
0x000120:
    push (- pop 1)
    pop
    call (instance_destroy[]:int32 )
0x000130:
    exit
