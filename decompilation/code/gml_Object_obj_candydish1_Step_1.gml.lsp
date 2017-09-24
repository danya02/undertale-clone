0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    push -5s
    if !(> 34s:flag 3s) goto 0x000064
0x000050:
    push (== self.candymade 0s)
    goto 0x000068
0x000064:
    push 0s
0x000068:
    if !pop goto 0x000100
0x00006C:
    self.candy = (scr_marker[]:int32 (var 1171s) (+ self.y 2s) self.x)
    push 900000
    stog.depth* = (int32 self.candy)
    push 1s
    stog.image_index* = (int32 self.candy)
    push 0s
    stog.image_speed* = (int32 self.candy)
    self.sprite_index = 1171s
    self.candymade = 1s
0x000100:
    exit
