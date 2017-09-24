0x000000:
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.image_speed = 0s
    self.candymade = 0s
    push -5s
    if !(> 34s:flag 3s) goto 0x0000EC
0x000058:
    self.candy = (scr_marker[]:int32 (var 1171s) (+ self.y 2s) self.x)
    push 900000
    stog.depth* = (int32 self.candy)
    push 1s
    stog.image_index* = (int32 self.candy)
    push 0s
    stog.image_speed* = (int32 self.candy)
    self.sprite_index = 1171s
    self.candymade = 1s
0x0000EC:
    exit
