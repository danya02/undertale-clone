0x000000:
    self.visible = 0s
    self.i = 0s
    if !(< self.i 8s) goto 0x0000D4
0x00002C:
    self.g = (instance_create[]:int32 (var 728s) self.y self.x)
    push (* 20s self.i)
    stog.image_angle* = (int32 self.g)
    push (* 45s self.i)
    stog.siner* = (int32 self.g)
    push self.image_blend
    stog.image_blend* = (int32 self.g)
    self.i = (+ self.i 1s)
    goto 0x000018
0x0000D4:
    self.g2 = (instance_create[]:int32 (var 729s) self.y self.x)
    push self.image_blend
    stog.image_blend* = (int32 self.g2)
    self.shotno = (+ self.shotno 1s)
    stog.alarm[4s] = 3s
0x000144:
    exit
