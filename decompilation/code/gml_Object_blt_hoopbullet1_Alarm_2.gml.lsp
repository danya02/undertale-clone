0x000000:
    if !(== self.sterile 0s) goto 0x0000C0
0x000014:
    self.iii = (instance_create[]:int32 (var 616s) self.ystart self.xstart)
    push self.dmg
    stog.dmg* = (int32 self.iii)
    push 1s
    stog.bullettype* = (int32 self.iii)
    push self.gravitystart
    stog.gravity* = (int32 self.iii)
    push self.gravity_direction
    stog.gravity_direction* = (int32 self.iii)
    push 1s
    stog.sterile* = (int32 self.iii)
0x0000C0:
    exit
