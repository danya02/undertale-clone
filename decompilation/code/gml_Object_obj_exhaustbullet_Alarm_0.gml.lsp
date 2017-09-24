0x000000:
    if !(== self.off 0s) goto 0x000034
0x000014:
    self.gravity = 0.1d
    self.gravity_direction = 0s
0x000034:
    if !(== self.off 1s) goto 0x000068
0x000048:
    self.gravity = 0.1d
    self.gravity_direction = 180s
0x000068:
    if !(== self.off 2s) goto 0x0000E0
0x00007C:
    self.gravity = 0.1d
    self.gravity_direction = (+ 60s (random[]:int32 (var 60s)))
    self.pop = (scr_monstersum[]:int32 )
    if !(> self.pop 1s) goto 0x0000E0
0x0000D4:
    call (instance_destroy[]:int32 )
0x0000E0:
    exit
